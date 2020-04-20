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
	.quad	-4606056518893174784    # double -5
.LCPI0_31:
	.quad	4603669611090668421     # double 0.60999999999999999
.LCPI0_32:
	.quad	-4621575923209093513    # double -0.45100000000000001
.LCPI0_33:
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
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$112, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$0, 92(%rsp)
	movabsq	$4607182418800017408, %r15 # imm = 0x3FF0000000000000
	movq	%r15, 40(%rsp)
	movabsq	$-4601271444289093632, %rax # imm = 0xC025000000000000
	movq	%rax, 32(%rsp)
	movabsq	$4629700416936869888, %rax # imm = 0x4040000000000000
	movq	%rax, 24(%rsp)
	movabsq	$-4594234569871327232, %r14 # imm = 0xC03E000000000000
	movq	%r14, 16(%rsp)
	movq	$1072497001, 56(%rsp)   # imm = 0x3FED0169
	movq	$0, 96(%rsp)
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	leaq	12(%rsp), %rdi
	leaq	64(%rsp), %rsi
	callq	SolveCubic
	movl	$0, 8(%rsp)
	leaq	48(%rsp), %rbx
	cmpl	$99, 8(%rsp)
	jg	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movslq	8(%rsp), %rdi
	movq	%rbx, %rsi
	callq	usqrt
	addl	$2, 8(%rsp)
	cmpl	$99, 8(%rsp)
	jle	.LBB0_2
