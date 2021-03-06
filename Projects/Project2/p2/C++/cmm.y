%{
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/IRBuilder.h"

#include "llvm/Bitcode/BitcodeWriter.h"
#include "llvm/ADT/StringSet.h"
#include "llvm/ADT/StringMap.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SystemUtils.h"
#include "llvm/Support/ToolOutputFile.h"

#include <memory>
#include <algorithm>
#include <list>
#include <vector>
#include <utility>
#include <stack>
#include "list.h"
#include "symbol.h"

using namespace llvm;
using namespace std;

using parameter = pair<Type*,const char*>;
using parameter_list = std::list<parameter>;

//Commented out because loop_info is used in list.cpp
/*
typedef struct {
  BasicBlock* expr;
  BasicBlock* body;
  BasicBlock* reinit;
  BasicBlock* exit;
} loop_info;
*/

stack<loop_info> loop_stack;

int num_errors;

extern int yylex();   /* lexical analyzer generated from lex.l */

int yyerror(const char *error);
int parser_error(const char*);

void cmm_abort();
char *get_filename();
int get_lineno();

int loops_found=0;

extern Module *M;
extern LLVMContext TheContext;

Function *Fun;
IRBuilder<> *Builder;

Value* BuildFunction(Type* RetType, const char *name,
			   parameter_list *params);

%}

/* Data structure for tree nodes*/

%union {
  int inum;
  char * id;
  Type*  type;
  Value* value;
  parameter_list *plist;
  vector<Value*> *arglist;
  BasicBlock* bb;
}

/* these tokens are simply their corresponding int values, more terminals*/

%token SEMICOLON COMMA MYEOF
%token LBRACE RBRACE LPAREN RPAREN LBRACKET RBRACKET

%token ASSIGN PLUS MINUS STAR DIV MOD
%token LT GT LTE GTE EQ NEQ
%token BITWISE_OR BITWISE_XOR LSHIFT RSHIFT BITWISE_INVERT
%token DOT AMPERSAND

%token FOR WHILE IF ELSE DO RETURN SWITCH
%token BREAK CONTINUE CASE COLON
%token INT VOID BOOL
%token I2P P2I SEXT ZEXT

/* NUMBER and ID have values associated with them returned from lex*/

%token <inum> CONSTANT_INTEGER /*data type of NUMBER is num union*/
%token <id>  ID

%left EQ NEQ LT GT LTE GTE
%left BITWISE_OR
%left BITWISE_XOR
%left AMPERSAND
%left LSHIFT RSHIFT
%left PLUS MINUS
%left MOD DIV STAR
%nonassoc ELSE

%type <type> type_specifier

%type <value> opt_initializer
%type <value> expression bool_expression
%type <value> lvalue_location primary_expression unary_expression
%type <value> constant constant_expression unary_constant_expression

%type <plist> param_list param_list_opt

%%

translation_unit:	  external_declaration
			| translation_unit external_declaration
                        | translation_unit MYEOF
{
  YYACCEPT;
}
;

external_declaration:	  function_definition
                        | global_declaration
;

function_definition:	  type_specifier ID LPAREN param_list_opt RPAREN
// NO MODIFICATION NEEDED
{
  symbol_push_scope();
  BuildFunction($1,$2,$4);
}
compound_stmt
{
  symbol_pop_scope();
}

// NO MODIFICATION NEEDED
| type_specifier STAR ID LPAREN param_list_opt RPAREN
{
  symbol_push_scope();
  BuildFunction(PointerType::get($1,0),$3,$5);
}
compound_stmt
{
  symbol_pop_scope();
}
;

global_declaration:    type_specifier STAR ID opt_initializer SEMICOLON
{
  // Check to make sure global isn't already allocated
  // new GlobalVariable(...)
}
| type_specifier ID opt_initializer SEMICOLON
{
  /* If global ID is already initialized, abort porgram.
     If it's initialized to null, create a null type and map it in symbol table
     Else, map the value in symbol table
  */
  if(symbol_find($2))
  {
   YYABORT;
  }
  else if($3 == nullptr)
  {
   Constant* ai = M->getOrInsertGlobal($2, $1);
    dyn_cast<GlobalVariable>(ai)->setInitializer(Constant::getNullValue($1));
    symbol_insert($2,ai);
  }
  else
  {
    Constant* ai = M->getOrInsertGlobal($2,$1);
    dyn_cast<GlobalVariable>(ai)->setInitializer(dyn_cast<Constant>($3));
    symbol_insert($2,ai);
  }
}
;

