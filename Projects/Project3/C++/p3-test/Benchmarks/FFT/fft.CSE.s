	.text
	.file	"llvm-link"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movl	$0, 100(%rsp)
	movl	%edi, 84(%rsp)
	movq	%rsi, 72(%rsp)
	movl	$0, 28(%rsp)
	cmpl	$2, %edi
	jle	.LBB0_22
# %bb.1:
	cmpl	$4, 84(%rsp)
	jne	.LBB0_3
# %bb.2:
	movq	72(%rsp), %rax
	movq	24(%rax), %rdi
	movl	$.L.str.4, %esi
	movl	$2, %edx
	callq	strncmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	%ecx, 28(%rsp)
.LBB0_3:
	movq	72(%rsp), %rax
	movq	16(%rax), %rdi
	callq	atoi
	movl	%eax, 4(%rsp)
	movq	72(%rsp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, 8(%rsp)
	movl	$1, %edi
	callq	srand
	movl	4(%rsp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 16(%rsp)
	movl	4(%rsp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 64(%rsp)
	movl	4(%rsp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 56(%rsp)
	movl	4(%rsp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 48(%rsp)
	movl	8(%rsp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 40(%rsp)
	movl	8(%rsp), %edi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 32(%rsp)
	movl	$0, (%rsp)
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsp), %eax
	cmpl	8(%rsp), %eax
	jae	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	callq	rand
	cltq
	imulq	$274877907, %rax, %rcx  # imm = 0x10624DD3
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$38, %rcx
	addl	%edx, %ecx
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	subl	%ecx, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	40(%rsp), %rax
	movl	(%rsp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	callq	rand
	cltq
	imulq	$274877907, %rax, %rcx  # imm = 0x10624DD3
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$38, %rcx
	addl	%edx, %ecx
	imull	$1000, %ecx, %ecx       # imm = 0x3E8
	subl	%ecx, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movq	32(%rsp), %rax
	movl	(%rsp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, (%rsp)
	jmp	.LBB0_4
.LBB0_6:
	movl	$0, (%rsp)
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	addl	$1, (%rsp)
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movl	(%rsp), %eax
	cmpl	4(%rsp), %eax
	jae	.LBB0_15
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movq	16(%rsp), %rax
	movl	(%rsp), %ecx
	movl	$0, (%rax,%rcx,4)
	movl	$0, 12(%rsp)
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=2
	callq	sin
.LBB0_13:                               #   in Loop: Header=BB0_9 Depth=2
	movsd	88(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	16(%rsp), %rax
	movl	(%rsp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movq	64(%rsp), %rax
	movl	(%rsp), %ecx
	movl	$0, (%rax,%rcx,4)
	addl	$1, 12(%rsp)
.LBB0_9:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rsp), %eax
	cmpl	8(%rsp), %eax
	jae	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	callq	rand
	movq	40(%rsp), %rcx
	movl	12(%rsp), %edx
	movss	(%rcx,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	(%rsp), %ecx
	xorps	%xmm1, %xmm1
	cvtsi2ss	%rcx, %xmm1
	movq	32(%rsp), %rcx
	mulss	(%rcx,%rdx,4), %xmm1
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$-2, %ecx
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 88(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	cmpl	%ecx, %eax
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	callq	cos
	jmp	.LBB0_13
.LBB0_15:
	movl	4(%rsp), %edi
	movl	28(%rsp), %esi
	movq	16(%rsp), %rdx
	movq	64(%rsp), %rcx
	movq	56(%rsp), %r8
	movq	48(%rsp), %r9
	xorl	%eax, %eax
	callq	fft_float
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, (%rsp)
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsp), %eax
	cmpl	4(%rsp), %eax
	jae	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	movq	56(%rsp), %rax
	movl	(%rsp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.6, %edi
	movb	$1, %al
	callq	printf
	addl	$1, (%rsp)
	jmp	.LBB0_16
.LBB0_18:
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, (%rsp)
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsp), %eax
	cmpl	4(%rsp), %eax
	jae	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movq	48(%rsp), %rax
	movl	(%rsp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.6, %edi
	movb	$1, %al
	callq	printf
	addl	$1, (%rsp)
	jmp	.LBB0_19
.LBB0_21:
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf
	movq	16(%rsp), %rdi
	callq	free
	movq	64(%rsp), %rdi
	callq	free
	movq	56(%rsp), %rdi
	callq	free
	movq	48(%rsp), %rdi
	callq	free
	movq	40(%rsp), %rdi
	callq	free
	movq	32(%rsp), %rdi
	callq	free
	xorl	%edi, %edi
	callq	exit
.LBB0_22:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$-1, %edi
	callq	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	IsPowerOfTwo            # -- Begin function IsPowerOfTwo
	.p2align	4, 0x90
	.type	IsPowerOfTwo,@function
IsPowerOfTwo:                           # @IsPowerOfTwo
	.cfi_startproc
# %bb.0:
	movl	%edi, -4(%rsp)
	cmpl	$1, %edi
	jbe	.LBB1_1
# %bb.2:
	movl	-4(%rsp), %eax
	leal	-1(%rax), %ecx
	testl	%ecx, %eax
	je	.LBB1_4
.LBB1_1:
	movl	$0, -8(%rsp)
	movl	-8(%rsp), %eax
	retq
.LBB1_4:
	movl	$1, -8(%rsp)
	movl	-8(%rsp), %eax
	retq
.Lfunc_end1:
	.size	IsPowerOfTwo, .Lfunc_end1-IsPowerOfTwo
	.cfi_endproc
                                        # -- End function
	.globl	NumberOfBitsNeeded      # -- Begin function NumberOfBitsNeeded
	.p2align	4, 0x90
	.type	NumberOfBitsNeeded,@function
NumberOfBitsNeeded:                     # @NumberOfBitsNeeded
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	cmpl	$1, %edi
	jbe	.LBB2_4
# %bb.1:
	movl	$0, (%rsp)
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movl	4(%rsp), %ecx
	movl	(%rsp), %eax
	btl	%eax, %ecx
	jb	.LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	addl	$1, %eax
	movl	%eax, (%rsp)
	jmp	.LBB2_2
.LBB2_5:
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB2_4:
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
	movl	4(%rsp), %edx
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end2:
	.size	NumberOfBitsNeeded, .Lfunc_end2-NumberOfBitsNeeded
	.cfi_endproc
                                        # -- End function
	.globl	ReverseBits             # -- Begin function ReverseBits
	.p2align	4, 0x90
	.type	ReverseBits,@function
ReverseBits:                            # @ReverseBits
	.cfi_startproc
# %bb.0:
	movl	%edi, -8(%rsp)
	movl	%esi, -4(%rsp)
	movl	$0, -16(%rsp)
	movl	$0, -12(%rsp)
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rsp), %ecx
	movl	-16(%rsp), %eax
	cmpl	-4(%rsp), %ecx
	jae	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movl	-8(%rsp), %ecx
	movl	%ecx, %edx
	andl	$1, %edx
	leal	(%rdx,%rax,2), %eax
	movl	%eax, -16(%rsp)
	shrl	%ecx
	movl	%ecx, -8(%rsp)
	addl	$1, -12(%rsp)
	jmp	.LBB3_1
.LBB3_3:
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end3:
	.size	ReverseBits, .Lfunc_end3-ReverseBits
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function Index_to_frequency
.LCPI4_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	Index_to_frequency
	.p2align	4, 0x90
	.type	Index_to_frequency,@function
Index_to_frequency:                     # @Index_to_frequency
	.cfi_startproc
# %bb.0:
	movl	%edi, -12(%rsp)
	movl	%esi, -16(%rsp)
	cmpl	%edi, %esi
	jb	.LBB4_2
# %bb.1:
	movq	$0, -8(%rsp)
	movsd	-8(%rsp), %xmm0         # xmm0 = mem[0],zero
	retq
.LBB4_2:
	movl	-12(%rsp), %eax
	shrl	%eax
	cmpl	%eax, -16(%rsp)
	ja	.LBB4_4
# %bb.3:
	movl	-16(%rsp), %eax
	cvtsi2sd	%rax, %xmm0
	movl	-12(%rsp), %eax
	cvtsi2sd	%rax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rsp)
	movsd	-8(%rsp), %xmm0         # xmm0 = mem[0],zero
	retq
.LBB4_4:
	movl	-12(%rsp), %eax
	cvtsi2sd	%rax, %xmm0
	movl	-16(%rsp), %ecx
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%ecx, %eax
	cvtsi2sd	%rax, %xmm1
	xorpd	.LCPI4_0(%rip), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -8(%rsp)
	movsd	-8(%rsp), %xmm0         # xmm0 = mem[0],zero
	retq
.Lfunc_end4:
	.size	Index_to_frequency, .Lfunc_end4-Index_to_frequency
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function fft_float
.LCPI5_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI5_1:
	.quad	-4611686018427387904    # double -2
	.text
	.globl	fft_float
	.p2align	4, 0x90
	.type	fft_float,@function
fft_float:                              # @fft_float
	.cfi_startproc
# %bb.0:
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	movl	%edi, 16(%rsp)
	movl	%esi, 52(%rsp)
	movq	%rdx, 120(%rsp)
	movq	%rcx, 112(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r9, 24(%rsp)
	movabsq	$4618760256179416344, %rax # imm = 0x401921FB54442D18
	movq	%rax, 64(%rsp)
	callq	IsPowerOfTwo
	testl	%eax, %eax
	je	.LBB5_23
# %bb.1:
	cmpl	$0, 52(%rsp)
	je	.LBB5_3
# %bb.2:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	xorpd	.LCPI5_0(%rip), %xmm0
	movlpd	%xmm0, 64(%rsp)
.LBB5_3:
	movq	120(%rsp), %rdi
	movl	$.L.str.1.13, %esi
	callq	CheckPointer
	movq	32(%rsp), %rdi
	movl	$.L.str.2.14, %esi
	callq	CheckPointer
	movq	24(%rsp), %rdi
	movl	$.L.str.3.15, %esi
	callq	CheckPointer
	movl	16(%rsp), %edi
	callq	NumberOfBitsNeeded
	movl	%eax, 76(%rsp)
	movl	$0, 8(%rsp)
	jmp	.LBB5_4
	.p2align	4, 0x90
.LBB5_7:                                #   in Loop: Header=BB5_4 Depth=1
	movq	112(%rsp), %rax
	movl	8(%rsp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.LBB5_8:                                #   in Loop: Header=BB5_4 Depth=1
	cvtsd2ss	%xmm0, %xmm0
	movq	24(%rsp), %rax
	movl	12(%rsp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, 8(%rsp)
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	movl	8(%rsp), %eax
	cmpl	16(%rsp), %eax
	jae	.LBB5_9
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	movl	8(%rsp), %edi
	movl	76(%rsp), %esi
	callq	ReverseBits
	movl	%eax, 12(%rsp)
	movq	120(%rsp), %rcx
	movl	8(%rsp), %edx
	movss	(%rcx,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	32(%rsp), %rcx
	movl	%eax, %eax
	movss	%xmm0, (%rcx,%rax,4)
	cmpq	$0, 112(%rsp)
	jne	.LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_4 Depth=1
	xorps	%xmm0, %xmm0
	jmp	.LBB5_8
.LBB5_9:
	movl	$1, 44(%rsp)
	movl	$2, 20(%rsp)
	jmp	.LBB5_10
	.p2align	4, 0x90
.LBB5_17:                               #   in Loop: Header=BB5_10 Depth=1
	movl	20(%rsp), %eax
	movl	%eax, 44(%rsp)
	addl	%eax, %eax
	movl	%eax, 20(%rsp)
.LBB5_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_12 Depth 2
                                        #       Child Loop BB5_14 Depth 3
	movl	20(%rsp), %eax
	cmpl	16(%rsp), %eax
	ja	.LBB5_18
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=1
	movl	20(%rsp), %eax
	xorps	%xmm1, %xmm1
	cvtsi2sd	%rax, %xmm1
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 56(%rsp)
	movsd	.LCPI5_1(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	sin
	movsd	%xmm0, 192(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movapd	.LCPI5_0(%rip), %xmm1   # xmm1 = [-0.0E+0,-0.0E+0]
	xorpd	%xmm1, %xmm0
	callq	sin
	movsd	%xmm0, 184(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	.LCPI5_1(%rip), %xmm0
	callq	cos
	movsd	%xmm0, 176(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	xorpd	.LCPI5_0(%rip), %xmm0
	callq	cos
	movsd	%xmm0, 168(%rsp)
	addsd	%xmm0, %xmm0
	movsd	%xmm0, 160(%rsp)
	movl	$0, 8(%rsp)
	jmp	.LBB5_12
	.p2align	4, 0x90
.LBB5_16:                               #   in Loop: Header=BB5_12 Depth=2
	movl	20(%rsp), %eax
	addl	%eax, 8(%rsp)
.LBB5_12:                               #   Parent Loop BB5_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_14 Depth 3
	movl	8(%rsp), %eax
	cmpl	16(%rsp), %eax
	jae	.LBB5_17
# %bb.13:                               #   in Loop: Header=BB5_12 Depth=2
	movsd	176(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 96(%rsp)
	movsd	168(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 88(%rsp)
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 144(%rsp)
	movsd	184(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 136(%rsp)
	movl	8(%rsp), %eax
	movl	%eax, 12(%rsp)
	movl	$0, 48(%rsp)
	.p2align	4, 0x90
.LBB5_14:                               #   Parent Loop BB5_10 Depth=1
                                        #     Parent Loop BB5_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	48(%rsp), %eax
	cmpl	44(%rsp), %eax
	jae	.LBB5_16
# %bb.15:                               #   in Loop: Header=BB5_14 Depth=3
	movsd	160(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	88(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	subsd	96(%rsp), %xmm1
	movsd	%xmm1, 80(%rsp)
	movaps	80(%rsp), %xmm2
	movups	%xmm2, 88(%rsp)
	mulsd	136(%rsp), %xmm0
	subsd	144(%rsp), %xmm0
	movsd	%xmm0, 128(%rsp)
	movaps	128(%rsp), %xmm2
	movups	%xmm2, 136(%rsp)
	movl	12(%rsp), %eax
	addl	44(%rsp), %eax
	movl	%eax, 72(%rsp)
	movq	32(%rsp), %rcx
	movss	(%rcx,%rax,4), %xmm2    # xmm2 = mem[0],zero,zero,zero
	cvtss2sd	%xmm2, %xmm2
	mulsd	%xmm1, %xmm2
	movq	24(%rsp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm1
	subsd	%xmm1, %xmm2
	movsd	%xmm2, 200(%rsp)
	movq	24(%rsp), %rcx
	movss	(%rcx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	mulsd	80(%rsp), %xmm1
	movq	32(%rsp), %rcx
	movss	(%rcx,%rax,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	mulsd	%xmm0, %xmm3
	addsd	%xmm1, %xmm3
	movsd	%xmm3, 104(%rsp)
	movq	32(%rsp), %rcx
	movl	12(%rsp), %edx
	movss	(%rcx,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	%xmm2, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rcx,%rax,4)
	movq	24(%rsp), %rax
	movl	12(%rsp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	subsd	104(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	72(%rsp), %ecx
	movss	%xmm0, (%rax,%rcx,4)
	movq	32(%rsp), %rax
	movl	12(%rsp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	200(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movq	24(%rsp), %rax
	movl	12(%rsp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	104(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, 12(%rsp)
	addl	$1, 48(%rsp)
	jmp	.LBB5_14
.LBB5_18:
	cmpl	$0, 52(%rsp)
	je	.LBB5_22
# %bb.19:
	movl	16(%rsp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	movsd	%xmm0, 80(%rsp)
	movl	$0, 8(%rsp)
	.p2align	4, 0x90
.LBB5_20:                               # =>This Inner Loop Header: Depth=1
	movl	8(%rsp), %eax
	cmpl	16(%rsp), %eax
	jae	.LBB5_22
# %bb.21:                               #   in Loop: Header=BB5_20 Depth=1
	movq	32(%rsp), %rax
	movl	8(%rsp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	80(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	movq	24(%rsp), %rax
	movl	8(%rsp), %ecx
	movss	(%rax,%rcx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	divsd	80(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rcx,4)
	addl	$1, 8(%rsp)
	jmp	.LBB5_20
.LBB5_22:
	addq	$216, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB5_23:
	.cfi_def_cfa_offset 224
	movq	stderr(%rip), %rdi
	movl	16(%rsp), %edx
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end5:
	.size	fft_float, .Lfunc_end5-fft_float
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function CheckPointer
	.type	CheckPointer,@function
CheckPointer:                           # @CheckPointer
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	testq	%rdi, %rdi
	je	.LBB6_2
# %bb.1:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB6_2:
	.cfi_def_cfa_offset 32
	movq	stderr(%rip), %rdi
	movq	8(%rsp), %rdx
	movl	$.L.str.4.16, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end6:
	.size	CheckPointer, .Lfunc_end6-CheckPointer
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: fft <waves> <length> -i\n"
	.size	.L.str, 32

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"-i performs an inverse fft\n"
	.size	.L.str.1, 28

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"make <waves> random sinusoids"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"<length> is the number of samples\n"
	.size	.L.str.3, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"-i"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"RealOut:\n"
	.size	.L.str.5, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%f \t"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\n"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ImagOut:\n"
	.size	.L.str.8, 10

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\n"
	.size	.L.str.9, 73

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Error in fft():  NumSamples=%u is not power of two\n"
	.size	.L.str.12, 52

	.type	.L.str.1.13,@object     # @.str.1.13
.L.str.1.13:
	.asciz	"RealIn"
	.size	.L.str.1.13, 7

	.type	.L.str.2.14,@object     # @.str.2.14
.L.str.2.14:
	.asciz	"RealOut"
	.size	.L.str.2.14, 8

	.type	.L.str.3.15,@object     # @.str.3.15
.L.str.3.15:
	.asciz	"ImagOut"
	.size	.L.str.3.15, 8

	.type	.L.str.4.16,@object     # @.str.4.16
.L.str.4.16:
	.asciz	"Error in fft_float():  %s == NULL\n"
	.size	.L.str.4.16, 35


	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
