	.text
	.file	"llvm-link"
	.globl	compare                 # -- Begin function compare
	.p2align	4, 0x90
	.type	compare,@function
compare:                                # @compare
	.cfi_startproc
# %bb.0:
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	cmpeqsd	%xmm1, %xmm2
	movq	%xmm2, %rcx
	andl	$1, %ecx
	addl	$-1, %ecx
	ucomisd	%xmm1, %xmm0
	movl	$1, %eax
	cmovbel	%ecx, %eax
	retq
.Lfunc_end0:
	.size	compare, .Lfunc_end0-compare
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI1_0:
	.quad	4611686018427387904     # double 2
.LCPI1_1:
	.quad	0                       # double 0
	.text
	.globl	main
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
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$1440040, %rsp          # imm = 0x15F928
	.cfi_def_cfa_offset 1440096
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$1, %edi
	jle	.LBB1_13
# %bb.1:
	movq	8(%rsi), %rdi
	movl	$.L.str.1, %esi
	callq	fopen
	movq	%rax, %r14
	leaq	48(%rsp), %rbp
	leaq	20(%rsp), %r15
	leaq	16(%rsp), %r12
	leaq	12(%rsp), %rbx
	xorl	%r13d, %r13d
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_7:                                # %call.sqrt
                                        #   in Loop: Header=BB1_2 Depth=1
	callq	sqrt
.LBB1_8:                                # %.split
                                        #   in Loop: Header=BB1_2 Depth=1
	movsd	%xmm0, (%rbp)
	addq	$1, %r13
	addq	$24, %rbp
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	fscanf
	cmpl	$1, %eax
	jne	.LBB1_9
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	fscanf
	cmpl	$1, %eax
	jne	.LBB1_9
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	fscanf
	cmpl	$1, %eax
	sete	%al
	cmpl	$60000, %r13d           # imm = 0xEA60
	setl	%cl
	andb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB1_9
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	movl	20(%rsp), %eax
	movl	%eax, -16(%rbp)
	movl	16(%rsp), %eax
	movl	%eax, -12(%rbp)
	movl	12(%rsp), %eax
	movl	%eax, -8(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	20(%rsp), %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	16(%rsp), %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	addsd	24(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	12(%rsp), %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	addsd	24(%rsp), %xmm0         # 8-byte Folded Reload
	ucomisd	.LCPI1_1, %xmm0
	jb	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB1_8
.LBB1_9:                                # %.critedge
	movl	$.L.str.3, %edi
	movl	%r13d, %esi
	xorl	%eax, %eax
	callq	printf
	leaq	32(%rsp), %rdi
	movl	$24, %edx
	movl	$compare, %ecx
	movq	%r13, %rsi
	callq	qsort
	leaq	40(%rsp), %rbp
	xorl	%ebx, %ebx
	cmpl	%r13d, %ebx
	jge	.LBB1_12
	.p2align	4, 0x90
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %esi
	movl	-4(%rbp), %edx
	movl	(%rbp), %ecx
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	addl	$1, %ebx
	addq	$24, %rbp
	cmpl	%r13d, %ebx
	jl	.LBB1_11
.LBB1_12:
	xorl	%eax, %eax
	addq	$1440040, %rsp          # imm = 0x15F928
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_13:
	.cfi_def_cfa_offset 1440096
	movq	stderr(%rip), %rdi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, %edi
	callq	exit
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: qsort_large <file>\n"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\nSorting %d vectors based on distance from the origin.\n\n"
	.size	.L.str.3, 57

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%d %d %d\n"
	.size	.L.str.4, 10


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
