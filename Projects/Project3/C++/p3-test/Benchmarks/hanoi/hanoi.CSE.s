	.text
	.file	"llvm-link"
	.globl	mov                     # -- Begin function mov
	.p2align	4, 0x90
	.type	mov,@function
mov:                                    # @mov
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movl	%edx, 8(%rsp)
	cmpl	$1, %edi
	jne	.LBB0_2
# %bb.1:
	movslq	12(%rsp), %rax
	addl	$-1, num(,%rax,4)
	movslq	8(%rsp), %rax
	addl	$1, num(,%rax,4)
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB0_2:
	.cfi_def_cfa_offset 32
	movl	12(%rsp), %esi
	movl	8(%rsp), %eax
	addl	%esi, %eax
	movl	$6, %edx
	subl	%eax, %edx
	movl	%edx, 20(%rsp)
	movl	16(%rsp), %edi
	addl	$-1, %edi
	callq	mov
	movl	12(%rsp), %esi
	movl	8(%rsp), %edx
	movl	$1, %edi
	callq	mov
	movl	16(%rsp), %edi
	addl	$-1, %edi
	movl	20(%rsp), %esi
	movl	8(%rsp), %edx
	callq	mov
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	mov, .Lfunc_end0-mov
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$0, 36(%rsp)
	movl	%edi, 20(%rsp)
	movq	%rsi, 24(%rsp)
	movl	$10, 8(%rsp)
	cmpl	$1, %edi
	jle	.LBB1_7
# %bb.1:
	movq	8(%rsi), %rdi
	callq	atoi
	movl	%eax, 16(%rsp)
	cmpl	$3, 20(%rsp)
	jl	.LBB1_3
# %bb.2:
	movq	24(%rsp), %rax
	movq	16(%rax), %rdi
	callq	atoi
	movl	%eax, 8(%rsp)
.LBB1_3:
	movl	8(%rsp), %eax
	movl	%eax, num+4(%rip)
	movl	$0, 12(%rsp)
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	cmpl	16(%rsp), %eax
	jge	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	movl	8(%rsp), %edi
	movl	$1, %esi
	movl	$3, %edx
	callq	mov
	addq	$1, iter(%rip)
	addl	$1, 12(%rsp)
	jmp	.LBB1_4
.LBB1_6:
	xorl	%edi, %edi
	callq	exit
.LBB1_7:
	movq	(%rsi), %rsi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	SCCSid,@object          # @SCCSid
	.data
	.globl	SCCSid
	.p2align	4
SCCSid:
	.asciz	"@(#) @(#)hanoi.c:3.3 -- 5/15/91 19:30:20"
	.size	SCCSid, 41

	.type	iter,@object            # @iter
	.bss
	.globl	iter
	.p2align	3
iter:
	.quad	0                       # 0x0
	.size	iter, 8

	.type	num,@object             # @num
	.comm	num,16,16
	.type	cnt,@object             # @cnt
	.comm	cnt,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: %s iterations [disks]\n"
	.size	.L.str, 30


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
