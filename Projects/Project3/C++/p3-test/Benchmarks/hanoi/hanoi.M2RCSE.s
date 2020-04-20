	.text
	.file	"llvm-link"
	.globl	mov                     # -- Begin function mov
	.p2align	4, 0x90
	.type	mov,@function
mov:                                    # @mov
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movl	%esi, %ebx
	cmpl	$1, %edi
	jne	.LBB0_2
# %bb.1:
	movslq	%ebx, %rax
	addl	$-1, num(,%rax,4)
	movslq	%r14d, %rax
	addl	$1, num(,%rax,4)
	jmp	.LBB0_3
.LBB0_2:
	movl	%edi, %ebp
	leal	(%rbx,%r14), %eax
	movl	$6, %r15d
	subl	%eax, %r15d
	addl	$-1, %ebp
	movl	%ebp, %edi
	movl	%ebx, %esi
	movl	%r15d, %edx
	callq	mov
	movl	$1, %edi
	movl	%ebx, %esi
	movl	%r14d, %edx
	callq	mov
	movl	%ebp, %edi
	movl	%r15d, %esi
	movl	%r14d, %edx
	callq	mov
.LBB0_3:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	cmpl	$1, %edi
	jle	.LBB1_7
# %bb.1:
	movl	%edi, %r15d
	movq	8(%r14), %rdi
	callq	atoi
	movl	%eax, %r12d
	movl	$10, %ebp
	cmpl	$3, %r15d
	jl	.LBB1_3
# %bb.2:
	movq	16(%r14), %rdi
	callq	atoi
	movl	%eax, %ebp
.LBB1_3:
	movl	%ebp, num+4(%rip)
	xorl	%ebx, %ebx
	cmpl	%r12d, %ebx
	jge	.LBB1_6
	.p2align	4, 0x90
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movl	%ebp, %edi
	movl	$1, %esi
	movl	$3, %edx
	callq	mov
	addq	$1, iter(%rip)
	addl	$1, %ebx
	cmpl	%r12d, %ebx
	jl	.LBB1_5
.LBB1_6:
	xorl	%edi, %edi
	callq	exit
.LBB1_7:
	movq	(%r14), %rsi
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
