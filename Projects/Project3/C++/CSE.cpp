/*
 * File: CSE_Cpp.cpp
 *
 * Description:
 *   This is where you implement the C++ version of project 4 support.
 */

/* LLVM Header Files */
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Type.h"
#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/IR/Dominators.h"
#include "llvm/ADT/GraphTraits.h"
#include "llvm/ADT/SCCIterator.h"
#include "llvm/IR/ValueMap.h"
#include "llvm/Support/GraphWriter.h"
#include "llvm/IR/InstIterator.h"

#include <map>

using namespace llvm;

// ^^^^
// must be after using namespace llvm; sorry for the ugly code
#include "CSE.h"
#include "dominance.h"
int CSEDead=0;
int CSEElim=0;
int CSESimplify=0;
int CSELdElim=0;
int CSELdStElim=0;
int CSERStElim=0;

static void BasicCSE(Instruction &I)
{
	if (isa<LoadInst>(I) || isa<StoreInst>(I) || isa<VAArgInst>(I)
			|| isa<CallInst>(I) || isa<AllocaInst>(I) || isa<FCmpInst>(I))
		return;

	Function *F = I.getFunction();
        DominatorTreeBase<BasicBlock,false> DTB;
	DTB.recalculate(*F);
	for (Function::iterator fun_it=F->begin(); fun_it!=F->end(); fun_it++) {
		BasicBlock &BB = *fun_it;
		if (I.getParent() == &BB) {
			BasicBlock::iterator bb_it = BB.begin();
			while (&*bb_it != &I)
				bb_it++;
			for (bb_it++; bb_it!=BB.end(); bb_it++) {
				Instruction &target = *bb_it;
				if (I.isIdenticalTo(&target)) {
					CSEElim++;
					target.replaceAllUsesWith(&I);
					bb_it = target.eraseFromParent()--;
				}
			}
		} 
	}
}


static void BasicBlockWork(BasicBlock &BB)
{
	for (BasicBlock::iterator bb_it=BB.begin(); bb_it!=BB.end(); bb_it++) {
		Instruction &I = *bb_it;

		BasicCSE(I);
	}
}

void LLVMCommonSubexpressionElimination_Cpp(Module *M)
{
  // for each function, f:
  //   FunctionCSE(f);

  for (Module::iterator mod_it=M->begin();mod_it!=M->end();mod_it++)
    for (Function::iterator fun_it=mod_it->begin(); fun_it!=mod_it->end(); fun_it++)
      BasicBlockWork(*fun_it);



  // print out summary of results
  fprintf(stderr,"CSE_Dead.....%d\n", CSEDead);
  fprintf(stderr,"CSE_Basic.....%d\n", CSEElim);
  fprintf(stderr,"CSE_Simplify..%d\n", CSESimplify);
  fprintf(stderr,"CSE_RLd.......%d\n", CSELdElim);
  fprintf(stderr,"CSE_RSt.......%d\n", CSERStElim);
  fprintf(stderr,"CSE_LdSt......%d\n", CSELdStElim);  
}

