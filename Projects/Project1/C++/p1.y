%{
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <list>
#include <map>
#include <iostream>

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

program : exprlist
{
  /*
    Return last expression in list of expressions. 
    This is the final return value.
  */
  Value * val = $1->back();
  Builder.CreateRet(val);
  return 0;
}
;

exprlist:  exprlist expr// MAYBE ADD ACTION HERE?
{
  /*Append expression to the list created to hold epressions */
  $1->push_back($2);
  $$ = $1;

}
| expr
{
 /*Create new list to hold expressions and append first expression to the list */
 $$ = new std::list<Value*>;
 $$->push_back($1);
}
;

expr: LPAREN MINUS token_or_expr_list RPAREN
{
  /*
   Error Handling: If list is greater than 1, return error.
   Only 1 operand used for negation 
  */
   if($3->size() > 1){
    cout << "########################################\n";
    cout << "ERROR: Only 1 operand accepted for this command!\n";
    cout << "Operand Size: ";
    cout << $3->size();
    cout << "\n";
    cout << "########################################\n";
    abort();
    }
   //If only 1 operand, return the negation of it
   $$ = Builder.CreateNeg($3->front());

}
| LPAREN PLUS token_or_expr_list RPAREN
{
  //Create itorator to traverse token list
  std::list<Value*>::iterator it;
  /*
    Traverse list, if first element, initialize return value to it
    If past first element, add current element to the current return value 
  */
  
  for(it = $3->begin(); it != $3->end(); it++){
    if(it == $3->begin()){
     $$ = Builder.CreateAdd(*it, Builder.getInt32(0));
    }

    else $$ = Builder.CreateAdd(*it, $$);
  }
}
| LPAREN MULTIPLY token_or_expr_list RPAREN
{
  //Create itorator to traverse token list
  std::list<Value*>::iterator it;

  /*
    Traverse list, if first element, initialize return value to it
    If past first element, multiply current element with the current return value 
  */
 
  for(it = $3->begin(); it != $3->end(); it++){
    if(it == $3->begin()){
     $$ = Builder.CreateAdd(*it, Builder.getInt32(0));
    }

    else $$ = Builder.CreateMul(*it, $$);
  }
}
| LPAREN DIVIDE token_or_expr_list RPAREN
{
  //Create Itorator to traverse token list 
  std::list<Value*>::iterator it;

  /*
    Traverse list, if first element, initialize return value to it
    If past first element, Check if val is zero. If so, return error code. 
    If not, divide current element by the current return value 
  */
 
  for(it = $3->begin(); it != $3->end(); it++){
    if(it == $3->begin()){
     $$ = Builder.CreateAdd(*it, Builder.getInt32(0));
    }
    
    else{
      ConstantInt *ci = dyn_cast<ConstantInt>(*it);
      if(ci->getZExtValue() == 0){
        cout << "########################################\n";
        cout << "ERROR: Cannot Divide by Zero!\n";
        cout << "Val: ";
        cout << ci->getZExtValue();
        cout << "\n";
        cout << "########################################\n";
        abort();
      }
            $$ = Builder.CreateSDiv($$, *it);
    } 
 }
}
| LPAREN SETQ IDENT token_or_expr RPAREN
{
 /*
  Allocate Memoy to store value of variable in. 
  Store the value in allocated memory.
  Add Memory location to idLookup table of the ID of var. 
  Return the value stored at the location. 
 */

  Value * v = Builder.CreateAlloca($4->getType());
  Builder.CreateStore($4,v);
  idLookup[$3] = (Value*)v;
  $$ = $4;
}
| LPAREN MIN token_or_expr_list RPAREN
{
  /*
    Create Itorator to traverse token list.
    If first element in list, initialize variable to that element.
    If past first element in list, compare current element to the element
    in the variable.
    Update variable to the smaller value.
    After for loop finishes, return value in the variable. 
  */

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

  /*
    Create Itorator to traverse token list.
    If first element in list, initialize variable to that element.
    If past first element in list, compare current element to the element
    in the variable.
    Update variable to the larger value.
    After for loop finishes, return value in the variable. 
  */

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
  /*
    Get the pointer that $3 at operand 0 takes in from aref and
    assign it to User * val.
    Store $4 at the location pointed to by val.
  */
  User * val = (User*) $3;
  Builder.CreateStore($4,val->getOperand(0));
  $$ = $4;
}
| LPAREN AREF IDENT token_or_expr RPAREN
{
  /*
    Generate a pointer Value * tmp that points to the array referenced in the idlookup
    table at location $3 with an offset of $4. 
    Load and return the value in the memory location that tmp points to. 
  */

  Value * tmp = Builder.CreateGEP(idLookup[$3], $4);
  $$ = Builder.CreateLoad(tmp);

}
| LPAREN MAKEARRAY IDENT NUM token_or_expr RPAREN
{
  /*
    Create an int32 variable num with the value in NUM.
    Allocate space in memory of size of type($5) times num. 
    Create a pointer that points to the first element of the array.
    Iterate through the array and store $5 in each element of array.
    Add the array pointer to the idLookup table at location IDENT.
    Return the value the array was initialized to. 
  */

  Value* num = Builder.getInt32($4);
  Value * v = Builder.CreateAlloca($5->getType(), num); 
  Value * ref = v;

  for(int i = 0; i <= $4; i++){
   Builder.CreateStore($5,(v));
   v = Builder.CreateGEP(v, Builder.getInt64(1));
  }
  idLookup[$3] = ref;
  $$  = $5;
}
;

token_or_expr_list:   token_or_expr_list token_or_expr
{
  //Add new token or expr to end of list
  $1->push_back($2);
  $$ = $1;
}
| token_or_expr
{
  //Create list for token or expr
  //Add first token or expression to the list.
  $$ = new std::list<Value*>;
  $$->push_back($1);
}
;

token_or_expr :  token
{
  //imm val or val associated with id
  //Return the Token
  $$ = $1;

}
| expr
{
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
  //Create an int32 with the value of NUM
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

}

extern int line;

int yyerror(const char *msg)
{
  printf("%s at line %d.\n",msg,line);
  return 0;
}
