	.text
	.file	"llvm-link"
	.globl	compare                 # -- Begin function compare
	.p2align	4, 0x90
	.type	compare,@function
compare:                                # @compare
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rsp)
	movsd	16(%rsi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -32(%rsp)
	movl	$1, %eax
	ucomisd	%xmm1, %xmm0
	ja	.LBB0_2
# %bb.1:
	movsd	-32(%rsp), %xmm0        # xmm0 = mem[0],zero
	cmpeqsd	-24(%rsp), %xmm0
	movq	%xmm0, %rax
	andl	$1, %eax
	addl	$-1, %eax
.LBB0_2:
                                        # kill: def $eax killed $eax killed $rax
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$1440064, %rsp          # imm = 0x15F940
	.cfi_def_cfa_offset 1440096
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$0, 60(%rsp)
	movl	%edi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movl	$0, 8(%rsp)
	cmpl	$1, %edi
	jle	.LBB1_14
# %bb.1:
	movq	48(%rsp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.1, %esi
	callq	fopen
	movq	%rax, 32(%rsp)
	leaq	44(%rsp), %rbx
	leaq	20(%rsp), %r14
	leaq	16(%rsp), %r15
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_8:                                # %call.sqrt
                                        #   in Loop: Header=BB1_2 Depth=1
	callq	sqrt
.LBB1_9:                                # %.split
                                        #   in Loop: Header=BB1_2 Depth=1
	movslq	8(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	movsd	%xmm0, 80(%rsp,%rax,8)
	addl	$1, 8(%rsp)
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rdi
	movl	$.L.str.2, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	fscanf
	cmpl	$1, %eax
	jne	.LBB1_10
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rdi
	movl	$.L.str.2, %esi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	fscanf
	cmpl	$1, %eax
	jne	.LBB1_10
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movq	32(%rsp), %rdi
	movl	$.L.str.2, %esi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	fscanf
	cmpl	$1, %eax
	jne	.LBB1_10
# %bb.5:                                #   in Loop: Header=BB1_2 Depth=1
	cmpl	$59999, 8(%rsp)         # imm = 0xEA5F
	jg	.LBB1_10
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	movl	44(%rsp), %eax
	movslq	8(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%eax, 64(%rsp,%rcx,8)
	movl	20(%rsp), %edx
	movl	%edx, 68(%rsp,%rcx,8)
	movl	16(%rsp), %edx
	movl	%edx, 72(%rsp,%rcx,8)
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	20(%rsp), %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	addsd	24(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2sdl	16(%rsp), %xmm0
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	addsd	24(%rsp), %xmm0         # 8-byte Folded Reload
	ucomisd	.LCPI1_1, %xmm0
	jb	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_2 Depth=1
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB1_9
.LBB1_10:                               # %.critedge
	movl	8(%rsp), %esi
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movslq	8(%rsp), %rsi
	leaq	64(%rsp), %rdi
	movl	$24, %edx
	movl	$compare, %ecx
	callq	qsort
	movl	$0, 12(%rsp)
	.p2align	4, 0x90
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	cmpl	8(%rsp), %eax
	jge	.LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	movslq	12(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	movl	64(%rsp,%rax,8), %esi
	movl	68(%rsp,%rax,8), %edx
	movl	72(%rsp,%rax,8), %ecx
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	addl	$1, 12(%rsp)
	jmp	.LBB1_11
.LBB1_13:
	xorl	%eax, %eax
	addq	$1440064, %rsp          # imm = 0x15F940
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_14:
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
