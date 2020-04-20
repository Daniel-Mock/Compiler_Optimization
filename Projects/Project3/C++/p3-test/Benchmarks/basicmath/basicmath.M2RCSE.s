	.text
	.file	"llvm-link"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	-4601271444289093632    # double -10.5
.LCPI0_2:
	.quad	4629700416936869888     # double 32
.LCPI0_3:
	.quad	-4594234569871327232    # double -30
.LCPI0_4:
	.quad	-4606619468846596096    # double -4.5
.LCPI0_5:
	.quad	4625478292286210048     # double 17
.LCPI0_6:
	.quad	-4608308318706860032    # double -3.5
.LCPI0_7:
	.quad	4626885667169763328     # double 22
.LCPI0_8:
	.quad	-4593953094894616576    # double -31
.LCPI0_9:
	.quad	-4599470004438145434    # double -13.699999999999999
.LCPI0_10:
	.quad	-4593249407452839936    # double -35
.LCPI0_11:
	.quad	4613937818241073152     # double 3
.LCPI0_12:
	.quad	4623136420479977390     # double 12.34
.LCPI0_13:
	.quad	4617315517961601024     # double 5
.LCPI0_14:
	.quad	4622945017495814144     # double 12
.LCPI0_15:
	.quad	-4602678819172646912    # double -8
.LCPI0_16:
	.quad	-4588894285875684311    # double -67.890000000000001
.LCPI0_17:
	.quad	4618441417868443648     # double 6
.LCPI0_18:
	.quad	-4596036009722275430    # double -23.600000000000001
.LCPI0_19:
	.quad	4631530004285489152     # double 45
.LCPI0_20:
	.quad	4621070394150921175     # double 8.6699999999999999
.LCPI0_21:
	.quad	4620130267728707584     # double 7.5
.LCPI0_22:
	.quad	4629981891913580544     # double 34
.LCPI0_23:
	.quad	-4600427019358961664    # double -12
.LCPI0_24:
	.quad	-4613037098315599053    # double -1.7
.LCPI0_25:
	.quad	4617653287933653811     # double 5.2999999999999998
.LCPI0_26:
	.quad	4625196817309499392     # double 16
.LCPI0_27:
	.quad	4621819117588971520     # double 10
.LCPI0_28:
	.quad	4624633867356078080     # double 15
.LCPI0_29:
	.quad	-4625196817309499392    # double -0.25
.LCPI0_30:
	.quad	-4616189618054758400    # double -1
.LCPI0_31:
	.quad	-4606056518893174784    # double -5
.LCPI0_32:
	.quad	4603669611090668421     # double 0.60999999999999999
.LCPI0_33:
	.quad	-4621575923209093513    # double -0.45100000000000001
