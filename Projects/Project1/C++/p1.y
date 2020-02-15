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
map<Value*,Value*> setfmap;

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
%type <val> expr token token_or_expr program
%type <lst> token_or_expr_list exprlist
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
  Value * val = $1->back();
  Builder.CreateRet(val);
  return 0;
}
;

exprlist:  exprlist expr// MAYBE ADD ACTION HERE?
{
  $1->push_back($2);
  $$ = $1;

}
| expr
{
 $$ = new std::list<Value*>;
 $$->push_back($1);
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
  //map<string,Value*> idLookup;
  //idLookup[$3] = $4;
  Value * v = Builder.CreateAlloca($4->getType());
  Builder.CreateStore($4,v);
  idLookup[$3] = (Value*)v;
  //idLookup.insert(std::pair<char *, Value *>($3,$4));
  $$ = $4;
}
| LPAREN MIN token_or_expr_list RPAREN
{
  // HINT: select instruction
  //compare icmp(sgt, slt), sel(condition = compare)
  std::list<Value*>::iterator it;
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

}
| LPAREN MAX token_or_expr_list RPAREN
{
  // HINT: select instruction
  std::list<Value*>::iterator it;
  Value * val;
  for(it = $3->begin(); it != $3->end(); it++){
    if(it == $3->begin()){
     val = $3->front();
    }
    else{
      Value * cmp = Builder.CreateICmpSGT(val, *it);
      val = Builder.CreateSelect(cmp, val, *it);
    }
  }
  $$ = val;


}
| LPAREN SETF token_or_expr token_or_expr RPAREN
{
  // ECE 566 only
  // IMPLEMENT
  //Value * v = Builder.CreateIntToPtr(idLookup[$3], PointerType::get(Builder.getInt32Ty(),0));
  Builder.CreateStore($4,setfmap[$3]);
 // idLookup[$3] = (Value*)v;
 $$ = $4;
}
| LPAREN AREF IDENT token_or_expr RPAREN
{
  // IMPLEMENT
  Value * tmp = Builder.CreateIntToPtr(idLookup[$3], PointerType::get(Builder.getInt32Ty(),0));
  $$ = Builder.CreateLoad(tmp);
  setfmap[$$] = tmp;

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
  //imm val or val associated with id
  $$ = $1;

}
| expr
{
  // IMPLEMENT
  //output of the epression
  $$ = $1;
}
;

token:   IDENT
{
  //if id, find val for the id in the map
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