// YOU MUST FIXME: hacked to prevent segfault on initial testing
opt_initializer:   ASSIGN constant_expression { $$ = $2; } | { $$ = nullptr; } ;

// NO MODIFICATION NEEDED
type_specifier:		  INT
{
  $$ = Type::getInt64Ty(TheContext);
}
                     |    VOID
{
  $$ = Type::getVoidTy(TheContext);
}
;


param_list_opt:
{
  $$ = nullptr;
}
| param_list
{
  $$ = $1;
}
;

// USED FOR FUNCTION DEFINITION; NO MODIFICATION NEEDED
param_list:
param_list COMMA type_specifier ID
{
  $$ = $1;
  $$->push_back( parameter($3,$4) );
}
| param_list COMMA type_specifier STAR ID
{
  $$ = $1;
  $$->push_back( parameter(PointerType::get($3,0),$5) );
}
| type_specifier ID
{
  $$ = new parameter_list;
  $$->push_back( parameter($1,$2) );
}
| type_specifier STAR ID
{
  $$ = new parameter_list;
  $$->push_back( parameter(PointerType::get($1,0),$3) );
}
;


statement:		  expr_stmt
			| compound_stmt
			| selection_stmt
			| iteration_stmt
			| return_stmt
                        | break_stmt
                        | continue_stmt
                        | case_stmt
;

expr_stmt:	           SEMICOLON
			|  assign_expression SEMICOLON
;

local_declaration:    type_specifier STAR ID opt_initializer SEMICOLON
{
  Value * ai = Builder->CreateAlloca(PointerType::get($1,0),0,$3);
  if (nullptr != $4)
    Builder->CreateStore($4,ai);
  symbol_insert($3,ai);
}
| type_specifier ID opt_initializer SEMICOLON
{
  Value * ai = Builder->CreateAlloca($1,0,$2);
  if (nullptr != $3)
    Builder->CreateStore($3,ai);
  symbol_insert($2,ai);
}
;

local_declaration_list:	   local_declaration
                         | local_declaration_list local_declaration
;

local_declaration_list_opt:
			| local_declaration_list
;

compound_stmt:		  LBRACE {
  // PUSH SCOPE TO RECORD VARIABLES WITHIN COMPOUND STATEMENT
  symbol_push_scope();
}
local_declaration_list_opt
statement_list_opt
{
  // POP SCOPE TO REMOVE VARIABLES NO LONGER ACCESSIBLE
  symbol_pop_scope();
}
RBRACE
;


statement_list_opt:
			| statement_list
;

statement_list:		statement
		      | statement_list statement
;

break_stmt:               BREAK SEMICOLON
;

case_stmt:                CASE constant_expression COLON
;

continue_stmt:            CONTINUE SEMICOLON
;

selection_stmt:

/*
  Create the control flow for the different types of statements.
  push_loop and pop_loop is a stack used to push and pop the contents of the current BasicBlock.
  get_loop retrieves the info that was last pushed onto the stack.

*/

  IF LPAREN bool_expression
  {
    //create the basic bloks for the if else statements
    BasicBlock *if_then = BasicBlock::Create(TheContext,"if.then",Fun);
    BasicBlock *if_else = BasicBlock::Create(TheContext,"if.else",Fun);
    BasicBlock *if_join = BasicBlock::Create(TheContext,"if.join",Fun);

    //push the basic block info onto the stack
    push_loop(nullptr,if_then,if_else,if_join);

    //route the control flow to the necessary statement
    Builder->CreateCondBr($3, if_then,if_else);

    //set the insert point
    Builder->SetInsertPoint(if_then);
  }
  RPAREN statement
  {
    //get the basic block information from the top of the stack
    loop_info_t info = get_loop();

    //route the control flow to the exit statement
    Builder->CreateBr(info.exit);

    //set the insert point
    Builder->SetInsertPoint(info.reinit);
  }
  ELSE statement
  {
    //get the basic block information from the top of the stack
    loop_info_t info = get_loop();

    //route the control flow to the exit statement
    Builder->CreateBr(info.exit);

    //set insert point
    Builder->SetInsertPoint(info.exit);

    //pop the basic block informaton from the stack
    pop_loop();
  }