.LBB0_3:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	24(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	16(%rsp), %xmm3         # xmm3 = mem[0],zero
	leaq	12(%rsp), %rdi
	leaq	64(%rsp), %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 8(%rsp)
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movl	8(%rsp), %eax
	cmpl	12(%rsp), %eax
	jge	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movslq	8(%rsp), %rax
	movsd	64(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addl	$1, 8(%rsp)
	jmp	.LBB0_4
.LBB0_6:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%r15, 40(%rsp)
	movabsq	$-4606619468846596096, %rax # imm = 0xC012000000000000
	movq	%rax, 32(%rsp)
	movabsq	$4625478292286210048, %rax # imm = 0x4031000000000000
	movq	%rax, 24(%rsp)
	movq	%r14, 16(%rsp)
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	leaq	12(%rsp), %rdi
	leaq	64(%rsp), %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 8(%rsp)
	.p2align	4, 0x90
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movl	8(%rsp), %eax
	cmpl	12(%rsp), %eax
	jge	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	movslq	8(%rsp), %rax
	movsd	64(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addl	$1, 8(%rsp)
	jmp	.LBB0_7
.LBB0_9:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%r15, 40(%rsp)
	movabsq	$-4608308318706860032, %rax # imm = 0xC00C000000000000
	movq	%rax, 32(%rsp)
	movabsq	$4626885667169763328, %rax # imm = 0x4036000000000000
	movq	%rax, 24(%rsp)
	movabsq	$-4593953094894616576, %rax # imm = 0xC03F000000000000
	movq	%rax, 16(%rsp)
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_6(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_7(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_8(%rip), %xmm3   # xmm3 = mem[0],zero
	leaq	12(%rsp), %rdi
	leaq	64(%rsp), %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 8(%rsp)
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	8(%rsp), %eax
	cmpl	12(%rsp), %eax
	jge	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movslq	8(%rsp), %rax
	movsd	64(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addl	$1, 8(%rsp)
	jmp	.LBB0_10
.LBB0_12:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%r15, 40(%rsp)
	movabsq	$-4599470004438145434, %rax # imm = 0xC02B666666666666
	movq	%rax, 32(%rsp)
	movq	%r15, 24(%rsp)
	movabsq	$-4593249407452839936, %rax # imm = 0xC041800000000000
	movq	%rax, 16(%rsp)
	movsd	.LCPI0_9(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_10(%rip), %xmm3  # xmm3 = mem[0],zero
	leaq	12(%rsp), %rdi
	leaq	64(%rsp), %rsi
	movaps	%xmm0, %xmm2
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 8(%rsp)
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movl	8(%rsp), %eax
	cmpl	12(%rsp), %eax
	jge	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movslq	8(%rsp), %rax
	movsd	64(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addl	$1, 8(%rsp)
	jmp	.LBB0_13
.LBB0_15:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movabsq	$4613937818241073152, %rax # imm = 0x4008000000000000
	movq	%rax, 40(%rsp)
	movabsq	$4623136420479977390, %rax # imm = 0x4028AE147AE147AE
	movq	%rax, 32(%rsp)
	movabsq	$4617315517961601024, %r12 # imm = 0x4014000000000000
	movq	%r12, 24(%rsp)
	movabsq	$4622945017495814144, %rax # imm = 0x4028000000000000
	movq	%rax, 16(%rsp)
	movsd	.LCPI0_11(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_12(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_13(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI0_14(%rip), %xmm3  # xmm3 = mem[0],zero
	leaq	12(%rsp), %rdi
	leaq	64(%rsp), %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 8(%rsp)
	.p2align	4, 0x90
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movl	8(%rsp), %eax
	cmpl	12(%rsp), %eax
	jge	.LBB0_18
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	movslq	8(%rsp), %rax
	movsd	64(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addl	$1, 8(%rsp)
	jmp	.LBB0_16
.LBB0_18:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movabsq	$-4602678819172646912, %rax # imm = 0xC020000000000000
	movq	%rax, 40(%rsp)
	movabsq	$-4588894285875684311, %rax # imm = 0xC050F8F5C28F5C29
	movq	%rax, 32(%rsp)
	movabsq	$4618441417868443648, %rax # imm = 0x4018000000000000
	movq	%rax, 24(%rsp)
	movabsq	$-4596036009722275430, %rax # imm = 0xC03799999999999A
	movq	%rax, 16(%rsp)
	movsd	.LCPI0_15(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_16(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_17(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI0_18(%rip), %xmm3  # xmm3 = mem[0],zero
	leaq	12(%rsp), %rbx
	leaq	64(%rsp), %r14
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movabsq	$4631530004285489152, %rax # imm = 0x4046800000000000
	movq	%rax, 40(%rsp)
	movabsq	$4621070394150921175, %rax # imm = 0x4021570A3D70A3D7
	movq	%rax, 32(%rsp)
	movabsq	$4620130267728707584, %rax # imm = 0x401E000000000000
	movq	%rax, 24(%rsp)
	movabsq	$4629981891913580544, %rax # imm = 0x4041000000000000
	movq	%rax, 16(%rsp)
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_20(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_21(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI0_22(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movabsq	$-4600427019358961664, %rax # imm = 0xC028000000000000
	movq	%rax, 40(%rsp)
	movabsq	$-4613037098315599053, %rax # imm = 0xBFFB333333333333
	movq	%rax, 32(%rsp)
	movabsq	$4617653287933653811, %rax # imm = 0x4015333333333333
	movq	%rax, 24(%rsp)
	movabsq	$4625196817309499392, %rax # imm = 0x4030000000000000
	movq	%rax, 16(%rsp)
	movsd	.LCPI0_23(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_24(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_25(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI0_26(%rip), %xmm3  # xmm3 = mem[0],zero
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 8(%rsp)
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movl	8(%rsp), %eax
	cmpl	12(%rsp), %eax
	jge	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movslq	8(%rsp), %rax
	movsd	64(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addl	$1, 8(%rsp)
	jmp	.LBB0_19
.LBB0_21:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%r15, 40(%rsp)
	movabsq	$4621819117588971520, %r15 # imm = 0x4024000000000000
	movabsq	$-4616189618054758400, %r13 # imm = 0xBFF0000000000000
	leaq	12(%rsp), %r14
	leaq	64(%rsp), %rbx
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_35:                               #   in Loop: Header=BB0_22 Depth=1
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	.LCPI0_0(%rip), %xmm0
	movsd	%xmm0, 40(%rsp)
.LBB0_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_24 Depth 2
                                        #       Child Loop BB0_26 Depth 3
                                        #         Child Loop BB0_28 Depth 4
                                        #           Child Loop BB0_30 Depth 5
	movsd	.LCPI0_27(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	40(%rsp), %xmm0
	jbe	.LBB0_36
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	movq	%r15, 32(%rsp)
	jmp	.LBB0_24
	.p2align	4, 0x90
.LBB0_34:                               #   in Loop: Header=BB0_24 Depth=2
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	.LCPI0_29(%rip), %xmm0
	movsd	%xmm0, 32(%rsp)
.LBB0_24:                               #   Parent Loop BB0_22 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_26 Depth 3
                                        #         Child Loop BB0_28 Depth 4
                                        #           Child Loop BB0_30 Depth 5
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	.LCPI0_33, %xmm0
	jbe	.LBB0_35
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=2
	movq	%r12, 24(%rsp)
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_33:                               #   in Loop: Header=BB0_26 Depth=3
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	.LCPI0_31(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)
.LBB0_26:                               #   Parent Loop BB0_22 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_28 Depth 4
                                        #           Child Loop BB0_30 Depth 5
	movsd	.LCPI0_28(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	24(%rsp), %xmm0
	jbe	.LBB0_34
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=3
	movq	%r13, 16(%rsp)
	jmp	.LBB0_28
	.p2align	4, 0x90
.LBB0_32:                               #   in Loop: Header=BB0_28 Depth=4
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	.LCPI0_32(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)
.LBB0_28:                               #   Parent Loop BB0_22 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        #       Parent Loop BB0_26 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_30 Depth 5
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	.LCPI0_30(%rip), %xmm0
	jbe	.LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_28 Depth=4
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	24(%rsp), %xmm2         # xmm2 = mem[0],zero
	movsd	16(%rsp), %xmm3         # xmm3 = mem[0],zero
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	SolveCubic
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 8(%rsp)
	.p2align	4, 0x90
.LBB0_30:                               #   Parent Loop BB0_22 Depth=1
                                        #     Parent Loop BB0_24 Depth=2
                                        #       Parent Loop BB0_26 Depth=3
                                        #         Parent Loop BB0_28 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	8(%rsp), %eax
	cmpl	12(%rsp), %eax
	jge	.LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=5
	movslq	8(%rsp), %rax
	movsd	64(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.2, %edi
	movb	$1, %al
	callq	printf
	addl	$1, 8(%rsp)
	jmp	.LBB0_30
.LBB0_36:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 8(%rsp)
	leaq	48(%rsp), %rbx
	cmpl	$99999, 8(%rsp)         # imm = 0x1869F
	jg	.LBB0_39
	.p2align	4, 0x90
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	movslq	8(%rsp), %rdi
	movq	%rbx, %rsi
	callq	usqrt
	movl	8(%rsp), %esi
	movl	48(%rsp), %edx
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	addl	$2, 8(%rsp)
	cmpl	$99999, 8(%rsp)         # imm = 0x1869F
	jle	.LBB0_38
.LBB0_39:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movq	$1072497001, 56(%rsp)   # imm = 0x3FED0169
	leaq	48(%rsp), %rbx
	cmpq	$1072513384, 56(%rsp)   # imm = 0x3FED4168
	ja	.LBB0_42
	.p2align	4, 0x90
.LBB0_41:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rdi
	movq	%rbx, %rsi
	callq	usqrt
	movq	56(%rsp), %rsi
	movl	48(%rsp), %edx
	movl	52(%rsp), %ecx
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf
	movq	56(%rsp), %rsi
	movl	48(%rsp), %edx
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$1, 56(%rsp)
	cmpq	$1072513384, 56(%rsp)   # imm = 0x3FED4168
	jbe	.LBB0_41
.LBB0_42:
	xorl	%eax, %eax
	addq	$112, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	%xmm0, 16(%rsp)
	mulsd	.LCPI1_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	.LCPI1_1(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	atan
	mulsd	.LCPI1_2(%rip), %xmm0
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	addq	$24, %rsp
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
	movsd	%xmm0, (%rsp)
	movsd	.LCPI2_0(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	atan
	mulsd	.LCPI2_1(%rip), %xmm0
	mulsd	(%rsp), %xmm0
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
.LCPI3_8:
	.quad	4607182418800017408     # double 1
.LCPI3_9:
	.quad	4616189618054758400     # double 4
.LCPI3_10:
	.quad	0                       # double 0
	.text
	.globl	SolveCubic
	.p2align	4, 0x90
	.type	SolveCubic,@function
SolveCubic:                             # @SolveCubic
	.cfi_startproc
# %bb.0:
	subq	$296, %rsp              # imm = 0x128
	.cfi_def_cfa_offset 304
	movsd	%xmm0, 248(%rsp)
	movsd	%xmm1, 240(%rsp)
	movsd	%xmm2, 232(%rsp)
	movsd	%xmm3, 224(%rsp)
	movq	%rdi, 216(%rsp)
	movq	%rsi, 8(%rsp)
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 200(%rsp)
	fldl	200(%rsp)
	fld	%st(0)
	fstpt	64(%rsp)
	divsd	%xmm0, %xmm2
	movsd	%xmm2, 192(%rsp)
	fldl	192(%rsp)
	fld	%st(0)
	fstpt	272(%rsp)
	divsd	%xmm0, %xmm3
	movsd	%xmm3, 184(%rsp)
	fldl	184(%rsp)
	fld	%st(0)
	fstpt	256(%rsp)
	fld	%st(1)
	fmuls	.LCPI3_0(%rip)
	fld	%st(3)
	fmul	%st(4), %st
	faddp	%st, %st(1)
	flds	.LCPI3_1(%rip)
	fdivr	%st, %st(1)
	fld	%st(1)
	fstpt	48(%rsp)
	fld	%st(4)
	fadd	%st(5), %st
	fmul	%st(5), %st
	fmul	%st(5), %st
	fxch	%st(5)
	fmulp	%st, %st(1)
	fmulp	%st, %st(3)
	fxch	%st(1)
	fmuls	.LCPI3_2(%rip)
	fxch	%st(3)
	fsubp	%st, %st(2)
	fxch	%st(1)
	faddp	%st, %st(2)
	fxch	%st(1)
	fdivs	.LCPI3_3(%rip)
	fld	%st(0)
	fstpt	80(%rsp)
	fmul	%st, %st(0)
	fld	%st(1)
	fmul	%st(2), %st
	fmulp	%st, %st(2)
	fsubp	%st, %st(1)
	fstpl	176(%rsp)
	movsd	176(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 208(%rsp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movq	216(%rsp), %rax
	jb	.LBB3_14
# %bb.1:
	movl	$3, (%rax)
	fldt	80(%rsp)
	fldt	48(%rsp)
	fld	%st(0)
	fmul	%st(1), %st
	fmulp	%st, %st(1)
	fstpl	160(%rsp)
	movsd	160(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_3
# %bb.2:
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB3_4
.LBB3_14:
	movl	$1, (%rax)
	movsd	208(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_16
# %bb.15:
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB3_17
.LBB3_3:                                # %call.sqrt
	fstpt	16(%rsp)                # 10-byte Folded Spill
	callq	sqrt
	fldt	16(%rsp)                # 10-byte Folded Reload
.LBB3_4:                                # %.split
	movsd	%xmm0, 152(%rsp)
	fdivl	152(%rsp)
	fstpl	144(%rsp)
	movsd	144(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	acos
	movsd	%xmm0, 40(%rsp)
	fldt	48(%rsp)
	fstpl	136(%rsp)
	movsd	136(%rsp), %xmm0        # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_6
# %bb.5:
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB3_7
.LBB3_16:                               # %call.sqrt5
	callq	sqrt
.LBB3_17:                               # %.split4
	fldt	80(%rsp)
	fstpl	168(%rsp)
	movsd	168(%rsp), %xmm2        # xmm2 = mem[0],zero
	andpd	.LCPI3_4(%rip), %xmm2
	addsd	%xmm0, %xmm2
	movsd	.LCPI3_5(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	%xmm2, %xmm0
	callq	pow
	movq	8(%rsp), %rax
	movsd	%xmm0, (%rax)
	fldt	48(%rsp)
	movq	8(%rsp), %rax
	fldl	(%rax)
	fdivr	%st, %st(1)
	faddp	%st, %st(1)
	fstpl	(%rax)
	fldt	80(%rsp)
	fldz
	xorl	%eax, %eax
	fucompi	%st(1), %st
	fstp	%st(0)
	seta	%al
	leal	(%rax,%rax), %eax
	addl	$-1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movq	8(%rsp), %rax
	mulsd	(%rax), %xmm0
	movsd	%xmm0, (%rax)
	fldt	64(%rsp)
	fdivs	.LCPI3_0(%rip)
	movq	8(%rsp), %rax
	faddl	(%rax)
	fstpl	(%rax)
	addq	$296, %rsp              # imm = 0x128
	.cfi_def_cfa_offset 8
	retq
.LBB3_6:                                # %call.sqrt1
	.cfi_def_cfa_offset 304
	callq	sqrt
.LBB3_7:                                # %.split.split
	mulsd	.LCPI3_6(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	divsd	.LCPI3_7(%rip), %xmm0
	callq	cos
	mulsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 128(%rsp)
	fldt	64(%rsp)
	fdivs	.LCPI3_0(%rip)
	faddl	128(%rsp)
	movq	8(%rsp), %rax
	fstpl	(%rax)
	fldt	48(%rsp)
	fstpl	120(%rsp)
	movsd	120(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	.LCPI3_10, %xmm0
	jb	.LBB3_9
# %bb.8:
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB3_10
.LBB3_9:                                # %call.sqrt2
	callq	sqrt
.LBB3_10:                               # %.split.split.split
	mulsd	.LCPI3_6(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	.LCPI3_8(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	atan
	mulsd	.LCPI3_9(%rip), %xmm0
	addsd	%xmm0, %xmm0
	addsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	divsd	.LCPI3_7(%rip), %xmm0
	callq	cos
	mulsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 112(%rsp)
	fldt	64(%rsp)
	fdivs	.LCPI3_0(%rip)
	faddl	112(%rsp)
	movq	8(%rsp), %rax
	fstpl	8(%rax)
	fldt	48(%rsp)
	fstpl	104(%rsp)
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_12
# %bb.11:
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB3_13
.LBB3_12:                               # %call.sqrt3
	callq	sqrt
.LBB3_13:                               # %.split.split.split.split
	mulsd	.LCPI3_6(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	.LCPI3_8(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	atan
	movsd	.LCPI3_9(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	32(%rsp), %xmm0         # 8-byte Folded Reload
	divsd	.LCPI3_7(%rip), %xmm0
	callq	cos
	mulsd	16(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 96(%rsp)
	fldt	64(%rsp)
	fdivs	.LCPI3_0(%rip)
	faddl	96(%rsp)
	movq	8(%rsp), %rax
	fstpl	16(%rax)
	addq	$296, %rsp              # imm = 0x128
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
	movq	%rdi, -16(%rsp)
	movq	%rsi, -8(%rsp)
	movq	$0, -40(%rsp)
	movq	$0, -32(%rsp)
	movq	$0, -24(%rsp)
	movl	$0, -44(%rsp)
	cmpl	$31, -44(%rsp)
	jle	.LBB4_2
	jmp	.LBB4_5
	.p2align	4, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	addl	$1, -44(%rsp)
	cmpl	$31, -44(%rsp)
	jg	.LBB4_5
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rsp), %rax
	movq	-16(%rsp), %rcx
	movl	%ecx, %edx
	shrq	$30, %rdx
	leaq	(%rdx,%rax,4), %rax
	movq	%rax, -32(%rsp)
	shlq	$2, %rcx
	movq	%rcx, -16(%rsp)
	movq	-40(%rsp), %rcx
	leaq	(%rcx,%rcx), %rdx
	movq	%rdx, -40(%rsp)
	leaq	1(,%rcx,4), %rcx
	movq	%rcx, -24(%rsp)
	cmpq	%rcx, %rax
	jb	.LBB4_4
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	movq	-24(%rsp), %rax
	subq	%rax, -32(%rsp)
	addq	$1, -40(%rsp)
	jmp	.LBB4_4
.LBB4_5:
	movq	-8(%rsp), %rax
	movq	-40(%rsp), %rcx
	movq	%rcx, (%rax)
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
