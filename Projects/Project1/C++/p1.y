%{
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <list>
#include <map>

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Type.h"

#include "llvm/Bitcode/BitcodeReader.h"
#include "llvm/Bitcode/BitcodeWriter.h"
#include "llvm/Support/SystemUtils.h"
#include "llvm/Support/ToolOutputFile.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/FileSystem.h"

using namespace llvm;
using namespace std;

extern FILE *yyin;
int yylex(void);
int yyerror(const char *);

// From main.cpp
extern char *fileNameOut;
extern Module *M;
extern LLVMContext TheContext;
extern Function *Func;
extern IRBuilder<> Builder;

// Used to lookup Value associated with ID
map<string,Value*> idLookup;

%}

%union {
  int num;
  char *id;
  Value* val;
  std::list<Value*> *lst;

}

%token IDENT NUM MINUS PLUS MULTIPLY DIVIDE LPAREN RPAREN SETQ SETF AREF MIN MAX ERROR MAKEARRAY

%type <num> NUM
%type <id> IDENT
%type <val> expr token token_or_expr exprlist program
%type <lst> token_or_expr_list
%start program

%%


/*
   IMPLMENT ALL THE RULES BELOW HERE!
 */

program : exprlist
{
  /*
    IMPLEMENT: return value
    Hint: the following code is not sufficient
  */
  Builder.CreateRet($1);
  return 0;
}
;

exprlist:  exprlist expr | expr // MAYBE ADD ACTION HERE?
{
  $$ = $1;
}
| expr
{
 $$ = $1;
}
;

expr: LPAREN MINUS token_or_expr_list RPAREN
{
  // IMPLEMENT
  $$ = Builder.CreateNeg($3->front());

  /*std::list<Value*>::iterator it;
  for(it = $3->begin(); it != $3->end(); it++){
    $$ = Builder.CreateSub(Builder.getInt32(0), *it);
  }
  */
}
| LPAREN PLUS token_or_expr_list RPAREN
{
  // IMPLEMENT
  std::list<Value*>::iterator it;
  //$$ = Builder.CreateLoad(*it);
  for(it = $3->begin(); it != $3->end(); it++){
    if(it == $3->begin()){
     $$ = Builder.CreateAdd(*it, Builder.getInt32(0));
    }

    else $$ = Builder.CreateAdd(*it, $$);
  }
}
| LPAREN MULTIPLY token_or_expr_list RPAREN
{
  // IMPLEMENT
  std::list<Value*>::iterator it;
  for(it = $3->begin(); it != $3->end(); it++){
    if(it == $3->begin()){
     $$ = Builder.CreateAdd(*it, Builder.getInt32(0));
    }

    else $$ = Builder.CreateMul(*it, $$);
  }
}
| LPAREN DIVIDE token_or_expr_list RPAREN
{
  // IMPLEMENT
  std::list<Value*>::iterator it;
  for(it = $3->begin(); it != $3->end(); it++){
    if(it == $3->begin()){
     $$ = Builder.CreateAdd(*it, Builder.getInt32(0));
    }

    else $$ = Builder.CreateSDiv($$, *it);
  }
}
| LPAREN SETQ IDENT token_or_expr RPAREN
{
  // IMPLEMENT
}
| LPAREN MIN token_or_expr_list RPAREN
{
  Value * cmp = Builder.CreateICmpSLT($3->front(), $3->back());
  $$ = Builder.CreateSelect(cmp, $3->front(), $3->back());
  // HINT: select instruction
  //compare icmp(sgt, slt), sel(condition = compare)
 /* std::list<Value*>::iterator it;
  Value * val;
  for(it = $3->begin(); it != $3->end(); it++){
    if(it == $3->begin()){
     val = $3->front();
    }
    else{
      Value * cmp = Builder.CreateICmpSLT(val, *it);
      val = Builder.CreateSelect(cmp, val, *it);
    }
  }
  $$ = val;
*/
}
| LPAREN MAX token_or_expr_list RPAREN
{
  // HINT: select instruction

}
| LPAREN SETF token_or_expr token_or_expr RPAREN
{
  // ECE 566 only
  // IMPLEMENT
}
| LPAREN AREF IDENT token_or_expr RPAREN
{
  // IMPLEMENT

}
| LPAREN MAKEARRAY IDENT NUM token_or_expr RPAREN
{
  // ECE 566 only
  // IMPLEMENT

}
;

token_or_expr_list:   token_or_expr_list token_or_expr
{
  // IMPLEMENT
  //Add new token or expr to end of list
  $1->push_back($2);
  $$ = $1;
}
| token_or_expr
{
  // IMPLEMENT
  //Create list for token or expr
  // HINT: $$ = new std::list<Value*>;
  $$ = new std::list<Value*>;
  $$->push_back($1);
}
;

token_or_expr :  token
{
  // IMPLEMENT
  //ID or Num
  $$ = $1;

}
| expr
{
  // IMPLEMENT
  $$ = $1;
}
;

token:   IDENT
{
  if (idLookup.find($1) != idLookup.end())
    $$ = Builder.CreateLoad(idLookup[$1]);
  else
      abort();
}
| NUM
{
  // IMPLEMENT
  $$  = Builder.getInt32($1);

}
;

%%

void initialize()
{
  string s = "arg_array";
  idLookup[s] = (Value*)(Func->arg_begin()+1);

  string s2 = "arg_size";
  Argument *a = Func->arg_begin();
  Value * v = Builder.CreateAlloca(a->getType());
  Builder.CreateStore(a,v);
  idLookup[s2] = (Value*)v;

  /* IMPLEMENT: add something else here if needed */
}

extern int line;

int yyerror(const char *msg)
{
  printf("%s at line %d.\n",msg,line);
  return 0;
}