| SWITCH LPAREN expression RPAREN statement
;


iteration_stmt:
  WHILE
  {
    //create basic blocks for the while statement
    BasicBlock *bbexpr = BasicBlock::Create(TheContext,"while.expr",Fun);
    BasicBlock *bbbody = BasicBlock::Create(TheContext,"while.body",Fun);
    BasicBlock *bbexit = BasicBlock::Create(TheContext,"while.exit",Fun);

    //push basic block info onto the stack
    push_loop(bbexpr,bbbody,nullptr,bbexit);

    //route the control flow to the expression
    Builder->CreateBr(bbexpr);

    //set insert point
    Builder->SetInsertPoint(bbexpr);
  }
  LPAREN bool_expression
  {
    //get basic block info from the stack
    loop_info_t info = get_loop();

    //route to the necessary statement
    Builder->CreateCondBr($4,info.body,info.exit);

    //set insert point to the body
    Builder->SetInsertPoint(info.body);
  }
  RPAREN statement
  {
    //get basic block information from the stack
    loop_info_t info = get_loop();

    //set branch to the exit statement
    Builder->CreateBr(info.expr);

    //set insert point to exit
    Builder->SetInsertPoint(info.exit);

    //pop the basic block information from the stack
    pop_loop();
  }
| FOR LPAREN expr_opt SEMICOLON
  {
    //create basic bloks for the for statement
    BasicBlock *bbexpr = BasicBlock::Create(TheContext,"for.expr",Fun);
    BasicBlock *bbbody = BasicBlock::Create(TheContext,"for.body",Fun);
    BasicBlock *bbreinit = BasicBlock::Create(TheContext,"for.reinit",Fun);
    BasicBlock *bbexit = BasicBlock::Create(TheContext,"for.exit",Fun);

    //push the basic block information onto the stack
    push_loop(bbexpr,bbbody,bbreinit,bbexit);

    //route the control flow to the expression
    Builder->CreateBr(bbexpr);

    //set insert point
    Builder->SetInsertPoint(bbexpr);
  }
bool_expression SEMICOLON
  {

    //get basic block info from the stack
    loop_info_t info = get_loop();

    //route the control flow to the necessary block
    Builder->CreateCondBr($6,info.body,info.exit);

    //set insert point to reinit
    Builder->SetInsertPoint(info.reinit);
  }
expr_opt RPAREN
  {

    //get basic block info from the stack
    loop_info_t info = get_loop();

    //route the control flow to the expresson
    Builder->CreateBr(info.expr);

    //set insert point
    Builder->SetInsertPoint(info.body);
  }
statement
  {
    //get basic block info from the stack
    loop_info_t info = get_loop();

    //route the control flow
    Builder->CreateBr(info.reinit);

    //set insert point to the exit
    Builder->SetInsertPoint(info.exit);

    //remove basic block info from the stack
    pop_loop();
  }
| DO
  {

    //create basic blocks for the do statement
    BasicBlock *bbexpr = BasicBlock::Create(TheContext,"do.expr",Fun);
    BasicBlock *bbbody = BasicBlock::Create(TheContext,"do.body",Fun);
    BasicBlock *bbexit = BasicBlock::Create(TheContext,"do.exit",Fun);

    //push basic block information onto the stack
    push_loop(bbexpr,bbbody,nullptr,bbexit);

    //route the control flow & set insert point
    Builder->CreateBr(bbbody);
    Builder->SetInsertPoint(bbbody);

  }
  statement
  {

    //get bb info from the stack
    loop_info_t info = get_loop();

    //route the control flow and set insert point
    Builder->CreateBr(info.expr);
    Builder->SetInsertPoint(info.expr);
  }
  WHILE LPAREN bool_expression RPAREN SEMICOLON
  {

    //get bb info from the stack
    loop_info_t info = get_loop();

    //route control flow and set insert point
    Builder->CreateCondBr($7,info.body,info.exit);
    Builder->SetInsertPoint(info.exit);

    //remove bb info from stack
    pop_loop();
  }
;

expr_opt:
	| assign_expression
;

return_stmt:		  RETURN SEMICOLON
	       		  {
			    Builder->CreateRetVoid();

			  }
			| RETURN expression SEMICOLON
			  {
			    Builder->CreateRet($2);
			  }
