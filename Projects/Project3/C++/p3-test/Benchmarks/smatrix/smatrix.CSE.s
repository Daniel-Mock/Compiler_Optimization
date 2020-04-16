	.text
	.file	"llvm-link"
	.globl	matmult                 # -- Begin function matmult
	.p2align	4, 0x90
	.type	matmult,@function
matmult:                                # @matmult
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 12(%rsp)
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	addl	$1, %eax
	movl	%eax, 12(%rsp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #       Child Loop BB0_5 Depth 3
	movl	12(%rsp), %eax
	cmpl	size(%rip), %eax
	jge	.LBB0_9
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$0, 20(%rsp)
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	addl	$1, 20(%rsp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_5 Depth 3
	movl	20(%rsp), %ecx
	movslq	12(%rsp), %rax
	cmpl	size(%rip), %ecx
	jge	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	shlq	$12, %rax
	movslq	C(%rax), %rax
	movl	$0, RC(,%rax,4)
	movl	$0, 16(%rsp)
	.p2align	4, 0x90
.LBB0_5:                                #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	16(%rsp), %eax
	cmpl	size(%rip), %eax
	jge	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=3
	movslq	12(%rsp), %rax
	shlq	$12, %rax
	movslq	20(%rsp), %rcx
	movslq	C(%rax,%rcx,4), %rdx
	movslq	A(%rax,%rcx,4), %rax
	movss	RA(,%rax,4), %xmm0      # xmm0 = mem[0],zero,zero,zero
	shlq	$12, %rcx
	movslq	16(%rsp), %rax
	movslq	B(%rcx,%rax,4), %rcx
	mulss	RB(,%rcx,4), %xmm0
	addss	RC(,%rdx,4), %xmm0
	movss	%xmm0, RC(,%rdx,4)
	addl	$1, %eax
	movl	%eax, 16(%rsp)
	jmp	.LBB0_5
.LBB0_9:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	matmult, .Lfunc_end0-matmult
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI1_0:
	.long	1245125376              # float 3.0E+6
.LCPI1_1:
	.long	1232348160              # float 1.0E+6
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$0, 28(%rsp)
	movl	%edi, 12(%rsp)
	movq	%rsi, 16(%rsp)
	cmpl	$3, %edi
	jge	.LBB1_27
# %bb.1:
	cmpl	$2, 12(%rsp)
	jl	.LBB1_3
# %bb.2:
	movq	16(%rsp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	cmpl	$1024, %eax             # imm = 0x400
	movl	$1024, %ecx             # imm = 0x400
	movl	%eax, %edx
	cmovgl	%ecx, %edx
	cmpl	$2, %eax
	cmovll	%ecx, %edx
	movl	%edx, size(%rip)
.LBB1_3:
	movl	size(%rip), %edx
	movl	$.L.str.2, %edi
	movl	%edx, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 4(%rsp)
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_4 Depth=1
	addl	$1, %ecx
	movl	%ecx, 4(%rsp)
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
	movl	4(%rsp), %eax
	cmpl	size(%rip), %eax
	jge	.LBB1_9
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	movl	$0, 8(%rsp)
	.p2align	4, 0x90
.LBB1_6:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%rsp), %eax
	movl	4(%rsp), %ecx
	cmpl	size(%rip), %eax
	jge	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=2
	movl	size(%rip), %esi
	imull	%esi, %ecx
	movslq	8(%rsp), %rdi
	movl	%edi, %eax
	imull	%esi, %eax
	addl	%ecx, %eax
	cltd
	idivl	%esi
	movslq	4(%rsp), %rax
	shlq	$12, %rax
	movl	%edx, A(%rax,%rdi,4)
	movslq	4(%rsp), %rax
	movl	size(%rip), %ecx
	imull	%eax, %ecx
	movslq	8(%rsp), %rdx
	addl	%edx, %ecx
	shlq	$12, %rax
	movl	%ecx, B(%rax,%rdx,4)
	movslq	4(%rsp), %rcx
	movl	size(%rip), %esi
	movl	%ecx, %eax
	imull	%esi, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	movslq	8(%rsp), %r8
	movl	%r8d, %edi
	imull	%esi, %edi
	movl	%edi, %eax
	shrl	$31, %eax
	addl	%edi, %eax
	sarl	%eax
	addl	%edx, %eax
	cltd
	idivl	%esi
	shlq	$12, %rcx
	movl	%edx, C(%rcx,%r8,4)
	addl	$1, 8(%rsp)
	jmp	.LBB1_6
.LBB1_9:
	movl	$0, 4(%rsp)
	jmp	.LBB1_10
	.p2align	4, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_10 Depth=1
	addl	$1, %edx
	movl	%edx, 4(%rsp)
.LBB1_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
	movl	4(%rsp), %eax
	cmpl	size(%rip), %eax
	jge	.LBB1_15
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=1
	movl	$0, 8(%rsp)
	.p2align	4, 0x90
.LBB1_12:                               #   Parent Loop BB1_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%rsp), %eax
	movl	4(%rsp), %edx
	cmpl	size(%rip), %eax
	jge	.LBB1_14
# %bb.13:                               #   in Loop: Header=BB1_12 Depth=2
	movslq	8(%rsp), %rcx
	imull	%ecx, %edx
	movslq	4(%rsp), %rax
	imull	%eax, %edx
	addl	$10, %edx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%edx, %xmm0
	movl	%ecx, %edx
	imull	%eax, %edx
	movq	%rax, %rsi
	shlq	$12, %rsi
	movslq	A(%rsi,%rcx,4), %rdi
	movss	%xmm0, RA(,%rdi,4)
	movslq	%edx, %r8
	imulq	$1431655766, %r8, %rdi  # imm = 0x55555556
	movq	%rdi, %rdx
	shrq	$63, %rdx
	shrq	$32, %rdi
	addl	%edx, %edi
	negl	%edi
	leal	(%r8,%rdi), %edi
	addl	$3, %edi
                                        # kill: def $eax killed $eax killed $rax
	cltd
	idivl	%edi
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movslq	B(%rsi,%rcx,4), %rax
	movss	%xmm0, RB(,%rax,4)
	leal	1(%rcx), %eax
	movl	%eax, 8(%rsp)
	jmp	.LBB1_12
.LBB1_15:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	callq	matmult
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 4(%rsp)
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB1_16
	.p2align	4, 0x90
.LBB1_22:                               #   in Loop: Header=BB1_16 Depth=1
	addl	$2, %eax
	movl	%eax, 4(%rsp)
.LBB1_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_18 Depth 2
	movl	4(%rsp), %eax
	cmpl	size(%rip), %eax
	jge	.LBB1_23
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=1
	movl	$0, 8(%rsp)
	jmp	.LBB1_18
	.p2align	4, 0x90
.LBB1_21:                               #   in Loop: Header=BB1_18 Depth=2
	addl	$3, 8(%rsp)
.LBB1_18:                               #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%rsp), %ecx
	movslq	4(%rsp), %rax
	cmpl	size(%rip), %ecx
	jge	.LBB1_22
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=2
	shlq	$12, %rax
	movslq	8(%rsp), %rcx
	movslq	C(%rax,%rcx,4), %rax
	movss	RC(,%rax,4), %xmm2      # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jbe	.LBB1_21
# %bb.20:                               #   in Loop: Header=BB1_18 Depth=2
	movslq	4(%rsp), %rax
	shlq	$12, %rax
	movslq	8(%rsp), %rcx
	movslq	C(%rax,%rcx,4), %rax
	movss	RC(,%rax,4), %xmm2      # xmm2 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm2
	cvtss2sd	%xmm2, %xmm2
	addsd	total(%rip), %xmm2
	movsd	%xmm2, total(%rip)
	jmp	.LBB1_21
.LBB1_23:
	cmpl	$64, size(%rip)
	movsd	total(%rip), %xmm0      # xmm0 = mem[0],zero
	jne	.LBB1_25
# %bb.24:
	movl	$.L.str.5, %edi
	jmp	.LBB1_26
.LBB1_25:
	movl	$.L.str.6, %edi
.LBB1_26:
	movb	$1, %al
	callq	printf
	xorl	%eax, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_27:
	.cfi_def_cfa_offset 48
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.type	size,@object            # @size
	.data
	.globl	size
	.p2align	2
size:
	.long	64                      # 0x40
	.size	size, 4

	.type	total,@object           # @total
	.bss
	.globl	total
	.p2align	3
total:
	.quad	0                       # double 0
	.size	total, 8

	.type	RC,@object              # @RC
	.comm	RC,4194304,16
	.type	C,@object               # @C
	.comm	C,4194304,16
	.type	RA,@object              # @RA
	.comm	RA,4194304,16
	.type	A,@object               # @A
	.comm	A,4194304,16
	.type	RB,@object              # @RB
	.comm	RB,4194304,16
	.type	B,@object               # @B
	.comm	B,4194304,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Native Matrix Multiplication\n"
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"usage:\n\tsmatrix [size]\n"
	.size	.L.str.1, 24

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Matrix Multiplication Kernel (%dx%d)\n"
	.size	.L.str.2, 38

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Phase 2\n"
	.size	.L.str.3, 9

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Phase 3\n"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Verification total=%g should be 31599.2\n"
	.size	.L.str.5, 41

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Verification total=%g\n"
	.size	.L.str.6, 23


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
