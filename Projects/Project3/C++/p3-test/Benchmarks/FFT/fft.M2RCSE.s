	.text
	.file	"llvm-link"
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
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$2, %edi
	jle	.LBB0_21
# %bb.1:
	movq	%rsi, %rbx
	xorl	%ecx, %ecx
	cmpl	$4, %edi
	jne	.LBB0_3
# %bb.2:
	movq	24(%rbx), %rdi
	movl	$.L.str.4, %esi
	movl	$2, %edx
	callq	strncmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
.LBB0_3:
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movq	16(%rbx), %rdi
	callq	atoi
	movl	%eax, %r15d
	movq	8(%rbx), %rdi
	callq	atoi
	movl	%eax, %ebp
	movl	$1, %edi
	callq	srand
	movl	%r15d, %ebx
	shlq	$2, %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, (%rsp)            # 8-byte Spill
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %rbx
	movl	%ebp, %r12d
	shlq	$2, %r12
	movq	%r12, %rdi
	callq	malloc
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	%r12, %rdi
	callq	malloc
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r12d, %r12d
	cmpl	%ebp, %r12d
	jae	.LBB0_5
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
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
	movq	16(%rsp), %rax          # 8-byte Reload
	movss	%xmm0, (%rax,%r12,4)
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
	movq	8(%rsp), %rax           # 8-byte Reload
	movss	%xmm0, (%rax,%r12,4)
	addq	$1, %r12
	cmpl	%ebp, %r12d
	jb	.LBB0_22
.LBB0_5:                                # %.preheader
	xorl	%eax, %eax
	cmpl	%r15d, %eax
	jb	.LBB0_7
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	addl	$1, %eax
	cmpl	%r15d, %eax
	jae	.LBB0_14
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	%eax, %r13d
	movl	$0, (%r14,%r13,4)
	xorl	%r12d, %r12d
	cmpl	%ebp, %r12d
	jb	.LBB0_9
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=2
	callq	sin
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=2
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movss	(%r14,%r13,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%r14,%r13,4)
	movq	(%rsp), %rax            # 8-byte Reload
	movl	$0, (%rax,%r13,4)
	addq	$1, %r12
	cmpl	%ebp, %r12d
	jae	.LBB0_13