;

bool_expression: expression
//if i64 type, compare to 0 and return a bool
//if bool type already, return the value
{
  if($1->getType() == Builder->getInt64Ty())
  {
    $$ = Builder->CreateICmpNE($1,Builder->getInt64(0));
  }
  else $$ = $1;
}
;

assign_expression:
  lvalue_location ASSIGN expression
  {
    User * val = (User*) $1;
    Builder->CreateStore($3,val->getOperand(0));
  }
| expression
;

expression:
  unary_expression {$$ = $1;}
| expression BITWISE_OR expression
  {
    $$ = Builder->CreateOr($1,$3);
  }
| expression BITWISE_XOR expression
  {
    $$ = Builder->CreateXor($1,$3);
  }
| expression AMPERSAND expression
  {
    $$ = Builder->CreateAnd($1, $3);
  }
| expression EQ expression
  {
    $$ = Builder->CreateICmpEQ($1,$3);
  }
| expression NEQ expression
  {
    $$ = Builder->CreateICmpNE($1,$3);
  }
| expression LT expression
  {
    $$ = Builder->CreateICmpSLT($1, $3);

  }
| expression GT expression
  {
    $$ = Builder->CreateICmpSGT($1, $3);
  }
| expression LTE expression
{
  $$ = Builder->CreateICmpSLE($1, $3);
}
| expression GTE expression
  {
    $$= Builder->CreateICmpSGE($1, $3);
  }
| expression LSHIFT expression
| expression RSHIFT expression
| expression PLUS expression
  {
    $$ = Builder->CreateAdd($1, $3);
  }
| expression MINUS expression
  {
    $$ = Builder->CreateSub($1, $3);
  }
| expression STAR expression
  {
    $$ = Builder->CreateMul($1, $3);
  }
| expression DIV expression {$$ = Builder->CreateSDiv($1, $3);}
| expression MOD expression {$$ = Builder->CreateSRem($1,$3);}
| BOOL LPAREN expression RPAREN
  /*
    if i64 type, compare to 0 and return a bool
    if bool type, return value
  */
  {
    if($3->getType() == Builder->getInt64Ty())
    {
      $$ = Builder->CreateICmpNE($3,Builder->getInt64(0));
    }
    else $$ = $3;
  }
| I2P LPAREN expression RPAREN {$$ = Builder->CreateIntToPtr($3, PointerType::get(Builder->getInt64Ty(),0));}
| P2I LPAREN expression RPAREN {$$ = Builder->CreatePtrToInt($3, Builder->getInt64Ty());}
| ZEXT LPAREN expression RPAREN {$$ = Builder->CreateZExt($3, Builder->getInt64Ty());}
| SEXT LPAREN expression RPAREN {$$ = Builder->CreateSExt($3, Builder->getInt64Ty());}
| ID LPAREN argument_list_opt RPAREN
| LPAREN expression RPAREN
  {
    $$ = $2;
  }
;


argument_list_opt: | argument_list
;

argument_list:
  expression
| argument_list COMMA expression
;


unary_expression:         primary_expression {$$ = $1;}
| AMPERSAND primary_expression
  {
    User * val = (User*) $2;
    $$ = val->getOperand(0);
  }
| STAR primary_expression
  {
   $$ = Builder->CreateLoad($2);
  }
| MINUS unary_expression {$$ = Builder->CreateNeg($2);}
| PLUS unary_expression {$$ = $2;}
| BITWISE_INVERT unary_expression
;

primary_expression:
  lvalue_location
  {
    $$ = $1;
  }
| constant
  {
    $$ = $1;
  }
;

lvalue_location:
  ID
  {
    //param_list = list of <type*,char*>
    //vname holds param IDs, v holds param types taken from param_list
    //symbol list used to access predefined variables in memory
    Value * ptr = Builder->CreateGEP(symbol_find($1),Builder->getInt64(0));
    $$ = Builder->CreateLoad(ptr);

  }
| lvalue_location LBRACKET expression RBRACKET
  {
    Value * ptr = Builder->CreateGEP($1,$3);
    $$ = Builder->CreateLoad(ptr);
  }
