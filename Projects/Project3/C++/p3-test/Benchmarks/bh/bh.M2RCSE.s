	.text
	.file	"llvm-link"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	dealwithargs
	movl	nbody(%rip), %esi
	movl	__NumNodes(%rip), %edx
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	callq	old_main
	xorl	%eax, %eax
	popq	%rcx
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
	subq	$872, %rsp              # imm = 0x368
	.cfi_def_cfa_offset 928
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$64, %eax
	xorl	%edx, %edx
	idivl	__NumNodes(%rip)
	movl	%eax, %r14d
	movl	$123, %edi
	callq	srand
	movl	$1064, %edi             # imm = 0x428
	callq	malloc
	movq	%rax, %r12
	movq	$0, 32(%rax)
	movabsq	$-4611686018427387904, %rax # imm = 0xC000000000000000
	movq	%rax, (%r12)
	movq	%rax, 8(%r12)
	movq	%rax, 16(%r12)
	movabsq	$4616189618054758400, %rax # imm = 0x4010000000000000
	movq	%rax, 24(%r12)
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB1_2
	.p2align	4, 0x90
.LBB1_38:                               # =>This Inner Loop Header: Depth=1
	movq	$0, 48(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB1_38
.LBB1_2:                                # %.preheader8
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB1_4
	.p2align	4, 0x90
.LBB1_39:                               # =>This Inner Loop Header: Depth=1
	movq	$0, 16(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB1_39
.LBB1_4:                                # %.preheader7
	xorl	%r13d, %r13d
	leaq	96(%rsp), %r15
	xorl	%ebx, %ebx
	cmpl	$32, %ebx
	jl	.LBB1_13
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_20:                               #   in Loop: Header=BB1_13 Depth=1
	movl	%ebp, %ebx
	cmpl	$32, %ebx
	jge	.LBB1_6
.LBB1_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_40 Depth 2
                                        #     Child Loop BB1_19 Depth 2
	movl	$32, %eax
	xorl	%edx, %edx
	idivl	__NumNodes(%rip)
	movl	%eax, %ecx
	movl	%ebx, %eax
	cltd
	idivl	%ecx
	movl	nbody(%rip), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$27, %edx
	addl	%ecx, %edx
	sarl	$5, %edx
	leal	1(%rbx), %ebp
	movq	%r15, %rdi
	movl	%eax, %esi
	movl	%ebp, %ecx
	callq	uniform_testdata
	movupd	96(%rsp), %xmm0
	movupd	112(%rsp), %xmm1
	movups	128(%rsp), %xmm2
	movups	144(%rsp), %xmm3
	movaps	%xmm3, 400(%rsp)
	movaps	%xmm2, 384(%rsp)
	movapd	%xmm1, 368(%rsp)
	movapd	%xmm0, 352(%rsp)
	movq	400(%rsp), %rax
	movslq	%ebx, %rcx
	movq	%rax, 40(%r12,%rcx,8)
	testq	%r13, %r13
	je	.LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	movq	400(%rsp), %rax
	movq	%rax, 128(%r13)
.LBB1_15:                               #   in Loop: Header=BB1_13 Depth=1
	movq	408(%rsp), %r13
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB1_17
	.p2align	4, 0x90
.LBB1_40:                               #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	48(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	addsd	352(%rsp,%rax,8), %xmm0
	movsd	%xmm0, 48(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB1_40
.LBB1_17:                               # %.preheader6
                                        #   in Loop: Header=BB1_13 Depth=1
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB1_20
	.p2align	4, 0x90
.LBB1_19:                               #   Parent Loop BB1_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	16(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	addsd	376(%rsp,%rax,8), %xmm0
	movsd	%xmm0, 16(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB1_19
	jmp	.LBB1_20
.LBB1_6:                                # %.preheader5
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB1_8
	.p2align	4, 0x90
.LBB1_21:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	nbody(%rip), %xmm0
	movsd	48(%rsp,%rax,8), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB1_21
.LBB1_8:                                # %.preheader4
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB1_10
	.p2align	4, 0x90
.LBB1_22:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sdl	nbody(%rip), %xmm0
	movsd	16(%rsp,%rax,8), %xmm1  # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB1_22
.LBB1_10:                               # %.preheader3
	xorl	%eax, %eax
	cmpl	$63, %eax
	jg	.LBB1_23
	.p2align	4, 0x90
.LBB1_12:                               # =>This Inner Loop Header: Depth=1
	movl	$0, 96(%rsp,%rax,4)
	movq	$0, 352(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$63, %eax
	jle	.LBB1_12
.LBB1_23:
	movq	40(%r12), %rbp
	testq	%rbp, %rbp
	jne	.LBB1_30
	jmp	.LBB1_25
	.p2align	4, 0x90
.LBB1_35:                               #   in Loop: Header=BB1_30 Depth=1
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	intcoord
	movq	%rax, 80(%rsp)
	movq	%rdx, 88(%rsp)
	movq	80(%rsp), %rax
	movq	%rax, (%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	(%rsp), %rdi
	movq	8(%rsp), %rsi
	movl	$536870912, %edx        # imm = 0x20000000
	callq	old_subindex
	movl	%eax, %ebx
	movq	(%rsp), %rdi
	movq	8(%rsp), %rsi
	movl	$268435456, %edx        # imm = 0x10000000
	callq	old_subindex
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%rbx,8), %eax
	cltd
	idivl	%r14d
	cltq
	addl	$1, 96(%rsp,%rax,4)
	movq	352(%rsp,%rax,8), %rcx
	movq	%rcx, 136(%rbp)
	movq	%rbp, 352(%rsp,%rax,8)
	movl	%eax, 40(%rbp)
	movq	128(%rbp), %rbp
	testq	%rbp, %rbp
	je	.LBB1_25
.LBB1_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_41 Depth 2
                                        #     Child Loop BB1_34 Depth 2
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB1_32
	.p2align	4, 0x90
.LBB1_41:                               #   Parent Loop BB1_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	16(%rbp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	subsd	48(%rsp,%rax,8), %xmm0
	movsd	%xmm0, 16(%rbp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB1_41
.LBB1_32:                               # %.preheader2
                                        #   in Loop: Header=BB1_30 Depth=1
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB1_35
	.p2align	4, 0x90
.LBB1_34:                               #   Parent Loop BB1_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	48(%rbp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	subsd	16(%rsp,%rax,8), %xmm0
	movsd	%xmm0, 48(%rbp,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB1_34
	jmp	.LBB1_35
.LBB1_25:                               # %.preheader1
	xorl	%ebx, %ebx
	cmpl	__NumNodes(%rip), %ebx
	jge	.LBB1_27
	.p2align	4, 0x90
.LBB1_36:                               # =>This Inner Loop Header: Depth=1
	movl	96(%rsp,%rbx,4), %edx
	movl	$.L.str.1, %edi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf
	movq	352(%rsp,%rbx,8), %rax
	movq	%rax, 552(%r12,%rbx,8)
	addq	$1, %rbx
	cmpl	__NumNodes(%rip), %ebx
	jl	.LBB1_36
.LBB1_27:                               # %.preheader
	xorpd	%xmm0, %xmm0
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_28:                               # =>This Inner Loop Header: Depth=1
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	seta	%al
	cmpl	$10, %ebx
	setl	%cl
	andb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB1_37
# %bb.29:                               #   in Loop: Header=BB1_28 Depth=1
	movq	%r12, %rdi
	movl	%ebx, %esi
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	callq	stepsystem
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	.LCPI1_1(%rip), %xmm0
	addl	$1, %ebx
	jmp	.LBB1_28
.LBB1_37:
	movq	%r12, %rax
	addq	$872, %rsp              # imm = 0x368
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
	.quad	4616189618054758400     # double 4
.LCPI2_11:
	.quad	0                       # double 0
	.text
	.globl	uniform_testdata
	.p2align	4, 0x90
	.type	uniform_testdata,@function
uniform_testdata:                       # @uniform_testdata
	.cfi_startproc
# %bb.0:                                # %.split
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cvtsi2sd	%ecx, %xmm1
	mulsd	.LCPI2_0(%rip), %xmm1
	movl	%edx, %r12d
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movq	%rdi, %r14
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, 56(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB2_2
	.p2align	4, 0x90
.LBB2_35:                               # =>This Inner Loop Header: Depth=1
	movq	$0, (%r14,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB2_35
.LBB2_2:                                # %.preheader4
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB2_5
	.p2align	4, 0x90
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movq	$0, 24(%r14,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB2_4
.LBB2_5:
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movl	28(%rsp), %edi          # 4-byte Reload
	callq	ubody_alloc
	xorl	%r13d, %r13d
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r12d, %xmm0
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	movsd	.LCPI2_7(%rip), %xmm0   # xmm0 = mem[0],zero
	sqrtsd	%xmm0, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%rax, %r15
	cmpl	%r12d, %r13d
	jl	.LBB2_7
	jmp	.LBB2_34
	.p2align	4, 0x90
.LBB2_33:                               #   in Loop: Header=BB2_7 Depth=1
	addl	$1, %r13d
	movq	%rbp, %r15
	cmpl	%r12d, %r13d
	jge	.LBB2_34
.LBB2_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_36 Depth 2
                                        #     Child Loop BB2_37 Depth 2
                                        #     Child Loop BB2_17 Depth 2
                                        #     Child Loop BB2_19 Depth 2
                                        #       Child Loop BB2_38 Depth 3
                                        #       Child Loop BB2_23 Depth 3
                                        #     Child Loop BB2_39 Depth 2
                                        #     Child Loop BB2_32 Depth 2
	movl	28(%rsp), %edi          # 4-byte Reload
	callq	ubody_alloc
	movq	%rax, %rbp
	testq	%rax, %rax
	jne	.LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	movl	$.L.str.3, %edi
	callq	error
.LBB2_9:                                #   in Loop: Header=BB2_7 Depth=1
	movq	%rbp, 128(%r15)
	movw	$1, (%rbp)
	movsd	48(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rbp)
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	my_rand
	movapd	%xmm0, %xmm2
	xorpd	%xmm0, %xmm0
	movsd	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movb	$3, %al
	callq	xrand
	movsd	.LCPI2_4(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	.LCPI2_2(%rip), %xmm3   # xmm3 = mem[0],zero
	subsd	%xmm3, %xmm0
	ucomisd	.LCPI2_11, %xmm0
	jb	.LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_7 Depth=1
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB2_12
	.p2align	4, 0x90
.LBB2_11:                               # %call.sqrt49
                                        #   in Loop: Header=BB2_7 Depth=1
	callq	sqrt
	movsd	.LCPI2_2(%rip), %xmm3   # xmm3 = mem[0],zero
.LBB2_12:                               # %.split48
                                        #   in Loop: Header=BB2_7 Depth=1
	divsd	%xmm0, %xmm3
	xorl	%r15d, %r15d
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cmpl	$3, %r15d
	jge	.LBB2_14
	.p2align	4, 0x90
.LBB2_36:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movapd	%xmm1, %xmm0
	movb	$1, %al
	callq	my_rand
	movapd	%xmm0, %xmm2
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	.LCPI2_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movb	$3, %al
	callq	xrand
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm3
	mulsd	.LCPI2_10(%rip), %xmm0
	movsd	%xmm0, 16(%rbp,%r15,8)
	addq	$1, %r15
	cmpl	$3, %r15d
	jl	.LBB2_36
.LBB2_14:                               # %.preheader3
                                        #   in Loop: Header=BB2_7 Depth=1
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB2_16
	.p2align	4, 0x90
.LBB2_37:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	(%r14,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	16(%rbp,%rax,8), %xmm0
	movsd	%xmm0, (%r14,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB2_37
.LBB2_16:                               #   in Loop: Header=BB2_7 Depth=1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	.p2align	4, 0x90
.LBB2_17:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	my_rand
	movaps	%xmm0, %xmm2
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	xorps	%xmm0, %xmm0
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movb	$3, %al
	callq	xrand
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	my_rand
	movapd	%xmm0, %xmm2
	xorpd	%xmm0, %xmm0
	movsd	.LCPI2_5(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movb	$3, %al
	callq	xrand
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	movsd	%xmm1, 72(%rsp)         # 8-byte Spill
	movsd	.LCPI2_2(%rip), %xmm0   # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	.LCPI2_6(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	mulsd	72(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	ja	.LBB2_17
# %bb.18:                               # %.split50
                                        #   in Loop: Header=BB2_7 Depth=1
	movsd	16(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	40(%rsp), %xmm0         # 8-byte Folded Reload
	movsd	%xmm0, 16(%rsp)         # 8-byte Spill
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	.LCPI2_2(%rip), %xmm0
	movsd	.LCPI2_8(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	mulsd	56(%rsp), %xmm1         # 8-byte Folded Reload
	movsd	%xmm1, 16(%rsp)         # 8-byte Spill
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	jmp	.LBB2_19
	.p2align	4, 0x90
.LBB2_24:                               #   in Loop: Header=BB2_19 Depth=2
	ucomisd	.LCPI2_2(%rip), %xmm0
	jbe	.LBB2_25
.LBB2_19:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_38 Depth 3
                                        #       Child Loop BB2_23 Depth 3
	xorl	%ebx, %ebx
	cmpl	$3, %ebx
	jge	.LBB2_21
	.p2align	4, 0x90
.LBB2_38:                               #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movapd	%xmm2, %xmm0
	movb	$1, %al
	callq	my_rand
	movapd	%xmm0, %xmm2
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movsd	.LCPI2_9(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movb	$3, %al
	callq	xrand
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm0, 48(%rbp,%rbx,8)
	addq	$1, %rbx
	cmpl	$3, %ebx
	jl	.LBB2_38
.LBB2_21:                               # %.preheader
                                        #   in Loop: Header=BB2_19 Depth=2
	xorpd	%xmm0, %xmm0
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB2_24
	.p2align	4, 0x90
.LBB2_23:                               #   Parent Loop BB2_7 Depth=1
                                        #     Parent Loop BB2_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	48(%rbp,%rax,8), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB2_23
	jmp	.LBB2_24
	.p2align	4, 0x90
.LBB2_25:                               #   in Loop: Header=BB2_7 Depth=1
	ucomisd	.LCPI2_11, %xmm0
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	jb	.LBB2_27
# %bb.26:                               #   in Loop: Header=BB2_7 Depth=1
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB2_28
	.p2align	4, 0x90
.LBB2_27:                               # %call.sqrt53
                                        #   in Loop: Header=BB2_7 Depth=1
	callq	sqrt
.LBB2_28:                               # %.split52
                                        #   in Loop: Header=BB2_7 Depth=1
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB2_30
	.p2align	4, 0x90
.LBB2_39:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	48(%rbp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rbp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB2_39
.LBB2_30:                               # %.preheader1
                                        #   in Loop: Header=BB2_7 Depth=1
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB2_33
	.p2align	4, 0x90
.LBB2_32:                               #   Parent Loop BB2_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	24(%r14,%rax,8), %xmm0  # xmm0 = mem[0],zero
	addsd	48(%rbp,%rax,8), %xmm0
	movsd	%xmm0, 24(%r14,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB2_32
	jmp	.LBB2_33
.LBB2_34:
	movq	$0, 128(%r15)
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	128(%rax), %rax
	movq	%rax, 48(%r14)
	movq	%r15, 56(%r14)
	movq	%r14, %rax
	addq	$88, %rsp
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movw	$1, 20(%rsp)
	movsd	24(%rsi), %xmm2         # xmm2 = mem[0],zero
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	movsd	24(%rdi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 40(%rsp)
	movsd	32(%rdi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 48(%rsp)
	subsd	(%rsi), %xmm0
	divsd	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_3
# %bb.1:
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_3
# %bb.2:
	mulsd	.LCPI3_1(%rip), %xmm0
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	callq	floor
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, 8(%rsp)
	jmp	.LBB3_4
.LBB3_3:
	movw	$0, 20(%rsp)
.LBB3_4:
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	8(%rbx), %xmm0
	divsd	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_7
# %bb.5:
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_7
# %bb.6:
	mulsd	.LCPI3_1(%rip), %xmm0
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	callq	floor
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, 12(%rsp)
	jmp	.LBB3_8
.LBB3_7:
	movw	$0, 20(%rsp)
.LBB3_8:
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	16(%rbx), %xmm0
	divsd	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB3_11
# %bb.9:
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_11
# %bb.10:
	mulsd	.LCPI3_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 16(%rsp)
	jmp	.LBB3_12
.LBB3_11:
	movw	$0, 20(%rsp)
.LBB3_12:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
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
	xorl	%esi, %esi
	xorl	%eax, %eax
	cmpl	$2, %esi
	jle	.LBB4_2
	jmp	.LBB4_5
	.p2align	4, 0x90
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	addq	$1, %rsi
	cmpl	$2, %esi
	jg	.LBB4_5
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	testl	%edx, -16(%rsp,%rsi,4)
	je	.LBB4_4
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	leal	1(%rsi), %ecx
	movl	$8, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edi
	addl	%edi, %eax
	jmp	.LBB4_4
.LBB4_5:
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movq	32(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB5_2
# %bb.1:
	callq	freetree1
	movq	$0, 32(%rbx)
.LBB5_2:
	movl	nbody(%rip), %esi
	movq	%rbx, %rdx
	movl	%ebp, %ecx
	xorl	%r8d, %r8d
	callq	maketree
	movq	%rax, 32(%rbx)
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	computegrav
	movq	552(%rbx), %rdi
	movl	%ebp, %esi
	callq	vp
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	freetree
	xorl	%eax, %eax
	popq	%rcx
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
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, %r14d
	movl	%ecx, %r15d
	movq	%rdx, %rbx
	movq	$0, 32(%rdx)
	movl	%esi, nbody(%rip)
	movl	__NumNodes(%rip), %r12d
	.p2align	4, 0x90
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	addl	$-1, %r12d
	testl	%r12d, %r12d
	js	.LBB7_7
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movslq	%r12d, %rax
	movq	552(%rbx,%rax,8), %rbp
	testq	%rbp, %rbp
	jne	.LBB7_4
	jmp	.LBB7_1
	.p2align	4, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=2
	movq	136(%rbp), %rbp
	testq	%rbp, %rbp
	je	.LBB7_1
.LBB7_4:                                #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	8(%rbp), %xmm0          # xmm0 = mem[0],zero
	ucomisd	.LCPI7_0, %xmm0
	jne	.LBB7_5
	jnp	.LBB7_6
.LBB7_5:                                #   in Loop: Header=BB7_4 Depth=2
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	callq	expandbox
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	intcoord
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, (%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rbx), %rcx
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdx
	movq	%rbp, %rdi
	movl	$536870912, %r8d        # imm = 0x20000000
	movq	%rbx, %r9
	callq	loadtree
	movq	%rax, 32(%rbx)
	jmp	.LBB7_6
.LBB7_7:
	movq	32(%rbx), %rdi
	callq	hackcofm
	movq	32(%rbx), %rax
	addq	$32, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	maketree, .Lfunc_end7-maketree
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function computegrav
.LCPI8_0:
	.quad	4573855781557475738     # double 0.0062500000000000003
	.text
	.globl	computegrav
	.p2align	4, 0x90
	.type	computegrav,@function
computegrav:                            # @computegrav
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movsd	24(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	__NumNodes(%rip), %eax
	addl	$-1, %eax
	movslq	%eax, %rbp
	testl	%ebp, %ebp
	js	.LBB8_3
	.p2align	4, 0x90
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rdi
	movq	552(%rbx,%rbp,8), %rsi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movl	%r14d, %edx
	movsd	.LCPI8_0(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	grav
	addq	$-1, %rbp
	testl	%ebp, %ebp
	jns	.LBB8_2
.LBB8_3:
	xorl	%eax, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
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
.LCPI9_4:
	.quad	4573855781557475738     # double 0.0062500000000000003
	.text
	.globl	vp
	.p2align	4, 0x90
	.type	vp,@function
vp:                                     # @vp
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$200, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movsd	.LCPI9_4(%rip), %xmm1   # xmm1 = mem[0],zero
	testq	%rbx, %rbx
	je	.LBB9_79
	.p2align	4, 0x90
.LBB9_2:                                # %.preheader11
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_4 Depth 2
                                        #     Child Loop BB9_80 Depth 2
                                        #     Child Loop BB9_81 Depth 2
                                        #     Child Loop BB9_82 Depth 2
                                        #     Child Loop BB9_14 Depth 2
                                        #     Child Loop BB9_29 Depth 2
                                        #     Child Loop BB9_43 Depth 2
                                        #     Child Loop BB9_86 Depth 2
                                        #     Child Loop BB9_87 Depth 2
                                        #     Child Loop BB9_88 Depth 2
                                        #     Child Loop BB9_89 Depth 2
                                        #     Child Loop BB9_65 Depth 2
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB9_5
	.p2align	4, 0x90
.LBB9_4:                                #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	96(%rbx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, 144(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB9_4
.LBB9_5:                                #   in Loop: Header=BB9_2 Depth=1
	testl	%ebp, %ebp
	jle	.LBB9_15
# %bb.6:                                # %.preheader10
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB9_8
	.p2align	4, 0x90
.LBB9_80:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	144(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	subsd	72(%rbx,%rax,8), %xmm0
	movsd	%xmm0, 176(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB9_80
.LBB9_8:                                # %.preheader9
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB9_10
	.p2align	4, 0x90
.LBB9_81:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	176(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB9_81
.LBB9_10:                               # %.preheader8
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB9_12
	.p2align	4, 0x90
.LBB9_82:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	48(%rbx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	addsd	48(%rsp,%rax,8), %xmm0
	movsd	%xmm0, 48(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB9_82
.LBB9_12:                               # %.preheader7
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB9_15
	.p2align	4, 0x90
.LBB9_14:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	48(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, 48(%rbx,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB9_14
.LBB9_15:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, (%rsp)           # 16-byte Spill
	movsd	32(%rbx), %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, 16(%rsp)         # 16-byte Spill
	movaps	%xmm1, 32(%rsp)         # 16-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_16
# %bb.18:                               #   in Loop: Header=BB9_2 Depth=1
	movaps	(%rsp), %xmm0           # 16-byte Reload
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_19
# %bb.20:                               #   in Loop: Header=BB9_2 Depth=1
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_21
# %bb.22:                               #   in Loop: Header=BB9_2 Depth=1
	movapd	.LCPI9_0(%rip), %xmm0   # xmm0 = [NaN,NaN]
	movapd	32(%rsp), %xmm2         # 16-byte Reload
	andpd	%xmm0, %xmm2
	movsd	.LCPI9_1(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	movapd	(%rsp), %xmm2           # 16-byte Reload
	jbe	.LBB9_23
# %bb.24:                               #   in Loop: Header=BB9_2 Depth=1
	andpd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB9_25
# %bb.26:                               #   in Loop: Header=BB9_2 Depth=1
	movapd	16(%rsp), %xmm2         # 16-byte Reload
	andpd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB9_83
# %bb.27:                               # %.preheader6
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB9_30
	.p2align	4, 0x90
.LBB9_29:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	144(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, 72(%rbx,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB9_29
.LBB9_30:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	72(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	80(%rbx), %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, (%rsp)           # 16-byte Spill
	movsd	88(%rbx), %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, 16(%rsp)         # 16-byte Spill
	movaps	%xmm1, 32(%rsp)         # 16-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_31
# %bb.32:                               #   in Loop: Header=BB9_2 Depth=1
	movaps	(%rsp), %xmm0           # 16-byte Reload
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_33
# %bb.34:                               #   in Loop: Header=BB9_2 Depth=1
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_35
# %bb.36:                               #   in Loop: Header=BB9_2 Depth=1
	movapd	.LCPI9_0(%rip), %xmm0   # xmm0 = [NaN,NaN]
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	andpd	%xmm0, %xmm1
	movsd	.LCPI9_2(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	.LCPI9_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	(%rsp), %xmm3           # 16-byte Reload
	jbe	.LBB9_37
# %bb.38:                               #   in Loop: Header=BB9_2 Depth=1
	andpd	%xmm0, %xmm3
	ucomisd	%xmm3, %xmm2
	jbe	.LBB9_39
# %bb.40:                               #   in Loop: Header=BB9_2 Depth=1
	movapd	16(%rsp), %xmm3         # 16-byte Reload
	andpd	%xmm0, %xmm3
	ucomisd	%xmm3, %xmm2
	jbe	.LBB9_84
# %bb.41:                               # %.preheader5
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB9_44
	.p2align	4, 0x90
.LBB9_43:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	72(%rbx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB9_43
.LBB9_44:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	48(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	56(%rbx), %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, (%rsp)           # 16-byte Spill
	movsd	64(%rbx), %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, 16(%rsp)         # 16-byte Spill
	movaps	%xmm1, 32(%rsp)         # 16-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_45
# %bb.46:                               #   in Loop: Header=BB9_2 Depth=1
	movaps	(%rsp), %xmm0           # 16-byte Reload
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_47
# %bb.48:                               #   in Loop: Header=BB9_2 Depth=1
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_49
# %bb.50:                               #   in Loop: Header=BB9_2 Depth=1
	movapd	.LCPI9_0(%rip), %xmm0   # xmm0 = [NaN,NaN]
	movapd	32(%rsp), %xmm2         # 16-byte Reload
	andpd	%xmm0, %xmm2
	movsd	.LCPI9_2(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	movapd	(%rsp), %xmm2           # 16-byte Reload
	jbe	.LBB9_51
# %bb.52:                               #   in Loop: Header=BB9_2 Depth=1
	andpd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB9_53
# %bb.54:                               #   in Loop: Header=BB9_2 Depth=1
	movapd	16(%rsp), %xmm2         # 16-byte Reload
	andpd	%xmm0, %xmm2
	ucomisd	%xmm2, %xmm1
	jbe	.LBB9_85
# %bb.55:                               # %.preheader4
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	movsd	.LCPI9_3(%rip), %xmm1   # xmm1 = mem[0],zero
	cmpl	$3, %eax
	jge	.LBB9_57
	.p2align	4, 0x90
.LBB9_86:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	48(%rbx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	addsd	48(%rsp,%rax,8), %xmm0
	movsd	%xmm0, 112(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB9_86
.LBB9_57:                               # %.preheader3
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB9_59
	.p2align	4, 0x90
.LBB9_87:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	112(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 80(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB9_87
.LBB9_59:                               # %.preheader2
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB9_61
	.p2align	4, 0x90
.LBB9_88:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	16(%rbx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	addsd	80(%rsp,%rax,8), %xmm0
	movsd	%xmm0, 80(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB9_88
.LBB9_61:                               # %.preheader1
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB9_63
	.p2align	4, 0x90
.LBB9_89:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	80(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%rbx,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB9_89
.LBB9_63:                               # %.preheader
                                        #   in Loop: Header=BB9_2 Depth=1
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB9_66
	.p2align	4, 0x90
.LBB9_65:                               #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	112(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	addsd	48(%rsp,%rax,8), %xmm0
	movsd	%xmm0, 48(%rbx,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB9_65
.LBB9_66:                               #   in Loop: Header=BB9_2 Depth=1
	movsd	16(%rbx), %xmm1         # xmm1 = mem[0],zero
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, (%rsp)           # 16-byte Spill
	movsd	32(%rbx), %xmm0         # xmm0 = mem[0],zero
	movaps	%xmm0, 16(%rsp)         # 16-byte Spill
	movaps	%xmm1, 32(%rsp)         # 16-byte Spill
	movaps	%xmm1, %xmm0
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_67
# %bb.68:                               #   in Loop: Header=BB9_2 Depth=1
	movaps	(%rsp), %xmm0           # 16-byte Reload
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_69
# %bb.70:                               #   in Loop: Header=BB9_2 Depth=1
	movaps	16(%rsp), %xmm0         # 16-byte Reload
	movb	$1, %al
	callq	isnan
	testl	%eax, %eax
	jne	.LBB9_71
# %bb.72:                               #   in Loop: Header=BB9_2 Depth=1
	movapd	.LCPI9_0(%rip), %xmm0   # xmm0 = [NaN,NaN]
	movapd	32(%rsp), %xmm1         # 16-byte Reload
	andpd	%xmm0, %xmm1
	movsd	.LCPI9_2(%rip), %xmm2   # xmm2 = mem[0],zero
	ucomisd	%xmm1, %xmm2
	movsd	.LCPI9_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movapd	(%rsp), %xmm3           # 16-byte Reload
	jbe	.LBB9_73
# %bb.74:                               #   in Loop: Header=BB9_2 Depth=1
	andpd	%xmm0, %xmm3
	ucomisd	%xmm3, %xmm2
	jbe	.LBB9_75
# %bb.76:                               #   in Loop: Header=BB9_2 Depth=1
	movapd	16(%rsp), %xmm3         # 16-byte Reload
	andpd	%xmm0, %xmm3
	ucomisd	%xmm3, %xmm2
	jbe	.LBB9_77
# %bb.78:                               #   in Loop: Header=BB9_2 Depth=1
	movq	136(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB9_2
.LBB9_79:
	xorl	%eax, %eax
	addq	$200, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB9_16:
	.cfi_def_cfa_offset 224
	movl	$.L.str.2, %edi
	movl	$99, %esi
	jmp	.LBB9_17
.LBB9_19:
	movl	$.L.str.2, %edi
	movl	$98, %esi
	jmp	.LBB9_17
.LBB9_21:
	movl	$.L.str.2, %edi
	movl	$97, %esi
	jmp	.LBB9_17
.LBB9_23:
	movl	$.L.str.2, %edi
	movl	$96, %esi
	jmp	.LBB9_17
.LBB9_25:
	movl	$.L.str.2, %edi
	movl	$95, %esi
	jmp	.LBB9_17
.LBB9_83:
	movl	$.L.str.2, %edi
	movl	$94, %esi
	jmp	.LBB9_17
.LBB9_31:
	movl	$.L.str.2, %edi
	movl	$89, %esi
	jmp	.LBB9_17
.LBB9_33:
	movl	$.L.str.2, %edi
	movl	$88, %esi
	jmp	.LBB9_17
.LBB9_35:
	movl	$.L.str.2, %edi
	movl	$87, %esi
	jmp	.LBB9_17
.LBB9_37:
	movl	$.L.str.2, %edi
	movl	$86, %esi
	jmp	.LBB9_17
.LBB9_39:
	movl	$.L.str.2, %edi
	movl	$85, %esi
	jmp	.LBB9_17
.LBB9_84:
	movl	$.L.str.2, %edi
	movl	$84, %esi
	jmp	.LBB9_17
.LBB9_45:
	movl	$.L.str.2, %edi
	movl	$79, %esi
	jmp	.LBB9_17
.LBB9_47:
	movl	$.L.str.2, %edi
	movl	$78, %esi
	jmp	.LBB9_17
.LBB9_49:
	movl	$.L.str.2, %edi
	movl	$77, %esi
	jmp	.LBB9_17
.LBB9_51:
	movl	$.L.str.2, %edi
	movl	$76, %esi
	jmp	.LBB9_17
.LBB9_53:
	movl	$.L.str.2, %edi
	movl	$75, %esi
	jmp	.LBB9_17
.LBB9_85:
	movl	$.L.str.2, %edi
	movl	$74, %esi
	jmp	.LBB9_17
.LBB9_67:
	movl	$.L.str.2, %edi
	movl	$69, %esi
	jmp	.LBB9_17
.LBB9_69:
	movl	$.L.str.2, %edi
	movl	$68, %esi
	jmp	.LBB9_17
.LBB9_71:
	movl	$.L.str.2, %edi
	movl	$67, %esi
	jmp	.LBB9_17
.LBB9_73:
	movl	$.L.str.2, %edi
	movl	$66, %esi
	jmp	.LBB9_17
.LBB9_75:
	movl	$.L.str.2, %edi
	movl	$65, %esi
	jmp	.LBB9_17
.LBB9_77:
	movl	$.L.str.2, %edi
	movl	$64, %esi
.LBB9_17:
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	movl	%edx, %r14d
	movq	%rsi, %rbx
	movq	%rdi, %rbp
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	testq	%rbx, %rbx
	je	.LBB10_3
	.p2align	4, 0x90
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	gravstep
	movq	136(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB10_2
.LBB10_3:
	xorl	%eax, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	hackgrav
	xorl	%eax, %eax
	popq	%rcx
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$200, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movq	%rdi, 64(%rsp)
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB12_3
	.p2align	4, 0x90
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	movsd	16(%r14,%rax,8), %xmm1  # xmm1 = mem[0],zero
	movsd	%xmm1, 72(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB12_2
.LBB12_3:
	movq	$0, 96(%rsp)
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB12_6
	.p2align	4, 0x90
.LBB12_5:                               # =>This Inner Loop Header: Depth=1
	movq	$0, 104(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB12_5
.LBB12_6:
	mulsd	%xmm0, %xmm0
	movaps	64(%rsp), %xmm1
	movaps	80(%rsp), %xmm2
	movaps	96(%rsp), %xmm3
	movaps	112(%rsp), %xmm4
	movups	%xmm4, 48(%rsp)
	movups	%xmm3, 32(%rsp)
	movups	%xmm2, 16(%rsp)
	movups	%xmm1, (%rsp)
	leaq	136(%rsp), %rdi
	movsd	.LCPI12_0(%rip), %xmm1  # xmm1 = mem[0],zero
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	callq	walksub
	movups	136(%rsp), %xmm0
	movups	152(%rsp), %xmm1
	movups	168(%rsp), %xmm2
	movups	184(%rsp), %xmm3
	movaps	%xmm3, 112(%rsp)
	movaps	%xmm2, 96(%rsp)
	movaps	%xmm1, 80(%rsp)
	movaps	%xmm0, 64(%rsp)
	movsd	96(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 120(%r14)
	cmpl	$2, %ebx
	jg	.LBB12_9
	.p2align	4, 0x90
.LBB12_8:                               # =>This Inner Loop Header: Depth=1
	movsd	104(%rsp,%rbx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, 96(%r14,%rbx,8)
	addq	$1, %rbx
	cmpl	$2, %ebx
	jle	.LBB12_8
.LBB12_9:
	xorl	%eax, %eax
	addq	$200, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, %r14
	leaq	208(%rsp), %rbp
	movaps	208(%rsp), %xmm5
	movaps	224(%rsp), %xmm4
	movaps	240(%rsp), %xmm2
	movaps	256(%rsp), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm4, 16(%rsp)
	movups	%xmm5, (%rsp)
	movq	%rsi, %rdi
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movsd	%xmm1, 80(%rsp)         # 8-byte Spill
	callq	subdivp
	testw	%ax, %ax
	je	.LBB13_6
# %bb.1:                                # %.preheader
	xorl	%ebx, %ebx
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	.LCPI13_0(%rip), %xmm0
	addl	$1, %r12d
	leaq	88(%rsp), %r15
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	cmpl	$7, %ebx
	jle	.LBB13_3
	jmp	.LBB13_8
	.p2align	4, 0x90
.LBB13_5:                               #   in Loop: Header=BB13_3 Depth=1
	addq	$1, %rbx
	cmpl	$7, %ebx
	jg	.LBB13_8
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	movq	48(%r13,%rbx,8), %rsi
	testq	%rsi, %rsi
	je	.LBB13_5
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	movups	(%rbp), %xmm4
	movups	16(%rbp), %xmm1
	movups	32(%rbp), %xmm2
	movups	48(%rbp), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm4, (%rsp)
	movq	%r15, %rdi
	movsd	80(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	%r12d, %edx
	callq	walksub
	movsd	72(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movups	88(%rsp), %xmm4
	movups	104(%rsp), %xmm1
	movups	120(%rsp), %xmm2
	movups	136(%rsp), %xmm3
	movups	%xmm3, 48(%rbp)
	movups	%xmm2, 32(%rbp)
	movups	%xmm1, 16(%rbp)
	movups	%xmm4, (%rbp)
	jmp	.LBB13_5
.LBB13_6:
	cmpq	(%rbp), %r13
	je	.LBB13_8
# %bb.7:
	movups	(%rbp), %xmm0
	movups	16(%rbp), %xmm1
	movups	32(%rbp), %xmm2
	movups	48(%rbp), %xmm3
	movups	%xmm3, 48(%rsp)
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	leaq	88(%rsp), %rdi
	movq	%r13, %rsi
	callq	gravsub
	movupd	88(%rsp), %xmm0
	movups	104(%rsp), %xmm1
	movups	120(%rsp), %xmm2
	movups	136(%rsp), %xmm3
	movups	%xmm3, 48(%rbp)
	movups	%xmm2, 32(%rbp)
	movups	%xmm1, 16(%rbp)
	movupd	%xmm0, (%rbp)
.LBB13_8:
	movups	(%rbp), %xmm0
	movups	16(%rbp), %xmm1
	movups	32(%rbp), %xmm2
	movups	48(%rbp), %xmm3
	movups	%xmm3, 48(%r14)
	movups	%xmm2, 32(%r14)
	movups	%xmm1, 16(%r14)
	movups	%xmm0, (%r14)
	movq	%r14, %rax
	addq	$152, %rsp
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
	cmpw	$1, (%rdi)
	jne	.LBB14_2
# %bb.1:
	xorl	%eax, %eax
                                        # kill: def $ax killed $ax killed $eax
	retq
.LBB14_2:                               # %.preheader1
	leaq	8(%rsp), %rax
	xorl	%ecx, %ecx
	cmpl	$3, %ecx
	jge	.LBB14_4
	.p2align	4, 0x90
.LBB14_9:                               # =>This Inner Loop Header: Depth=1
	movsd	16(%rdi,%rcx,8), %xmm2  # xmm2 = mem[0],zero
	subsd	8(%rax,%rcx,8), %xmm2
	movsd	%xmm2, -24(%rsp,%rcx,8)
	addq	$1, %rcx
	cmpl	$3, %ecx
	jl	.LBB14_9
.LBB14_4:                               # %.preheader
	xorpd	%xmm2, %xmm2
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB14_7
	.p2align	4, 0x90
.LBB14_6:                               # =>This Inner Loop Header: Depth=1
	movsd	-24(%rsp,%rax,8), %xmm3 # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm3
	addsd	%xmm3, %xmm2
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB14_6
.LBB14_7:
	mulsd	%xmm2, %xmm1
	xorl	%eax, %eax
	ucomisd	%xmm1, %xmm0
	seta	%al
                                        # kill: def $ax killed $ax killed $eax
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	112(%rsp), %r15
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB15_2
	.p2align	4, 0x90
.LBB15_14:                              # =>This Inner Loop Header: Depth=1
	movsd	16(%rbx,%rax,8), %xmm0  # xmm0 = mem[0],zero
	subsd	8(%r15,%rax,8), %xmm0
	movsd	%xmm0, 16(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB15_14
.LBB15_2:                               # %.preheader1
	xorpd	%xmm2, %xmm2
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB15_5
	.p2align	4, 0x90
.LBB15_4:                               # =>This Inner Loop Header: Depth=1
	movsd	16(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm0
	addsd	%xmm0, %xmm2
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB15_4
.LBB15_5:
	addsd	.LCPI15_0(%rip), %xmm2
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm2
	jb	.LBB15_7
# %bb.6:
	xorps	%xmm0, %xmm0
	sqrtsd	%xmm2, %xmm0
	jmp	.LBB15_8
.LBB15_7:                               # %call.sqrt
	movapd	%xmm2, %xmm0
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	callq	sqrt
	movsd	8(%rsp), %xmm2          # 8-byte Reload
                                        # xmm2 = mem[0],zero
.LBB15_8:                               # %.split
	movsd	8(%rbx), %xmm1          # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	32(%r15), %xmm0         # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movsd	%xmm0, 32(%r15)
	divsd	%xmm2, %xmm1
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB15_10
	.p2align	4, 0x90
.LBB15_15:                              # =>This Inner Loop Header: Depth=1
	movsd	16(%rsp,%rax,8), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, 48(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB15_15
.LBB15_10:                              # %.preheader
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB15_13
	.p2align	4, 0x90
.LBB15_12:                              # =>This Inner Loop Header: Depth=1
	movsd	40(%r15,%rax,8), %xmm0  # xmm0 = mem[0],zero
	addsd	48(%rsp,%rax,8), %xmm0
	movsd	%xmm0, 40(%r15,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB15_12
.LBB15_13:
	movups	(%r15), %xmm0
	movups	16(%r15), %xmm1
	movups	32(%r15), %xmm2
	movups	48(%r15), %xmm3
	movups	%xmm3, 48(%r14)
	movups	%xmm2, 32(%r14)
	movups	%xmm1, 16(%r14)
	movups	%xmm0, (%r14)
	movq	%r14, %rax
	addq	$80, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	.p2align	4, 0x90
.LBB16_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_2 Depth 2
                                        #       Child Loop BB16_13 Depth 3
                                        #       Child Loop BB16_8 Depth 3
	callq	ic_test
	movsd	.LCPI16_0(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI16_1(%rip), %xmm3  # xmm3 = mem[0],zero
.LBB16_2:                               #   Parent Loop BB16_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_13 Depth 3
                                        #       Child Loop BB16_8 Depth 3
	testl	%eax, %eax
	jne	.LBB16_18
# %bb.3:                                #   in Loop: Header=BB16_2 Depth=2
	movsd	24(%rbx), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jbe	.LBB16_11
# %bb.4:                                # %.preheader1
                                        #   in Loop: Header=BB16_2 Depth=2
	xorl	%ecx, %ecx
	cmpl	$3, %ecx
	jge	.LBB16_6
	.p2align	4, 0x90
.LBB16_13:                              #   Parent Loop BB16_1 Depth=1
                                        #     Parent Loop BB16_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movapd	%xmm0, %xmm1
	mulsd	%xmm3, %xmm1
	addsd	(%rbx,%rcx,8), %xmm1
	movsd	%xmm1, 32(%rsp,%rcx,8)
	addq	$1, %rcx
	cmpl	$3, %ecx
	jl	.LBB16_13
.LBB16_6:                               # %.preheader
                                        #   in Loop: Header=BB16_2 Depth=2
	xorl	%ecx, %ecx
	cmpl	$2, %ecx
	jle	.LBB16_8
	jmp	.LBB16_14
	.p2align	4, 0x90
.LBB16_10:                              #   in Loop: Header=BB16_8 Depth=3
	addq	$1, %rcx
	cmpl	$2, %ecx
	jg	.LBB16_14
.LBB16_8:                               #   Parent Loop BB16_1 Depth=1
                                        #     Parent Loop BB16_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movsd	32(%rsp,%rcx,8), %xmm1  # xmm1 = mem[0],zero
	ucomisd	16(%r14,%rcx,8), %xmm1
	jbe	.LBB16_10
# %bb.9:                                #   in Loop: Header=BB16_8 Depth=3
	movsd	(%rbx,%rcx,8), %xmm1    # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%rbx,%rcx,8)
	jmp	.LBB16_10
	.p2align	4, 0x90
.LBB16_14:                              #   in Loop: Header=BB16_2 Depth=2
	addsd	%xmm0, %xmm0
	movsd	%xmm0, 24(%rbx)
	cmpq	$0, 32(%rbx)
	je	.LBB16_2
# %bb.15:                               #   in Loop: Header=BB16_1 Depth=1
	xorl	%edi, %edi
	callq	cell_alloc
	movq	%rax, %r15
	movsd	32(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	40(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	48(%rsp), %xmm2         # xmm2 = mem[0],zero
	movq	%rbx, %rdi
	callq	intcoord1
	movq	%rax, 16(%rsp)
	movq	%rdx, 24(%rsp)
	movq	16(%rsp), %rax
	movq	%rax, (%rsp)
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
	cmpw	$0, 12(%rsp)
	je	.LBB16_16
# %bb.17:                               #   in Loop: Header=BB16_1 Depth=1
	movq	(%rsp), %rdi
	movq	8(%rsp), %rsi
	movl	$536870912, %edx        # imm = 0x20000000
	callq	old_subindex
	movq	32(%rbx), %rcx
	cltq
	movq	%rcx, 48(%r15,%rax,8)
	movq	%r15, 32(%rbx)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	jmp	.LBB16_1
.LBB16_18:
	xorl	%eax, %eax
	addq	$64, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB16_11:
	.cfi_def_cfa_offset 96
	movl	$.L.str.2, %edi
	movl	$999, %esi              # imm = 0x3E7
	jmp	.LBB16_12
.LBB16_16:
	movl	$.L.str.2, %edi
	movl	$1, %esi
.LBB16_12:
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r15
	movq	%rsi, (%rsp)
	movq	%rdx, 8(%rsp)
	testq	%rcx, %rcx
	je	.LBB17_1
# %bb.2:
	movl	%r8d, %ebp
	testl	%r8d, %r8d
	je	.LBB17_7
# %bb.3:
	movq	%r9, %r14
	movq	%rcx, %rbx
	cmpw	$1, (%rcx)
	jne	.LBB17_5
# %bb.4:
	movl	%ebx, %edi
	andl	$127, %edi
	callq	cell_alloc
	movq	%rax, %r12
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	callq	subindex
	cltq
	movq	%rbx, 48(%r12,%rax,8)
	movq	%r12, %rbx
.LBB17_5:
	movq	(%rsp), %rdi
	movq	8(%rsp), %rsi
	movl	%ebp, %edx
	callq	old_subindex
	movslq	%eax, %r12
	movq	48(%rbx,%r12,8), %rcx
	sarl	%ebp
	movq	(%rsp), %rsi
	movq	8(%rsp), %rdx
	movq	%r15, %rdi
	movl	%ebp, %r8d
	movq	%r14, %r9
	callq	loadtree
	movq	%rax, 48(%rbx,%r12,8)
	jmp	.LBB17_6
.LBB17_1:
	movq	%r15, %rbx
.LBB17_6:
	movq	%rbx, %rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB17_7:
	.cfi_def_cfa_offset 64
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	cmpw	$2, (%rdi)
	jne	.LBB18_15
# %bb.1:                                # %.preheader3
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB18_3
	.p2align	4, 0x90
.LBB18_17:                              # =>This Inner Loop Header: Depth=1
	movq	$0, (%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB18_17
.LBB18_3:                               # %.preheader2
	xorl	%r15d, %r15d
	xorpd	%xmm2, %xmm2
	cmpl	$7, %r15d
	jle	.LBB18_5
	jmp	.LBB18_12
	.p2align	4, 0x90
.LBB18_11:                              #   in Loop: Header=BB18_5 Depth=1
	addl	$1, %r15d
	cmpl	$7, %r15d
	jg	.LBB18_12
.LBB18_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_18 Depth 2
                                        #     Child Loop BB18_10 Depth 2
	movslq	%r15d, %rax
	movq	48(%r14,%rax,8), %rbx
	testq	%rbx, %rbx
	je	.LBB18_11
# %bb.6:                                #   in Loop: Header=BB18_5 Depth=1
	movq	%rbx, %rdi
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	callq	hackcofm
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	xorl	%eax, %eax
	cmpl	$3, %eax
	jge	.LBB18_8
	.p2align	4, 0x90
.LBB18_18:                              #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	16(%rbx,%rax,8), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$3, %eax
	jl	.LBB18_18
.LBB18_8:                               # %.preheader
                                        #   in Loop: Header=BB18_5 Depth=1
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB18_11
	.p2align	4, 0x90
.LBB18_10:                              #   Parent Loop BB18_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movsd	(%rsp,%rax,8), %xmm0    # xmm0 = mem[0],zero
	addsd	32(%rsp,%rax,8), %xmm0
	movsd	%xmm0, (%rsp,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB18_10
	jmp	.LBB18_11
.LBB18_15:
	movsd	8(%r14), %xmm2          # xmm2 = mem[0],zero
	jmp	.LBB18_16
.LBB18_12:
	movsd	%xmm2, 8(%r14)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, 16(%r14)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 24(%r14)
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%r14)
	xorl	%eax, %eax
	cmpl	$2, %eax
	jg	.LBB18_16
	.p2align	4, 0x90
.LBB18_14:                              # =>This Inner Loop Header: Depth=1
	movsd	16(%r14,%rax,8), %xmm0  # xmm0 = mem[0],zero
	divsd	8(%r14), %xmm0
	movsd	%xmm0, 16(%r14,%rax,8)
	addq	$1, %rax
	cmpl	$2, %eax
	jle	.LBB18_14
.LBB18_16:
	movapd	%xmm2, %xmm0
	addq	$64, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	cmpq	$0, cp_free_list(%rip)
	je	.LBB19_2
# %bb.1:
	movq	cp_free_list(%rip), %rax
	movq	112(%rax), %rcx
	movq	%rcx, cp_free_list(%rip)
	jmp	.LBB19_3
.LBB19_2:
	movl	$120, %edi
	callq	malloc
.LBB19_3:
	movw	$2, (%rax)
	movl	%ebx, 40(%rax)
	xorl	%ecx, %ecx
	cmpl	$7, %ecx
	jg	.LBB19_6
	.p2align	4, 0x90
.LBB19_5:                               # =>This Inner Loop Header: Depth=1
	movq	$0, 48(%rax,%rcx,8)
	addq	$1, %rcx
	cmpl	$7, %ecx
	jle	.LBB19_5
.LBB19_6:
	popq	%rbx
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movsd	16(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, 32(%rsp)
	movsd	24(%rdi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 40(%rsp)
	movsd	32(%rdi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, 48(%rsp)
	movsd	24(%rsi), %xmm1         # xmm1 = mem[0],zero
	subsd	(%rsi), %xmm0
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	divsd	%xmm1, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB20_2
# %bb.1:
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB20_2
# %bb.4:
	movl	%edx, %ebx
	movq	%rsi, %r14
	mulsd	.LCPI20_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 20(%rsp)
	movsd	40(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	8(%r14), %xmm0
	divsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB20_6
# %bb.5:
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB20_6
# %bb.7:
	mulsd	.LCPI20_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 24(%rsp)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	subsd	16(%r14), %xmm0
	divsd	8(%rsp), %xmm0          # 8-byte Folded Reload
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB20_9
# %bb.8:
	movsd	.LCPI20_0(%rip), %xmm1  # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB20_9
# %bb.10:
	mulsd	.LCPI20_1(%rip), %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 28(%rsp)
	xorl	%edx, %edx
	xorl	%eax, %eax
	cmpl	$2, %edx
	jle	.LBB20_12
	jmp	.LBB20_15
	.p2align	4, 0x90
.LBB20_14:                              #   in Loop: Header=BB20_12 Depth=1
	addq	$1, %rdx
	cmpl	$2, %edx
	jg	.LBB20_15
.LBB20_12:                              # =>This Inner Loop Header: Depth=1
	testl	%ebx, 20(%rsp,%rdx,4)
	je	.LBB20_14
# %bb.13:                               #   in Loop: Header=BB20_12 Depth=1
	leal	1(%rdx), %ecx
	movl	$8, %esi
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	addl	%esi, %eax
	jmp	.LBB20_14
.LBB20_15:
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB20_2:
	.cfi_def_cfa_offset 80
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
	movsd	16(%rdi), %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm1, -24(%rsp)
	movsd	24(%rdi), %xmm2         # xmm2 = mem[0],zero
	movsd	%xmm2, -16(%rsp)
	movsd	32(%rdi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rsp)
	movsd	24(%rsi), %xmm3         # xmm3 = mem[0],zero
	subsd	(%rsi), %xmm1
	divsd	%xmm3, %xmm1
	xorps	%xmm4, %xmm4
	ucomisd	%xmm4, %xmm1
	setae	%al
	movsd	.LCPI21_0(%rip), %xmm5  # xmm5 = mem[0],zero
	ucomisd	%xmm1, %xmm5
	seta	%cl
	andb	%al, %cl
	subsd	8(%rsi), %xmm2
	divsd	%xmm3, %xmm2
	xorl	%edx, %edx
	ucomisd	%xmm2, %xmm5
	movzbl	%cl, %eax
	cmovbel	%edx, %eax
	ucomisd	%xmm4, %xmm2
	cmovbl	%edx, %eax
	subsd	16(%rsi), %xmm0
	divsd	%xmm3, %xmm0
	ucomisd	%xmm0, %xmm5
	cmovbel	%edx, %eax
	ucomisd	%xmm4, %xmm0
	cmovbl	%edx, %eax
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movw	$1, 12(%rsp)
	subsd	(%rdi), %xmm0
	divsd	24(%rdi), %xmm0
	xorps	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm0
	jb	.LBB22_3
# %bb.1:
	movsd	.LCPI22_0(%rip), %xmm3  # xmm3 = mem[0],zero
	ucomisd	%xmm0, %xmm3
	jbe	.LBB22_3
# %bb.2:
	mulsd	.LCPI22_1(%rip), %xmm0
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	callq	floor
	movsd	24(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, (%rsp)
	jmp	.LBB22_4
.LBB22_3:
	movw	$0, 12(%rsp)
.LBB22_4:
	subsd	8(%rbx), %xmm1
	divsd	24(%rbx), %xmm1
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jb	.LBB22_7
# %bb.5:
	movsd	.LCPI22_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB22_7
# %bb.6:
	mulsd	.LCPI22_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	callq	floor
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	movl	%eax, 4(%rsp)
	jmp	.LBB22_8
.LBB22_7:
	movw	$0, 12(%rsp)
.LBB22_8:
	subsd	16(%rbx), %xmm2
	divsd	24(%rbx), %xmm2
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm2
	jb	.LBB22_11
# %bb.9:
	movsd	.LCPI22_0(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm2, %xmm0
	jbe	.LBB22_11
# %bb.10:
	mulsd	.LCPI22_1(%rip), %xmm2
	movapd	%xmm2, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, 8(%rsp)
	jmp	.LBB22_12
.LBB22_11:
	movw	$0, 12(%rsp)
.LBB22_12:
	movq	(%rsp), %rax
	movq	8(%rsp), %rdx
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	testq	%rdi, %rdi
	je	.LBB23_8
# %bb.1:
	movq	%rdi, %r14
	cmpw	$1, (%rdi)
	je	.LBB23_8
# %bb.2:                                # %.preheader
	movl	$13, %ebx
	jmp	.LBB23_3
	.p2align	4, 0x90
.LBB23_6:                               #   in Loop: Header=BB23_3 Depth=1
	addq	$-1, %rbx
.LBB23_3:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	addl	$-6, %eax
	js	.LBB23_7
# %bb.4:                                #   in Loop: Header=BB23_3 Depth=1
	movq	(%r14,%rbx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB23_6
# %bb.5:                                #   in Loop: Header=BB23_3 Depth=1
	callq	freetree
	jmp	.LBB23_6
.LBB23_7:
	movq	%r14, %rdi
	callq	my_free
.LBB23_8:
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
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
	cmpw	$1, (%rdi)
	jne	.LBB24_2
# %bb.1:
	movq	bp_free_list(%rip), %rax
	movq	%rax, 128(%rdi)
	movq	%rdi, bp_free_list(%rip)
	xorl	%eax, %eax
	retq
.LBB24_2:
	movq	cp_free_list(%rip), %rax
	movq	%rax, 112(%rdi)
	movq	%rdi, cp_free_list(%rip)
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movl	$144, %edi
	callq	malloc
	movw	$1, (%rax)
	movl	%ebx, 40(%rax)
	movq	$0, 136(%rax)
	movl	%ebx, 44(%rax)
	popq	%rbx
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
	pushq	%rax
	.cfi_def_cfa_offset 16
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -16
	movaps	%xmm1, %xmm8
	movaps	%xmm0, %xmm9
	movl	%edi, %ebx
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	80(%rsp), %xmm1         # xmm1 = mem[0],zero
	cmpq	$0, bp_free_list(%rip)
	je	.LBB27_2
# %bb.1:
	movq	bp_free_list(%rip), %rax
	movq	128(%rax), %rcx
	movq	%rcx, bp_free_list(%rip)
	jmp	.LBB27_3
.LBB27_2:
	movl	$144, %edi
	movsd	%xmm7, 56(%rsp)         # 8-byte Spill
	movsd	%xmm6, 48(%rsp)         # 8-byte Spill
	movsd	%xmm5, 40(%rsp)         # 8-byte Spill
	movsd	%xmm4, 32(%rsp)         # 8-byte Spill
	movsd	%xmm3, 24(%rsp)         # 8-byte Spill
	movsd	%xmm2, 16(%rsp)         # 8-byte Spill
	movsd	%xmm8, 8(%rsp)          # 8-byte Spill
	movsd	%xmm9, (%rsp)           # 8-byte Spill
	callq	malloc
	movsd	(%rsp), %xmm9           # 8-byte Reload
                                        # xmm9 = mem[0],zero
	movsd	8(%rsp), %xmm8          # 8-byte Reload
                                        # xmm8 = mem[0],zero
	movsd	16(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	80(%rsp), %xmm1         # xmm1 = mem[0],zero
	movsd	24(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	88(%rsp), %xmm0         # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm4         # 8-byte Reload
                                        # xmm4 = mem[0],zero
	movsd	40(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	movsd	48(%rsp), %xmm6         # 8-byte Reload
                                        # xmm6 = mem[0],zero
	movsd	56(%rsp), %xmm7         # 8-byte Reload
                                        # xmm7 = mem[0],zero
.LBB27_3:
	movw	$1, (%rax)
	movl	%ebx, 40(%rax)
	movsd	%xmm9, 16(%rax)
	movsd	%xmm8, 24(%rax)
	movsd	%xmm2, 32(%rax)
	movsd	%xmm3, 48(%rax)
	movsd	%xmm4, 56(%rax)
	movsd	%xmm5, 64(%rax)
	movsd	%xmm6, 72(%rax)
	movsd	%xmm7, 80(%rax)
	movsd	%xmm1, 88(%rax)
	movsd	%xmm0, 8(%rax)
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
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
	.cfi_offset %rbx, -16
	cvtsi2sdl	nbody(%rip), %xmm0
	movq	%rdi, %rbx
	cvtsi2sdl	__NumNodes(%rip), %xmm1
	divsd	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %edx
	movq	%rbx, %rdi
	movl	$-1, %esi
	callq	dis2_number
	xorl	%eax, %eax
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	testq	%rdi, %rdi
	je	.LBB29_6
# %bb.1:
	movl	%edx, %r14d
	movq	%rdi, %rbx
	cmpw	$1, (%rdi)
	jne	.LBB29_2
# %bb.5:
	addl	$1, %esi
	movl	%esi, %eax
	cltd
	idivl	%r14d
	movl	%eax, 44(%rbx)
	jmp	.LBB29_6
.LBB29_2:                               # %.preheader
	xorl	%ebp, %ebp
	cmpl	$7, %ebp
	jg	.LBB29_6
	.p2align	4, 0x90
.LBB29_4:                               # =>This Inner Loop Header: Depth=1
	movq	48(%rbx,%rbp,8), %rdi
	movl	%r14d, %edx
	callq	dis2_number
	movl	%eax, %esi
	addq	$1, %rbp
	cmpl	$7, %ebp
	jle	.LBB29_4
.LBB29_6:
	movl	%esi, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	mulsd	.LCPI30_0(%rip), %xmm0
	addsd	.LCPI30_1(%rip), %xmm0
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	divsd	.LCPI30_2(%rip), %xmm0
	callq	floor
	mulsd	.LCPI30_2(%rip), %xmm0
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	popq	%rax
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, %rsi
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpl	$2, %edi
	jl	.LBB34_2
# %bb.1:
	movq	8(%rsi), %rdi
	callq	atoi
	movl	%eax, nbody(%rip)
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB34_2:
	.cfi_def_cfa_offset 16
	movl	$2048, nbody(%rip)      # imm = 0x800
	popq	%rcx
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