.LBB0_9:                                #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	callq	rand
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	andl	$-2, %ecx
	movq	16(%rsp), %rdx          # 8-byte Reload
	movss	(%rdx,%r12,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	xorps	%xmm0, %xmm0
	cvtsi2ss	%r13, %xmm0
	movq	8(%rsp), %rdx           # 8-byte Reload
	mulss	(%rdx,%r12,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	cmpl	%ecx, %eax
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	callq	cos
	jmp	.LBB0_12
.LBB0_14:
	xorl	%ebp, %ebp
	movl	%r15d, %edi
	movl	28(%rsp), %esi          # 4-byte Reload
	movq	%r14, %rdx
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	%r12, %r8
	movq	%rbx, %r9
	xorl	%eax, %eax
	callq	fft_float
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	%r15d, %ebp
	jae	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movss	(%r12,%rbp,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.6, %edi
	movb	$1, %al
	callq	printf
	addq	$1, %rbp
	cmpl	%r15d, %ebp
	jb	.LBB0_16
.LBB0_17:
	xorl	%ebp, %ebp
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	%r15d, %ebp
	jae	.LBB0_20
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movss	(%rbx,%rbp,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.6, %edi
	movb	$1, %al
	callq	printf
	addq	$1, %rbp
	cmpl	%r15d, %ebp
	jb	.LBB0_19
.LBB0_20:
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%r14, %rdi
	callq	free
	movq	(%rsp), %rdi            # 8-byte Reload
	callq	free
	movq	%r12, %rdi
	callq	free
	movq	%rbx, %rdi
	callq	free
	movq	16(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	8(%rsp), %rdi           # 8-byte Reload
	callq	free
	xorl	%edi, %edi
	callq	exit
.LBB0_21:
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
                                        # kill: def $edi killed $edi def $rdi
	xorl	%eax, %eax
	cmpl	$2, %edi
	jb	.LBB1_2
# %bb.1:
	leal	-1(%rdi), %ecx
	xorl	%eax, %eax
	testl	%ecx, %edi
	sete	%al
.LBB1_2:
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
	movl	%edi, %edx
	cmpl	$2, %edi
	jb	.LBB2_4
# %bb.1:                                # %.preheader
	xorl	%eax, %eax
	btl	%eax, %edx
	jb	.LBB2_5
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	addl	$1, %eax
	btl	%eax, %edx
	jae	.LBB2_3
.LBB2_5:
	retq
.LBB2_4:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	stderr(%rip), %rdi
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
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	cmpl	%esi, %ecx
	jae	.LBB3_3
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	andl	$1, %edx
	leal	(%rdx,%rax,2), %eax
	shrl	%edi
	addl	$1, %ecx
	cmpl	%esi, %ecx
	jb	.LBB3_2
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
                                        # kill: def $edi killed $edi def $rdi
	xorpd	%xmm0, %xmm0
	cmpl	%edi, %esi
	jae	.LBB4_5
# %bb.1:
	movl	%edi, %eax
	shrl	%eax
	cmpl	%eax, %esi
	ja	.LBB4_3
# %bb.2:
	movl	%esi, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	movl	%edi, %eax
	jmp	.LBB4_4
.LBB4_3:
	movl	%edi, %eax
	subl	%esi, %edi
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rdi, %xmm0
	xorpd	.LCPI4_0(%rip), %xmm0
.LBB4_4:
	cvtsi2sd	%rax, %xmm1
	divsd	%xmm1, %xmm0
.LBB4_5:
	retq
.Lfunc_end4:
	.size	Index_to_frequency, .Lfunc_end4-Index_to_frequency
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function fft_float
.LCPI5_0:
	.quad	4618760256179416344     # double 6.2831853071795862
	.quad	-4604611780675359464    # double -6.2831853071795862
.LCPI5_2:
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
	subq	$136, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %rbp
	movq	%rcx, %r12
	movq	%rdx, %r13
	movl	%esi, %r15d
	movl	%edi, %r14d
	callq	IsPowerOfTwo
	testl	%eax, %eax
	je	.LBB5_21
# %bb.1:
	xorl	%eax, %eax
	movl	%r15d, 12(%rsp)         # 4-byte Spill
	testl	%r15d, %r15d
	setne	%al
	movsd	.LCPI5_0(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, 120(%rsp)        # 8-byte Spill
	movl	$.L.str.1.13, %esi
	movq	%r13, (%rsp)            # 8-byte Spill
	movq	%r13, %rdi
	callq	CheckPointer
	movl	$.L.str.2.14, %esi
	movq	%rbp, %rdi
	callq	CheckPointer
	movl	$.L.str.3.15, %esi
	movq	%rbx, %rdi
	callq	CheckPointer
	movl	%r14d, %edi
	callq	NumberOfBitsNeeded
	movl	%eax, %r15d
	xorl	%r13d, %r13d
	cmpl	%r14d, %r13d
	jb	.LBB5_10
	jmp	.LBB5_3
	.p2align	4, 0x90
.LBB5_12:                               #   in Loop: Header=BB5_10 Depth=1
	movss	(%r12,%r13,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.LBB5_13:                               #   in Loop: Header=BB5_10 Depth=1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rbx,%rax,4)
	addq	$1, %r13
	cmpl	%r14d, %r13d
	jae	.LBB5_3
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	movl	%r13d, %edi
	movl	%r15d, %esi
	callq	ReverseBits
	movq	(%rsp), %rcx            # 8-byte Reload
	movss	(%rcx,%r13,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movl	%eax, %eax
	movss	%xmm0, (%rbp,%rax,4)
	testq	%r12, %r12
	jne	.LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=1
	xorps	%xmm0, %xmm0
	jmp	.LBB5_13
.LBB5_3:                                # %.preheader
	movl	$1, %r15d
	movl	$2, %eax
	cmpl	%r14d, %eax
	jbe	.LBB5_5
	jmp	.LBB5_16
	.p2align	4, 0x90
.LBB5_15:                               #   in Loop: Header=BB5_5 Depth=1
	leal	(%r12,%r12), %eax
	movl	%r12d, %r15d
	cmpl	%r14d, %eax
	ja	.LBB5_16
.LBB5_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_7 Depth 2
                                        #       Child Loop BB5_9 Depth 3
	movl	%eax, %r12d
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	movsd	120(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movapd	%xmm1, 80(%rsp)         # 16-byte Spill
	movapd	%xmm1, %xmm0
	mulsd	.LCPI5_1(%rip), %xmm0
	movapd	%xmm0, 96(%rsp)         # 16-byte Spill
	callq	sin
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movaps	80(%rsp), %xmm0         # 16-byte Reload
	xorps	.LCPI5_2(%rip), %xmm0
	movaps	%xmm0, 80(%rsp)         # 16-byte Spill
	callq	sin
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	movaps	96(%rsp), %xmm0         # 16-byte Reload
	callq	cos
	movsd	%xmm0, 96(%rsp)         # 8-byte Spill
	movapd	80(%rsp), %xmm0         # 16-byte Reload
	callq	cos
	movapd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	xorl	%eax, %eax
	cmpl	%r14d, %eax
	jb	.LBB5_7
	jmp	.LBB5_15
	.p2align	4, 0x90
.LBB5_14:                               #   in Loop: Header=BB5_7 Depth=2
	addl	%r12d, %eax
	cmpl	%r14d, %eax
	jae	.LBB5_15
.LBB5_7:                                #   Parent Loop BB5_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_9 Depth 3
	movsd	96(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm2, 64(%rsp)
	movsd	%xmm0, 56(%rsp)
	movsd	(%rsp), %xmm2           # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm2, 32(%rsp)
	movsd	128(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm2, 24(%rsp)
	xorl	%ecx, %ecx
	movl	%eax, %edx
	cmpl	%r15d, %ecx
	jae	.LBB5_14
	.p2align	4, 0x90
.LBB5_9:                                #   Parent Loop BB5_5 Depth=1
                                        #     Parent Loop BB5_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	56(%rsp), %xmm3         # xmm3 = mem[0],zero
	mulsd	%xmm1, %xmm3
	subsd	64(%rsp), %xmm3
	movsd	%xmm3, 48(%rsp)
	movaps	48(%rsp), %xmm2
	movups	%xmm2, 56(%rsp)
	movsd	24(%rsp), %xmm2         # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	subsd	32(%rsp), %xmm2
	movsd	%xmm2, 16(%rsp)
	movaps	16(%rsp), %xmm4
	movups	%xmm4, 24(%rsp)
	leal	(%r15,%rdx), %esi
	movss	(%rbp,%rsi,4), %xmm4    # xmm4 = mem[0],zero,zero,zero
	cvtss2sd	%xmm4, %xmm4
	movapd	%xmm3, %xmm5
	mulsd	%xmm4, %xmm5
	movss	(%rbx,%rsi,4), %xmm6    # xmm6 = mem[0],zero,zero,zero
	cvtss2sd	%xmm6, %xmm6
	movapd	%xmm2, %xmm7
	mulsd	%xmm6, %xmm7
	subsd	%xmm7, %xmm5
	mulsd	%xmm6, %xmm3
	mulsd	%xmm4, %xmm2
	addsd	%xmm3, %xmm2
	movl	%edx, %edi
	movss	(%rbp,%rdi,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	subsd	%xmm5, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	movss	%xmm3, (%rbp,%rsi,4)
	movss	(%rbx,%rdi,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	subsd	%xmm2, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	movss	%xmm3, (%rbx,%rsi,4)
	movss	(%rbp,%rdi,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	addsd	%xmm5, %xmm3
	cvtsd2ss	%xmm3, %xmm3
	movss	%xmm3, (%rbp,%rdi,4)
	movss	(%rbx,%rdi,4), %xmm3    # xmm3 = mem[0],zero,zero,zero
	cvtss2sd	%xmm3, %xmm3
	addsd	%xmm2, %xmm3
	xorps	%xmm2, %xmm2
	cvtsd2ss	%xmm3, %xmm2
	movss	%xmm2, (%rbx,%rdi,4)
	addl	$1, %edx
	addl	$1, %ecx
	cmpl	%r15d, %ecx
	jb	.LBB5_9
	jmp	.LBB5_14
.LBB5_16:
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	je	.LBB5_20
# %bb.17:
	movl	%r14d, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	xorl	%eax, %eax
	cmpl	%r14d, %eax
	jae	.LBB5_20
	.p2align	4, 0x90
.LBB5_19:                               # =>This Inner Loop Header: Depth=1
	movss	(%rbp,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%rbp,%rax,4)
	movss	(%rbx,%rax,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm1
	movss	%xmm1, (%rbx,%rax,4)
	addq	$1, %rax
	cmpl	%r14d, %eax
	jb	.LBB5_19
.LBB5_20:
	addq	$136, %rsp
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
.LBB5_21:
	.cfi_def_cfa_offset 192
	movq	stderr(%rip), %rdi
	movl	$.L.str.12, %esi
	movl	%r14d, %edx
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
	testq	%rdi, %rdi
	je	.LBB6_2
# %bb.1:
	retq
.LBB6_2:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdx
	movq	stderr(%rip), %rdi
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
