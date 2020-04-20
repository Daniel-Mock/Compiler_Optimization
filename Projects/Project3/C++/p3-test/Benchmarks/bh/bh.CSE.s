	.text
	.file	"llvm-link"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$0, 4(%rsp)
	movl	%edi, (%rsp)
	movq	%rsi, 8(%rsp)
	callq	dealwithargs
	movl	nbody(%rip), %esi
	movl	__NumNodes(%rip), %edx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	callq	old_main
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function old_main
.LCPI1_0:
	.quad	4611688833177155011     # double 2.0012500000000002
.LCPI1_1:
	.quad	4578359381184846234     # double 0.012500000000000001
	.text
	.globl	old_main
	.p2align	4, 0x90
	.type	old_main,@function
old_main:                               # @old_main
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$960, %rsp              # imm = 0x3C0
	.cfi_def_cfa_offset 976
	.cfi_offset %rbx, -16
	movq	$0, 48(%rsp)
	movl	$0, (%rsp)
	movl	$64, %eax
	xorl	%edx, %edx
	idivl	__NumNodes(%rip)
	movl	%eax, 60(%rsp)
	movl	$123, %edi
	callq	srand
	movl	$1064, %edi             # imm = 0x428
	callq	malloc
	movq	%rax, 8(%rsp)
	movq	$0, 32(%rax)
	movq	8(%rsp), %rax
	movabsq	$-4611686018427387904, %rcx # imm = 0xC000000000000000
	movq	%rcx, (%rax)
	movq	8(%rsp), %rax
	movq	%rcx, 8(%rax)
	movq	8(%rsp), %rax
	movq	%rcx, 16(%rax)
	movq	8(%rsp), %rax
	movabsq	$4616189618054758400, %rcx # imm = 0x4010000000000000
	movq	%rcx, 24(%rax)
	movl	$0, 400(%rsp)
	cmpl	$2, 400(%rsp)
	jg	.LBB1_3
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movslq	400(%rsp), %rax
	movq	$0, 112(%rsp,%rax,8)
	addl	$1, %eax
	movl	%eax, 400(%rsp)
	cmpl	$2, 400(%rsp)
	jle	.LBB1_2
.LBB1_3:
	movl	$0, 400(%rsp)
	cmpl	$2, 400(%rsp)
	jg	.LBB1_6
	.p2align	4, 0x90
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movslq	400(%rsp), %rax
	movq	$0, 80(%rsp,%rax,8)
	addl	$1, %eax
	movl	%eax, 400(%rsp)
	cmpl	$2, 400(%rsp)
	jle	.LBB1_5
.LBB1_6:
	movl	$0, 4(%rsp)
	leaq	144(%rsp), %rbx
	cmpl	$31, 4(%rsp)
	jle	.LBB1_8
	jmp	.LBB1_17
	.p2align	4, 0x90
.LBB1_16:                               #   in Loop: Header=BB1_8 Depth=1
	addl	$1, 4(%rsp)
	cmpl	$31, 4(%rsp)
	jg	.LBB1_17