| STAR LPAREN expression RPAREN
  {
    Value * ptr = Builder->CreateGEP($3,Builder->getInt64(0));
    $$ = Builder->CreateLoad(ptr);
  }
;

constant_expression:
  unary_constant_expression {$$ = $1;}
| constant_expression BITWISE_OR constant_expression {$$ = Builder->CreateOr($1,$3);}
| constant_expression BITWISE_XOR constant_expression {$$ = Builder->CreateXor($1,$3);}
| constant_expression AMPERSAND constant_expression {$$ = Builder->CreateAnd($1,$3);}
| constant_expression LSHIFT constant_expression
| constant_expression RSHIFT constant_expression
| constant_expression PLUS constant_expression
{
  $$ = Builder->CreateAdd($1, $3);
}
| constant_expression MINUS constant_expression
{
  $$ = Builder->CreateSub($1, $3);
}
| constant_expression STAR constant_expression
  {
    $$ = Builder->CreateMul($1, $3);
  }
| constant_expression DIV constant_expression
  {
    $$ = Builder->CreateSDiv($1, $3);
  }
| constant_expression MOD constant_expression
| I2P LPAREN constant_expression RPAREN {$$ = Builder->CreateIntToPtr($3, PointerType::get(Builder->getInt64Ty(),0));}
| LPAREN constant_expression RPAREN
  {
    $$ = $2;
  }
;

unary_constant_expression:
  constant {$$ = $1;}
| MINUS unary_constant_expression
{
  //assuming a negation here
  $$ = Builder->CreateNeg($2);
}
| PLUS unary_constant_expression
{
  $$ = $2;
}
| BITWISE_INVERT unary_constant_expression
{
   Builder->CreateNot($2);
}
;


constant:	          CONSTANT_INTEGER
{
  $$ = Builder->getInt64($1);
}
;


%%

Value* BuildFunction(Type* RetType, const char *name,
			   parameter_list *params)
{
  std::vector<Type*> v;
  std::vector<const char*> vname;

  if (params)
    for(auto ii : *params)
      {
	vname.push_back( ii.second );
	v.push_back( ii.first );
      }

  ArrayRef<Type*> Params(v);

  FunctionType* FunType = FunctionType::get(RetType,Params,false);

  Fun = Function::Create(FunType,GlobalValue::ExternalLinkage,
			 name,M);
  Twine T("entry");
  BasicBlock *BB = BasicBlock::Create(TheContext,T,Fun);

  /* Create an Instruction Builder */
  Builder = new IRBuilder<>(TheContext);
  Builder->SetInsertPoint(BB);

  Function::arg_iterator I = Fun->arg_begin();
  for(int i=0; I!=Fun->arg_end();i++, I++)
    {
      // map args and create allocas!
      AllocaInst *AI = Builder->CreateAlloca(v[i]);
      Builder->CreateStore(&(*I),(Value*)AI);
      symbol_insert(vname[i],(Value*)AI);
    }


  return Fun;
}

extern int verbose;
extern int line_num;
extern char *infile[];
static int   infile_cnt=0;
extern FILE * yyin;
extern int use_stdin;

int parser_error(const char *msg)
{
  if (use_stdin)
    printf("stdin:%d: Error -- %s\n",line_num,msg);
  else
    printf("%s:%d: Error -- %s\n",infile[infile_cnt-1],line_num,msg);
  return 1;
}

int internal_error(const char *msg)
{
  printf("%s:%d Internal Error -- %s\n",infile[infile_cnt-1],line_num,msg);
  return 1;
}

int yywrap() {

  if (use_stdin)
    {
      yyin = stdin;
      return 0;
    }

  static FILE * currentFile = NULL;

  if ( (currentFile != 0) ) {
    fclose(yyin);
  }

  if(infile[infile_cnt]==NULL)
    return 1;

  currentFile = fopen(infile[infile_cnt],"r");
  if(currentFile!=NULL)
    yyin = currentFile;
  else
    printf("Could not open file: %s",infile[infile_cnt]);

  infile_cnt++;

  return (currentFile)?0:1;
}

int yyerror(const char* error)
{
  parser_error("Un-resolved syntax error.");
  return 1;
}

char * get_filename()
{
  return infile[infile_cnt-1];
}

int get_lineno()
{
  return line_num;
}


void cmm_abort()
{
  parser_error("Too many errors to continue.");
  exit(1);
}
