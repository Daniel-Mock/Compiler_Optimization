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
#include "llvm/Analysis/InstructionSimplify.h"
#include "llvm/Transforms/Utils/Local.h"
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

bool isDead(Instruction &I)
{
  int opcode = I.getOpcode();
  switch(opcode){
  case Instruction::Add:
  case Instruction::FNeg:
  case Instruction::FAdd: 	
  case Instruction::Sub:
  case Instruction::FSub: 	
  case Instruction::Mul:
  case Instruction::FMul: 	
  case Instruction::UDiv:	
  case Instruction::SDiv:	
  case Instruction::FDiv:	
  case Instruction::URem: 	
  case Instruction::SRem: 	
  case Instruction::FRem: 	
  case Instruction::Shl: 	
  case Instruction::LShr: 	
  case Instruction::AShr: 	
  case Instruction::And: 	
  case Instruction::Or: 	
  case Instruction::Xor: 	
  case Instruction::Alloca:
  case Instruction::GetElementPtr: 	
  case Instruction::Trunc: 	
  case Instruction::ZExt: 	
  case Instruction::SExt: 	
  case Instruction::FPToUI: 	
  case Instruction::FPToSI: 	
  case Instruction::UIToFP: 	
  case Instruction::SIToFP: 	
  case Instruction::FPTrunc: 	
  case Instruction::FPExt: 	
  case Instruction::PtrToInt: 	
  case Instruction::IntToPtr: 	
  case Instruction::BitCast: 	
  case Instruction::AddrSpaceCast: 	
  case Instruction::ICmp: 	
  case Instruction::FCmp: 	
  case Instruction::PHI: 
  case Instruction::Select: 
  case Instruction::ExtractElement: 	
  case Instruction::InsertElement: 	
  case Instruction::ShuffleVector: 	
  case Instruction::ExtractValue: 	
  case Instruction::InsertValue: 
    if ( I.use_begin() == I.use_end() )
      {
	return true;
      }    
    break;


  case Instruction::Load:
    {
      LoadInst *li = dyn_cast<LoadInst>(&I);
      if (li->isVolatile())
	return false;


      if ( I.use_begin() == I.use_end() )
	{
	  return true;
	}
      
      break;
    }
  
  default: // any other opcode fails (includes stores and branches)
    // we don't know about this case, so conservatively fail!
    return false;
  }
  
  return false;
}


static void CSE_Dead(Instruction &I)
{
  bool check = isInstructionTriviallyDead(&I);
  if (check) {
    CSEDead++;
    I.eraseFromParent();
    } 
  else if(isDead(I)){
      abort();
      }      
}



static void CSE_Simplify(Instruction &I)
{
  if (Value * V = SimplifyInstruction(&I,I.getModule()->getDataLayout()))
  {
    CSESimplify++;
    I.replaceAllUsesWith(V);
  }
    
}

static void CSE_Elim(Instruction &I)
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
					bb_it--;
				        target.eraseFromParent();
				}
			}
		}
	}
}


static void CSE_Loads(Instruction &I)
{
	LoadInst *LI = dyn_cast<LoadInst>(&I);
	if (!LI)
		return;
	
	BasicBlock &BB = *I.getParent();
	BasicBlock::iterator bb_it = BB.begin();
	while (&*bb_it != &I)
		bb_it++;
	for (bb_it++; bb_it!=BB.end()&&!isa<StoreInst>(*bb_it)&&!isa<CallInst>(*bb_it); bb_it++) {
		LoadInst *load = dyn_cast<LoadInst>(&*bb_it);
		if (load && !load->isVolatile() && load->getType() == LI->getType()
					&& load->getPointerOperand() == LI->getPointerOperand()) {
			CSELdElim++;
			load->replaceAllUsesWith(LI);
			bb_it--;
			load->eraseFromParent();
		
		}
	}
}

static void CSE_Stores(Instruction &I)
{
	StoreInst *SI = dyn_cast<StoreInst>(&I);
	if (!SI)
          return;	
	BasicBlock &BB = *I.getParent();
	BasicBlock::iterator bb_it = BB.begin();
	while (&*bb_it != &I)
		bb_it++;
	for (bb_it++; bb_it!=BB.end()&&!isa<CallInst>(*bb_it); bb_it++) {
		StoreInst *store = dyn_cast<StoreInst>(&*bb_it);
		if(store){	
		if (!store->isVolatile() && store->getPointerOperand() == SI->getPointerOperand()
					&& store->getValueOperand()->getType() == SI->getValueOperand()->getType()) {
				CSERStElim++;
                                bb_it--;
				store->eraseFromParent();
				return;
		}
		else return;
	}
		
		LoadInst *load = dyn_cast<LoadInst>(&*bb_it);
		if (load) {
			if (!load->isVolatile() && load->getPointerOperand() == SI->getPointerOperand()
					&& load->getType() == SI->getValueOperand()->getType()) {
				CSELdStElim++;
				load->replaceAllUsesWith(SI->getValueOperand());
				bb_it--;
			        load->eraseFromParent();
				return;
			} else {
				return;
			}
		}	
        
        }
}
static void BB_Iter(BasicBlock &BB)
{
	for (BasicBlock::iterator bb_it=BB.begin(); bb_it!=BB.end(); bb_it++) {
		Instruction &I = *bb_it;
                CSE_Dead(I);
	        CSE_Simplify(I);
		CSE_Elim(I);
		CSE_Loads(I);
		CSE_Stores(I);
	}
}

void LLVMCommonSubexpressionElimination_Cpp(Module *M)
{
  // for each function, f:
  //   FunctionCSE(f);

  for (Module::iterator mod_it=M->begin();mod_it!=M->end();mod_it++)
    for (Function::iterator fun_it=mod_it->begin(); fun_it!=mod_it->end(); fun_it++)
      BB_Iter(*fun_it);



  // print out summary of results
  fprintf(stderr,"CSE_Dead.....%d\n", CSEDead);
  fprintf(stderr,"CSE_Basic.....%d\n", CSEElim);
  fprintf(stderr,"CSE_Simplify..%d\n", CSESimplify);
  fprintf(stderr,"CSE_RLd.......%d\n", CSELdElim);
  fprintf(stderr,"CSE_RSt.......%d\n", CSERStElim);
  fprintf(stderr,"CSE_LdSt......%d\n", CSELdStElim);
}
