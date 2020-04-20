	.text
	.file	"llvm-link"
	.globl	matmult                 # -- Begin function matmult
	.p2align	4, 0x90
	.type	matmult,@function
matmult:                                # @matmult
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	xorl	%r14d, %r14d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	size(%rip), %r14d
	jl	.LBB0_2
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	addl	$1, %r14d
	cmpl	size(%rip), %r14d
	jge	.LBB0_9
.LBB0_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
                                        #       Child Loop BB0_6 Depth 3
	xorl	%eax, %eax
	movl	$B, %ecx
	cmpl	size(%rip), %eax
	jl	.LBB0_4
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=2
	addl	$1, %eax
	addq	$4096, %rcx             # imm = 0x1000
	cmpl	size(%rip), %eax
	jge	.LBB0_8
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_6 Depth 3
	movslq	%r14d, %rdx
	shlq	$12, %rdx
	movslq	C(%rdx), %rsi
	movl	$0, RC(,%rsi,4)
	xorl	%esi, %esi
	cmpl	size(%rip), %esi
	jge	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                #   Parent Loop BB0_2 Depth=1
                                        #     Parent Loop BB0_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%eax, %rdi
	movslq	C(%rdx,%rdi,4), %rbx
	movslq	A(%rdx,%rdi,4), %rdi
	movss	RA(,%rdi,4), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movslq	(%rcx,%rsi,4), %rdi
	mulss	RB(,%rdi,4), %xmm0
	addss	RC(,%rbx,4), %xmm0
	movss	%xmm0, RC(,%rbx,4)
	addq	$1, %rsi
	cmpl	size(%rip), %esi
	jl	.LBB0_6
	jmp	.LBB0_7
.LBB0_9:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	cmpl	$3, %edi
	jge	.LBB1_27
# %bb.1:
	cmpl	$2, %edi
	jl	.LBB1_3
# %bb.2:
	movq	8(%rsi), %rdi
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
	xorl	%r14d, %r14d
	movl	$.L.str.2, %edi
	movl	%edx, %esi
	xorl	%eax, %eax
	callq	printf
	xorl	%ecx, %ecx
	cmpl	size(%rip), %ecx
	jl	.LBB1_5
	jmp	.LBB1_9
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_5 Depth=1
	addl	$1, %ecx
	addq	$4096, %r14             # imm = 0x1000
	cmpl	size(%rip), %ecx
	jge	.LBB1_9
.LBB1_5:                                # %.preheader3
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	xorl	%esi, %esi
	cmpl	size(%rip), %esi
	jge	.LBB1_8
	.p2align	4, 0x90
.LBB1_7:                                #   Parent Loop BB1_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	size(%rip), %edi
	movl	%ecx, %edx
	imull	%edi, %edx
	movl	%esi, %eax
	imull	%edi, %eax
	addl	%edx, %eax
	cltd
	idivl	%edi
	movl	%edx, A(%r14,%rsi,4)
	movl	size(%rip), %eax
	imull	%ecx, %eax
	addl	%esi, %eax
	movl	%eax, B(%r14,%rsi,4)
	movl	size(%rip), %edi
	movl	%ecx, %eax
	imull	%edi, %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	movl	%esi, %ebx
	imull	%edi, %ebx
	movl	%ebx, %eax
	shrl	$31, %eax
	addl	%ebx, %eax
	sarl	%eax
	addl	%edx, %eax
	cltd
	idivl	%edi
	movl	%edx, C(%r14,%rsi,4)
	addq	$1, %rsi
	cmpl	size(%rip), %esi
	jl	.LBB1_7
	jmp	.LBB1_8
.LBB1_9:                                # %.preheader2
	movl	$1, %r8d
	xorl	%r9d, %r9d
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	cmpl	size(%rip), %r11d
	jl	.LBB1_11
	jmp	.LBB1_15
	.p2align	4, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_11 Depth=1
	addl	$1, %r11d
	addq	$4096, %r10             # imm = 0x1000
	addl	%r8d, %r9d
	addl	$2, %r8d
	cmpl	size(%rip), %r11d
	jge	.LBB1_15
.LBB1_11:                               # %.preheader1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_13 Depth 2
	movl	$3, %esi
	movl	$10, %edi
	xorl	%ebx, %ebx
	cmpl	size(%rip), %ebx
	jge	.LBB1_14
	.p2align	4, 0x90
.LBB1_13:                               #   Parent Loop BB1_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2ss	%edi, %xmm0
	leal	-3(%rsi), %eax
	movslq	A(%r10,%rbx,4), %rdx
	movss	%xmm0, RA(,%rdx,4)
	cltq
	imulq	$1431655766, %rax, %rax # imm = 0x55555556
	movq	%rax, %rdx
	shrq	$63, %rdx
	shrq	$32, %rax
	addl	%edx, %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	%r11d, %eax
	cltd
	idivl	%ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movslq	B(%r10,%rbx,4), %rax
	movss	%xmm0, RB(,%rax,4)
	addl	%r11d, %esi
	addq	$1, %rbx
	addl	%r9d, %edi
	cmpl	size(%rip), %ebx
	jl	.LBB1_13
	jmp	.LBB1_14
.LBB1_15:
	xorl	%ebx, %ebx
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	callq	matmult
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$C, %eax
	movss	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	cmpl	size(%rip), %ebx
	jl	.LBB1_17
	jmp	.LBB1_23
	.p2align	4, 0x90
.LBB1_22:                               #   in Loop: Header=BB1_17 Depth=1
	addl	$2, %ebx
	addq	$8192, %rax             # imm = 0x2000
	cmpl	size(%rip), %ebx
	jge	.LBB1_23
.LBB1_17:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_19 Depth 2
	xorl	%ecx, %ecx
	cmpl	size(%rip), %ecx
	jl	.LBB1_19
	jmp	.LBB1_22
	.p2align	4, 0x90
.LBB1_21:                               #   in Loop: Header=BB1_19 Depth=2
	addq	$3, %rcx
	cmpl	size(%rip), %ecx
	jge	.LBB1_22
.LBB1_19:                               #   Parent Loop BB1_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rax,%rcx,4), %rdx
	movss	RC(,%rdx,4), %xmm2      # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm2
	jbe	.LBB1_21
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=2
	movslq	(%rax,%rcx,4), %rdx
	movss	RC(,%rdx,4), %xmm2      # xmm2 = mem[0],zero,zero,zero
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
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB1_27:
	.cfi_def_cfa_offset 32
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