.LBB1_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_12 Depth 2
                                        #     Child Loop BB1_15 Depth 2
	movl	$32, %eax
	xorl	%edx, %edx
	idivl	__NumNodes(%rip)
	movl	%eax, %esi
	movl	4(%rsp), %ecx
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%eax, 16(%rsp)
	movl	nbody(%rip), %esi
	movl	%esi, %edx
	sarl	$31, %edx
	shrl	$27, %edx
	addl	%esi, %edx
	sarl	$5, %edx
	addl	$1, %ecx
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	uniform_testdata
	movupd	144(%rsp), %xmm0
	movupd	160(%rsp), %xmm1
	movups	176(%rsp), %xmm2
	movups	192(%rsp), %xmm3
	movaps	%xmm3, 448(%rsp)
	movaps	%xmm2, 432(%rsp)
	movapd	%xmm1, 416(%rsp)
	movapd	%xmm0, 400(%rsp)
	movq	448(%rsp), %rax
	movq	8(%rsp), %rcx
	movslq	4(%rsp), %rdx
	movq	%rax, 40(%rcx,%rdx,8)
	cmpq	$0, 48(%rsp)
	je	.LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	movq	448(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rax, 128(%rcx)
.LBB1_10:                               #   in Loop: Header=BB1_8 Depth=1
	movq	456(%rsp), %rax
	movq	%rax, 48(%rsp)
	movl	$0, 144(%rsp)
	cmpl	$2, 144(%rsp)
	jg	.LBB1_13
	.p2align	4, 0x90
.LBB1_12:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	144(%rsp), %rax
	movsd	112(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	addsd	400(%rsp,%rax,8), %xmm0
	movsd	%xmm0, 112(%rsp,%rax,8)
	addl	$1, %eax
	movl	%eax, 144(%rsp)
	cmpl	$2, 144(%rsp)
	jle	.LBB1_12
.LBB1_13:                               #   in Loop: Header=BB1_8 Depth=1
	movl	$0, 144(%rsp)
	cmpl	$2, 144(%rsp)
	jg	.LBB1_16
	.p2align	4, 0x90
.LBB1_15:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	144(%rsp), %rax
	movsd	80(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	addsd	424(%rsp,%rax,8), %xmm0
	movsd	%xmm0, 80(%rsp,%rax,8)
	addl	$1, %eax
	movl	%eax, 144(%rsp)
	cmpl	$2, 144(%rsp)
	jle	.LBB1_15
	jmp	.LBB1_16
.LBB1_17:
	movl	$0, 400(%rsp)
	cmpl	$2, 400(%rsp)
	jg	.LBB1_20
	.p2align	4, 0x90
.LBB1_19:                               # =>This Inner Loop Header: Depth=1
	movslq	400(%rsp), %rax
	movsd	112(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	nbody(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 112(%rsp,%rax,8)
	addl	$1, %eax
	movl	%eax, 400(%rsp)
	cmpl	$2, 400(%rsp)
	jle	.LBB1_19
.LBB1_20:
	movl	$0, 400(%rsp)
	cmpl	$2, 400(%rsp)
	jg	.LBB1_23
	.p2align	4, 0x90
.LBB1_22:                               # =>This Inner Loop Header: Depth=1
	movslq	400(%rsp), %rax
	movsd	80(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	xorps	%xmm1, %xmm1
	cvtsi2sdl	nbody(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rsp,%rax,8)
	addl	$1, %eax
	movl	%eax, 400(%rsp)
	cmpl	$2, 400(%rsp)
	jle	.LBB1_22
.LBB1_23:
	movl	$0, (%rsp)
	cmpl	$63, (%rsp)
	jg	.LBB1_26
	.p2align	4, 0x90
.LBB1_25:                               # =>This Inner Loop Header: Depth=1
	movslq	(%rsp), %rax
	movl	$0, 144(%rsp,%rax,4)
	movq	$0, 400(%rsp,%rax,8)
	addl	$1, %eax
	movl	%eax, (%rsp)
	cmpl	$63, (%rsp)
	jle	.LBB1_25
.LBB1_26:
	movq	8(%rsp), %rax
	movq	40(%rax), %rax
	jmp	.LBB1_27
	.p2align	4, 0x90
.LBB1_34:                               #   in Loop: Header=BB1_27 Depth=1
	movq	40(%rsp), %rdi
	movq	8(%rsp), %rsi
	callq	intcoord
	movq	%rax, 64(%rsp)
	movq	%rdx, 72(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	movl	$536870912, %edx        # imm = 0x20000000
	callq	old_subindex
	movl	%eax, %ebx
	movq	16(%rsp), %rdi
	movq	24(%rsp), %rsi
	movl	$268435456, %edx        # imm = 0x10000000
	callq	old_subindex
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%rbx,8), %eax
	cltd
	idivl	60(%rsp)
	movslq	%eax, %rcx
	addl	$1, 144(%rsp,%rcx,4)
	movl	%eax, (%rsp)
	movq	400(%rsp,%rcx,8), %rax
	movq	40(%rsp), %rcx
	movq	%rax, 136(%rcx)
	movq	40(%rsp), %rax
	movslq	(%rsp), %rcx
	movq	%rax, 400(%rsp,%rcx,8)
	movl	%ecx, 40(%rax)
	movq	40(%rsp), %rax
	movq	128(%rax), %rax
.LBB1_27:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_30 Depth 2
                                        #     Child Loop BB1_33 Depth 2
	movq	%rax, 40(%rsp)
	cmpq	$0, 40(%rsp)
	je	.LBB1_35
# %bb.28:                               #   in Loop: Header=BB1_27 Depth=1
	movl	$0, 16(%rsp)
	cmpl	$2, 16(%rsp)
	jg	.LBB1_31
	.p2align	4, 0x90
.LBB1_30:                               #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	40(%rsp), %rax
	movslq	16(%rsp), %rcx
	movsd	16(%rax,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	subsd	112(%rsp,%rcx,8), %xmm0
	movsd	%xmm0, 16(%rax,%rcx,8)
	addl	$1, 16(%rsp)
	cmpl	$2, 16(%rsp)
	jle	.LBB1_30
.LBB1_31:                               #   in Loop: Header=BB1_27 Depth=1
	movl	$0, 16(%rsp)
	cmpl	$2, 16(%rsp)
	jg	.LBB1_34
	.p2align	4, 0x90
.LBB1_33:                               #   Parent Loop BB1_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	40(%rsp), %rax
	movslq	16(%rsp), %rcx
	movsd	48(%rax,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	subsd	80(%rsp,%rcx,8), %xmm0
	movsd	%xmm0, 48(%rax,%rcx,8)
	addl	$1, 16(%rsp)
	cmpl	$2, 16(%rsp)
	jle	.LBB1_33
	jmp	.LBB1_34
.LBB1_35:
	movl	$0, (%rsp)
	.p2align	4, 0x90
.LBB1_36:                               # =>This Inner Loop Header: Depth=1
	movl	(%rsp), %eax
	cmpl	__NumNodes(%rip), %eax
	jge	.LBB1_38
# %bb.37:                               #   in Loop: Header=BB1_36 Depth=1
	movslq	(%rsp), %rsi
	movl	144(%rsp,%rsi,4), %edx
	movl	$.L.str.1, %edi
                                        # kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	callq	printf
	movslq	(%rsp), %rax
	movq	400(%rsp,%rax,8), %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 552(%rdx,%rax,8)
	addl	$1, (%rsp)
	jmp	.LBB1_36
.LBB1_38:
	movl	$0, (%rsp)
	movq	$0, 16(%rsp)
	movl	$0, 4(%rsp)
	movl	$10, 64(%rsp)
	.p2align	4, 0x90
.LBB1_39:                               # =>This Inner Loop Header: Depth=1
	movsd	.LCPI1_0(%rip), %xmm0   # xmm0 = mem[0],zero
	ucomisd	16(%rsp), %xmm0
	jbe	.LBB1_40
# %bb.41:                               #   in Loop: Header=BB1_39 Depth=1
	movl	4(%rsp), %eax
	cmpl	64(%rsp), %eax
	setl	%al
	jmp	.LBB1_42
	.p2align	4, 0x90
.LBB1_40:                               #   in Loop: Header=BB1_39 Depth=1
	xorl	%eax, %eax
.LBB1_42:                               #   in Loop: Header=BB1_39 Depth=1
	movq	8(%rsp), %rdi
	testb	%al, %al
	je	.LBB1_44
# %bb.43:                               #   in Loop: Header=BB1_39 Depth=1
	movl	4(%rsp), %esi
	callq	stepsystem
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	.LCPI1_1(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)
	addl	$1, 4(%rsp)
	jmp	.LBB1_39
.LBB1_44:
	movq	%rdi, %rax
	addq	$960, %rsp              # imm = 0x3C0
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	old_main, .Lfunc_end1-old_main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function uniform_testdata
.LCPI2_0:
	.quad	4638355772470722560     # double 123
.LCPI2_1:
	.quad	4610324367358277124     # double 1.6976527263135504
.LCPI2_2:
	.quad	4607182418800017408     # double 1
.LCPI2_3:
	.quad	4607173411600762667     # double 0.99899999999999999
.LCPI2_4:
	.quad	-4619192017806338731    # double -0.66666666666666663
.LCPI2_5:
	.quad	4591870180066957722     # double 0.10000000000000001
.LCPI2_6:
	.quad	4615063718147915776     # double 3.5
.LCPI2_7:
	.quad	4611686018427387904     # double 2
.LCPI2_8:
	.quad	4598175219545276416     # double 0.25
.LCPI2_9:
	.quad	-4616189618054758400    # double -1
.LCPI2_10:
	.quad	0                       # double 0
	.text
	.globl	uniform_testdata
	.p2align	4, 0x90
	.type	uniform_testdata,@function
uniform_testdata:                       # @uniform_testdata
	.cfi_startproc
# %bb.0:                                # %.split
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$184, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movl	%esi, 52(%rsp)
	movl	%edx, 48(%rsp)
	cvtsi2sd	%ecx, %xmm0
	mulsd	.LCPI2_0(%rip), %xmm0
	movl	%ecx, 140(%rsp)
	movsd	%xmm0, 8(%rsp)
	movabsq	$4603480897859297746, %rax # imm = 0x3FE2D97C7F3321D2
	movq	%rax, 176(%rsp)
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, 128(%rsp)
	movl	$0, 16(%rsp)
	cmpl	$2, 16(%rsp)
	jg	.LBB2_3
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movslq	16(%rsp), %rax
	movq	$0, (%rbx,%rax,8)
	addl	$1, 16(%rsp)
	cmpl	$2, 16(%rsp)
	jle	.LBB2_2
.LBB2_3:
	movl	$0, 16(%rsp)
	cmpl	$2, 16(%rsp)
	jg	.LBB2_6
	.p2align	4, 0x90
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movslq	16(%rsp), %rax
	movq	$0, 24(%rbx,%rax,8)
	addl	$1, 16(%rsp)
	cmpl	$2, 16(%rsp)
	jle	.LBB2_5
.LBB2_6:
	movl	52(%rsp), %edi
	callq	ubody_alloc
	movq	%rax, 120(%rsp)
	movq	%rax, 64(%rsp)
	movl	$0, 44(%rsp)
	movabsq	$4616189618054758400, %r14 # imm = 0x4010000000000000
	movsd	.LCPI2_7(%rip), %xmm0   # xmm0 = mem[0],zero
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	jmp	.LBB2_7
	.p2align	4, 0x90
.LBB2_37:                               #   in Loop: Header=BB2_7 Depth=1
	addl	$1, 44(%rsp)
.LBB2_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
                                        #     Child Loop BB2_18 Depth 2
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_21 Depth 2
                                        #       Child Loop BB2_23 Depth 3
                                        #       Child Loop BB2_26 Depth 3
                                        #     Child Loop BB2_33 Depth 2
                                        #     Child Loop BB2_36 Depth 2
	movl	44(%rsp), %eax
	cmpl	48(%rsp), %eax
	jge	.LBB2_38
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	movl	52(%rsp), %edi
	callq	ubody_alloc
	movq	%rax, 24(%rsp)
	testq	%rax, %rax
	jne	.LBB2_10
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=1
	movl	$.L.str.3, %edi
	callq	error
.LBB2_10:                               #   in Loop: Header=BB2_7 Depth=1
	movq	24(%rsp), %rax
	movq	64(%rsp), %rcx
	movq	%rax, 128(%rcx)
	movq	24(%rsp), %rax
	movq	%rax, 64(%rsp)
	movw	$1, (%rax)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	48(%rsp), %xmm0
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	24(%rsp), %rax
	movsd	%xmm1, 8(%rax)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movb	$1, %al
	callq	my_rand
	movapd	%xmm0, %xmm2
	movsd	%xmm0, 8(%rsp)
	xorpd	%xmm0, %xmm0
	movsd	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movb	$3, %al
	callq	xrand
	movsd	%xmm0, 144(%rsp)
	movsd	.LCPI2_4(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 152(%rsp)
	ucomisd	.LCPI2_10, %xmm0
	jb	.LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_7 Depth=1
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB2_13
	.p2align	4, 0x90
.LBB2_12:                               # %call.sqrt2
                                        #   in Loop: Header=BB2_7 Depth=1
	callq	sqrt
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
.LBB2_13:                               # %.split1
                                        #   in Loop: Header=BB2_7 Depth=1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp)
	movq	%r14, 96(%rsp)
	movl	$0, 4(%rsp)
	cmpl	$2, 4(%rsp)
	jg	.LBB2_16
	.p2align	4, 0x90
.LBB2_15:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movb	$1, %al
	callq	my_rand
	movapd	%xmm0, %xmm2
	movsd	%xmm0, 8(%rsp)
	xorpd	%xmm0, %xmm0
	movsd	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movb	$3, %al
	callq	xrand
	movsd	%xmm0, 16(%rsp)
	mulsd	96(%rsp), %xmm0
	movq	24(%rsp), %rax
	movslq	4(%rsp), %rcx
	movsd	%xmm0, 16(%rax,%rcx,8)
	addl	$1, 4(%rsp)
	cmpl	$2, 4(%rsp)
	jle	.LBB2_15
.LBB2_16:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB2_19
	.p2align	4, 0x90
.LBB2_18:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rsp), %rax
	movsd	(%rbx,%rax,8), %xmm0    # xmm0 = mem[0],zero
	movq	24(%rsp), %rcx
	addsd	16(%rcx,%rax,8), %xmm0
	movsd	%xmm0, (%rbx,%rax,8)
	addl	$1, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB2_18
	.p2align	4, 0x90
.LBB2_19:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movb	$1, %al
	callq	my_rand
	movaps	%xmm0, %xmm2
	movsd	%xmm0, 8(%rsp)
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movb	$3, %al
	callq	xrand
	movsd	%xmm0, 72(%rsp)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movb	$1, %al
	callq	my_rand
	movapd	%xmm0, %xmm2
	movsd	%xmm0, 8(%rsp)
	xorpd	%xmm0, %xmm0
	movsd	.LCPI2_5(%rip), %xmm1   # xmm1 = mem[0],zero
	movb	$3, %al
	callq	xrand
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	%xmm0, 160(%rsp)
	movsd	72(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	movsd	%xmm1, 88(%rsp)         # 8-byte Spill
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	.LCPI2_6(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	mulsd	88(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB2_19
# %bb.20:                               # %.split3
                                        #   in Loop: Header=BB2_7 Depth=1
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	80(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	.LCPI2_2(%rip), %xmm0
	movsd	.LCPI2_8(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 168(%rsp)
	mulsd	128(%rsp), %xmm1
	movsd	%xmm1, 104(%rsp)
	jmp	.LBB2_21
	.p2align	4, 0x90
.LBB2_27:                               #   in Loop: Header=BB2_21 Depth=2
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB2_28
.LBB2_21:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_23 Depth 3
                                        #       Child Loop BB2_26 Depth 3
	movl	$0, 4(%rsp)
	cmpl	$2, 4(%rsp)
	jg	.LBB2_24
	.p2align	4, 0x90
.LBB2_23:                               #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movb	$1, %al
	callq	my_rand
	movapd	%xmm0, %xmm2
	movsd	%xmm0, 8(%rsp)
	movsd	.LCPI2_9(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movb	$3, %al
	callq	xrand
	movq	24(%rsp), %rax
	movslq	4(%rsp), %rcx
	movsd	%xmm0, 48(%rax,%rcx,8)
	addl	$1, 4(%rsp)
	cmpl	$2, 4(%rsp)
	jle	.LBB2_23
.LBB2_24:                               #   in Loop: Header=BB2_21 Depth=2
	movq	$0, 56(%rsp)
	movl	$0, (%rsp)
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	cmpl	$2, (%rsp)
	jg	.LBB2_27
	.p2align	4, 0x90
.LBB2_26:                               #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	24(%rsp), %rax
	movslq	(%rsp), %rcx
	movsd	48(%rax,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	56(%rsp), %xmm0
	movsd	%xmm0, 56(%rsp)
	leal	1(%rcx), %eax
	movl	%eax, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB2_26
	jmp	.LBB2_27
	.p2align	4, 0x90
.LBB2_28:                               #   in Loop: Header=BB2_7 Depth=1
	movsd	104(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	.LCPI2_10, %xmm0
	jb	.LBB2_30
# %bb.29:                               #   in Loop: Header=BB2_7 Depth=1
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB2_31
	.p2align	4, 0x90
.LBB2_30:                               # %call.sqrt6
                                        #   in Loop: Header=BB2_7 Depth=1
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	callq	sqrt
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
.LBB2_31:                               # %.split5
                                        #   in Loop: Header=BB2_7 Depth=1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 112(%rsp)
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB2_34
	.p2align	4, 0x90
.LBB2_33:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rsp), %rax
	movslq	(%rsp), %rcx
	movsd	48(%rax,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	mulsd	112(%rsp), %xmm0
	movsd	%xmm0, 48(%rax,%rcx,8)
	addl	$1, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB2_33
.LBB2_34:                               #   in Loop: Header=BB2_7 Depth=1
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB2_37
	.p2align	4, 0x90
.LBB2_36:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rsp), %rax
	movsd	24(%rbx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movq	24(%rsp), %rcx
	addsd	48(%rcx,%rax,8), %xmm0
	movsd	%xmm0, 24(%rbx,%rax,8)
	addl	$1, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB2_36
	jmp	.LBB2_37
.LBB2_38:
	movq	64(%rsp), %rax
	movq	$0, 128(%rax)
	movq	120(%rsp), %rax
	movq	128(%rax), %rax
	movq	%rax, 48(%rbx)
	movq	64(%rsp), %rax
	movq	%rax, 56(%rbx)
	movq	%rbx, %rax
	addq	$184, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	uniform_testdata, .Lfunc_end2-uniform_testdata
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function intcoord
.LCPI3_0:
	.quad	4607182418800017408     # double 1
.LCPI3_1:
	.quad	4742290407621132288     # double 1073741824
	.text
	.globl	intcoord
	.p2align	4, 0x90
	.type	intcoord,@function
intcoord:                               # @intcoord
	.cfi_startproc
# %bb.0:
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 80(%rsp)
	movq	%rsi, 40(%rsp)
	movw	$1, 28(%rsp)
	movsd	24(%rsi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 32(%rsp)
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rsp)
	movsd	24(%rdi), %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm2, 56(%rsp)
	movsd	32(%rdi), %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm2, 64(%rsp)
	subsd	(%rsi), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 8(%rsp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_3
# %bb.1:
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_3
# %bb.2:
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	mulsd	.LCPI3_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 16(%rsp)
	jmp	.LBB3_4
.LBB3_3:
	movw	$0, 28(%rsp)
.LBB3_4:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	40(%rsp), %rax
	subsd	8(%rax), %xmm0
	divsd	32(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_7
# %bb.5:
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_7
# %bb.6:
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	mulsd	.LCPI3_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 20(%rsp)
	jmp	.LBB3_8
.LBB3_7:
	movw	$0, 28(%rsp)
.LBB3_8:
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	40(%rsp), %rax
	subsd	16(%rax), %xmm0
	divsd	32(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_11
# %bb.9:
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_11
# %bb.10:
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	mulsd	.LCPI3_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 24(%rsp)
	jmp	.LBB3_12
.LBB3_11:
	movw	$0, 28(%rsp)
.LBB3_12:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdx
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	intcoord, .Lfunc_end3-intcoord
	.cfi_endproc
                                        # -- End function
	.globl	old_subindex            # -- Begin function old_subindex
	.p2align	4, 0x90
	.type	old_subindex,@function
old_subindex:                           # @old_subindex
	.cfi_startproc
# %bb.0:
	movq	%rdi, -16(%rsp)
	movq	%rsi, -8(%rsp)
	movl	%edx, -20(%rsp)
	movl	$0, -24(%rsp)
	movl	$0, -28(%rsp)
	cmpl	$2, -28(%rsp)
	jle	.LBB4_2
	jmp	.LBB4_5
	.p2align	4, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	addl	$1, -28(%rsp)
	cmpl	$2, -28(%rsp)
	jg	.LBB4_5
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movslq	-28(%rsp), %rax
	movl	-16(%rsp,%rax,4), %eax
	testl	%eax, -20(%rsp)
	je	.LBB4_4
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	movzbl	-28(%rsp), %ecx
	addb	$1, %cl
	movl	$8, %eax
	shrl	%cl, %eax
	addl	%eax, -24(%rsp)
	jmp	.LBB4_4
.LBB4_5:
	movl	-24(%rsp), %eax
	retq
.Lfunc_end4:
	.size	old_subindex, .Lfunc_end4-old_subindex
	.cfi_endproc
                                        # -- End function
	.globl	stepsystem              # -- Begin function stepsystem
	.p2align	4, 0x90
	.type	stepsystem,@function
stepsystem:                             # @stepsystem
	.cfi_startproc
# %bb.0:
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 8(%rsp)
	movl	%esi, 4(%rsp)
	movq	32(%rdi), %rax
	movq	%rax, 16(%rsp)
	testq	%rax, %rax
	je	.LBB5_2
# %bb.1:
	movq	16(%rsp), %rdi
	callq	freetree1
	movq	8(%rsp), %rax
	movq	$0, 32(%rax)
.LBB5_2:
	movq	24(%rsp), %rdi
	movl	nbody(%rip), %esi
	movq	8(%rsp), %rdx
	movl	4(%rsp), %ecx
	xorl	%r8d, %r8d
	callq	maketree
	movq	%rax, 16(%rsp)
	movq	8(%rsp), %rcx
	movq	%rax, 32(%rcx)
	movq	8(%rsp), %rdi
	movl	4(%rsp), %esi
	callq	computegrav
	movq	8(%rsp), %rax
	movq	552(%rax), %rdi
	movl	4(%rsp), %esi
	callq	vp
	xorl	%eax, %eax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	stepsystem, .Lfunc_end5-stepsystem
	.cfi_endproc
                                        # -- End function
	.globl	freetree1               # -- Begin function freetree1
	.p2align	4, 0x90
	.type	freetree1,@function
freetree1:                              # @freetree1
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	callq	freetree
	xorl	%eax, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	freetree1, .Lfunc_end6-freetree1
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function maketree
.LCPI7_0:
	.quad	0                       # double 0
	.text
	.globl	maketree
	.p2align	4, 0x90
	.type	maketree,@function
maketree:                               # @maketree
	.cfi_startproc
# %bb.0:
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 88(%rsp)
	movl	%esi, 36(%rsp)
	movq	%rdx, 16(%rsp)
	movl	%ecx, 32(%rsp)
	movl	%r8d, 28(%rsp)
	movq	$0, 32(%rdx)
	movl	36(%rsp), %eax
	movl	%eax, nbody(%rip)
	movl	__NumNodes(%rip), %eax
	addl	$-1, %eax
	movl	%eax, 12(%rsp)
	jmp	.LBB7_1
	.p2align	4, 0x90
.LBB7_7:                                #   in Loop: Header=BB7_1 Depth=1
	addl	$-1, 12(%rsp)
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	cmpl	$0, 12(%rsp)
	movq	16(%rsp), %rax
	js	.LBB7_8
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movslq	12(%rsp), %rcx
	movq	552(%rax,%rcx,8), %rax
	movq	%rax, 88(%rsp)
	jmp	.LBB7_3
	.p2align	4, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=2
	movq	(%rsp), %rax
	movq	136(%rax), %rax
.LBB7_3:                                #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, (%rsp)
	cmpq	$0, (%rsp)
	je	.LBB7_7
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=2
	movq	(%rsp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	ucomisd	.LCPI7_0, %xmm0
	jne	.LBB7_5
	jnp	.LBB7_6
.LBB7_5:                                #   in Loop: Header=BB7_3 Depth=2
	movq	(%rsp), %rdi
	movq	16(%rsp), %rsi
	movl	32(%rsp), %edx
	movl	28(%rsp), %ecx
	callq	expandbox
	movq	(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	intcoord
	movq	%rax, 72(%rsp)
	movq	%rdx, 80(%rsp)
	movq	72(%rsp), %rax
	movq	%rax, 48(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	16(%rsp), %r9
	movq	32(%r9), %rcx
	movq	%rcx, 40(%rsp)
	movq	(%rsp), %rdi
	movq	48(%rsp), %rsi
	movq	56(%rsp), %rdx
	movl	$536870912, %r8d        # imm = 0x20000000
	callq	loadtree
	movq	%rax, 40(%rsp)
	movq	16(%rsp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB7_6
.LBB7_8:
	movq	32(%rax), %rdi
	movq	%rdi, 40(%rsp)
	callq	hackcofm
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	maketree, .Lfunc_end7-maketree
	.cfi_endproc
                                        # -- End function
	.globl	computegrav             # -- Begin function computegrav
	.p2align	4, 0x90
	.type	computegrav,@function
computegrav:                            # @computegrav
	.cfi_startproc
# %bb.0:
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 32(%rsp)
	movl	%esi, 12(%rsp)
	movsd	24(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	movabsq	$4573855781557475738, %rax # imm = 0x3F7999999999999A
	movq	%rax, 16(%rsp)
	movl	__NumNodes(%rip), %eax
	addl	$-1, %eax
	movl	%eax, 8(%rsp)
	cmpl	$0, 8(%rsp)
	js	.LBB8_3
	.p2align	4, 0x90
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movq	32(%rsp), %rax
	movq	32(%rax), %rdi
	movq	%rdi, 48(%rsp)
	movslq	8(%rsp), %rcx
	movq	552(%rax,%rcx,8), %rsi
	movq	%rsi, 40(%rsp)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movl	12(%rsp), %edx
	movsd	16(%rsp), %xmm1         # xmm1 = mem[0],zero
	callq	grav
	addl	$-1, 8(%rsp)
	cmpl	$0, 8(%rsp)
	jns	.LBB8_2
.LBB8_3:
	xorl	%eax, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	computegrav, .Lfunc_end8-computegrav
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function vp
.LCPI9_0:
	.quad	9223372036854775807     # double NaN
	.quad	9223372036854775807     # double NaN
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI9_1:
	.quad	4621819117588971520     # double 10
.LCPI9_2:
	.quad	4666723172467343360     # double 1.0E+4
.LCPI9_3:
	.quad	4578359381184846234     # double 0.012500000000000001
	.text
	.globl	vp
	.p2align	4, 0x90
	.type	vp,@function
vp:                                     # @vp
	.cfi_startproc
# %bb.0:
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	movq	%rdi, 8(%rsp)
	movl	%esi, 36(%rsp)
	movabsq	$4573855781557475738, %rax # imm = 0x3F7999999999999A
	movq	%rax, 40(%rsp)
	testq	%rdi, %rdi
	cmpq	$0, 8(%rsp)
	je	.LBB9_89
	.p2align	4, 0x90
.LBB9_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_4 Depth 2
                                        #     Child Loop BB9_8 Depth 2
                                        #     Child Loop BB9_11 Depth 2
                                        #     Child Loop BB9_14 Depth 2
                                        #     Child Loop BB9_17 Depth 2
                                        #     Child Loop BB9_33 Depth 2
                                        #     Child Loop BB9_48 Depth 2
                                        #     Child Loop BB9_63 Depth 2
                                        #     Child Loop BB9_66 Depth 2
                                        #     Child Loop BB9_69 Depth 2
                                        #     Child Loop BB9_72 Depth 2
                                        #     Child Loop BB9_75 Depth 2
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB9_5
	.p2align	4, 0x90
.LBB9_4:                                #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rsp), %rax
	movslq	(%rsp), %rcx
	movsd	96(%rax,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, 144(%rsp,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB9_4
.LBB9_5:                                #   in Loop: Header=BB9_2 Depth=1
	cmpl	$0, 36(%rsp)
	jle	.LBB9_18
# %bb.6:                                #   in Loop: Header=BB9_2 Depth=1
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB9_9
	.p2align	4, 0x90
.LBB9_8:                                #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rsp), %rax
	movsd	144(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	subsd	72(%rcx,%rax,8), %xmm0
	movsd	%xmm0, 176(%rsp,%rax,8)
	addl	$1, %eax
	movl	%eax, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB9_8
.LBB9_9:                                #   in Loop: Header=BB9_2 Depth=1
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB9_12
	.p2align	4, 0x90
.LBB9_11:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rsp), %rax
	movsd	176(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	mulsd	40(%rsp), %xmm0
	movsd	%xmm0, 48(%rsp,%rax,8)
	addl	$1, %eax
	movl	%eax, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB9_11
.LBB9_12:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB9_15
	.p2align	4, 0x90
.LBB9_14:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rsp), %rax
	movslq	(%rsp), %rcx
	movsd	48(%rax,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	addsd	48(%rsp,%rcx,8), %xmm0
	movsd	%xmm0, 48(%rsp,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB9_14
.LBB9_15:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB9_18
	.p2align	4, 0x90
.LBB9_17:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rsp), %rax
	movsd	48(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 48(%rcx,%rax,8)
	addl	$1, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB9_17
.LBB9_18:                               #   in Loop: Header=BB9_2 Depth=1
	movq	8(%rsp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsp)
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 24(%rsp)
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 16(%rsp)
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_19
# %bb.21:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_22
# %bb.23:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_24
# %bb.25:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movapd	.LCPI9_0(%rip), %xmm1   # xmm1 = [NaN,NaN]
	andpd	%xmm1, %xmm0
	movsd	.LCPI9_1(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_26
# %bb.27:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	andpd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_28
# %bb.29:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	andpd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_30
# %bb.31:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB9_34
	.p2align	4, 0x90
.LBB9_33:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rsp), %rax
	movsd	144(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 72(%rcx,%rax,8)
	addl	$1, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB9_33
.LBB9_34:                               #   in Loop: Header=BB9_2 Depth=1
	movq	8(%rsp), %rax
	movsd	72(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsp)
	movsd	80(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 24(%rsp)
	movsd	88(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 16(%rsp)
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_35
# %bb.36:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_37
# %bb.38:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_39
# %bb.40:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movapd	.LCPI9_0(%rip), %xmm1   # xmm1 = [NaN,NaN]
	andpd	%xmm1, %xmm0
	movsd	.LCPI9_2(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_41
# %bb.42:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	andpd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_43
# %bb.44:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	andpd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_45
# %bb.46:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB9_49
	.p2align	4, 0x90
.LBB9_48:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rsp), %rax
	movslq	(%rsp), %rcx
	movsd	72(%rax,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	mulsd	40(%rsp), %xmm0
	movsd	%xmm0, 48(%rsp,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB9_48
.LBB9_49:                               #   in Loop: Header=BB9_2 Depth=1
	movq	8(%rsp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsp)
	movsd	56(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 24(%rsp)
	movsd	64(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 16(%rsp)
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_50
# %bb.51:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_52
# %bb.53:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_54
# %bb.55:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movapd	.LCPI9_0(%rip), %xmm1   # xmm1 = [NaN,NaN]
	andpd	%xmm1, %xmm0
	movsd	.LCPI9_2(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_56
# %bb.57:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	andpd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_58
# %bb.59:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	andpd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_60
# %bb.61:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$0, (%rsp)
	movsd	.LCPI9_3(%rip), %xmm1   # xmm1 = mem[0],zero
	cmpl	$2, (%rsp)
	jg	.LBB9_64
	.p2align	4, 0x90
.LBB9_63:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rsp), %rax
	movslq	(%rsp), %rcx
	movsd	48(%rax,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	addsd	48(%rsp,%rcx,8), %xmm0
	movsd	%xmm0, 112(%rsp,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB9_63
.LBB9_64:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB9_67
	.p2align	4, 0x90
.LBB9_66:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rsp), %rax
	movsd	112(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rsp,%rax,8)
	addl	$1, %eax
	movl	%eax, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB9_66
.LBB9_67:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB9_70
	.p2align	4, 0x90
.LBB9_69:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	8(%rsp), %rax
	movslq	(%rsp), %rcx
	movsd	16(%rax,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	addsd	80(%rsp,%rcx,8), %xmm0
	movsd	%xmm0, 80(%rsp,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB9_69
.LBB9_70:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB9_73
	.p2align	4, 0x90
.LBB9_72:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rsp), %rax
	movsd	80(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movq	8(%rsp), %rcx
	movsd	%xmm0, 16(%rcx,%rax,8)
	addl	$1, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB9_72
.LBB9_73:                               #   in Loop: Header=BB9_2 Depth=1
	movl	$0, (%rsp)
	cmpl	$2, (%rsp)
	jg	.LBB9_76
	.p2align	4, 0x90
.LBB9_75:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	(%rsp), %rax
	movsd	112(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	addsd	48(%rsp,%rax,8), %xmm0
	movq	8(%rsp), %rcx
	movsd	%xmm0, 48(%rcx,%rax,8)
	addl	$1, (%rsp)
	cmpl	$2, (%rsp)
	jle	.LBB9_75
.LBB9_76:                               #   in Loop: Header=BB9_2 Depth=1
	movq	8(%rsp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsp)
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 24(%rsp)
	movsd	32(%rax), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 16(%rsp)
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_77
# %bb.78:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_79
# %bb.80:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_81
# %bb.82:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movapd	.LCPI9_0(%rip), %xmm1   # xmm1 = [NaN,NaN]
	andpd	%xmm1, %xmm0
	movsd	.LCPI9_2(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_83
# %bb.84:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	andpd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_85
# %bb.86:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	andpd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm2
	jbe	.LBB9_87
# %bb.88:                               #   in Loop: Header=BB9_2 Depth=1
	movq	8(%rsp), %rax
	movq	136(%rax), %rax
	movq	%rax, 8(%rsp)
	cmpq	$0, 8(%rsp)
	jne	.LBB9_2
.LBB9_89:
	xorl	%eax, %eax
	addq	$216, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB9_19:
	.cfi_def_cfa_offset 224
	movl	$.L.str.2, %edi
	movl	$99, %esi
	jmp	.LBB9_20
.LBB9_22:
	movl	$.L.str.2, %edi
	movl	$98, %esi
	jmp	.LBB9_20
.LBB9_24:
	movl	$.L.str.2, %edi
	movl	$97, %esi
	jmp	.LBB9_20
.LBB9_26:
	movl	$.L.str.2, %edi
	movl	$96, %esi
	jmp	.LBB9_20
.LBB9_28:
	movl	$.L.str.2, %edi
	movl	$95, %esi
	jmp	.LBB9_20
.LBB9_30:
	movl	$.L.str.2, %edi
	movl	$94, %esi
	jmp	.LBB9_20
.LBB9_35:
	movl	$.L.str.2, %edi
	movl	$89, %esi
	jmp	.LBB9_20
.LBB9_37:
	movl	$.L.str.2, %edi
	movl	$88, %esi
	jmp	.LBB9_20
.LBB9_39:
	movl	$.L.str.2, %edi
	movl	$87, %esi
	jmp	.LBB9_20
.LBB9_41:
	movl	$.L.str.2, %edi
	movl	$86, %esi
	jmp	.LBB9_20
.LBB9_43:
	movl	$.L.str.2, %edi
	movl	$85, %esi
	jmp	.LBB9_20
.LBB9_45:
	movl	$.L.str.2, %edi
	movl	$84, %esi
	jmp	.LBB9_20
.LBB9_50:
	movl	$.L.str.2, %edi
	movl	$79, %esi
	jmp	.LBB9_20
.LBB9_52:
	movl	$.L.str.2, %edi
	movl	$78, %esi
	jmp	.LBB9_20
.LBB9_54:
	movl	$.L.str.2, %edi
	movl	$77, %esi
	jmp	.LBB9_20
.LBB9_56:
	movl	$.L.str.2, %edi
	movl	$76, %esi
	jmp	.LBB9_20
.LBB9_58:
	movl	$.L.str.2, %edi
	movl	$75, %esi
	jmp	.LBB9_20
.LBB9_60:
	movl	$.L.str.2, %edi
	movl	$74, %esi
	jmp	.LBB9_20
.LBB9_77:
	movl	$.L.str.2, %edi
	movl	$69, %esi
	jmp	.LBB9_20
.LBB9_79:
	movl	$.L.str.2, %edi
	movl	$68, %esi
	jmp	.LBB9_20
.LBB9_81:
	movl	$.L.str.2, %edi
	movl	$67, %esi
	jmp	.LBB9_20
.LBB9_83:
	movl	$.L.str.2, %edi
	movl	$66, %esi
	jmp	.LBB9_20
.LBB9_85:
	movl	$.L.str.2, %edi
	movl	$65, %esi
	jmp	.LBB9_20
.LBB9_87:
	movl	$.L.str.2, %edi
	movl	$64, %esi
.LBB9_20:
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end9:
	.size	vp, .Lfunc_end9-vp
	.cfi_endproc
                                        # -- End function
	.globl	grav                    # -- Begin function grav
	.p2align	4, 0x90
	.type	grav,@function
grav:                                   # @grav
	.cfi_startproc
# %bb.0:
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movsd	%xmm0, 48(%rsp)
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movl	%edx, 20(%rsp)
	movsd	%xmm1, 24(%rsp)
	movl	$0, 16(%rsp)
	testq	%rsi, %rsi
	movq	32(%rsp), %rax
	movq	%rax, 8(%rsp)
	cmpq	$0, 8(%rsp)
	je	.LBB10_3
	.p2align	4, 0x90
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	40(%rsp), %rdi
	movq	8(%rsp), %rsi
	movl	20(%rsp), %edx
	movsd	24(%rsp), %xmm1         # xmm1 = mem[0],zero
	callq	gravstep
	movq	8(%rsp), %rax
	movq	136(%rax), %rax
	movq	%rax, 8(%rsp)
	addl	$1, 16(%rsp)
	cmpq	$0, 8(%rsp)
	jne	.LBB10_2
.LBB10_3:
	xorl	%eax, %eax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	grav, .Lfunc_end10-grav
	.cfi_endproc
                                        # -- End function
	.globl	gravstep                # -- Begin function gravstep
	.p2align	4, 0x90
	.type	gravstep,@function
gravstep:                               # @gravstep
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, %rax
	movsd	%xmm0, 32(%rsp)
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movl	%edx, 4(%rsp)
	movsd	%xmm1, 8(%rsp)
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	hackgrav
	xorl	%eax, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	gravstep, .Lfunc_end11-gravstep
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function hackgrav
.LCPI12_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	hackgrav
	.p2align	4, 0x90
	.type	hackgrav,@function
hackgrav:                               # @hackgrav
	.cfi_startproc
# %bb.0:
	subq	$232, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdi, 72(%rsp)
	movsd	%xmm0, 152(%rsp)
	movq	%rsi, 144(%rsp)
	movq	%rdi, 160(%rsp)
	movl	$0, 80(%rsp)
	cmpl	$2, 80(%rsp)
	jg	.LBB12_3
	.p2align	4, 0x90
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rax
	movslq	80(%rsp), %rcx
	movsd	16(%rax,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, 168(%rsp,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, 80(%rsp)
	cmpl	$2, 80(%rsp)
	jle	.LBB12_2
.LBB12_3:
	movq	$0, 192(%rsp)
	movl	$0, 80(%rsp)
	cmpl	$2, 80(%rsp)
	jg	.LBB12_6
	.p2align	4, 0x90
.LBB12_5:                               # =>This Inner Loop Header: Depth=1
	movslq	80(%rsp), %rax
	movq	$0, 200(%rsp,%rax,8)
	addl	$1, 80(%rsp)
	cmpl	$2, 80(%rsp)
	jle	.LBB12_5
.LBB12_6:
	movsd	152(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	movsd	%xmm0, 224(%rsp)
	movq	144(%rsp), %rsi
	movaps	160(%rsp), %xmm1
	movaps	176(%rsp), %xmm2
	movaps	192(%rsp), %xmm3
	movaps	208(%rsp), %xmm4
	movups	%xmm4, 48(%rsp)
	movups	%xmm3, 32(%rsp)
	movups	%xmm2, 16(%rsp)
	movups	%xmm1, (%rsp)
	leaq	80(%rsp), %rdi
	movsd	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero
	xorl	%edx, %edx
	callq	walksub
	movups	80(%rsp), %xmm0
	movups	96(%rsp), %xmm1
	movups	112(%rsp), %xmm2
	movups	128(%rsp), %xmm3
	movaps	%xmm3, 208(%rsp)
	movaps	%xmm2, 192(%rsp)
	movaps	%xmm1, 176(%rsp)
	movaps	%xmm0, 160(%rsp)
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	72(%rsp), %rax
	movsd	%xmm0, 120(%rax)
	movl	$0, 80(%rsp)
	cmpl	$2, 80(%rsp)
	jg	.LBB12_9
	.p2align	4, 0x90
.LBB12_8:                               # =>This Inner Loop Header: Depth=1
	movslq	80(%rsp), %rax
	movsd	200(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movq	72(%rsp), %rcx
	movsd	%xmm0, 96(%rcx,%rax,8)
	addl	$1, 80(%rsp)
	cmpl	$2, 80(%rsp)
	jle	.LBB12_8
.LBB12_9:
	xorl	%eax, %eax
	addq	$232, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	hackgrav, .Lfunc_end12-hackgrav
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function walksub
.LCPI13_0:
	.quad	4616189618054758400     # double 4
	.text
	.globl	walksub
	.p2align	4, 0x90
	.type	walksub,@function
walksub:                                # @walksub
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$256, %rsp              # imm = 0x100
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	leaq	288(%rsp), %rbx
	movq	%rsi, 72(%rsp)
	movsd	%xmm0, 104(%rsp)
	movsd	%xmm1, 96(%rsp)
	movl	%edx, 84(%rsp)
	movaps	288(%rsp), %xmm2
	movaps	304(%rsp), %xmm3
	movaps	320(%rsp), %xmm4
	movaps	336(%rsp), %xmm5
	movups	%xmm5, 48(%rsp)
	movups	%xmm4, 32(%rsp)
	movups	%xmm3, 16(%rsp)
	movups	%xmm2, (%rsp)
	movq	%rsi, %rdi
	callq	subdivp
	testw	%ax, %ax
	je	.LBB13_6
# %bb.1:
	movl	$0, 68(%rsp)
	leaq	112(%rsp), %r15
	cmpl	$7, 68(%rsp)
	jle	.LBB13_3
	jmp	.LBB13_8
	.p2align	4, 0x90
.LBB13_5:                               #   in Loop: Header=BB13_3 Depth=1
	addl	$1, 68(%rsp)
	cmpl	$7, 68(%rsp)
	jg	.LBB13_8
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	movq	72(%rsp), %rax
	movslq	68(%rsp), %rcx
	movq	48(%rax,%rcx,8), %rax
	movq	%rax, 88(%rsp)
	testq	%rax, %rax
	je	.LBB13_5
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	movq	88(%rsp), %rsi
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
	divsd	.LCPI13_0(%rip), %xmm0
	movsd	96(%rsp), %xmm1         # xmm1 = mem[0],zero
	movl	84(%rsp), %edx
	addl	$1, %edx
	movups	(%rbx), %xmm2
	movups	16(%rbx), %xmm3
	movups	32(%rbx), %xmm4
	movups	48(%rbx), %xmm5
	movups	%xmm5, 48(%rsp)
	movups	%xmm4, 32(%rsp)
	movups	%xmm3, 16(%rsp)
	movups	%xmm2, (%rsp)
	movq	%r15, %rdi
	callq	walksub
	movups	112(%rsp), %xmm0
	movups	128(%rsp), %xmm1
	movups	144(%rsp), %xmm2
	movups	160(%rsp), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	jmp	.LBB13_5
.LBB13_6:
	movq	72(%rsp), %rax
	cmpq	(%rbx), %rax
	je	.LBB13_8
# %bb.7:
	movq	72(%rsp), %rsi
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	48(%rbx), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	leaq	112(%rsp), %rdi
	callq	gravsub
	movups	112(%rsp), %xmm0
	movups	128(%rsp), %xmm1
	movups	144(%rsp), %xmm2
	movups	160(%rsp), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
.LBB13_8:
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	48(%rbx), %xmm3
	movups	%xmm3, 48(%r14)
	movups	%xmm2, 32(%r14)
	movups	%xmm1, 16(%r14)
	movups	%xmm0, (%r14)
	movq	%r14, %rax
	addq	$256, %rsp              # imm = 0x100
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	walksub, .Lfunc_end13-walksub
	.cfi_endproc
                                        # -- End function
	.globl	subdivp                 # -- Begin function subdivp
	.p2align	4, 0x90
	.type	subdivp,@function
subdivp:                                # @subdivp
	.cfi_startproc
# %bb.0:
	movq	%rdi, -64(%rsp)
	movsd	%xmm0, -72(%rsp)
	movsd	%xmm1, -80(%rsp)
	movq	%rdi, -88(%rsp)
	cmpw	$1, (%rdi)
	jne	.LBB14_2
# %bb.1:
	movw	$0, -106(%rsp)
	jmp	.LBB14_9
.LBB14_2:
	leaq	8(%rsp), %rax
	movl	$0, -104(%rsp)
	cmpl	$2, -104(%rsp)
	jg	.LBB14_5
	.p2align	4, 0x90
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	movq	-88(%rsp), %rcx
	movslq	-104(%rsp), %rdx
	movsd	16(%rcx,%rdx,8), %xmm0  # xmm0 = mem[0],zero
	subsd	8(%rax,%rdx,8), %xmm0
	movsd	%xmm0, -56(%rsp,%rdx,8)
	leal	1(%rdx), %ecx
	movl	%ecx, -104(%rsp)
	cmpl	$2, -104(%rsp)
	jle	.LBB14_4
.LBB14_5:
	movq	$0, -104(%rsp)
	movl	$0, -96(%rsp)
	cmpl	$2, -96(%rsp)
	jg	.LBB14_8
	.p2align	4, 0x90
.LBB14_7:                               # =>This Inner Loop Header: Depth=1
	movslq	-96(%rsp), %rax
	movsd	-56(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	-104(%rsp), %xmm0
	movsd	%xmm0, -104(%rsp)
	addl	$1, %eax
	movl	%eax, -96(%rsp)
	cmpl	$2, -96(%rsp)
	jle	.LBB14_7
.LBB14_8:
	movsd	-80(%rsp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-104(%rsp), %xmm0
	movsd	-72(%rsp), %xmm1        # xmm1 = mem[0],zero
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm1
	seta	%al
	movw	%ax, -106(%rsp)
.LBB14_9:
	movl	$1, -92(%rsp)
	movzwl	-106(%rsp), %eax
	retq
.Lfunc_end14:
	.size	subdivp, .Lfunc_end14-subdivp
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function gravsub
.LCPI15_0:
	.quad	4567911030049346684     # double 0.0025000000000000005
	.text
	.globl	gravsub
	.p2align	4, 0x90
	.type	gravsub,@function
gravsub:                                # @gravsub
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$152, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	leaq	176(%rsp), %rbx
	movq	%rsi, 40(%rsp)
	movl	$0, 16(%rsp)
	cmpl	$2, 16(%rsp)
	jg	.LBB15_3
	.p2align	4, 0x90
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax
	movslq	16(%rsp), %rcx
	movsd	16(%rax,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	subsd	8(%rbx,%rcx,8), %xmm0
	movsd	%xmm0, 64(%rsp,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, 16(%rsp)
	cmpl	$2, 16(%rsp)
	jle	.LBB15_2
.LBB15_3:
	movq	$0, 8(%rsp)
	movl	$0, 16(%rsp)
	cmpl	$2, 16(%rsp)
	jg	.LBB15_6
	.p2align	4, 0x90
.LBB15_5:                               # =>This Inner Loop Header: Depth=1
	movslq	16(%rsp), %rax
	movsd	64(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	addl	$1, %eax
	movl	%eax, 16(%rsp)
	cmpl	$2, 16(%rsp)
	jle	.LBB15_5
.LBB15_6:
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	addsd	.LCPI15_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB15_8
# %bb.7:
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB15_9
.LBB15_8:                               # %call.sqrt
	callq	sqrt
.LBB15_9:                               # %.split
	movsd	%xmm0, 88(%rsp)
	movq	40(%rsp), %rax
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 56(%rsp)
	movsd	32(%rbx), %xmm0         # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%rbx)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	divsd	8(%rsp), %xmm0
	movsd	%xmm0, 48(%rsp)
	movl	$0, 4(%rsp)
	cmpl	$2, 4(%rsp)
	jg	.LBB15_12
	.p2align	4, 0x90
.LBB15_11:                              # =>This Inner Loop Header: Depth=1
	movslq	4(%rsp), %rax
	movsd	64(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	mulsd	48(%rsp), %xmm0
	movsd	%xmm0, 16(%rsp,%rax,8)
	addl	$1, %eax
	movl	%eax, 4(%rsp)
	cmpl	$2, 4(%rsp)
	jle	.LBB15_11
.LBB15_12:
	movl	$0, 4(%rsp)
	cmpl	$2, 4(%rsp)
	jg	.LBB15_15
	.p2align	4, 0x90
.LBB15_14:                              # =>This Inner Loop Header: Depth=1
	movslq	4(%rsp), %rax
	movsd	40(%rbx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	addsd	16(%rsp,%rax,8), %xmm0
	movsd	%xmm0, 40(%rbx,%rax,8)
	addl	$1, 4(%rsp)
	cmpl	$2, 4(%rsp)
	jle	.LBB15_14
.LBB15_15:
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	movups	32(%rbx), %xmm2
	movups	48(%rbx), %xmm3
	movups	%xmm3, 48(%r14)
	movups	%xmm2, 32(%r14)
	movups	%xmm1, 16(%r14)
	movups	%xmm0, (%r14)
	movq	%r14, %rax
	addq	$152, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	gravsub, .Lfunc_end15-gravsub
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function expandbox
.LCPI16_0:
	.quad	4652007308841189376     # double 1000
.LCPI16_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	expandbox
	.p2align	4, 0x90
	.type	expandbox,@function
expandbox:                              # @expandbox
	.cfi_startproc
# %bb.0:
	subq	$1192, %rsp             # imm = 0x4A8
	.cfi_def_cfa_offset 1200
	movq	%rdi, 56(%rsp)
	movq	%rsi, 8(%rsp)
	movl	%edx, 92(%rsp)
	movl	%ecx, 88(%rsp)
	.p2align	4, 0x90
.LBB16_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_2 Depth 2
                                        #       Child Loop BB16_8 Depth 3
                                        #       Child Loop BB16_11 Depth 3
	callq	ic_test
	movl	%eax, 20(%rsp)
	movsd	.LCPI16_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm2  # xmm2 = mem[0],zero
.LBB16_2:                               #   Parent Loop BB16_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_8 Depth 3
                                        #       Child Loop BB16_11 Depth 3
	cmpl	$0, 20(%rsp)
	jne	.LBB16_18
# %bb.3:                                #   in Loop: Header=BB16_2 Depth=2
	movq	8(%rsp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	ucomisd	%xmm0, %xmm1
	jbe	.LBB16_4
# %bb.6:                                #   in Loop: Header=BB16_2 Depth=2
	movl	$0, 32(%rsp)
	cmpl	$2, 32(%rsp)
	jg	.LBB16_9
	.p2align	4, 0x90
.LBB16_8:                               #   Parent Loop BB16_1 Depth=1
                                        #     Parent Loop BB16_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	8(%rsp), %rax
	movslq	32(%rsp), %rcx
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	(%rax,%rcx,8), %xmm0
	movsd	%xmm0, 96(%rsp,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, 32(%rsp)
	cmpl	$2, 32(%rsp)
	jle	.LBB16_8
.LBB16_9:                               #   in Loop: Header=BB16_2 Depth=2
	movl	$0, 4(%rsp)
	cmpl	$2, 4(%rsp)
	jle	.LBB16_11
	jmp	.LBB16_14
	.p2align	4, 0x90
.LBB16_13:                              #   in Loop: Header=BB16_11 Depth=3
	addl	$1, 4(%rsp)
	cmpl	$2, 4(%rsp)
	jg	.LBB16_14
.LBB16_11:                              #   Parent Loop BB16_1 Depth=1
                                        #     Parent Loop BB16_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	56(%rsp), %rax
	movslq	4(%rsp), %rcx
	movsd	96(%rsp,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	ucomisd	16(%rax,%rcx,8), %xmm0
	jbe	.LBB16_13
# %bb.12:                               #   in Loop: Header=BB16_11 Depth=3
	movq	8(%rsp), %rax
	movslq	4(%rsp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	subsd	24(%rsp), %xmm0
	movsd	%xmm0, (%rax,%rcx,8)
	jmp	.LBB16_13
	.p2align	4, 0x90
.LBB16_14:                              #   in Loop: Header=BB16_2 Depth=2
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm0
	movq	8(%rsp), %rax
	movsd	%xmm0, 24(%rax)
	movq	8(%rsp), %rax
	movsd	24(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%rsp)
	cmpq	$0, 32(%rax)
	je	.LBB16_2
# %bb.15:                               #   in Loop: Header=BB16_1 Depth=1
	xorl	%edi, %edi
	callq	cell_alloc
	movq	%rax, 48(%rsp)
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	104(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	112(%rsp), %xmm2        # xmm2 = mem[0],zero
	movq	8(%rsp), %rdi
	callq	intcoord1
	movq	%rax, 32(%rsp)
	movq	%rdx, 40(%rsp)
	movq	32(%rsp), %rax
	movq	%rax, 64(%rsp)
	movq	40(%rsp), %rax
	movq	%rax, 72(%rsp)
	cmpw	$0, 76(%rsp)
	je	.LBB16_16
# %bb.17:                               #   in Loop: Header=BB16_1 Depth=1
	movq	64(%rsp), %rdi
	movq	72(%rsp), %rsi
	movl	$536870912, %edx        # imm = 0x20000000
	callq	old_subindex
	movl	%eax, 4(%rsp)
	movq	8(%rsp), %rcx
	movq	32(%rcx), %rcx
	movq	48(%rsp), %rdx
	cltq
	movq	%rcx, 48(%rdx,%rax,8)
	movq	48(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rax, 32(%rcx)
	movq	56(%rsp), %rdi
	movq	8(%rsp), %rsi
	jmp	.LBB16_1
.LBB16_18:
	xorl	%eax, %eax
	addq	$1192, %rsp             # imm = 0x4A8
	.cfi_def_cfa_offset 8
	retq
.LBB16_4:
	.cfi_def_cfa_offset 1200
	movl	$.L.str.2, %edi
	movl	$999, %esi              # imm = 0x3E7
	jmp	.LBB16_5
.LBB16_16:
	movl	$.L.str.2, %edi
	movl	$1, %esi
.LBB16_5:
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end16:
	.size	expandbox, .Lfunc_end16-expandbox
	.cfi_endproc
                                        # -- End function
	.globl	loadtree                # -- Begin function loadtree
	.p2align	4, 0x90
	.type	loadtree,@function
loadtree:                               # @loadtree
	.cfi_startproc
# %bb.0:
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rsi, 48(%rsp)
	movq	%rdx, 56(%rsp)
	movq	%rdi, 40(%rsp)
	movq	%rcx, 8(%rsp)
	movl	%r8d, 4(%rsp)
	movq	%r9, 32(%rsp)
	testq	%rcx, %rcx
	je	.LBB17_1
# %bb.2:
	cmpl	$0, 4(%rsp)
	je	.LBB17_7
# %bb.3:
	movq	8(%rsp), %rax
	cmpw	$1, (%rax)
	jne	.LBB17_5
# %bb.4:
	movl	8(%rsp), %edi
	andl	$127, %edi
	movl	%edi, 72(%rsp)
	callq	cell_alloc
	movq	%rax, 24(%rsp)
	movq	8(%rsp), %rdi
	movq	32(%rsp), %rsi
	movl	4(%rsp), %edx
	callq	subindex
	movl	%eax, 16(%rsp)
	movq	8(%rsp), %rcx
	movq	24(%rsp), %rdx
	cltq
	movq	%rcx, 48(%rdx,%rax,8)
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
.LBB17_5:
	movl	4(%rsp), %edx
	movq	48(%rsp), %rdi
	movq	56(%rsp), %rsi
	callq	old_subindex
	movl	%eax, 16(%rsp)
	movq	8(%rsp), %rcx
	cltq
	movq	48(%rcx,%rax,8), %rcx
	movq	%rcx, 72(%rsp)
	movq	40(%rsp), %rdi
	movl	4(%rsp), %r8d
	sarl	%r8d
	movq	32(%rsp), %r9
	movq	48(%rsp), %rsi
	movq	56(%rsp), %rdx
	callq	loadtree
	movq	8(%rsp), %rcx
	movslq	16(%rsp), %rdx
	movq	%rax, 48(%rcx,%rdx,8)
	movq	8(%rsp), %rax
	jmp	.LBB17_6
.LBB17_1:
	movq	40(%rsp), %rax
.LBB17_6:
	movq	%rax, 64(%rsp)
	movl	$1, 20(%rsp)
	movq	64(%rsp), %rax
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB17_7:
	.cfi_def_cfa_offset 128
	movl	$.L.str.2, %edi
	movl	$2, %esi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end17:
	.size	loadtree, .Lfunc_end17-loadtree
	.cfi_endproc
                                        # -- End function
	.globl	hackcofm                # -- Begin function hackcofm
	.p2align	4, 0x90
	.type	hackcofm,@function
hackcofm:                               # @hackcofm
	.cfi_startproc
# %bb.0:
	subq	$136, %rsp
	.cfi_def_cfa_offset 144
	movq	%rdi, 16(%rsp)
	cmpw	$2, (%rdi)
	jne	.LBB18_18
# %bb.1:
	movq	$0, 32(%rsp)
	movl	$0, 96(%rsp)
	cmpl	$2, 96(%rsp)
	jg	.LBB18_4
	.p2align	4, 0x90
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	movslq	96(%rsp), %rax
	movq	$0, 64(%rsp,%rax,8)
	addl	$1, %eax
	movl	%eax, 96(%rsp)
	cmpl	$2, 96(%rsp)
	jle	.LBB18_3
.LBB18_4:
	movl	$0, 28(%rsp)
	cmpl	$7, 28(%rsp)
	jle	.LBB18_6
	jmp	.LBB18_14
	.p2align	4, 0x90
.LBB18_13:                              #   in Loop: Header=BB18_6 Depth=1
	addl	$1, 28(%rsp)
	cmpl	$7, 28(%rsp)
	jg	.LBB18_14
.LBB18_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_9 Depth 2
                                        #     Child Loop BB18_12 Depth 2
	movq	16(%rsp), %rax
	movslq	28(%rsp), %rcx
	movq	48(%rax,%rcx,8), %rax
	movq	%rax, 48(%rsp)
	testq	%rax, %rax
	je	.LBB18_13
# %bb.7:                                #   in Loop: Header=BB18_6 Depth=1
	movq	48(%rsp), %rdi
	callq	hackcofm
	movsd	%xmm0, 128(%rsp)
	addsd	32(%rsp), %xmm0
	movsd	%xmm0, 32(%rsp)
	movl	$0, 12(%rsp)
	cmpl	$2, 12(%rsp)
	jg	.LBB18_10
	.p2align	4, 0x90
.LBB18_9:                               #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	48(%rsp), %rax
	movslq	12(%rsp), %rcx
	movsd	16(%rax,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	mulsd	128(%rsp), %xmm0
	movsd	%xmm0, 96(%rsp,%rcx,8)
	leal	1(%rcx), %eax
	movl	%eax, 12(%rsp)
	cmpl	$2, 12(%rsp)
	jle	.LBB18_9
.LBB18_10:                              #   in Loop: Header=BB18_6 Depth=1
	movl	$0, 12(%rsp)
	cmpl	$2, 12(%rsp)
	jg	.LBB18_13
	.p2align	4, 0x90
.LBB18_12:                              #   Parent Loop BB18_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	12(%rsp), %rax
	movsd	64(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	addsd	96(%rsp,%rax,8), %xmm0
	movsd	%xmm0, 64(%rsp,%rax,8)
	addl	$1, %eax
	movl	%eax, 12(%rsp)
	cmpl	$2, 12(%rsp)
	jle	.LBB18_12
	jmp	.LBB18_13
.LBB18_18:
	movq	16(%rsp), %rax
	movsd	8(%rax), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	jmp	.LBB18_19
.LBB18_14:
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	16(%rsp), %rax
	movsd	%xmm0, 8(%rax)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	16(%rsp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	16(%rsp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	16(%rsp), %rax
	movsd	%xmm0, 32(%rax)
	movl	$0, 12(%rsp)
	cmpl	$2, 12(%rsp)
	jg	.LBB18_17
	.p2align	4, 0x90
.LBB18_16:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	movslq	12(%rsp), %rcx
	movsd	16(%rax,%rcx,8), %xmm0  # xmm0 = mem[0],zero
	divsd	8(%rax), %xmm0
	movsd	%xmm0, 16(%rax,%rcx,8)
	addl	$1, 12(%rsp)
	cmpl	$2, 12(%rsp)
	jle	.LBB18_16
.LBB18_17:
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
.LBB18_19:
	movsd	%xmm0, 56(%rsp)
	movl	$1, 44(%rsp)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	addq	$136, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	hackcofm, .Lfunc_end18-hackcofm
	.cfi_endproc
                                        # -- End function
	.globl	cell_alloc              # -- Begin function cell_alloc
	.p2align	4, 0x90
	.type	cell_alloc,@function
cell_alloc:                             # @cell_alloc
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%rsp)
	cmpq	$0, cp_free_list(%rip)
	je	.LBB19_2
# %bb.1:
	movq	cp_free_list(%rip), %rax
	movq	%rax, 8(%rsp)
	movq	112(%rax), %rax
	movq	%rax, cp_free_list(%rip)
	jmp	.LBB19_3
.LBB19_2:
	movl	$120, %edi
	callq	malloc
	movq	%rax, 8(%rsp)
.LBB19_3:
	movq	8(%rsp), %rax
	movw	$2, (%rax)
	movl	20(%rsp), %eax
	movq	8(%rsp), %rcx
	movl	%eax, 40(%rcx)
	movl	$0, 4(%rsp)
	.p2align	4, 0x90
.LBB19_4:                               # =>This Inner Loop Header: Depth=1
	cmpl	$7, 4(%rsp)
	movq	8(%rsp), %rax
	jg	.LBB19_6
# %bb.5:                                #   in Loop: Header=BB19_4 Depth=1
	movslq	4(%rsp), %rcx
	movq	$0, 48(%rax,%rcx,8)
	addl	$1, 4(%rsp)
	jmp	.LBB19_4
.LBB19_6:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end19:
	.size	cell_alloc, .Lfunc_end19-cell_alloc
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function subindex
.LCPI20_0:
	.quad	4607182418800017408     # double 1
.LCPI20_1:
	.quad	4742290407621132288     # double 1073741824
	.text
	.globl	subindex
	.p2align	4, 0x90
	.type	subindex,@function
subindex:                               # @subindex
	.cfi_startproc
# %bb.0:
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 96(%rsp)
	movq	%rsi, 40(%rsp)
	movl	%edx, 28(%rsp)
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)
	movsd	24(%rdi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 72(%rsp)
	movsd	32(%rdi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 80(%rsp)
	movsd	24(%rsi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 32(%rsp)
	subsd	(%rsi), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 16(%rsp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB20_2
# %bb.1:
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB20_2
# %bb.4:
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	.LCPI20_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 52(%rsp)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	40(%rsp), %rax
	subsd	8(%rax), %xmm0
	divsd	32(%rsp), %xmm0
	movsd	%xmm0, 16(%rsp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB20_6
# %bb.5:
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB20_6
# %bb.7:
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	.LCPI20_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 56(%rsp)
	movsd	80(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	40(%rsp), %rax
	subsd	16(%rax), %xmm0
	divsd	32(%rsp), %xmm0
	movsd	%xmm0, 16(%rsp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB20_9
# %bb.8:
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB20_9
# %bb.10:
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	.LCPI20_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 60(%rsp)
	movl	$0, 24(%rsp)
	movl	$0, 12(%rsp)
	cmpl	$2, 12(%rsp)
	jle	.LBB20_12
	jmp	.LBB20_15
	.p2align	4, 0x90
.LBB20_14:                              #   in Loop: Header=BB20_12 Depth=1
	addl	$1, 12(%rsp)
	cmpl	$2, 12(%rsp)
	jg	.LBB20_15
.LBB20_12:                              # =>This Inner Loop Header: Depth=1
	movslq	12(%rsp), %rax
	movl	52(%rsp,%rax,4), %eax
	testl	%eax, 28(%rsp)
	je	.LBB20_14
# %bb.13:                               #   in Loop: Header=BB20_12 Depth=1
	movzbl	12(%rsp), %ecx
	addb	$1, %cl
	movl	$8, %eax
	shrl	%cl, %eax
	addl	%eax, 24(%rsp)
	jmp	.LBB20_14
.LBB20_15:
	movl	24(%rsp), %eax
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB20_2:
	.cfi_def_cfa_offset 112
	movl	$.L.str.2, %edi
	movl	$5, %esi
	jmp	.LBB20_3
.LBB20_6:
	movl	$.L.str.2, %edi
	movl	$6, %esi
	jmp	.LBB20_3
.LBB20_9:
	movl	$.L.str.2, %edi
	movl	$7, %esi
.LBB20_3:
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end20:
	.size	subindex, .Lfunc_end20-subindex
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function ic_test
.LCPI21_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	ic_test
	.p2align	4, 0x90
	.type	ic_test,@function
ic_test:                                # @ic_test
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -48(%rsp)
	movl	$1, -68(%rsp)
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rsp)
	movsd	24(%rdi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -32(%rsp)
	movsd	32(%rdi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -24(%rsp)
	movsd	24(%rsi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -64(%rsp)
	subsd	(%rsi), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rsp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB21_2
# %bb.1:
	movsd	.LCPI21_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB21_3
.LBB21_2:
	movl	$0, -68(%rsp)
.LBB21_3:
	movsd	-32(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rsp), %rax
	subsd	8(%rax), %xmm0
	divsd	-64(%rsp), %xmm0
	movsd	%xmm0, -56(%rsp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB21_5
# %bb.4:
	movsd	.LCPI21_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB21_6
.LBB21_5:
	movl	$0, -68(%rsp)
.LBB21_6:
	movsd	-24(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	-48(%rsp), %rax
	subsd	16(%rax), %xmm0
	divsd	-64(%rsp), %xmm0
	movsd	%xmm0, -56(%rsp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB21_8
# %bb.7:
	movsd	.LCPI21_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB21_8
# %bb.9:
	movl	-68(%rsp), %eax
	retq
.LBB21_8:
	movl	$0, -68(%rsp)
	movl	-68(%rsp), %eax
	retq
.Lfunc_end21:
	.size	ic_test, .Lfunc_end21-ic_test
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function intcoord1
.LCPI22_0:
	.quad	4607182418800017408     # double 1
.LCPI22_1:
	.quad	4742290407621132288     # double 1073741824
	.text
	.globl	intcoord1
	.p2align	4, 0x90
	.type	intcoord1,@function
intcoord1:                              # @intcoord1
	.cfi_startproc
# %bb.0:
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movsd	%xmm0, 48(%rsp)
	movsd	%xmm1, 40(%rsp)
	movsd	%xmm2, 32(%rsp)
	movq	%rdi, 24(%rsp)
	movw	$1, 20(%rsp)
	subsd	(%rdi), %xmm0
	divsd	24(%rdi), %xmm0
	movsd	%xmm0, (%rsp)
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB22_3
# %bb.1:
	movsd	.LCPI22_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_3
# %bb.2:
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	mulsd	.LCPI22_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 8(%rsp)
	jmp	.LBB22_4
.LBB22_3:
	movw	$0, 20(%rsp)
.LBB22_4:
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	24(%rsp), %rax
	subsd	8(%rax), %xmm0
	divsd	24(%rax), %xmm0
	movsd	%xmm0, (%rsp)
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB22_7
# %bb.5:
	movsd	.LCPI22_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_7
# %bb.6:
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	mulsd	.LCPI22_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 12(%rsp)
	jmp	.LBB22_8
.LBB22_7:
	movw	$0, 20(%rsp)
.LBB22_8:
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	24(%rsp), %rax
	subsd	16(%rax), %xmm0
	divsd	24(%rax), %xmm0
	movsd	%xmm0, (%rsp)
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB22_11
# %bb.9:
	movsd	.LCPI22_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB22_11
# %bb.10:
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	mulsd	.LCPI22_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 16(%rsp)
	jmp	.LBB22_12
.LBB22_11:
	movw	$0, 20(%rsp)
.LBB22_12:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end22:
	.size	intcoord1, .Lfunc_end22-intcoord1
	.cfi_endproc
                                        # -- End function
	.globl	freetree                # -- Begin function freetree
	.p2align	4, 0x90
	.type	freetree,@function
freetree:                               # @freetree
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	testq	%rdi, %rdi
	je	.LBB23_8
# %bb.1:
	movq	24(%rsp), %rax
	cmpw	$1, (%rax)
	je	.LBB23_8
# %bb.2:
	movl	$7, 12(%rsp)
	jmp	.LBB23_3
	.p2align	4, 0x90
.LBB23_6:                               #   in Loop: Header=BB23_3 Depth=1
	addl	$-1, 12(%rsp)
.LBB23_3:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, 12(%rsp)
	movq	24(%rsp), %rdi
	js	.LBB23_7
# %bb.4:                                #   in Loop: Header=BB23_3 Depth=1
	movslq	12(%rsp), %rax
	movq	48(%rdi,%rax,8), %rax
	movq	%rax, 32(%rsp)
	testq	%rax, %rax
	je	.LBB23_6
# %bb.5:                                #   in Loop: Header=BB23_3 Depth=1
	movq	32(%rsp), %rdi
	callq	freetree
	jmp	.LBB23_6
.LBB23_7:
	callq	my_free
.LBB23_8:
	movl	$0, 16(%rsp)
	movl	$1, 20(%rsp)
	movl	16(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end23:
	.size	freetree, .Lfunc_end23-freetree
	.cfi_endproc
                                        # -- End function
	.globl	my_free                 # -- Begin function my_free
	.p2align	4, 0x90
	.type	my_free,@function
my_free:                                # @my_free
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	cmpw	$1, (%rdi)
	jne	.LBB24_2
# %bb.1:
	movq	bp_free_list(%rip), %rax
	movq	-8(%rsp), %rcx
	movq	%rax, 128(%rcx)
	movq	-8(%rsp), %rax
	movq	%rax, bp_free_list(%rip)
	xorl	%eax, %eax
	retq
.LBB24_2:
	movq	cp_free_list(%rip), %rax
	movq	-8(%rsp), %rcx
	movq	%rax, 112(%rcx)
	movq	-8(%rsp), %rax
	movq	%rax, cp_free_list(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end24:
	.size	my_free, .Lfunc_end24-my_free
	.cfi_endproc
                                        # -- End function
	.globl	ubody_alloc             # -- Begin function ubody_alloc
	.p2align	4, 0x90
	.type	ubody_alloc,@function
ubody_alloc:                            # @ubody_alloc
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 12(%rsp)
	movl	$144, %edi
	callq	malloc
	movq	%rax, 16(%rsp)
	movw	$1, (%rax)
	movl	12(%rsp), %eax
	movq	16(%rsp), %rcx
	movl	%eax, 40(%rcx)
	movq	16(%rsp), %rax
	movq	$0, 136(%rax)
	movl	12(%rsp), %eax
	movq	16(%rsp), %rcx
	movl	%eax, 44(%rcx)
	movq	16(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end25:
	.size	ubody_alloc, .Lfunc_end25-ubody_alloc
	.cfi_endproc
                                        # -- End function
	.globl	testdata                # -- Begin function testdata
	.p2align	4, 0x90
	.type	testdata,@function
testdata:                               # @testdata
	.cfi_startproc
# %bb.0:
	subq	$200, %rsp
	.cfi_def_cfa_offset 208
	movabsq	$4638355772470722560, %rax # imm = 0x405EC00000000000
	movq	%rax, 8(%rsp)
	movl	$.L.str.2, %edi
	movl	$99, %esi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end26:
	.size	testdata, .Lfunc_end26-testdata
	.cfi_endproc
                                        # -- End function
	.globl	body_alloc              # -- Begin function body_alloc
	.p2align	4, 0x90
	.type	body_alloc,@function
body_alloc:                             # @body_alloc
	.cfi_startproc
# %bb.0:
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movl	%edi, 12(%rsp)
	movsd	%xmm0, 72(%rsp)
	movsd	%xmm1, 64(%rsp)
	movsd	%xmm2, 56(%rsp)
	movsd	%xmm3, 48(%rsp)
	movsd	%xmm4, 40(%rsp)
	movsd	%xmm5, 32(%rsp)
	movsd	%xmm6, 24(%rsp)
	movsd	%xmm7, 16(%rsp)
	movq	%rsi, 80(%rsp)
	cmpq	$0, bp_free_list(%rip)
	je	.LBB27_2
# %bb.1:
	movq	bp_free_list(%rip), %rax
	movq	%rax, (%rsp)
	movq	128(%rax), %rax
	movq	%rax, bp_free_list(%rip)
	jmp	.LBB27_3
.LBB27_2:
	movl	$144, %edi
	callq	malloc
	movq	%rax, (%rsp)
.LBB27_3:
	movq	(%rsp), %rax
	movw	$1, (%rax)
	movl	12(%rsp), %eax
	movq	(%rsp), %rcx
	movl	%eax, 40(%rcx)
	movsd	72(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rax
	movsd	%xmm0, 16(%rax)
	movsd	64(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rax
	movsd	%xmm0, 24(%rax)
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rax
	movsd	%xmm0, 32(%rax)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rax
	movsd	%xmm0, 48(%rax)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rax
	movsd	%xmm0, 56(%rax)
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rax
	movsd	%xmm0, 64(%rax)
	movsd	24(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rax
	movsd	%xmm0, 72(%rax)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rax
	movsd	%xmm0, 80(%rax)
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	movq	(%rsp), %rax
	movsd	%xmm0, 88(%rax)
	movsd	104(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	(%rsp), %rax
	movsd	%xmm0, 8(%rax)
	movq	(%rsp), %rax
	addq	$88, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end27:
	.size	body_alloc, .Lfunc_end27-body_alloc
	.cfi_endproc
                                        # -- End function
	.globl	dis_number              # -- Begin function dis_number
	.p2align	4, 0x90
	.type	dis_number,@function
dis_number:                             # @dis_number
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cvtsi2sdl	nbody(%rip), %xmm0
	movq	%rdi, 8(%rsp)
	cvtsi2sdl	__NumNodes(%rip), %xmm1
	divsd	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %edx
	movl	%edx, 4(%rsp)
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	dis2_number
	xorl	%eax, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end28:
	.size	dis_number, .Lfunc_end28-dis_number
	.cfi_endproc
                                        # -- End function
	.globl	dis2_number             # -- Begin function dis2_number
	.p2align	4, 0x90
	.type	dis2_number,@function
dis2_number:                            # @dis2_number
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movl	%esi, 8(%rsp)
	movl	%edx, 20(%rsp)
	testq	%rdi, %rdi
	je	.LBB29_6
# %bb.1:
	movq	24(%rsp), %rax
	cmpw	$1, (%rax)
	jne	.LBB29_3
# %bb.2:
	movl	8(%rsp), %eax
	addl	$1, %eax
	cltd
	idivl	20(%rsp)
	movq	24(%rsp), %rcx
	movl	%eax, 44(%rcx)
	movl	8(%rsp), %eax
	addl	$1, %eax
	jmp	.LBB29_7
.LBB29_3:
	movl	$0, 12(%rsp)
	cmpl	$7, 12(%rsp)
	jg	.LBB29_6
	.p2align	4, 0x90
.LBB29_5:                               # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax
	movslq	12(%rsp), %rcx
	movq	48(%rax,%rcx,8), %rdi
	movq	%rdi, 32(%rsp)
	movl	8(%rsp), %esi
	movl	20(%rsp), %edx
	callq	dis2_number
	movl	%eax, 8(%rsp)
	addl	$1, 12(%rsp)
	cmpl	$7, 12(%rsp)
	jle	.LBB29_5
.LBB29_6:
	movl	8(%rsp), %eax
.LBB29_7:
	movl	%eax, 16(%rsp)
	movl	16(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end29:
	.size	dis2_number, .Lfunc_end29-dis2_number
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function my_rand
.LCPI30_0:
	.quad	4670349086937841664     # double 16807
.LCPI30_1:
	.quad	4607182418800017408     # double 1
.LCPI30_2:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	my_rand
	.p2align	4, 0x90
	.type	my_rand,@function
my_rand:                                # @my_rand
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movsd	%xmm0, 8(%rsp)
	mulsd	.LCPI30_0(%rip), %xmm0
	addsd	.LCPI30_1(%rip), %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	divsd	.LCPI30_2(%rip), %xmm0
	callq	floor
	mulsd	.LCPI30_2(%rip), %xmm0
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)
	movapd	%xmm1, %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end30:
	.size	my_rand, .Lfunc_end30-my_rand
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function xrand
.LCPI31_0:
	.quad	4746794007244308480     # double 2147483647
	.text
	.globl	xrand
	.p2align	4, 0x90
	.type	xrand,@function
xrand:                                  # @xrand
	.cfi_startproc
# %bb.0:
	movsd	%xmm0, -16(%rsp)
	movsd	%xmm1, -24(%rsp)
	movsd	%xmm2, -32(%rsp)
	subsd	%xmm0, %xmm1
	mulsd	%xmm2, %xmm1
	divsd	.LCPI31_0(%rip), %xmm1
	addsd	%xmm1, %xmm0
	retq
.Lfunc_end31:
	.size	xrand, .Lfunc_end31-xrand
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function cputime
.LCPI32_0:
	.quad	4660134898793709568     # double 3600
	.text
	.globl	cputime
	.p2align	4, 0x90
	.type	cputime,@function
cputime:                                # @cputime
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	leaq	8(%rsp), %rdi
	callq	times
	cmpq	$-1, %rax
	jne	.LBB32_2
# %bb.1:
	movl	$.L.str.5, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	error
.LBB32_2:
	cvtsi2sdq	8(%rsp), %xmm0
	divsd	.LCPI32_0(%rip), %xmm0
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end32:
	.size	cputime, .Lfunc_end32-cputime
	.cfi_endproc
                                        # -- End function
	.globl	error                   # -- Begin function error
	.p2align	4, 0x90
	.type	error,@function
error:                                  # @error
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
	movq	%rdi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%r9, (%rsp)
	movq	stderr(%rip), %rdi
	xorl	%eax, %eax
	callq	fprintf
	callq	__errno_location
	cmpl	$0, (%rax)
	je	.LBB33_2
# %bb.1:
	movl	$.L.str.1.8, %edi
	callq	perror
.LBB33_2:
	xorl	%edi, %edi
	callq	exit
.Lfunc_end33:
	.size	error, .Lfunc_end33-error
	.cfi_endproc
                                        # -- End function
	.globl	dealwithargs            # -- Begin function dealwithargs
	.p2align	4, 0x90
	.type	dealwithargs,@function
dealwithargs:                           # @dealwithargs
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%rsp)
	movq	%rsi, 8(%rsp)
	cmpl	$2, %edi
	jl	.LBB34_2
# %bb.1:
	movq	8(%rsp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, nbody(%rip)
	jmp	.LBB34_3
.LBB34_2:
	movl	$2048, nbody(%rip)      # imm = 0x800
.LBB34_3:
	movl	16(%rsp), %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end34:
	.size	dealwithargs, .Lfunc_end34-dealwithargs
	.cfi_endproc
                                        # -- End function
	.type	__NumNodes,@object      # @__NumNodes
	.data
	.globl	__NumNodes
	.p2align	2
__NumNodes:
	.long	1                       # 0x1
	.size	__NumNodes, 4

	.type	nbody,@object           # @nbody
	.comm	nbody,4,4
	.type	cp_free_list,@object    # @cp_free_list
	.bss
	.globl	cp_free_list
	.p2align	3
cp_free_list:
	.quad	0
	.size	cp_free_list, 8

	.type	bp_free_list,@object    # @bp_free_list
	.globl	bp_free_list
	.p2align	3
bp_free_list:
	.quad	0
	.size	bp_free_list, 8

	.type	root,@object            # @root
	.comm	root,8,8
	.type	rmin,@object            # @rmin
	.comm	rmin,24,16
	.type	rsize,@object           # @rsize
	.comm	rsize,8,8
	.type	arg1,@object            # @arg1
	.comm	arg1,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"nbody = %d, numnodes = %d\n"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Bodies per %d = %d\n"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Assertion Failure #%d"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"testdata: not enough memory\n"
	.size	.L.str.3, 29

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"times() call failed\n"
	.size	.L.str.5, 21

	.type	.L.str.1.8,@object      # @.str.1.8
.L.str.1.8:
	.asciz	"Error"
	.size	.L.str.1.8, 6


	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