.LCPI0_34:
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
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	leaq	4(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	SolveCubic
	xorl	%ebx, %ebx
	leaq	8(%rsp), %r14
	cmpl	$99, %ebx
	jg	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	usqrt
	addq	$2, %rbx
	cmpl	$99, %ebx
	jle	.LBB0_2
.LBB0_3:
	xorl	%ebx, %ebx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	leaq	4(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	4(%rsp), %ebx
	jge	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movsd	16(%rsp,%rbx,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addq	$1, %rbx
	cmpl	4(%rsp), %ebx
	jl	.LBB0_5
.LBB0_6:
	xorl	%ebx, %ebx
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	leaq	4(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	4(%rsp), %ebx
	jge	.LBB0_9
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	movsd	16(%rsp,%rbx,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addq	$1, %rbx
	cmpl	4(%rsp), %ebx
	jl	.LBB0_8
.LBB0_9:
	xorl	%ebx, %ebx
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_7(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_8(%rip), %xmm3   # xmm3 = mem[0],zero
	leaq	4(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	4(%rsp), %ebx
	jge	.LBB0_12
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movsd	16(%rsp,%rbx,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addq	$1, %rbx
	cmpl	4(%rsp), %ebx
	jl	.LBB0_11
.LBB0_12:
	xorl	%ebx, %ebx
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movsd	.LCPI0_9(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_10(%rip), %xmm3  # xmm3 = mem[0],zero
	leaq	4(%rsp), %rdi
	leaq	16(%rsp), %rsi
	movaps	%xmm0, %xmm2
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	4(%rsp), %ebx
	jge	.LBB0_15
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movsd	16(%rsp,%rbx,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addq	$1, %rbx
	cmpl	4(%rsp), %ebx
	jl	.LBB0_14
.LBB0_15:
	xorl	%ebx, %ebx
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movsd	.LCPI0_11(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_12(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_13(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI0_14(%rip), %xmm3  # xmm3 = mem[0],zero
	leaq	4(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	4(%rsp), %ebx
	jge	.LBB0_18
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movsd	16(%rsp,%rbx,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addq	$1, %rbx
	cmpl	4(%rsp), %ebx
	jl	.LBB0_17
.LBB0_18:
	xorl	%ebx, %ebx
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movsd	.LCPI0_15(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_16(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_17(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI0_18(%rip), %xmm3  # xmm3 = mem[0],zero
	leaq	4(%rsp), %r15
	leaq	16(%rsp), %r14
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_20(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_21(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI0_22(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movsd	.LCPI0_23(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_24(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_25(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI0_26(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	cmpl	4(%rsp), %ebx
	jge	.LBB0_21
	.p2align	4, 0x90
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movsd	16(%rsp,%rbx,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addq	$1, %rbx
	cmpl	4(%rsp), %ebx
	jl	.LBB0_20
.LBB0_21:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movsd	.LCPI0_27(%rip), %xmm5  # xmm5 = mem[0],zero
	leaq	4(%rsp), %r14
	leaq	16(%rsp), %r15
	movsd	.LCPI0_0(%rip), %xmm4   # xmm4 = mem[0],zero
	ucomisd	%xmm4, %xmm5
	ja	.LBB0_23
	jmp	.LBB0_36
	.p2align	4, 0x90
.LBB0_35:                               #   in Loop: Header=BB0_23 Depth=1
	addsd	.LCPI0_0(%rip), %xmm4
	ucomisd	%xmm4, %xmm5
	jbe	.LBB0_36
.LBB0_23:                               # %.preheader2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_25 Depth 2
                                        #       Child Loop BB0_26 Depth 3
                                        #         Child Loop BB0_29 Depth 4
                                        #           Child Loop BB0_31 Depth 5
	movapd	%xmm5, %xmm1
	movsd	%xmm4, 48(%rsp)         # 8-byte Spill
	ucomisd	.LCPI0_34, %xmm1
	ja	.LBB0_25
	jmp	.LBB0_35
	.p2align	4, 0x90
.LBB0_34:                               #   in Loop: Header=BB0_25 Depth=2
	addsd	.LCPI0_29(%rip), %xmm1
	ucomisd	.LCPI0_34, %xmm1
	jbe	.LBB0_35
.LBB0_25:                               # %.preheader1
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_26 Depth 3
                                        #         Child Loop BB0_29 Depth 4
                                        #           Child Loop BB0_31 Depth 5
	movsd	.LCPI0_13(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm2
	movsd	%xmm1, 56(%rsp)         # 8-byte Spill
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_33:                               #   in Loop: Header=BB0_26 Depth=3
	addsd	.LCPI0_32(%rip), %xmm2
.LBB0_26:                               #   Parent Loop BB0_23 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_29 Depth 4
                                        #           Child Loop BB0_31 Depth 5
	movsd	.LCPI0_28(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB0_34
# %bb.27:                               # %.preheader
                                        #   in Loop: Header=BB0_26 Depth=3
	movsd	.LCPI0_30(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	%xmm0, %xmm3
	movsd	%xmm2, 64(%rsp)         # 8-byte Spill
	ucomisd	.LCPI0_31(%rip), %xmm3
	ja	.LBB0_29
	jmp	.LBB0_33
	.p2align	4, 0x90
.LBB0_32:                               #   in Loop: Header=BB0_29 Depth=4
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movsd	72(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	addsd	.LCPI0_33(%rip), %xmm3
	movsd	.LCPI0_27(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm1, %xmm5
	movsd	48(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	64(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	.LCPI0_31(%rip), %xmm3
	jbe	.LBB0_33
.LBB0_29:                               #   Parent Loop BB0_23 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        #       Parent Loop BB0_26 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_31 Depth 5
	movapd	%xmm4, %xmm0
	movsd	%xmm3, 72(%rsp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%ebx, %ebx
	cmpl	4(%rsp), %ebx
	jge	.LBB0_32
	.p2align	4, 0x90
.LBB0_31:                               #   Parent Loop BB0_23 Depth=1
                                        #     Parent Loop BB0_25 Depth=2
                                        #       Parent Loop BB0_26 Depth=3
                                        #         Parent Loop BB0_29 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movsd	16(%rsp,%rbx,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addq	$1, %rbx
	cmpl	4(%rsp), %ebx
	jl	.LBB0_31
	jmp	.LBB0_32
.LBB0_36:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	leaq	8(%rsp), %r14
	xorl	%ebx, %ebx
	cmpl	$99999, %ebx            # imm = 0x1869F
	jg	.LBB0_39
	.p2align	4, 0x90
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	usqrt
	movl	8(%rsp), %edx
	movl	$.L.str.5, %edi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf
	addq	$2, %rbx
	cmpl	$99999, %ebx            # imm = 0x1869F
	jle	.LBB0_38
.LBB0_39:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1072497001, %ebx       # imm = 0x3FED0169
	leaq	8(%rsp), %r14
	cmpq	$1072513384, %rbx       # imm = 0x3FED4168
	ja	.LBB0_42
	.p2align	4, 0x90
.LBB0_41:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	usqrt
	movl	8(%rsp), %edx
	movl	12(%rsp), %ecx
	movl	$.L.str.6, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	printf
	movl	8(%rsp), %edx
	movl	$.L.str.7, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %rbx
	cmpq	$1072513384, %rbx       # imm = 0x3FED4168
	jbe	.LBB0_41
.LBB0_42:
	xorl	%eax, %eax
	addq	$80, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function rad2deg
.LCPI1_0:
	.quad	4640537203540230144     # double 180
.LCPI1_1:
	.quad	4607182418800017408     # double 1
.LCPI1_2:
	.quad	4616189618054758400     # double 4
	.text
	.globl	rad2deg
	.p2align	4, 0x90
	.type	rad2deg,@function
rad2deg:                                # @rad2deg
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	mulsd	.LCPI1_0(%rip), %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	atan
	mulsd	.LCPI1_2(%rip), %xmm0
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	rad2deg, .Lfunc_end1-rad2deg
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function deg2rad
.LCPI2_0:
	.quad	4607182418800017408     # double 1
.LCPI2_1:
	.quad	4616189618054758400     # double 4
.LCPI2_2:
	.quad	4640537203540230144     # double 180
	.text
	.globl	deg2rad
	.p2align	4, 0x90
	.type	deg2rad,@function
deg2rad:                                # @deg2rad
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	atan
	mulsd	.LCPI2_1(%rip), %xmm0
	mulsd	(%rsp), %xmm0           # 8-byte Folded Reload
	divsd	.LCPI2_2(%rip), %xmm0
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	deg2rad, .Lfunc_end2-deg2rad
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function SolveCubic
.LCPI3_0:
	.long	3225419776              # float -3
.LCPI3_1:
	.long	1091567616              # float 9
.LCPI3_2:
	.long	1104674816              # float 27
.LCPI3_3:
	.long	1113063424              # float 54
.LCPI3_8:
	.long	1077936128              # float 3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI3_4:
	.quad	9223372036854775807     # double NaN
	.quad	9223372036854775807     # double NaN
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI3_5:
	.quad	4599676419421066581     # double 0.33333333333333331
.LCPI3_6:
	.quad	-4611686018427387904    # double -2
.LCPI3_7:
	.quad	4613937818241073152     # double 3
.LCPI3_9:
	.quad	4607182418800017408     # double 1
.LCPI3_10:
	.quad	4616189618054758400     # double 4
.LCPI3_11:
	.quad	0                       # double 0
	.text
	.globl	SolveCubic
	.p2align	4, 0x90
	.type	SolveCubic,@function
SolveCubic:                             # @SolveCubic
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$176, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 168(%rsp)
	fldl	168(%rsp)
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 160(%rsp)
	fldl	160(%rsp)
	divsd	%xmm0, %xmm3
	movsd	%xmm3, 152(%rsp)
	fldl	152(%rsp)
	fld	%st(1)
	fmuls	.LCPI3_0(%rip)
	fld	%st(3)
	fmul	%st(4), %st
	faddp	%st, %st(1)
	flds	.LCPI3_1(%rip)
	fdivr	%st, %st(1)
	fld	%st(4)
	fadd	%st(5), %st
	fmul	%st(5), %st
	fmul	%st(5), %st
	fld	%st(5)
	fstpt	36(%rsp)                # 10-byte Folded Spill
	fxch	%st(5)
	fmulp	%st, %st(1)
	fmulp	%st, %st(3)
	fxch	%st(3)
	fsubp	%st, %st(2)
	fmuls	.LCPI3_2(%rip)
	faddp	%st, %st(1)
	fdivs	.LCPI3_3(%rip)
	fld	%st(0)
	fmul	%st(1), %st
	fld	%st(2)
	fmul	%st(3), %st
	fld	%st(3)
	fstpt	24(%rsp)                # 10-byte Folded Spill
	fmulp	%st, %st(3)
	fsub	%st(2), %st
	fstpl	144(%rsp)
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB3_11
# %bb.1:
	movl	$3, (%rdi)
	fxch	%st(1)
	fstpl	112(%rsp)
	movsd	112(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_3
# %bb.2:
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB3_4
.LBB3_11:
	fstp	%st(1)
	movl	$1, (%rdi)
	ucomisd	%xmm1, %xmm0
	fld	%st(0)
	fstpt	8(%rsp)                 # 10-byte Folded Spill
	jb	.LBB3_13
# %bb.12:
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB3_14
.LBB3_3:                                # %call.sqrt
	fstpt	8(%rsp)                 # 10-byte Folded Spill
	callq	sqrt
	fldt	8(%rsp)                 # 10-byte Folded Reload
.LBB3_4:                                # %.split
	movsd	%xmm0, 104(%rsp)
	fdivl	104(%rsp)
	fstpl	88(%rsp)
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	callq	acos
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	fldt	24(%rsp)                # 10-byte Folded Reload
	fstpl	96(%rsp)
	movsd	96(%rsp), %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm1, %xmm0
	xorpd	%xmm2, %xmm2
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	ucomisd	%xmm2, %xmm1
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	jae	.LBB3_6
# %bb.5:                                # %call.sqrt1
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB3_6:                                # %.split.split
	mulsd	.LCPI3_6(%rip), %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	.LCPI3_7(%rip), %xmm0
	callq	cos
	mulsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 80(%rsp)
	fldt	36(%rsp)                # 10-byte Folded Reload
	fdivs	.LCPI3_8(%rip)
	fld	%st(0)
	fstpt	36(%rsp)                # 10-byte Folded Spill
	fsubrl	80(%rsp)
	fstpl	(%rbx)
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI3_11, %xmm0
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jae	.LBB3_8
# %bb.7:                                # %call.sqrt2
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
.LBB3_8:                                # %.split.split.split
	mulsd	.LCPI3_6(%rip), %xmm0
	movsd	%xmm0, 48(%rsp)         # 8-byte Spill
	movsd	.LCPI3_9(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	atan
	mulsd	.LCPI3_10(%rip), %xmm0
	addsd	%xmm0, %xmm0
	addsd	56(%rsp), %xmm0         # 8-byte Folded Reload
	divsd	.LCPI3_7(%rip), %xmm0
	callq	cos
	mulsd	48(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 72(%rsp)
	fldt	36(%rsp)                # 10-byte Folded Reload
	fsubrl	72(%rsp)
	fstpl	8(%rbx)
	xorpd	%xmm0, %xmm0
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jae	.LBB3_10
# %bb.9:                                # %call.sqrt3
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	sqrt
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
.LBB3_10:                               # %.split.split.split.split
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	.LCPI3_6(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	movsd	.LCPI3_9(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	atan
	movsd	.LCPI3_10(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	56(%rsp), %xmm0         # 8-byte Folded Reload
	divsd	.LCPI3_7(%rip), %xmm0
	callq	cos
	mulsd	24(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 64(%rsp)
	fldt	36(%rsp)                # 10-byte Folded Reload
	fsubrl	64(%rsp)
	fstpl	16(%rbx)
	jmp	.LBB3_15
.LBB3_13:                               # %call.sqrt5
	fstp	%st(0)
	callq	sqrt
	fldt	8(%rsp)                 # 10-byte Folded Reload
.LBB3_14:                               # %.split4
	fstpl	136(%rsp)
	movsd	136(%rsp), %xmm2        # xmm2 = mem[0],zero
	andpd	.LCPI3_4(%rip), %xmm2
	addsd	%xmm0, %xmm2
	movsd	.LCPI3_5(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm2, %xmm0
	callq	pow
	movsd	%xmm0, (%rbx)
	fldl	(%rbx)
	fldt	24(%rsp)                # 10-byte Folded Reload
	fdiv	%st(1), %st
	faddp	%st, %st(1)
	fldz
	xorl	%eax, %eax
	fldt	8(%rsp)                 # 10-byte Folded Reload
	fxch	%st(1)
	fucompi	%st(1), %st
	fstp	%st(0)
	seta	%al
	fstpl	128(%rsp)
	leal	(%rax,%rax), %eax
	addl	$-1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	mulsd	128(%rsp), %xmm0
	fldt	36(%rsp)                # 10-byte Folded Reload
	fdivs	.LCPI3_0(%rip)
	movsd	%xmm0, 120(%rsp)
	faddl	120(%rsp)
	fstpl	(%rbx)
.LBB3_15:
	addq	$176, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	SolveCubic, .Lfunc_end3-SolveCubic
	.cfi_endproc
                                        # -- End function
	.globl	usqrt                   # -- Begin function usqrt
	.p2align	4, 0x90
	.type	usqrt,@function
usqrt:                                  # @usqrt
	.cfi_startproc
# %bb.0:
	movq	$0, -8(%rsp)
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	cmpl	$31, %r8d
	jle	.LBB4_2
	jmp	.LBB4_5
	.p2align	4, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	shlq	$2, %rdi
	addl	$1, %r8d
	cmpl	$31, %r8d
	jg	.LBB4_5
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movl	%edi, %edx
	shrq	$30, %rdx
	leaq	(%rdx,%rax,4), %rax
	movq	-8(%rsp), %rdx
	leaq	(%rdx,%rdx), %rcx
	movq	%rcx, -8(%rsp)
	leaq	1(,%rdx,4), %rcx
	movq	%rax, %rdx
	subq	%rcx, %rdx
	jb	.LBB4_4
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	addq	$1, -8(%rsp)
	movq	%rdx, %rax
	jmp	.LBB4_4
.LBB4_5:
	movq	-8(%rsp), %rax
	movq	%rax, (%rsi)
	retq
.Lfunc_end4:
	.size	usqrt, .Lfunc_end4-usqrt
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"********* CUBIC FUNCTIONS ***********\n"
	.size	.L.str, 39

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Solutions:"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" %f"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"********* INTEGER SQR ROOTS ***********\n"
	.size	.L.str.4, 41

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"sqrt(%3d) = %2d\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\nsqrt(%lX) = %X, remainder = %X\n"
	.size	.L.str.6, 33

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"sqrt(%lX) = %X\n"
	.size	.L.str.7, 16


	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
