	.text
	.file	"llvm-link"
	.globl	usage                   # -- Begin function usage
	.p2align	4, 0x90
	.type	usage,@function
usage:                                  # @usage
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
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
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end0:
	.size	usage, .Lfunc_end0-usage
	.cfi_endproc
                                        # -- End function
	.globl	getint                  # -- Begin function getint
	.p2align	4, 0x90
	.type	getint,@function
getint:                                 # @getint
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$10032, %rsp            # imm = 0x2730
	.cfi_def_cfa_offset 10048
	.cfi_offset %rbx, -16
	movq	%rdi, 16(%rsp)
	callq	_IO_getc
	movl	%eax, 4(%rsp)
	leaq	32(%rsp), %rbx
	cmpl	$35, 4(%rsp)
	jne	.LBB1_3
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	movq	16(%rsp), %rdi
	callq	_IO_getc
	movl	%eax, 4(%rsp)
	cmpl	$35, 4(%rsp)
	jne	.LBB1_3
.LBB1_2:
	movq	16(%rsp), %rdx
	movq	%rbx, %rdi
	movl	$9000, %esi             # imm = 0x2328
	callq	fgets
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$-1, 4(%rsp)
	je	.LBB1_12
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	movl	4(%rsp), %eax
	cmpl	$48, %eax
	jl	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	cmpl	$58, %eax
	jge	.LBB1_6
# %bb.7:
	movl	$0, 8(%rsp)
	.p2align	4, 0x90
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movl	8(%rsp), %eax
	leal	(%rax,%rax,4), %eax
	movl	4(%rsp), %ecx
	leal	(%rcx,%rax,2), %eax
	addl	$-48, %eax
	movl	%eax, 8(%rsp)
	movq	16(%rsp), %rdi
	callq	_IO_getc
	movl	%eax, 4(%rsp)
	cmpl	$-1, %eax
	je	.LBB1_11
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	movl	4(%rsp), %eax
	cmpl	$48, %eax
	jl	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$58, %eax
	jl	.LBB1_8
.LBB1_11:
	movl	8(%rsp), %eax
	movl	%eax, 12(%rsp)
	movl	$1, 28(%rsp)
	movl	12(%rsp), %eax
	addq	$10032, %rsp            # imm = 0x2730
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB1_12:
	.cfi_def_cfa_offset 10048
	movq	stderr(%rip), %rdi
	movl	$.L.str.13, %esi
	movl	$.L.str.14, %edx
	xorl	%eax, %eax
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end1:
	.size	getint, .Lfunc_end1-getint
	.cfi_endproc
                                        # -- End function
	.globl	get_image               # -- Begin function get_image
	.p2align	4, 0x90
	.type	get_image,@function
get_image:                              # @get_image
	.cfi_startproc
# %bb.0:
	subq	$152, %rsp
	.cfi_def_cfa_offset 160
	movq	%rdi, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movl	$.L.str.15, %esi
	callq	fopen
	movq	%rax, (%rsp)
	testq	%rax, %rax
	je	.LBB2_1
# %bb.3:
	movq	(%rsp), %rdi
	callq	fgetc
	movb	%al, 48(%rsp)
	movq	(%rsp), %rdi
	callq	fgetc
	movb	%al, 49(%rsp)
	cmpb	$80, 48(%rsp)
	jne	.LBB2_5
# %bb.4:
	cmpb	$53, 49(%rsp)
	jne	.LBB2_5
# %bb.6:
	movq	(%rsp), %rdi
	callq	getint
	movq	16(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	(%rsp), %rdi
	callq	getint
	movq	8(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	(%rsp), %rdi
	callq	getint
	movl	%eax, 44(%rsp)
	movq	16(%rsp), %rax
	movslq	(%rax), %rax
	movq	8(%rsp), %rcx
	movslq	(%rcx), %rdi
	imulq	%rax, %rdi
	callq	malloc
	movq	32(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	32(%rsp), %rax
	movq	(%rax), %rdi
	movq	16(%rsp), %rax
	movslq	(%rax), %rax
	movq	8(%rsp), %rcx
	movslq	(%rcx), %rdx
	imulq	%rax, %rdx
	movq	(%rsp), %rcx
	movl	$1, %esi
	callq	fread
	testq	%rax, %rax
	je	.LBB2_7
# %bb.8:
	movq	(%rsp), %rdi
	callq	fclose
	addq	$152, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB2_5:
	.cfi_def_cfa_offset 160
	movq	stderr(%rip), %rdi
	movq	24(%rsp), %rdx
	movl	$.L.str.17, %esi
	jmp	.LBB2_2
.LBB2_1:
	movq	stderr(%rip), %rdi
	movq	24(%rsp), %rdx
	movl	$.L.str.16, %esi
	jmp	.LBB2_2
.LBB2_7:
	movq	stderr(%rip), %rdi
	movq	24(%rsp), %rdx
	movl	$.L.str.18, %esi
.LBB2_2:
	xorl	%eax, %eax
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end2:
	.size	get_image, .Lfunc_end2-get_image
	.cfi_endproc
                                        # -- End function
	.globl	put_image               # -- Begin function put_image
	.p2align	4, 0x90
	.type	put_image,@function
put_image:                              # @put_image
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movq	%rsi, 32(%rsp)
	movl	%edx, 20(%rsp)
	movl	%ecx, 16(%rsp)
	movl	$.L.str.19, %esi
	callq	fopen
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	je	.LBB3_1
# %bb.3:
	movq	8(%rsp), %rdi
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	20(%rsp), %edx
	movl	16(%rsp), %ecx
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	8(%rsp), %rdi
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	32(%rsp), %rdi
	movslq	20(%rsp), %rax
	movslq	16(%rsp), %rsi
	imulq	%rax, %rsi
	movq	8(%rsp), %rcx
	movl	$1, %edx
	callq	fwrite
	cmpq	$1, %rax
	jne	.LBB3_4
# %bb.5:
	movq	8(%rsp), %rdi
	callq	fclose
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB3_1:
	.cfi_def_cfa_offset 48
	movq	stderr(%rip), %rdi
	movq	24(%rsp), %rdx
	movl	$.L.str.20, %esi
	jmp	.LBB3_2
.LBB3_4:
	movq	stderr(%rip), %rdi
	movq	24(%rsp), %rdx
	movl	$.L.str.24, %esi
.LBB3_2:
	xorl	%eax, %eax
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end3:
	.size	put_image, .Lfunc_end3-put_image
	.cfi_endproc
                                        # -- End function
	.globl	int_to_uchar            # -- Begin function int_to_uchar
	.p2align	4, 0x90
	.type	int_to_uchar,@function
int_to_uchar:                           # @int_to_uchar
	.cfi_startproc
# %bb.0:
	movq	%rdi, -24(%rsp)
	movq	%rsi, -8(%rsp)
	movl	%edx, -12(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -28(%rsp)
	movl	(%rdi), %eax
	movl	%eax, -32(%rsp)
	movl	$0, -36(%rsp)
	jmp	.LBB4_1
	.p2align	4, 0x90
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	addl	$1, -36(%rsp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rsp), %eax
	cmpl	-12(%rsp), %eax
	jge	.LBB4_7
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rsp), %rax
	movslq	-36(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-28(%rsp), %eax
	jle	.LBB4_4
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rsp), %rax
	movslq	-36(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -28(%rsp)
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rsp), %rax
	movslq	-36(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-32(%rsp), %eax
	jge	.LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-24(%rsp), %rax
	movslq	-36(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -32(%rsp)
	jmp	.LBB4_6
.LBB4_7:
	movl	-32(%rsp), %eax
	subl	%eax, -28(%rsp)
	movl	$0, -36(%rsp)
	.p2align	4, 0x90
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rsp), %eax
	cmpl	-12(%rsp), %eax
	jge	.LBB4_10
# %bb.9:                                #   in Loop: Header=BB4_8 Depth=1
	movq	-24(%rsp), %rax
	movslq	-36(%rsp), %rcx
	movl	(%rax,%rcx,4), %edx
	subl	-32(%rsp), %edx
	movl	%edx, %eax
	shll	$8, %eax
	subl	%edx, %eax
	cltd
	idivl	-28(%rsp)
	movq	-8(%rsp), %rdx
	movb	%al, (%rdx,%rcx)
	addl	$1, -36(%rsp)
	jmp	.LBB4_8
.LBB4_10:
	retq
.Lfunc_end4:
	.size	int_to_uchar, .Lfunc_end4-int_to_uchar
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function setup_brightness_lut
.LCPI5_0:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI5_1:
	.quad	4636737291354636288     # double 100
	.text
	.globl	setup_brightness_lut
	.p2align	4, 0x90
	.type	setup_brightness_lut,@function
setup_brightness_lut:                   # @setup_brightness_lut
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movl	%esi, 20(%rsp)
	movl	%edx, 16(%rsp)
	movl	$516, %edi              # imm = 0x204
	callq	malloc
	movq	8(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rsp), %rax
	addq	$258, (%rax)            # imm = 0x102
	movl	$-256, 4(%rsp)
	cmpl	$256, 4(%rsp)           # imm = 0x100
	jle	.LBB5_2
	jmp	.LBB5_5
	.p2align	4, 0x90
.LBB5_4:                                #   in Loop: Header=BB5_2 Depth=1
	movss	(%rsp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI5_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	exp
	mulsd	.LCPI5_1(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvttss2si	%xmm0, %eax
	movss	%xmm0, (%rsp)
	movq	8(%rsp), %rcx
	movq	(%rcx), %rcx
	movslq	4(%rsp), %rdx
	movb	%al, (%rcx,%rdx)
	addl	$1, 4(%rsp)
	cmpl	$256, 4(%rsp)           # imm = 0x100
	jg	.LBB5_5
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ssl	4(%rsp), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	20(%rsp), %xmm1
	divss	%xmm1, %xmm0
	mulss	%xmm0, %xmm0
	movss	%xmm0, (%rsp)
	cmpl	$6, 16(%rsp)
	jne	.LBB5_4
# %bb.3:                                #   in Loop: Header=BB5_2 Depth=1
	movss	(%rsp), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rsp)
	jmp	.LBB5_4
.LBB5_5:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	setup_brightness_lut, .Lfunc_end5-setup_brightness_lut
	.cfi_endproc
                                        # -- End function
	.globl	susan_principle         # -- Begin function susan_principle
	.p2align	4, 0x90
	.type	susan_principle,@function
susan_principle:                        # @susan_principle
	.cfi_startproc
# %bb.0:
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movl	%ecx, 40(%rsp)
	movl	%r8d, 28(%rsp)
	movl	%r9d, 44(%rsp)
	movslq	%r8d, %rax
	movslq	%r9d, %rdx
	imulq	%rax, %rdx
	shlq	$2, %rdx
	movq	%rsi, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$3, 36(%rsp)
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_7:                                #   in Loop: Header=BB6_1 Depth=1
	addl	$1, 36(%rsp)
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	44(%rsp), %eax
	addl	$-3, %eax
	cmpl	%eax, 36(%rsp)
	jge	.LBB6_8
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movl	$3, 32(%rsp)
	jmp	.LBB6_3
	.p2align	4, 0x90
.LBB6_6:                                #   in Loop: Header=BB6_3 Depth=2
	addl	$1, 32(%rsp)
.LBB6_3:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	28(%rsp), %eax
	addl	$-3, %eax
	cmpl	%eax, 32(%rsp)
	jge	.LBB6_7
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=2
	movl	$100, 4(%rsp)
	movslq	36(%rsp), %rsi
	leaq	-3(%rsi), %rcx
	movslq	28(%rsp), %r9
	imulq	%r9, %rcx
	movq	64(%rsp), %r8
	addq	%r8, %rcx
	movslq	32(%rsp), %rdx
	leaq	(%rcx,%rdx), %r10
	leaq	(%rdx,%rcx), %rdi
	addq	$-1, %rdi
	movq	%rdi, 8(%rsp)
	imulq	%r9, %rsi
	addq	%rdx, %rsi
	movzbl	(%r8,%rsi), %eax
	addq	48(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%r10, 8(%rsp)
	movzbl	-1(%rdx,%rcx), %r8d
	movq	%rax, %rsi
	subq	%r8, %rsi
	movzbl	(%rsi), %r8d
	leal	100(%r8), %esi
	movl	%esi, 4(%rsp)
	leaq	(%rdx,%rcx), %rsi
	addq	$1, %rsi
	movq	%rsi, 8(%rsp)
	movzbl	(%rdx,%rcx), %esi
	movq	%rax, %rdi
	subq	%rsi, %rdi
	movzbl	(%rdi), %esi
	leal	(%r8,%rsi), %esi
	addl	$100, %esi
	movl	%esi, 4(%rsp)
	movzbl	1(%rdx,%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movslq	28(%rsp), %rdx
	leaq	(%rdx,%r10), %rcx
	addq	$1, %rcx
	leaq	-2(%rdx,%r10), %rsi
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rsi
	leaq	(%rdx,%r10), %rdi
	addq	$-1, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-2(%rdx,%r10), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	movq	16(%rsp), %rax
	leaq	-1(%rcx), %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-1(%rdx,%r10), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rsi
	movq	%rcx, 8(%rsp)
	movzbl	(%rdx,%r10), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	movq	16(%rsp), %rax
	leaq	(%rdx,%r10), %rdi
	addq	$2, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	1(%rdx,%r10), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rsi
	movzbl	2(%rdx,%r10), %edx
	subq	%rdx, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	movslq	28(%rsp), %rdx
	leaq	(%rdx,%rcx), %r8
	addq	$1, %r8
	leaq	-4(%rdx,%rcx), %rdi
	movq	%rdi, 8(%rsp)
	movq	16(%rsp), %rdi
	leaq	(%rdx,%rcx), %rax
	addq	$-3, %rax
	movq	%rax, 8(%rsp)
	movzbl	-4(%rdx,%rcx), %eax
	subq	%rax, %rdi
	movzbl	(%rdi), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rsi
	leaq	(%rdx,%rcx), %rdi
	addq	$-2, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-3(%rdx,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	movq	16(%rsp), %rax
	leaq	(%rdx,%rcx), %rdi
	addq	$-1, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-2(%rdx,%rcx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rsi
	leaq	-1(%r8), %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-1(%rdx,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	movq	16(%rsp), %rax
	movq	%r8, 8(%rsp)
	movzbl	(%rdx,%rcx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rsi
	leaq	(%rdx,%rcx), %rdi
	addq	$2, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	1(%rdx,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	movq	16(%rsp), %rax
	movzbl	2(%rdx,%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movslq	28(%rsp), %rdx
	leaq	(%rdx,%r8), %rcx
	addq	$1, %rcx
	leaq	-5(%rdx,%r8), %rsi
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rsi
	leaq	(%rdx,%r8), %rdi
	addq	$-4, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-5(%rdx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	movq	16(%rsp), %rax
	leaq	(%rdx,%r8), %rdi
	addq	$-3, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-4(%rdx,%r8), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rsi
	movzbl	-3(%rdx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	leaq	(%rdx,%r8), %rax
	addq	$-1, %rax
	movq	%rax, 8(%rsp)
	movq	16(%rsp), %rax
	leaq	-1(%rcx), %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-1(%rdx,%r8), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rsi
	movq	%rcx, 8(%rsp)
	movzbl	(%rdx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	movq	16(%rsp), %rax
	movzbl	1(%rdx,%r8), %edx
	subq	%rdx, %rax
	movzbl	(%rax), %edi
	addl	%esi, %edi
	movl	%edi, 4(%rsp)
	movslq	28(%rsp), %rdx
	leaq	(%rdx,%rcx), %r8
	leaq	(%rdx,%rcx), %rsi
	addq	$-6, %rsi
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rsi
	leaq	(%rdx,%rcx), %rax
	addq	$-5, %rax
	movq	%rax, 8(%rsp)
	movzbl	-6(%rdx,%rcx), %eax
	subq	%rax, %rsi
	movzbl	(%rsi), %eax
	addl	%edi, %eax
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rsi
	leaq	(%rdx,%rcx), %rdi
	addq	$-4, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-5(%rdx,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	movq	16(%rsp), %rax
	leaq	(%rdx,%rcx), %rdi
	addq	$-3, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-4(%rdx,%rcx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rsi
	leaq	(%rdx,%rcx), %rdi
	addq	$-2, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-3(%rdx,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	movq	16(%rsp), %rax
	leaq	(%rdx,%rcx), %rdi
	addq	$-1, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-2(%rdx,%rcx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rsi
	movq	%r8, 8(%rsp)
	movzbl	-1(%rdx,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	movq	16(%rsp), %rax
	movzbl	(%rdx,%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movslq	28(%rsp), %rdx
	leaq	(%rdx,%r8), %rcx
	leaq	(%rdx,%r8), %rsi
	addq	$-5, %rsi
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rsi
	leaq	(%rdx,%r8), %rdi
	addq	$-4, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-5(%rdx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	movq	16(%rsp), %rax
	leaq	(%rdx,%r8), %rdi
	addq	$-3, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-4(%rdx,%r8), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rsi
	leaq	(%rdx,%r8), %rdi
	addq	$-2, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-3(%rdx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 4(%rsp)
	movq	16(%rsp), %rax
	leaq	(%rdx,%r8), %rdi
	addq	$-1, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-2(%rdx,%r8), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movq	16(%rsp), %rsi
	movzbl	-1(%rdx,%r8), %edx
	subq	%rdx, %rsi
	movzbl	(%rsi), %edx
	addl	%eax, %edx
	movl	%edx, 4(%rsp)
	movslq	28(%rsp), %rax
	leaq	(%rax,%rcx), %rsi
	addq	$-4, %rsi
	movq	%rsi, 8(%rsp)
	movq	16(%rsp), %rsi
	leaq	(%rax,%rcx), %rdi
	addq	$-3, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-4(%rax,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%edx, %esi
	movl	%esi, 4(%rsp)
	movq	16(%rsp), %rdx
	leaq	(%rax,%rcx), %rdi
	addq	$-2, %rdi
	movq	%rdi, 8(%rsp)
	movzbl	-3(%rax,%rcx), %edi
	subq	%rdi, %rdx
	movzbl	(%rdx), %edx
	addl	%esi, %edx
	movl	%edx, 4(%rsp)
	movq	16(%rsp), %rsi
	movzbl	-2(%rax,%rcx), %eax
	subq	%rax, %rsi
	movzbl	(%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 4(%rsp)
	cmpl	40(%rsp), %eax
	jg	.LBB6_6
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=2
	movl	40(%rsp), %eax
	subl	4(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	36(%rsp), %rdx
	movslq	28(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	32(%rsp), %rdx
	addq	%rsi, %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB6_6
.LBB6_8:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	susan_principle, .Lfunc_end6-susan_principle
	.cfi_endproc
                                        # -- End function
	.globl	susan_principle_small   # -- Begin function susan_principle_small
	.p2align	4, 0x90
	.type	susan_principle_small,@function
susan_principle_small:                  # @susan_principle_small
	.cfi_startproc
# %bb.0:
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 48(%rsp)
	movl	%ecx, 28(%rsp)
	movl	%r8d, 4(%rsp)
	movl	%r9d, 44(%rsp)
	movslq	%r8d, %rax
	movslq	%r9d, %rdx
	imulq	%rax, %rdx
	shlq	$2, %rdx
	movq	%rsi, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$730, 28(%rsp)          # imm = 0x2DA
	movl	$1, 12(%rsp)
	jmp	.LBB7_1
	.p2align	4, 0x90
.LBB7_7:                                #   in Loop: Header=BB7_1 Depth=1
	addl	$1, 12(%rsp)
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movl	44(%rsp), %eax
	addl	$-1, %eax
	cmpl	%eax, 12(%rsp)
	jge	.LBB7_8
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	movl	$1, 8(%rsp)
	jmp	.LBB7_3
	.p2align	4, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=2
	addl	$1, 8(%rsp)
.LBB7_3:                                #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	4(%rsp), %eax
	addl	$-1, %eax
	cmpl	%eax, 8(%rsp)
	jge	.LBB7_7
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=2
	movl	$100, (%rsp)
	movslq	12(%rsp), %rcx
	leaq	-1(%rcx), %rax
	movslq	4(%rsp), %r8
	imulq	%r8, %rax
	movq	64(%rsp), %rdi
	addq	%rdi, %rax
	movslq	8(%rsp), %rdx
	leaq	(%rdx,%rax), %rsi
	addq	$-1, %rsi
	movq	%rsi, 16(%rsp)
	imulq	%r8, %rcx
	addq	%rdx, %rcx
	movzbl	(%rdi,%rcx), %ecx
	addq	48(%rsp), %rcx
	leaq	(%rax,%rdx), %r9
	movq	%rcx, 32(%rsp)
	movq	%r9, 16(%rsp)
	movzbl	-1(%rdx,%rax), %r8d
	movq	%rcx, %rsi
	subq	%r8, %rsi
	movzbl	(%rsi), %r8d
	leal	100(%r8), %esi
	movl	%esi, (%rsp)
	leaq	(%rdx,%rax), %rsi
	addq	$1, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	(%rdx,%rax), %esi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	movzbl	(%rdi), %esi
	leal	(%r8,%rsi), %esi
	addl	$100, %esi
	movl	%esi, (%rsp)
	movzbl	1(%rdx,%rax), %eax
	subq	%rax, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, (%rsp)
	movslq	4(%rsp), %rdx
	leaq	(%rdx,%r9), %rax
	addq	$1, %rax
	leaq	-1(%rdx,%r9), %rsi
	movq	%rsi, 16(%rsp)
	movq	32(%rsp), %rsi
	movzbl	-1(%rdx,%r9), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, (%rsp)
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rcx
	movzbl	1(%rdx,%r9), %edx
	subq	%rdx, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, (%rsp)
	movslq	4(%rsp), %rdx
	leaq	(%rdx,%rax), %r8
	leaq	(%rdx,%rax), %rdi
	addq	$-2, %rdi
	movq	%rdi, 16(%rsp)
	movq	32(%rsp), %rdi
	leaq	(%rdx,%rax), %rsi
	addq	$-1, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-2(%rdx,%rax), %esi
	subq	%rsi, %rdi
	movzbl	(%rdi), %esi
	addl	%ecx, %esi
	movl	%esi, (%rsp)
	movq	32(%rsp), %rcx
	movq	%r8, 16(%rsp)
	movzbl	-1(%rdx,%rax), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, (%rsp)
	movq	32(%rsp), %rsi
	movzbl	(%rdx,%rax), %eax
	subq	%rax, %rsi
	movzbl	(%rsi), %eax
	addl	%ecx, %eax
	movl	%eax, (%rsp)
	cmpl	28(%rsp), %eax
	jg	.LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=2
	movl	28(%rsp), %eax
	subl	(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	12(%rsp), %rdx
	movslq	4(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	8(%rsp), %rdx
	addq	%rsi, %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB7_6
.LBB7_8:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	susan_principle_small, .Lfunc_end7-susan_principle_small
	.cfi_endproc
                                        # -- End function
	.globl	median                  # -- Begin function median
	.p2align	4, 0x90
	.type	median,@function
median:                                 # @median
	.cfi_startproc
# %bb.0:
	movq	%rdi, -16(%rsp)
	movl	%esi, -68(%rsp)
	movl	%edx, -60(%rsp)
	movl	%ecx, -64(%rsp)
	movslq	%esi, %rax
	leaq	-1(%rax), %rsi
	movslq	%ecx, %r8
	imulq	%r8, %rsi
	movslq	%edx, %rdx
	addq	%rdx, %rsi
	movzbl	-1(%rdi,%rsi), %ecx
	movl	%ecx, -56(%rsp)
	movzbl	(%rdi,%rsi), %ecx
	movl	%ecx, -52(%rsp)
	movzbl	1(%rdi,%rsi), %ecx
	movl	%ecx, -48(%rsp)
	imulq	%r8, %rax
	addq	%rdx, %rax
	movzbl	-1(%rdi,%rax), %ecx
	movl	%ecx, -44(%rsp)
	movzbl	1(%rdi,%rax), %eax
	movl	%eax, -40(%rsp)
	movq	-16(%rsp), %rax
	movslq	-68(%rsp), %rcx
	addq	$1, %rcx
	imulq	%r8, %rcx
	addq	%rdx, %rcx
	movzbl	-1(%rax,%rcx), %eax
	movl	%eax, -36(%rsp)
	movq	-16(%rsp), %rax
	movslq	-68(%rsp), %rcx
	addq	$1, %rcx
	movslq	-64(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-60(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	(%rax,%rcx), %eax
	movl	%eax, -32(%rsp)
	movq	-16(%rsp), %rax
	movslq	-68(%rsp), %rcx
	addq	$1, %rcx
	movslq	-64(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-60(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	1(%rax,%rcx), %eax
	movl	%eax, -28(%rsp)
	movl	$0, -72(%rsp)
	cmpl	$6, -72(%rsp)
	jle	.LBB8_2
	jmp	.LBB8_8
	.p2align	4, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_2 Depth=1
	addl	$1, -72(%rsp)
	cmpl	$6, -72(%rsp)
	jg	.LBB8_8
.LBB8_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	movl	$0, -76(%rsp)
	jmp	.LBB8_3
	.p2align	4, 0x90
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=2
	addl	$1, -76(%rsp)
.LBB8_3:                                #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$7, %eax
	subl	-72(%rsp), %eax
	cmpl	%eax, -76(%rsp)
	jge	.LBB8_7
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=2
	movslq	-76(%rsp), %rax
	movl	-56(%rsp,%rax,4), %ecx
	cmpl	-52(%rsp,%rax,4), %ecx
	jle	.LBB8_6
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=2
	movslq	-76(%rsp), %rax
	movl	-56(%rsp,%rax,4), %ecx
	movl	-52(%rsp,%rax,4), %edx
	movl	%ecx, -4(%rsp)
	movl	%edx, -56(%rsp,%rax,4)
	movl	%ecx, -52(%rsp,%rax,4)
	jmp	.LBB8_6
.LBB8_8:
	movl	-44(%rsp), %ecx
	addl	-40(%rsp), %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	shrl	%eax
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end8:
	.size	median, .Lfunc_end8-median
	.cfi_endproc
                                        # -- End function
	.globl	enlarge                 # -- Begin function enlarge
	.p2align	4, 0x90
	.type	enlarge,@function
enlarge:                                # @enlarge
	.cfi_startproc
# %bb.0:
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 48(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 40(%rsp)
	movl	%r8d, 16(%rsp)
	movl	$0, 12(%rsp)
	.p2align	4, 0x90
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	movq	40(%rsp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB9_3
# %bb.2:                                #   in Loop: Header=BB9_1 Depth=1
	movslq	12(%rsp), %rsi
	movslq	16(%rsp), %rax
	leal	(%rsi,%rax), %ecx
	movq	24(%rsp), %rdx
	movslq	(%rdx), %rdx
	leal	(%rdx,%rax,2), %edi
	imull	%ecx, %edi
	movslq	%edi, %rdi
	addq	32(%rsp), %rdi
	addq	%rax, %rdi
	movq	48(%rsp), %rax
	imulq	%rdx, %rsi
	addq	(%rax), %rsi
	callq	memcpy
	addl	$1, 12(%rsp)
	jmp	.LBB9_1
.LBB9_3:
	movl	$0, 12(%rsp)
	.p2align	4, 0x90
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	cmpl	16(%rsp), %eax
	jge	.LBB9_6
# %bb.5:                                #   in Loop: Header=BB9_4 Depth=1
	movslq	16(%rsp), %rax
	movslq	12(%rsp), %rsi
	movl	%esi, %ecx
	notl	%ecx
	addl	%eax, %ecx
	movq	24(%rsp), %rdx
	movslq	(%rdx), %rdx
	leal	(%rdx,%rax,2), %edi
	imull	%ecx, %edi
	movslq	%edi, %rdi
	addq	32(%rsp), %rdi
	addq	%rax, %rdi
	movq	48(%rsp), %rax
	imulq	%rdx, %rsi
	addq	(%rax), %rsi
	callq	memcpy
	movq	40(%rsp), %rax
	movslq	(%rax), %r8
	movslq	16(%rsp), %rcx
	leal	(%r8,%rcx), %edx
	movslq	12(%rsp), %rsi
	leal	(%rsi,%rdx), %edi
	movq	24(%rsp), %rdx
	movslq	(%rdx), %rdx
	leal	(%rdx,%rcx,2), %eax
	imull	%edi, %eax
	movslq	%eax, %rdi
	addq	32(%rsp), %rdi
	addq	%rcx, %rdi
	movq	48(%rsp), %rax
	notq	%rsi
	addq	%r8, %rsi
	imulq	%rdx, %rsi
	addq	(%rax), %rsi
	callq	memcpy
	addl	$1, 12(%rsp)
	jmp	.LBB9_4
.LBB9_6:
	movl	$0, 12(%rsp)
	jmp	.LBB9_7
	.p2align	4, 0x90
.LBB9_11:                               #   in Loop: Header=BB9_7 Depth=1
	addl	$1, 12(%rsp)
.LBB9_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_9 Depth 2
	movl	12(%rsp), %eax
	cmpl	16(%rsp), %eax
	jge	.LBB9_12
# %bb.8:                                #   in Loop: Header=BB9_7 Depth=1
	movl	$0, 20(%rsp)
	.p2align	4, 0x90
.LBB9_9:                                #   Parent Loop BB9_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	40(%rsp), %rax
	movl	16(%rsp), %ecx
	addl	%ecx, %ecx
	addl	(%rax), %ecx
	cmpl	%ecx, 20(%rsp)
	jge	.LBB9_11
# %bb.10:                               #   in Loop: Header=BB9_9 Depth=2
	movq	32(%rsp), %rax
	movslq	20(%rsp), %rcx
	movq	24(%rsp), %rdx
	movslq	(%rdx), %rdx
	movslq	16(%rsp), %rsi
	leaq	(%rdx,%rsi,2), %rdx
	imulq	%rcx, %rdx
	addq	%rsi, %rdx
	movslq	12(%rsp), %rcx
	leaq	(%rdx,%rcx), %rsi
	movzbl	(%rax,%rsi), %esi
	subq	%rcx, %rdx
	movb	%sil, -1(%rdx,%rax)
	movq	32(%rsp), %rax
	movslq	20(%rsp), %rcx
	movq	24(%rsp), %rdx
	movslq	(%rdx), %rdx
	movslq	16(%rsp), %rsi
	leaq	(%rdx,%rsi,2), %rdi
	imulq	%rcx, %rdi
	addq	%rdx, %rdi
	addq	%rsi, %rdi
	movslq	12(%rsp), %rcx
	movq	%rdi, %rdx
	subq	%rcx, %rdx
	movzbl	-1(%rdx,%rax), %edx
	addq	%rcx, %rdi
	movb	%dl, (%rax,%rdi)
	addl	$1, 20(%rsp)
	jmp	.LBB9_9
.LBB9_12:
	movl	16(%rsp), %eax
	addl	%eax, %eax
	movq	24(%rsp), %rcx
	addl	%eax, (%rcx)
	movl	16(%rsp), %eax
	addl	%eax, %eax
	movq	40(%rsp), %rcx
	addl	%eax, (%rcx)
	movq	32(%rsp), %rax
	movq	48(%rsp), %rcx
	movq	%rax, (%rcx)
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	enlarge, .Lfunc_end9-enlarge
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function susan_smoothing
.LCPI10_0:
	.quad	4609434218613702656     # double 1.5
.LCPI10_3:
	.quad	4636737291354636288     # double 100
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI10_1:
	.long	1097859072              # float 15
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI10_2:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	susan_smoothing
	.p2align	4, 0x90
	.type	susan_smoothing,@function
susan_smoothing:                        # @susan_smoothing
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$152, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	cvtsd2ss	%xmm0, %xmm0
	movl	%edi, 108(%rsp)
	movq	%rsi, 88(%rsp)
	movss	%xmm0, 68(%rsp)
	movl	%edx, 28(%rsp)
	movl	%ecx, 44(%rsp)
	movq	%r8, 120(%rsp)
	movq	88(%rsp), %rax
	movq	%rax, 72(%rsp)
	cmpl	$0, 108(%rsp)
	je	.LBB10_1
# %bb.2:
	movl	$1, 12(%rsp)
	jmp	.LBB10_3
.LBB10_1:
	movss	68(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI10_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	addl	$1, %eax
	movl	%eax, 12(%rsp)
.LBB10_3:
	movl	$0, 16(%rsp)
	movss	68(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI10_1(%rip), %xmm0
	jbe	.LBB10_5
# %bb.4:
	xorl	%eax, %eax
	testb	%al, %al
	je	.LBB10_37
.LBB10_5:
	movl	12(%rsp), %eax
	leal	(%rax,%rax), %eax
	addl	$1, %eax
	cmpl	28(%rsp), %eax
	jg	.LBB10_38
# %bb.6:
	movl	12(%rsp), %eax
	leal	(%rax,%rax), %eax
	addl	$1, %eax
	cmpl	44(%rsp), %eax
	jg	.LBB10_38
# %bb.7:
	movl	12(%rsp), %eax
	addl	%eax, %eax
	movl	28(%rsp), %ecx
	addl	%eax, %ecx
	addl	44(%rsp), %eax
	imull	%ecx, %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, 144(%rsp)
	movl	12(%rsp), %r8d
	leaq	88(%rsp), %rdi
	leaq	28(%rsp), %rdx
	leaq	44(%rsp), %rcx
	movq	%rax, %rsi
	callq	enlarge
	cmpl	$0, 108(%rsp)
	je	.LBB10_8
# %bb.28:
	movl	$1, 24(%rsp)
	jmp	.LBB10_29
	.p2align	4, 0x90
.LBB10_35:                              #   in Loop: Header=BB10_29 Depth=1
	addl	$1, 24(%rsp)
.LBB10_29:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_31 Depth 2
	movl	44(%rsp), %eax
	addl	$-1, %eax
	cmpl	%eax, 24(%rsp)
	jge	.LBB10_36
# %bb.30:                               #   in Loop: Header=BB10_29 Depth=1
	movl	$1, 20(%rsp)
	jmp	.LBB10_31
	.p2align	4, 0x90
.LBB10_33:                              #   in Loop: Header=BB10_31 Depth=2
	movq	88(%rsp), %rdi
	movl	24(%rsp), %esi
	movl	20(%rsp), %edx
	movl	28(%rsp), %ecx
	callq	median
	movq	72(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 72(%rsp)
	movb	%al, (%rcx)
	addl	$1, 20(%rsp)
.LBB10_31:                              #   Parent Loop BB10_29 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	28(%rsp), %eax
	addl	$-1, %eax
	cmpl	%eax, 20(%rsp)
	jge	.LBB10_35
# %bb.32:                               #   in Loop: Header=BB10_31 Depth=2
	movl	$0, 36(%rsp)
	movl	$0, 16(%rsp)
	movslq	24(%rsp), %rax
	leaq	-1(%rax), %rcx
	movslq	28(%rsp), %rsi
	imulq	%rsi, %rcx
	movq	88(%rsp), %rdi
	addq	%rdi, %rcx
	movslq	20(%rsp), %rdx
	leaq	(%rcx,%rdx), %rbp
	leaq	(%rdx,%rcx), %rbx
	addq	$-1, %rbx
	movq	%rbx, 48(%rsp)
	imulq	%rsi, %rax
	addq	%rdx, %rax
	movzbl	(%rdi,%rax), %esi
	movl	%esi, 80(%rsp)
	addq	120(%rsp), %rsi
	movq	%rsi, 56(%rsp)
	movq	%rbp, 48(%rsp)
	movzbl	-1(%rdx,%rcx), %edi
	movl	%edi, 40(%rsp)
	movq	%rsi, %rax
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movl	%eax, 32(%rsp)
	movl	%eax, %ebp
	imull	%edi, %ebp
	addl	16(%rsp), %ebp
	movl	%eax, 36(%rsp)
	movl	%ebp, 16(%rsp)
	leaq	(%rdx,%rcx), %rdi
	addq	$1, %rdi
	movq	%rdi, 48(%rsp)
	movzbl	(%rdx,%rcx), %edi
	movl	%edi, 40(%rsp)
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movl	%esi, 32(%rsp)
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	imull	%edi, %esi
	addl	%ebp, %esi
	movl	%esi, 16(%rsp)
	movzbl	1(%rdx,%rcx), %ecx
	movl	%ecx, 40(%rsp)
	movq	56(%rsp), %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %edi
	movl	%edi, 32(%rsp)
	addl	%edi, %eax
	movl	%eax, 36(%rsp)
	imull	%ecx, %edi
	addl	%esi, %edi
	movl	%edi, 16(%rsp)
	movslq	28(%rsp), %rcx
	movq	48(%rsp), %rdx
	leaq	(%rcx,%rdx), %rsi
	leaq	-1(%rcx,%rdx), %rbp
	movq	%rbp, 48(%rsp)
	movzbl	-2(%rcx,%rdx), %ebp
	movl	%ebp, 40(%rsp)
	movq	56(%rsp), %rbx
	subq	%rbp, %rbx
	movzbl	(%rbx), %ebx
	movl	%ebx, 32(%rsp)
	addl	%ebx, %eax
	movl	%eax, 36(%rsp)
	imull	%ebp, %ebx
	addl	%edi, %ebx
	movl	%ebx, 16(%rsp)
	movq	%rsi, 48(%rsp)
	movzbl	-1(%rcx,%rdx), %esi
	movl	%esi, 40(%rsp)
	movq	56(%rsp), %rdi
	subq	%rsi, %rdi
	movzbl	(%rdi), %edi
	movl	%edi, 32(%rsp)
	addl	%edi, %eax
	movl	%eax, 36(%rsp)
	imull	%esi, %edi
	addl	%ebx, %edi
	movl	%edi, 16(%rsp)
	movzbl	(%rcx,%rdx), %ecx
	movl	%ecx, 40(%rsp)
	movq	56(%rsp), %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %esi
	movl	%esi, 32(%rsp)
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	imull	%ecx, %esi
	addl	%edi, %esi
	movl	%esi, 16(%rsp)
	movslq	28(%rsp), %rcx
	movq	48(%rsp), %rdx
	leaq	(%rcx,%rdx), %rdi
	leaq	-1(%rcx,%rdx), %rbp
	movq	%rbp, 48(%rsp)
	movzbl	-2(%rcx,%rdx), %ebp
	movl	%ebp, 40(%rsp)
	movq	56(%rsp), %rbx
	subq	%rbp, %rbx
	movzbl	(%rbx), %ebx
	movl	%ebx, 32(%rsp)
	addl	%ebx, %eax
	movl	%eax, 36(%rsp)
	imull	%ebp, %ebx
	addl	%esi, %ebx
	movl	%ebx, 16(%rsp)
	movq	%rdi, 48(%rsp)
	movzbl	-1(%rcx,%rdx), %esi
	movl	%esi, 40(%rsp)
	movq	56(%rsp), %rdi
	subq	%rsi, %rdi
	movzbl	(%rdi), %edi
	movl	%edi, 32(%rsp)
	addl	%edi, %eax
	movl	%eax, 36(%rsp)
	imull	%esi, %edi
	addl	%ebx, %edi
	movl	%edi, 16(%rsp)
	movzbl	(%rcx,%rdx), %ecx
	movl	%ecx, 40(%rsp)
	movq	56(%rsp), %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %edx
	addl	%edx, %eax
	movl	%eax, 36(%rsp)
	imull	%ecx, %edx
	addl	%edi, %edx
	movl	%edx, 16(%rsp)
	addl	$-100, %eax
	movl	%eax, 32(%rsp)
	je	.LBB10_33
# %bb.34:                               #   in Loop: Header=BB10_31 Depth=2
	movl	16(%rsp), %eax
	imull	$100, 80(%rsp), %ecx
	subl	%ecx, %eax
	cltd
	idivl	32(%rsp)
	movq	72(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 72(%rsp)
	movb	%al, (%rcx)
	addl	$1, 20(%rsp)
	jmp	.LBB10_31
.LBB10_8:
	movl	12(%rsp), %eax
	leal	(%rax,%rax), %eax
	addl	$1, %eax
	movl	%eax, 140(%rsp)
	movl	28(%rsp), %ecx
	subl	%eax, %ecx
	movl	%ecx, 112(%rsp)
	movslq	%eax, %rdi
	imulq	%rdi, %rdi
	callq	malloc
	movq	%rax, 128(%rsp)
	movq	%rax, 96(%rsp)
	movss	68(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm0
	xorps	.LCPI10_2(%rip), %xmm0
	movss	%xmm0, 116(%rsp)
	xorl	%eax, %eax
	subl	12(%rsp), %eax
	jmp	.LBB10_9
	.p2align	4, 0x90
.LBB10_13:                              #   in Loop: Header=BB10_9 Depth=1
	addl	$1, %eax
.LBB10_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_11 Depth 2
	movl	%eax, 24(%rsp)
	movl	12(%rsp), %eax
	cmpl	%eax, 24(%rsp)
	jg	.LBB10_14
# %bb.10:                               #   in Loop: Header=BB10_9 Depth=1
	negl	%eax
	movl	%eax, 20(%rsp)
	.p2align	4, 0x90
.LBB10_11:                              #   Parent Loop BB10_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	20(%rsp), %ecx
	movl	24(%rsp), %eax
	cmpl	12(%rsp), %ecx
	jg	.LBB10_13
# %bb.12:                               #   in Loop: Header=BB10_11 Depth=2
	imull	24(%rsp), %eax
	movl	20(%rsp), %ecx
	imull	%ecx, %ecx
	addl	%eax, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	divss	116(%rsp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	exp
	mulsd	.LCPI10_3(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 84(%rsp)
	movq	96(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 96(%rsp)
	movb	%al, (%rcx)
	addl	$1, 20(%rsp)
	jmp	.LBB10_11
.LBB10_14:
	movl	%eax, 24(%rsp)
	movl	$-10000, %ebp           # imm = 0xD8F0
	jmp	.LBB10_15
	.p2align	4, 0x90
.LBB10_27:                              #   in Loop: Header=BB10_15 Depth=1
	addl	$1, 24(%rsp)
.LBB10_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_17 Depth 2
                                        #       Child Loop BB10_19 Depth 3
                                        #         Child Loop BB10_21 Depth 4
	movl	44(%rsp), %eax
	subl	12(%rsp), %eax
	cmpl	%eax, 24(%rsp)
	jge	.LBB10_36
# %bb.16:                               #   in Loop: Header=BB10_15 Depth=1
	movl	12(%rsp), %eax
	movl	%eax, 20(%rsp)
	jmp	.LBB10_17
	.p2align	4, 0x90
.LBB10_25:                              #   in Loop: Header=BB10_17 Depth=2
	movq	88(%rsp), %rdi
	movl	24(%rsp), %esi
	movl	20(%rsp), %edx
	movl	28(%rsp), %ecx
	callq	median
	movq	72(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 72(%rsp)
	movb	%al, (%rcx)
	addl	$1, 20(%rsp)
.LBB10_17:                              #   Parent Loop BB10_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_19 Depth 3
                                        #         Child Loop BB10_21 Depth 4
	movl	28(%rsp), %eax
	subl	12(%rsp), %eax
	cmpl	%eax, 20(%rsp)
	jge	.LBB10_27
# %bb.18:                               #   in Loop: Header=BB10_17 Depth=2
	movl	$0, 36(%rsp)
	movl	$0, 16(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 96(%rsp)
	movslq	12(%rsp), %rax
	movslq	24(%rsp), %rcx
	movq	%rcx, %rdx
	subq	%rax, %rdx
	movslq	28(%rsp), %rsi
	imulq	%rsi, %rdx
	movq	88(%rsp), %rdi
	addq	%rdi, %rdx
	movslq	20(%rsp), %rbx
	addq	%rbx, %rdx
	subq	%rax, %rdx
	movq	%rdx, 48(%rsp)
	imulq	%rsi, %rcx
	addq	%rbx, %rcx
	movzbl	(%rdi,%rcx), %eax
	movl	%eax, 80(%rsp)
	addq	120(%rsp), %rax
	movq	%rax, 56(%rsp)
	xorl	%eax, %eax
	subl	12(%rsp), %eax
	movl	%eax, 104(%rsp)
	jmp	.LBB10_19
	.p2align	4, 0x90
.LBB10_23:                              #   in Loop: Header=BB10_19 Depth=3
	movslq	112(%rsp), %rax
	addq	%rax, 48(%rsp)
	addl	$1, 104(%rsp)
.LBB10_19:                              #   Parent Loop BB10_15 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_21 Depth 4
	movl	104(%rsp), %eax
	cmpl	12(%rsp), %eax
	jg	.LBB10_24
# %bb.20:                               #   in Loop: Header=BB10_19 Depth=3
	xorl	%eax, %eax
	subl	12(%rsp), %eax
	movl	%eax, 84(%rsp)
	.p2align	4, 0x90
.LBB10_21:                              #   Parent Loop BB10_15 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        #       Parent Loop BB10_19 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	84(%rsp), %eax
	cmpl	12(%rsp), %eax
	jg	.LBB10_23
# %bb.22:                               #   in Loop: Header=BB10_21 Depth=4
	movq	48(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 48(%rsp)
	movzbl	(%rax), %eax
	movl	%eax, 40(%rsp)
	movq	96(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 96(%rsp)
	movzbl	(%rcx), %ecx
	movq	56(%rsp), %rdx
	subq	%rax, %rdx
	movzbl	(%rdx), %edx
	imull	%ecx, %edx
	movl	%edx, 32(%rsp)
	addl	%edx, 36(%rsp)
	imull	%eax, %edx
	addl	%edx, 16(%rsp)
	addl	$1, 84(%rsp)
	jmp	.LBB10_21
	.p2align	4, 0x90
.LBB10_24:                              #   in Loop: Header=BB10_17 Depth=2
	movl	36(%rsp), %eax
	addl	%ebp, %eax
	movl	%eax, 32(%rsp)
	je	.LBB10_25
# %bb.26:                               #   in Loop: Header=BB10_17 Depth=2
	movl	16(%rsp), %eax
	imull	$10000, 80(%rsp), %ecx  # imm = 0x2710
	subl	%ecx, %eax
	cltd
	idivl	32(%rsp)
	movq	72(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 72(%rsp)
	movb	%al, (%rcx)
	addl	$1, 20(%rsp)
	jmp	.LBB10_17
.LBB10_36:
	addq	$152, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB10_38:
	.cfi_def_cfa_offset 176
	movl	12(%rsp), %esi
	movl	28(%rsp), %edx
	movl	44(%rsp), %ecx
	movl	$.L.str.28, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB10_37:
	movss	68(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.25, %edi
	movb	$1, %al
	callq	printf
	movl	$.L.str.26, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.27, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end10:
	.size	susan_smoothing, .Lfunc_end10-susan_smoothing
	.cfi_endproc
                                        # -- End function
	.globl	edge_draw               # -- Begin function edge_draw
	.p2align	4, 0x90
	.type	edge_draw,@function
edge_draw:                              # @edge_draw
	.cfi_startproc
# %bb.0:
	movq	%rdi, -16(%rsp)
	movq	%rsi, -24(%rsp)
	movl	%edx, -44(%rsp)
	movl	%ecx, -28(%rsp)
	movl	%r8d, -4(%rsp)
	testl	%r8d, %r8d
	jne	.LBB11_6
# %bb.1:
	movq	-24(%rsp), %rax
	movq	%rax, -40(%rsp)
	movl	$0, -48(%rsp)
	jmp	.LBB11_2
	.p2align	4, 0x90
.LBB11_5:                               #   in Loop: Header=BB11_2 Depth=1
	addq	$1, -40(%rsp)
	addl	$1, -48(%rsp)
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rsp), %eax
	imull	-28(%rsp), %eax
	cmpl	%eax, -48(%rsp)
	jge	.LBB11_6
# %bb.3:                                #   in Loop: Header=BB11_2 Depth=1
	movq	-40(%rsp), %rax
	movzbl	(%rax), %eax
	cmpl	$7, %eax
	jg	.LBB11_5
# %bb.4:                                #   in Loop: Header=BB11_2 Depth=1
	movq	-40(%rsp), %rax
	subq	-24(%rsp), %rax
	addq	-16(%rsp), %rax
	movslq	-44(%rsp), %rcx
	subq	%rcx, %rax
	movq	%rax, -56(%rsp)
	movb	$-1, -1(%rax)
	movq	-56(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rsp)
	movb	$-1, (%rax)
	movq	-56(%rsp), %rax
	movb	$-1, (%rax)
	movslq	-44(%rsp), %rax
	movq	-56(%rsp), %rcx
	leaq	-1(%rax,%rcx), %rdx
	movq	%rdx, -56(%rsp)
	movb	$-1, -2(%rax,%rcx)
	movq	-56(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rsp)
	movb	$-1, 1(%rax)
	movslq	-44(%rsp), %rax
	movq	-56(%rsp), %rcx
	leaq	-1(%rax,%rcx), %rdx
	movq	%rdx, -56(%rsp)
	movb	$-1, -2(%rax,%rcx)
	movq	-56(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rsp)
	movb	$-1, (%rax)
	movq	-56(%rsp), %rax
	movb	$-1, (%rax)
	jmp	.LBB11_5
.LBB11_6:
	movq	-24(%rsp), %rax
	movq	%rax, -40(%rsp)
	movl	$0, -48(%rsp)
	jmp	.LBB11_7
	.p2align	4, 0x90
.LBB11_10:                              #   in Loop: Header=BB11_7 Depth=1
	addq	$1, -40(%rsp)
	addl	$1, -48(%rsp)
.LBB11_7:                               # =>This Inner Loop Header: Depth=1
	movl	-44(%rsp), %eax
	imull	-28(%rsp), %eax
	cmpl	%eax, -48(%rsp)
	jge	.LBB11_11
# %bb.8:                                #   in Loop: Header=BB11_7 Depth=1
	movq	-40(%rsp), %rax
	movzbl	(%rax), %eax
	cmpl	$7, %eax
	jg	.LBB11_10
# %bb.9:                                #   in Loop: Header=BB11_7 Depth=1
	movq	-16(%rsp), %rax
	movq	-40(%rsp), %rcx
	subq	-24(%rsp), %rcx
	movb	$0, (%rax,%rcx)
	jmp	.LBB11_10
.LBB11_11:
	retq
.Lfunc_end11:
	.size	edge_draw, .Lfunc_end11-edge_draw
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function susan_thin
.LCPI12_0:
	.quad	4604480259023595110     # double 0.69999999999999996
	.text
	.globl	susan_thin
	.p2align	4, 0x90
	.type	susan_thin,@function
susan_thin:                             # @susan_thin
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -16
	movq	%rdi, -8(%rsp)
	movq	%rsi, -112(%rsp)
	movl	%edx, -120(%rsp)
	movl	%ecx, 12(%rsp)
	movl	$4, -124(%rsp)
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
	jmp	.LBB12_1
	.p2align	4, 0x90
.LBB12_77:                              #   in Loop: Header=BB12_1 Depth=1
	addl	$1, -124(%rsp)
.LBB12_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
                                        #       Child Loop BB12_27 Depth 3
                                        #         Child Loop BB12_28 Depth 4
	movl	12(%rsp), %eax
	addl	$-4, %eax
	cmpl	%eax, -124(%rsp)
	jge	.LBB12_78
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	movl	$4, -128(%rsp)
	jmp	.LBB12_3
	.p2align	4, 0x90
.LBB12_76:                              #   in Loop: Header=BB12_3 Depth=2
	addl	$1, -128(%rsp)
.LBB12_3:                               #   Parent Loop BB12_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_27 Depth 3
                                        #         Child Loop BB12_28 Depth 4
	movl	-120(%rsp), %eax
	addl	$-4, %eax
	cmpl	%eax, -128(%rsp)
	jge	.LBB12_77
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$7, %eax
	jg	.LBB12_76
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-8(%rsp), %rcx
	movslq	-124(%rsp), %rdx
	movslq	-120(%rsp), %rax
	movq	%rdx, %rsi
	imulq	%rax, %rsi
	movslq	-128(%rsp), %rdi
	addq	%rdi, %rsi
	movl	(%rcx,%rsi,4), %ecx
	movl	%ecx, 8(%rsp)
	addq	$-1, %rdx
	imulq	%rax, %rdx
	addq	-112(%rsp), %rdx
	leaq	(%rdx,%rdi), %r8
	leaq	(%rdi,%rdx), %rsi
	addq	$-1, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-1(%rdi,%rdx), %esi
	xorl	%ecx, %ecx
	cmpl	$8, %esi
	setl	%cl
	movzbl	(%rdi,%rdx), %r9d
	xorl	%esi, %esi
	cmpl	$8, %r9d
	setl	%sil
	addl	%ecx, %esi
	movzbl	1(%rdi,%rdx), %ecx
	xorl	%edi, %edi
	cmpl	$8, %ecx
	setl	%dil
	addl	%esi, %edi
	leaq	(%rax,%r8), %rdx
	addq	$-1, %rdx
	movzbl	-1(%rax,%r8), %ecx
	xorl	%esi, %esi
	cmpl	$8, %ecx
	setl	%sil
	addl	%edi, %esi
	movzbl	1(%rax,%r8), %ecx
	xorl	%edi, %edi
	cmpl	$8, %ecx
	setl	%dil
	addl	%esi, %edi
	movzbl	(%rax,%rdx), %ecx
	xorl	%esi, %esi
	cmpl	$8, %ecx
	setl	%sil
	addl	%edi, %esi
	movzbl	1(%rax,%rdx), %ecx
	xorl	%edi, %edi
	cmpl	$8, %ecx
	setl	%dil
	addl	%esi, %edi
	movzbl	2(%rax,%rdx), %eax
	xorl	%ecx, %ecx
	cmpl	$8, %eax
	setl	%cl
	addl	%edi, %ecx
	movl	%ecx, -24(%rsp)
	je	.LBB12_6
# %bb.7:                                #   in Loop: Header=BB12_3 Depth=2
	cmpl	$1, -24(%rsp)
	je	.LBB12_8
	jmp	.LBB12_42
.LBB12_6:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movb	$100, (%rax,%rcx)
	cmpl	$1, -24(%rsp)
	jne	.LBB12_42
.LBB12_8:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$5, %eax
	jg	.LBB12_42
# %bb.9:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-8(%rsp), %rax
	movslq	-124(%rsp), %rcx
	leaq	-1(%rcx), %rdx
	movslq	-120(%rsp), %r8
	imulq	%r8, %rdx
	movslq	-128(%rsp), %rdi
	addq	%rdi, %rdx
	movl	-4(%rax,%rdx,4), %esi
	movl	%esi, -96(%rsp)
	movl	(%rax,%rdx,4), %esi
	movl	%esi, -92(%rsp)
	movl	4(%rax,%rdx,4), %edx
	movl	%edx, -88(%rsp)
	movq	%rcx, %rdx
	imulq	%r8, %rdx
	addq	%rdi, %rdx
	movl	-4(%rax,%rdx,4), %esi
	movl	%esi, -84(%rsp)
	movl	$0, -80(%rsp)
	movl	4(%rax,%rdx,4), %edx
	movl	%edx, -76(%rsp)
	addq	$1, %rcx
	imulq	%r8, %rcx
	addq	%rdi, %rcx
	movl	-4(%rax,%rcx,4), %eax
	movl	%eax, -72(%rsp)
	movq	-8(%rsp), %rax
	movslq	-124(%rsp), %rcx
	addq	$1, %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -68(%rsp)
	movq	-8(%rsp), %rax
	movslq	-124(%rsp), %rcx
	addq	$1, %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movl	4(%rax,%rcx,4), %eax
	movl	%eax, -64(%rsp)
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	addq	$-1, %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	-1(%rax,%rcx), %eax
	cmpl	$7, %eax
	jg	.LBB12_11
# %bb.10:                               #   in Loop: Header=BB12_3 Depth=2
	movq	$0, -96(%rsp)
	movl	$0, -84(%rsp)
	shll	-88(%rsp)
	shll	-72(%rsp)
	movl	-76(%rsp), %eax
	movl	-68(%rsp), %ecx
	leal	(%rax,%rax,2), %eax
	movl	%eax, -76(%rsp)
	leal	(%rcx,%rcx,2), %eax
	movl	%eax, -68(%rsp)
	shll	$2, -64(%rsp)
	jmp	.LBB12_25
.LBB12_11:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	addq	$-1, %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$7, %eax
	jg	.LBB12_13
# %bb.12:                               #   in Loop: Header=BB12_3 Depth=2
	movq	$0, -96(%rsp)
	movl	$0, -88(%rsp)
	shll	-84(%rsp)
	shll	-76(%rsp)
	movl	-72(%rsp), %eax
	movl	-64(%rsp), %ecx
	leal	(%rax,%rax,2), %eax
	movl	%eax, -72(%rsp)
	leal	(%rcx,%rcx,2), %eax
	movl	%eax, -64(%rsp)
	shll	$2, -68(%rsp)
	jmp	.LBB12_25
.LBB12_13:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	addq	$-1, %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	1(%rax,%rcx), %eax
	cmpl	$7, %eax
	jg	.LBB12_15
# %bb.14:                               #   in Loop: Header=BB12_3 Depth=2
	movq	$0, -92(%rsp)
	movl	$0, -76(%rsp)
	shll	-96(%rsp)
	shll	-64(%rsp)
	movl	-84(%rsp), %eax
	movl	-68(%rsp), %ecx
	leal	(%rax,%rax,2), %eax
	movl	%eax, -84(%rsp)
	leal	(%rcx,%rcx,2), %eax
	movl	%eax, -68(%rsp)
	shll	$2, -72(%rsp)
	jmp	.LBB12_25
.LBB12_15:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	-1(%rax,%rcx), %eax
	cmpl	$7, %eax
	jg	.LBB12_17
# %bb.16:                               #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -84(%rsp)
	movl	$0, -96(%rsp)
	movl	$0, -72(%rsp)
	shll	-92(%rsp)
	shll	-68(%rsp)
	movl	-88(%rsp), %eax
	movl	-64(%rsp), %ecx
	leal	(%rax,%rax,2), %eax
	movl	%eax, -88(%rsp)
	leal	(%rcx,%rcx,2), %eax
	movl	%eax, -64(%rsp)
	shll	$2, -76(%rsp)
	jmp	.LBB12_25
.LBB12_17:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	1(%rax,%rcx), %eax
	cmpl	$7, %eax
	jg	.LBB12_19
# %bb.18:                               #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -76(%rsp)
	movl	$0, -88(%rsp)
	movl	$0, -64(%rsp)
	shll	-92(%rsp)
	shll	-68(%rsp)
	movl	-96(%rsp), %eax
	movl	-72(%rsp), %ecx
	leal	(%rax,%rax,2), %eax
	movl	%eax, -96(%rsp)
	leal	(%rcx,%rcx,2), %eax
	movl	%eax, -72(%rsp)
	shll	$2, -84(%rsp)
	jmp	.LBB12_25
.LBB12_19:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	addq	$1, %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	-1(%rax,%rcx), %eax
	cmpl	$7, %eax
	jg	.LBB12_21
# %bb.20:                               #   in Loop: Header=BB12_3 Depth=2
	movq	$0, -72(%rsp)
	movl	$0, -84(%rsp)
	shll	-96(%rsp)
	shll	-64(%rsp)
	movl	-92(%rsp), %eax
	movl	-76(%rsp), %ecx
	leal	(%rax,%rax,2), %eax
	movl	%eax, -92(%rsp)
	leal	(%rcx,%rcx,2), %eax
	movl	%eax, -76(%rsp)
	shll	$2, -88(%rsp)
	jmp	.LBB12_25
.LBB12_21:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	addq	$1, %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$7, %eax
	jg	.LBB12_23
# %bb.22:                               #   in Loop: Header=BB12_3 Depth=2
	movq	$0, -72(%rsp)
	movl	$0, -64(%rsp)
	shll	-84(%rsp)
	shll	-76(%rsp)
	movl	-96(%rsp), %eax
	movl	-88(%rsp), %ecx
	leal	(%rax,%rax,2), %eax
	movl	%eax, -96(%rsp)
	leal	(%rcx,%rcx,2), %eax
	movl	%eax, -88(%rsp)
	shll	$2, -92(%rsp)
	jmp	.LBB12_25
.LBB12_23:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	addq	$1, %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	1(%rax,%rcx), %eax
	cmpl	$7, %eax
	jg	.LBB12_25
# %bb.24:                               #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -76(%rsp)
	movq	$0, -68(%rsp)
	shll	-72(%rsp)
	shll	-88(%rsp)
	movl	-92(%rsp), %eax
	movl	-84(%rsp), %ecx
	leal	(%rax,%rax,2), %eax
	movl	%eax, -92(%rsp)
	leal	(%rcx,%rcx,2), %eax
	movl	%eax, -84(%rsp)
	shll	$2, -96(%rsp)
.LBB12_25:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -20(%rsp)
	movl	$0, -116(%rsp)
	cmpl	$2, -116(%rsp)
	jle	.LBB12_27
.LBB12_33:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$0, -20(%rsp)
	jle	.LBB12_42
# %bb.34:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rsi
	addq	%rdx, %rsi
	movzbl	(%rax,%rsi), %edx
	cmpl	$3, %edx
	jg	.LBB12_36
# %bb.35:                               #   in Loop: Header=BB12_3 Depth=2
	movslq	-28(%rsp), %rdx
	addq	%rdx, %rcx
	addq	$-1, %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movslq	-32(%rsp), %rdx
	addq	%rcx, %rdx
	movb	$4, -1(%rax,%rdx)
	jmp	.LBB12_37
	.p2align	4, 0x90
.LBB12_32:                              #   in Loop: Header=BB12_27 Depth=3
	addl	$1, %eax
	movl	%eax, -116(%rsp)
	cmpl	$2, -116(%rsp)
	jg	.LBB12_33
.LBB12_27:                              #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_28 Depth 4
	movl	$0, -100(%rsp)
	jmp	.LBB12_28
	.p2align	4, 0x90
.LBB12_31:                              #   in Loop: Header=BB12_28 Depth=4
	addl	$1, -100(%rsp)
.LBB12_28:                              #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_3 Depth=2
                                        #       Parent Loop BB12_27 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$2, -100(%rsp)
	movslq	-116(%rsp), %rax
	jg	.LBB12_32
# %bb.29:                               #   in Loop: Header=BB12_28 Depth=4
	movslq	-116(%rsp), %rcx
	addq	%rcx, %rax
	addq	%rcx, %rax
	movslq	-100(%rsp), %rcx
	addq	%rax, %rcx
	movl	-96(%rsp,%rcx,4), %eax
	cmpl	-20(%rsp), %eax
	jle	.LBB12_31
# %bb.30:                               #   in Loop: Header=BB12_28 Depth=4
	movslq	-116(%rsp), %rax
	leaq	(%rax,%rax), %rcx
	addq	%rax, %rcx
	movslq	-100(%rsp), %rdx
	addq	%rdx, %rcx
	movl	-96(%rsp,%rcx,4), %ecx
	movl	%ecx, -20(%rsp)
	movl	%eax, -28(%rsp)
	movl	%edx, -32(%rsp)
	jmp	.LBB12_31
.LBB12_36:                              #   in Loop: Header=BB12_3 Depth=2
	movslq	-120(%rsp), %rdx
	imulq	%rdx, %rcx
	movslq	-128(%rsp), %rsi
	addq	%rsi, %rcx
	movb	(%rax,%rcx), %al
	addb	$1, %al
	movq	-112(%rsp), %r8
	movslq	-124(%rsp), %rdi
	movslq	-28(%rsp), %rcx
	addq	%rdi, %rcx
	addq	$-1, %rcx
	imulq	%rdx, %rcx
	addq	%rsi, %rcx
	movslq	-32(%rsp), %rdx
	addq	%rcx, %rdx
	movb	%al, -1(%r8,%rdx)
.LBB12_37:                              #   in Loop: Header=BB12_3 Depth=2
	movl	-28(%rsp), %eax
	addl	%eax, %eax
	addl	-32(%rsp), %eax
	cmpl	$2, %eax
	jg	.LBB12_42
# %bb.38:                               #   in Loop: Header=BB12_3 Depth=2
	movl	-28(%rsp), %eax
	movl	-124(%rsp), %ecx
	leal	(%rax,%rcx), %eax
	addl	$-1, %eax
	movl	%eax, -124(%rsp)
	movl	-32(%rsp), %ecx
	movl	-128(%rsp), %edx
	leal	(%rcx,%rdx), %ecx
	addl	$-2, %ecx
	movl	%ecx, -128(%rsp)
	cmpl	$3, %eax
	jg	.LBB12_40
# %bb.39:                               #   in Loop: Header=BB12_3 Depth=2
	movl	$4, -124(%rsp)
.LBB12_40:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$3, -128(%rsp)
	jg	.LBB12_42
# %bb.41:                               #   in Loop: Header=BB12_3 Depth=2
	movl	$4, -128(%rsp)
	.p2align	4, 0x90
.LBB12_42:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$2, -24(%rsp)
	jne	.LBB12_69
# %bb.43:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rcx
	movslq	-124(%rsp), %rdx
	leaq	-1(%rdx), %rsi
	movslq	-120(%rsp), %r8
	imulq	%r8, %rsi
	movslq	-128(%rsp), %r9
	addq	%r9, %rsi
	movzbl	-1(%rcx,%rsi), %edi
	xorl	%eax, %eax
	cmpl	$8, %edi
	setl	%al
	movl	%eax, -12(%rsp)
	movzbl	1(%rcx,%rsi), %esi
	xorl	%edi, %edi
	cmpl	$8, %esi
	setl	%dil
	movl	%edi, -16(%rsp)
	addq	$1, %rdx
	imulq	%r8, %rdx
	addq	%r9, %rdx
	movzbl	-1(%rcx,%rdx), %r8d
	xorl	%esi, %esi
	cmpl	$8, %r8d
	setl	%sil
	movl	%esi, 4(%rsp)
	movzbl	1(%rcx,%rdx), %ecx
	xorl	%edx, %edx
	cmpl	$8, %ecx
	setl	%dl
	movl	%edx, (%rsp)
	addl	%edi, %eax
	addl	%esi, %eax
	addl	%edx, %eax
	cmpl	$2, %eax
	jne	.LBB12_62
# %bb.44:                               #   in Loop: Header=BB12_3 Depth=2
	movl	-12(%rsp), %eax
	orl	(%rsp), %eax
	movl	-16(%rsp), %ecx
	orl	4(%rsp), %ecx
	testl	%ecx, %eax
	je	.LBB12_62
# %bb.45:                               #   in Loop: Header=BB12_3 Depth=2
	cmpl	$0, -12(%rsp)
	movl	-16(%rsp), %eax
	je	.LBB12_49
# %bb.46:                               #   in Loop: Header=BB12_3 Depth=2
	testl	%eax, %eax
	je	.LBB12_48
# %bb.47:                               #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -100(%rsp)
	movl	$-1, -116(%rsp)
	jmp	.LBB12_52
.LBB12_62:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %r9
	movslq	-124(%rsp), %rdx
	leaq	-1(%rdx), %rax
	movslq	-120(%rsp), %r10
	imulq	%r10, %rax
	movslq	-128(%rsp), %rdi
	addq	%rdi, %rax
	movzbl	(%r9,%rax), %r8d
	xorl	%eax, %eax
	cmpl	$8, %r8d
	setl	%al
	movl	%eax, -36(%rsp)
	movq	%rdx, %rcx
	imulq	%r10, %rcx
	addq	%rdi, %rcx
	movzbl	1(%r9,%rcx), %r8d
	xorl	%esi, %esi
	cmpl	$8, %r8d
	setl	%sil
	movl	%esi, -40(%rsp)
	addq	$1, %rdx
	imulq	%r10, %rdx
	addq	%rdi, %rdx
	movzbl	(%r9,%rdx), %edx
	xorl	%edi, %edi
	cmpl	$8, %edx
	setl	%dil
	movl	%edi, -44(%rsp)
	movzbl	-1(%r9,%rcx), %ecx
	xorl	%edx, %edx
	cmpl	$8, %ecx
	setl	%dl
	movl	%edx, -48(%rsp)
	addl	%esi, %eax
	addl	%edi, %eax
	addl	%edx, %eax
	cmpl	$2, %eax
	jne	.LBB12_69
# %bb.63:                               #   in Loop: Header=BB12_3 Depth=2
	movl	-48(%rsp), %eax
	orl	-40(%rsp), %eax
	movl	-36(%rsp), %ecx
	orl	-44(%rsp), %ecx
	testl	%ecx, %eax
	je	.LBB12_69
# %bb.64:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rbx
	movslq	-124(%rsp), %rcx
	leaq	-2(%rcx), %rdi
	movslq	-120(%rsp), %r8
	imulq	%r8, %rdi
	movslq	-128(%rsp), %r10
	addq	%r10, %rdi
	movzbl	-1(%rbx,%rdi), %edx
	cmpl	$8, %edx
	setl	%r9b
	movzbl	1(%rbx,%rdi), %edi
	cmpl	$8, %edi
	setl	%dl
	orb	%r9b, %dl
	movzbl	%dl, %r11d
	andl	-36(%rsp), %r11d
	leaq	-1(%rcx), %rdi
	imulq	%r8, %rdi
	addq	%r10, %rdi
	movzbl	-2(%rbx,%rdi), %esi
	cmpl	$8, %esi
	setl	%r9b
	leaq	1(%rcx), %rsi
	imulq	%r8, %rsi
	addq	%r10, %rsi
	movzbl	-2(%rbx,%rsi), %edx
	cmpl	$8, %edx
	setl	%dl
	orb	%r9b, %dl
	movzbl	%dl, %edx
	andl	-48(%rsp), %edx
	orl	%r11d, %edx
	movzbl	2(%rbx,%rdi), %edi
	cmpl	$8, %edi
	setl	%dil
	movzbl	2(%rbx,%rsi), %esi
	cmpl	$8, %esi
	setl	%al
	orb	%dil, %al
	movzbl	%al, %eax
	andl	-40(%rsp), %eax
	orl	%edx, %eax
	addq	$2, %rcx
	imulq	%r8, %rcx
	addq	%r10, %rcx
	movzbl	-1(%rbx,%rcx), %edx
	cmpl	$8, %edx
	setl	%dl
	movzbl	1(%rbx,%rcx), %ecx
	cmpl	$8, %ecx
	setl	%cl
	orb	%dl, %cl
	movzbl	%cl, %ecx
	andl	-44(%rsp), %ecx
	orl	%eax, %ecx
	je	.LBB12_69
# %bb.65:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movb	$100, (%rax,%rcx)
	movl	-124(%rsp), %eax
	addl	$-1, %eax
	movl	%eax, -124(%rsp)
	addl	$-2, -128(%rsp)
	cmpl	$3, %eax
	jg	.LBB12_67
# %bb.66:                               #   in Loop: Header=BB12_3 Depth=2
	movl	$4, -124(%rsp)
.LBB12_67:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$3, -128(%rsp)
	jg	.LBB12_69
# %bb.68:                               #   in Loop: Header=BB12_3 Depth=2
	movl	$4, -128(%rsp)
	cmpl	$3, -24(%rsp)
	jl	.LBB12_76
	jmp	.LBB12_70
.LBB12_49:                              #   in Loop: Header=BB12_3 Depth=2
	testl	%eax, %eax
	je	.LBB12_51
# %bb.50:                               #   in Loop: Header=BB12_3 Depth=2
	movl	$1, -100(%rsp)
	movl	$0, -116(%rsp)
	jmp	.LBB12_52
.LBB12_48:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$-1, -100(%rsp)
	movl	$0, -116(%rsp)
	jmp	.LBB12_52
.LBB12_51:                              #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -100(%rsp)
	movl	$1, -116(%rsp)
.LBB12_52:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-8(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-116(%rsp), %rdx
	addq	%rcx, %rdx
	movslq	-120(%rsp), %rcx
	imulq	%rdx, %rcx
	movslq	-128(%rsp), %rdx
	addq	%rcx, %rdx
	movslq	-100(%rsp), %rcx
	addq	%rdx, %rcx
	cvtsi2ssl	(%rax,%rcx,4), %xmm1
	cvtsi2ssl	8(%rsp), %xmm2
	divss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_69
# %bb.53:                               #   in Loop: Header=BB12_3 Depth=2
	cmpl	$0, -100(%rsp)
	jne	.LBB12_57
# %bb.54:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-116(%rsp), %rdx
	leaq	(%rcx,%rdx,2), %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	jl	.LBB12_57
# %bb.55:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-116(%rsp), %rdx
	leaq	(%rcx,%rdx,2), %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	-1(%rax,%rcx), %eax
	cmpl	$8, %eax
	jl	.LBB12_57
# %bb.56:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-116(%rsp), %rdx
	leaq	(%rcx,%rdx,2), %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	1(%rax,%rcx), %eax
	cmpl	$7, %eax
	jg	.LBB12_61
.LBB12_57:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$0, -116(%rsp)
	jne	.LBB12_69
# %bb.58:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movslq	-100(%rsp), %rdx
	leaq	(%rcx,%rdx,2), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	jl	.LBB12_69
# %bb.59:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	addq	$1, %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movslq	-100(%rsp), %rdx
	leaq	(%rcx,%rdx,2), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	jl	.LBB12_69
# %bb.60:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	addq	$-1, %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movslq	-100(%rsp), %rdx
	leaq	(%rcx,%rdx,2), %rcx
	movzbl	(%rax,%rcx), %eax
	cmpl	$8, %eax
	jl	.LBB12_69
.LBB12_61:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movb	$100, (%rax,%rcx)
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-116(%rsp), %rdx
	addq	%rcx, %rdx
	movslq	-120(%rsp), %rcx
	imulq	%rdx, %rcx
	movslq	-128(%rsp), %rdx
	addq	%rcx, %rdx
	movslq	-100(%rsp), %rcx
	addq	%rdx, %rcx
	movb	$3, (%rax,%rcx)
	.p2align	4, 0x90
.LBB12_69:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$3, -24(%rsp)
	jl	.LBB12_76
.LBB12_70:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %r9
	movslq	-124(%rsp), %rdx
	leaq	-1(%rdx), %rax
	movslq	-120(%rsp), %rsi
	imulq	%rsi, %rax
	movslq	-128(%rsp), %rdi
	addq	%rdi, %rax
	movzbl	(%r9,%rax), %ebx
	xorl	%eax, %eax
	cmpl	$8, %ebx
	setl	%al
	movl	%eax, -36(%rsp)
	movq	%rdx, %rbx
	imulq	%rsi, %rbx
	addq	%rdi, %rbx
	movzbl	1(%r9,%rbx), %r8d
	xorl	%ecx, %ecx
	cmpl	$8, %r8d
	setl	%cl
	movl	%ecx, -40(%rsp)
	addq	$1, %rdx
	imulq	%rsi, %rdx
	addq	%rdi, %rdx
	movzbl	(%r9,%rdx), %edx
	xorl	%esi, %esi
	cmpl	$8, %edx
	setl	%sil
	movl	%esi, -44(%rsp)
	movzbl	-1(%r9,%rbx), %edx
	xorl	%edi, %edi
	cmpl	$8, %edx
	setl	%dil
	movl	%edi, -48(%rsp)
	addl	%ecx, %eax
	addl	%esi, %eax
	addl	%edi, %eax
	cmpl	$2, %eax
	jl	.LBB12_76
# %bb.71:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rsi
	movslq	-124(%rsp), %rdi
	leaq	-1(%rdi), %rcx
	movslq	-120(%rsp), %r8
	imulq	%r8, %rcx
	movslq	-128(%rsp), %rbx
	addq	%rbx, %rcx
	movzbl	-1(%rsi,%rcx), %edx
	xorl	%eax, %eax
	cmpl	$8, %edx
	setl	%al
	movl	%eax, -12(%rsp)
	movzbl	1(%rsi,%rcx), %edx
	xorl	%ecx, %ecx
	cmpl	$8, %edx
	setl	%cl
	movl	%ecx, -16(%rsp)
	addq	$1, %rdi
	imulq	%r8, %rdi
	addq	%rbx, %rdi
	movzbl	-1(%rsi,%rdi), %ebx
	xorl	%edx, %edx
	cmpl	$8, %ebx
	setl	%dl
	movl	%edx, 4(%rsp)
	movzbl	1(%rsi,%rdi), %edi
	xorl	%esi, %esi
	cmpl	$8, %edi
	setl	%sil
	movl	%esi, (%rsp)
	orl	-36(%rsp), %eax
	orl	-40(%rsp), %ecx
	movl	%eax, 28(%rsp)
	movl	%ecx, 24(%rsp)
	orl	-44(%rsp), %esi
	movl	%esi, 20(%rsp)
	orl	-48(%rsp), %edx
	movl	%edx, 16(%rsp)
	leal	(%rax,%rcx), %edi
	addl	%esi, %edi
	andl	-36(%rsp), %ecx
	addl	%edx, %edi
	andl	-40(%rsp), %esi
	addl	%ecx, %esi
	andl	-44(%rsp), %edx
	andl	-48(%rsp), %eax
	addl	%esi, %edx
	addl	%edx, %eax
	subl	%eax, %edi
	cmpl	$1, %edi
	jg	.LBB12_76
# %bb.72:                               #   in Loop: Header=BB12_3 Depth=2
	movq	-112(%rsp), %rax
	movslq	-124(%rsp), %rcx
	movslq	-120(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	-128(%rsp), %rcx
	addq	%rdx, %rcx
	movb	$100, (%rax,%rcx)
	movl	-124(%rsp), %eax
	addl	$-1, %eax
	movl	%eax, -124(%rsp)
	addl	$-2, -128(%rsp)
	cmpl	$3, %eax
	jg	.LBB12_74
# %bb.73:                               #   in Loop: Header=BB12_3 Depth=2
	movl	$4, -124(%rsp)
.LBB12_74:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$3, -128(%rsp)
	jg	.LBB12_76
# %bb.75:                               #   in Loop: Header=BB12_3 Depth=2
	movl	$4, -128(%rsp)
	jmp	.LBB12_76
.LBB12_78:
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	susan_thin, .Lfunc_end12-susan_thin
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function susan_edges
.LCPI13_0:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI13_2:
	.quad	4602678819172646912     # double 0.5
.LCPI13_3:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI13_1:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI13_4:
	.long	0                       # float 0
	.text
	.globl	susan_edges
	.p2align	4, 0x90
	.type	susan_edges,@function
susan_edges:                            # @susan_edges
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$112, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -16
	movq	%rdi, 88(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdx, 104(%rsp)
	movq	%rcx, 96(%rsp)
	movl	%r8d, 84(%rsp)
	movl	%r9d, 40(%rsp)
	movslq	%r9d, %rax
	movslq	128(%rsp), %rdx
	imulq	%rax, %rdx
	shlq	$2, %rdx
	movq	%rsi, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$3, 52(%rsp)
	jmp	.LBB13_1
	.p2align	4, 0x90
.LBB13_7:                               #   in Loop: Header=BB13_1 Depth=1
	addl	$1, 52(%rsp)
.LBB13_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	movl	128(%rsp), %eax
	addl	$-3, %eax
	cmpl	%eax, 52(%rsp)
	jge	.LBB13_8
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	movl	$3, 48(%rsp)
	jmp	.LBB13_3
	.p2align	4, 0x90
.LBB13_6:                               #   in Loop: Header=BB13_3 Depth=2
	addl	$1, 48(%rsp)
.LBB13_3:                               #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	40(%rsp), %eax
	addl	$-3, %eax
	cmpl	%eax, 48(%rsp)
	jge	.LBB13_7
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=2
	movl	$100, 36(%rsp)
	movslq	52(%rsp), %rsi
	leaq	-3(%rsi), %rcx
	movslq	40(%rsp), %r9
	imulq	%r9, %rcx
	movq	88(%rsp), %r8
	addq	%r8, %rcx
	movslq	48(%rsp), %rdx
	leaq	(%rcx,%rdx), %r10
	leaq	(%rdx,%rcx), %rdi
	addq	$-1, %rdi
	movq	%rdi, 16(%rsp)
	imulq	%r9, %rsi
	addq	%rdx, %rsi
	movzbl	(%r8,%rsi), %eax
	addq	96(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	%r10, 16(%rsp)
	movzbl	-1(%rdx,%rcx), %r8d
	movq	%rax, %rsi
	subq	%r8, %rsi
	movzbl	(%rsi), %r8d
	leal	100(%r8), %esi
	movl	%esi, 36(%rsp)
	leaq	(%rdx,%rcx), %rsi
	addq	$1, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	(%rdx,%rcx), %esi
	movq	%rax, %rdi
	subq	%rsi, %rdi
	movzbl	(%rdi), %esi
	leal	(%r8,%rsi), %esi
	addl	$100, %esi
	movl	%esi, 36(%rsp)
	movzbl	1(%rdx,%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movslq	40(%rsp), %rdx
	leaq	(%rdx,%r10), %rcx
	addq	$1, %rcx
	leaq	-2(%rdx,%r10), %rsi
	movq	%rsi, 16(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%rdx,%r10), %rdi
	addq	$-1, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-2(%rdx,%r10), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	movq	24(%rsp), %rax
	leaq	-1(%rcx), %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-1(%rdx,%r10), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movq	24(%rsp), %rsi
	movq	%rcx, 16(%rsp)
	movzbl	(%rdx,%r10), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%r10), %rdi
	addq	$2, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	1(%rdx,%r10), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movq	24(%rsp), %rsi
	movzbl	2(%rdx,%r10), %edx
	subq	%rdx, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	movslq	40(%rsp), %rdx
	leaq	(%rdx,%rcx), %r8
	addq	$1, %r8
	leaq	-4(%rdx,%rcx), %rdi
	movq	%rdi, 16(%rsp)
	movq	24(%rsp), %rdi
	leaq	(%rdx,%rcx), %rax
	addq	$-3, %rax
	movq	%rax, 16(%rsp)
	movzbl	-4(%rdx,%rcx), %eax
	subq	%rax, %rdi
	movzbl	(%rdi), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%rdx,%rcx), %rdi
	addq	$-2, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-3(%rdx,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%rcx), %rdi
	addq	$-1, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-2(%rdx,%rcx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movq	24(%rsp), %rsi
	leaq	-1(%r8), %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-1(%rdx,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	movq	24(%rsp), %rax
	movq	%r8, 16(%rsp)
	movzbl	(%rdx,%rcx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%rdx,%rcx), %rdi
	addq	$2, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	1(%rdx,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	movq	24(%rsp), %rax
	movzbl	2(%rdx,%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movslq	40(%rsp), %rdx
	leaq	(%rdx,%r8), %rcx
	addq	$1, %rcx
	leaq	-5(%rdx,%r8), %rsi
	movq	%rsi, 16(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%rdx,%r8), %rdi
	addq	$-4, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-5(%rdx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%r8), %rdi
	addq	$-3, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-4(%rdx,%r8), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movq	24(%rsp), %rsi
	movzbl	-3(%rdx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	leaq	(%rdx,%r8), %rax
	addq	$-1, %rax
	movq	%rax, 16(%rsp)
	movq	24(%rsp), %rax
	leaq	-1(%rcx), %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-1(%rdx,%r8), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movq	24(%rsp), %rsi
	movq	%rcx, 16(%rsp)
	movzbl	(%rdx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	movq	24(%rsp), %rax
	movzbl	1(%rdx,%r8), %edx
	subq	%rdx, %rax
	movzbl	(%rax), %edi
	addl	%esi, %edi
	movl	%edi, 36(%rsp)
	movslq	40(%rsp), %rdx
	leaq	(%rdx,%rcx), %r8
	leaq	(%rdx,%rcx), %rsi
	addq	$-6, %rsi
	movq	%rsi, 16(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%rdx,%rcx), %rax
	addq	$-5, %rax
	movq	%rax, 16(%rsp)
	movzbl	-6(%rdx,%rcx), %eax
	subq	%rax, %rsi
	movzbl	(%rsi), %eax
	addl	%edi, %eax
	movl	%eax, 36(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%rdx,%rcx), %rdi
	addq	$-4, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-5(%rdx,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%rcx), %rdi
	addq	$-3, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-4(%rdx,%rcx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%rdx,%rcx), %rdi
	addq	$-2, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-3(%rdx,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%rcx), %rdi
	addq	$-1, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-2(%rdx,%rcx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movq	24(%rsp), %rsi
	movq	%r8, 16(%rsp)
	movzbl	-1(%rdx,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	movq	24(%rsp), %rax
	movzbl	(%rdx,%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movslq	40(%rsp), %rdx
	leaq	(%rdx,%r8), %rcx
	leaq	(%rdx,%r8), %rsi
	addq	$-5, %rsi
	movq	%rsi, 16(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%rdx,%r8), %rdi
	addq	$-4, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-5(%rdx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%r8), %rdi
	addq	$-3, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-4(%rdx,%r8), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%rdx,%r8), %rdi
	addq	$-2, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-3(%rdx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%eax, %esi
	movl	%esi, 36(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%r8), %rdi
	addq	$-1, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-2(%rdx,%r8), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%esi, %eax
	movl	%eax, 36(%rsp)
	movq	24(%rsp), %rsi
	movzbl	-1(%rdx,%r8), %edx
	subq	%rdx, %rsi
	movzbl	(%rsi), %edx
	addl	%eax, %edx
	movl	%edx, 36(%rsp)
	movslq	40(%rsp), %rax
	leaq	(%rax,%rcx), %rsi
	addq	$-4, %rsi
	movq	%rsi, 16(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%rax,%rcx), %rdi
	addq	$-3, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-4(%rax,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%edx, %esi
	movl	%esi, 36(%rsp)
	movq	24(%rsp), %rdx
	leaq	(%rax,%rcx), %rdi
	addq	$-2, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-3(%rax,%rcx), %edi
	subq	%rdi, %rdx
	movzbl	(%rdx), %edx
	addl	%esi, %edx
	movl	%edx, 36(%rsp)
	movq	24(%rsp), %rsi
	movzbl	-2(%rax,%rcx), %eax
	subq	%rax, %rsi
	movzbl	(%rsi), %eax
	addl	%edx, %eax
	movl	%eax, 36(%rsp)
	cmpl	84(%rsp), %eax
	jg	.LBB13_6
# %bb.5:                                #   in Loop: Header=BB13_3 Depth=2
	movl	84(%rsp), %eax
	subl	36(%rsp), %eax
	movq	72(%rsp), %rcx
	movslq	52(%rsp), %rdx
	movslq	40(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	48(%rsp), %rdx
	addq	%rsi, %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB13_6
.LBB13_8:
	movl	$4, 52(%rsp)
	xorps	%xmm2, %xmm2
	movsd	.LCPI13_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	.LCPI13_2(%rip), %xmm4  # xmm4 = mem[0],zero
	jmp	.LBB13_9
	.p2align	4, 0x90
.LBB13_56:                              #   in Loop: Header=BB13_9 Depth=1
	addl	$1, 52(%rsp)
.LBB13_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_11 Depth 2
	movl	128(%rsp), %eax
	addl	$-4, %eax
	cmpl	%eax, 52(%rsp)
	jge	.LBB13_57
# %bb.10:                               #   in Loop: Header=BB13_9 Depth=1
	movl	$4, 48(%rsp)
	jmp	.LBB13_11
	.p2align	4, 0x90
.LBB13_55:                              #   in Loop: Header=BB13_11 Depth=2
	addl	$1, 48(%rsp)
.LBB13_11:                              #   Parent Loop BB13_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	40(%rsp), %eax
	addl	$-4, %eax
	cmpl	%eax, 48(%rsp)
	jge	.LBB13_56
# %bb.12:                               #   in Loop: Header=BB13_11 Depth=2
	movq	72(%rsp), %rax
	movslq	52(%rsp), %rcx
	movslq	40(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	48(%rsp), %rcx
	addq	%rdx, %rcx
	cmpl	$0, (%rax,%rcx,4)
	jle	.LBB13_55
# %bb.13:                               #   in Loop: Header=BB13_11 Depth=2
	movq	72(%rsp), %rax
	movslq	52(%rsp), %rcx
	movslq	40(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	48(%rsp), %rcx
	addq	%rdx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 68(%rsp)
	movl	84(%rsp), %edx
	subl	%eax, %edx
	movl	%edx, 36(%rsp)
	movq	88(%rsp), %rax
	movzbl	(%rax,%rcx), %eax
	addq	96(%rsp), %rax
	movq	%rax, 24(%rsp)
	cmpl	$601, %edx              # imm = 0x259
	jl	.LBB13_37
# %bb.14:                               #   in Loop: Header=BB13_11 Depth=2
	movslq	52(%rsp), %rax
	addq	$-3, %rax
	movslq	40(%rsp), %rdx
	imulq	%rax, %rdx
	addq	88(%rsp), %rdx
	movslq	48(%rsp), %rsi
	leaq	(%rdx,%rsi), %r8
	movl	$0, 8(%rsp)
	movl	$0, 12(%rsp)
	movq	24(%rsp), %rax
	movq	%r8, 16(%rsp)
	movzbl	-1(%rsi,%rdx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %edi
	movb	%dil, 7(%rsp)
	leal	(%rdi,%rdi,2), %eax
                                        # kill: def $edi killed $edi killed $rdi
	negl	%edi
	movl	%edi, 8(%rsp)
	negl	%eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rdi
	leaq	(%rsi,%rdx), %rcx
	addq	$1, %rcx
	movq	%rcx, 16(%rsp)
	movzbl	(%rsi,%rdx), %ecx
	subq	%rcx, %rdi
	movzbl	(%rdi), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rcx,%rcx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	movzbl	1(%rsi,%rdx), %edx
	subq	%rdx, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	movl	%ecx, %esi
	addl	8(%rsp), %esi
	leal	(%rcx,%rcx,2), %ecx
	movl	%esi, 8(%rsp)
	subl	%ecx, %eax
	movl	%eax, 12(%rsp)
	movslq	40(%rsp), %rdx
	leaq	(%rdx,%r8), %r9
	addq	$1, %r9
	leaq	-2(%rdx,%r8), %rcx
	movq	%rcx, 16(%rsp)
	movq	24(%rsp), %rcx
	leaq	(%rdx,%r8), %rdi
	addq	$-1, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-2(%rdx,%r8), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	addl	%ecx, %ecx
	subl	%ecx, %esi
	movl	%esi, 8(%rsp)
	subl	%ecx, %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	leaq	-1(%r9), %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-1(%rdx,%r8), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	subl	%ecx, %esi
	movl	%esi, 8(%rsp)
	addl	%ecx, %ecx
	subl	%ecx, %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	movq	%r9, 16(%rsp)
	movzbl	(%rdx,%r8), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	addl	%ecx, %ecx
	subl	%ecx, %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	leaq	(%rdx,%r8), %rsi
	addq	$2, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	1(%rdx,%r8), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	movl	8(%rsp), %esi
	addl	%ecx, %esi
	movl	%esi, 8(%rsp)
	addl	%ecx, %ecx
	subl	%ecx, %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	movzbl	2(%rdx,%r8), %edx
	subq	%rdx, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rsi,%rcx,2), %edi
	movl	%edi, 8(%rsp)
	addl	%ecx, %ecx
	subl	%ecx, %eax
	movl	%eax, 12(%rsp)
	movslq	40(%rsp), %r9
	movq	16(%rsp), %rdx
	leaq	(%r9,%rdx), %r8
	leaq	-5(%r9,%rdx), %rsi
	movq	%rsi, 16(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%r9,%rdx), %rcx
	addq	$-4, %rcx
	movq	%rcx, 16(%rsp)
	movzbl	-5(%r9,%rdx), %ecx
	subq	%rcx, %rsi
	movzbl	(%rsi), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rcx,%rcx,2), %esi
	subl	%esi, %edi
	movl	%edi, 8(%rsp)
	subl	%ecx, %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	leaq	(%r9,%rdx), %rsi
	addq	$-3, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-4(%r9,%rdx), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rcx,%rcx), %esi
	subl	%esi, %edi
	movl	%edi, 8(%rsp)
	subl	%ecx, %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	leaq	(%r9,%rdx), %rsi
	addq	$-2, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-3(%r9,%rdx), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	subl	%ecx, %edi
	movl	%edi, 8(%rsp)
	subl	%ecx, %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	leaq	(%r9,%rdx), %rsi
	addq	$-1, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-2(%r9,%rdx), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	subl	%ecx, %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	movq	%r8, 16(%rsp)
	movzbl	-1(%r9,%rdx), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	subl	%ecx, %eax
	addl	8(%rsp), %ecx
	movl	%ecx, 8(%rsp)
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%r9,%rdx), %rdi
	addq	$1, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	(%r9,%rdx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 7(%rsp)
	leal	(%rcx,%rsi,2), %edi
	movl	%edi, 8(%rsp)
	subl	%esi, %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	movzbl	1(%r9,%rdx), %edx
	subq	%rdx, %rcx
	movzbl	(%rcx), %edx
	movb	%dl, 7(%rsp)
	leal	(%rdx,%rdx,2), %ecx
	addl	%edi, %ecx
	movl	%ecx, 8(%rsp)
	subl	%edx, %eax
	movl	%eax, 12(%rsp)
	movslq	40(%rsp), %rdx
	movq	16(%rsp), %rsi
	leaq	(%rdx,%rsi), %r8
	leaq	-6(%rdx,%rsi), %rdi
	movq	%rdi, 16(%rsp)
	movq	24(%rsp), %rdi
	leaq	(%rdx,%rsi), %rax
	addq	$-5, %rax
	movq	%rax, 16(%rsp)
	movzbl	-6(%rdx,%rsi), %eax
	subq	%rax, %rdi
	movzbl	(%rdi), %eax
	movb	%al, 7(%rsp)
	leal	(%rax,%rax,2), %eax
	subl	%eax, %ecx
	movl	%ecx, 8(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%rsi), %rdi
	addq	$-4, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-5(%rdx,%rsi), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, 8(%rsp)
	movq	24(%rsp), %rax
	movzbl	-4(%rdx,%rsi), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	subl	%eax, %ecx
	movl	%ecx, 8(%rsp)
	leaq	(%rdx,%rsi), %rax
	addq	$-2, %rax
	movq	%rax, 16(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%rsi), %rdi
	addq	$-1, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-2(%rdx,%rsi), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 8(%rsp)
	movq	24(%rsp), %rax
	movq	%r8, 16(%rsp)
	movzbl	-1(%rdx,%rsi), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	leal	(%rcx,%rax,2), %eax
	movl	%eax, 8(%rsp)
	movq	24(%rsp), %rcx
	movzbl	(%rdx,%rsi), %edx
	subq	%rdx, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rcx,%rcx,2), %edi
	addl	%eax, %edi
	movl	%edi, 8(%rsp)
	movslq	40(%rsp), %rdx
	leaq	(%rdx,%r8), %r9
	leaq	(%rdx,%r8), %rax
	addq	$-6, %rax
	movq	%rax, 16(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%r8), %rcx
	addq	$-5, %rcx
	movq	%rcx, 16(%rsp)
	movzbl	-6(%rdx,%r8), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rcx,%rcx,2), %eax
	subl	%eax, %edi
	movl	%edi, 8(%rsp)
	addl	12(%rsp), %ecx
	movl	%ecx, 12(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%r8), %rsi
	addq	$-4, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-5(%rdx,%r8), %esi
	subq	%rsi, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	leal	(%rax,%rax), %esi
	subl	%esi, %edi
	movl	%edi, 8(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 12(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%r8), %rsi
	addq	$-3, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-4(%rdx,%r8), %esi
	subq	%rsi, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	subl	%eax, %edi
	movl	%edi, 8(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 12(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%r8), %rsi
	addq	$-2, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-3(%rdx,%r8), %esi
	subq	%rsi, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 12(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rdx,%r8), %rsi
	addq	$-1, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-2(%rdx,%r8), %esi
	subq	%rsi, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	addl	%eax, %ecx
	addl	8(%rsp), %eax
	movl	%eax, 8(%rsp)
	movl	%ecx, 12(%rsp)
	movq	24(%rsp), %rsi
	movq	%r9, 16(%rsp)
	movzbl	-1(%rdx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 7(%rsp)
	leal	(%rax,%rsi,2), %eax
	movl	%eax, 8(%rsp)
	addl	%esi, %ecx
	movl	%ecx, 12(%rsp)
	movq	24(%rsp), %rsi
	movzbl	(%rdx,%r8), %edx
	subq	%rdx, %rsi
	movzbl	(%rsi), %edx
	movb	%dl, 7(%rsp)
	leal	(%rdx,%rdx,2), %esi
	addl	%eax, %esi
	movl	%esi, 8(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 12(%rsp)
	movslq	40(%rsp), %r8
	movq	16(%rsp), %rdx
	leaq	(%r8,%rdx), %rdi
	addq	$-5, %rdi
	movq	%rdi, 16(%rsp)
	movq	24(%rsp), %rdi
	leaq	(%r8,%rdx), %rax
	addq	$-4, %rax
	movq	%rax, 16(%rsp)
	movzbl	-5(%r8,%rdx), %eax
	subq	%rax, %rdi
	movzbl	(%rdi), %eax
	movb	%al, 7(%rsp)
	leal	(%rax,%rax), %edi
	subl	%edi, %esi
	movl	%esi, 8(%rsp)
	leal	(%rcx,%rax,2), %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	leaq	(%r8,%rdx), %rdi
	addq	$-3, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-4(%r8,%rdx), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	subl	%ecx, %esi
	movl	%esi, 8(%rsp)
	leal	(%rax,%rcx,2), %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	leaq	(%r8,%rdx), %rsi
	addq	$-2, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-3(%r8,%rdx), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rax,%rcx,2), %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	leaq	(%r8,%rdx), %rsi
	addq	$-1, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-2(%r8,%rdx), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rax,%rcx,2), %eax
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	addl	8(%rsp), %ecx
	movl	%ecx, 8(%rsp)
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rsi
	movzbl	-1(%r8,%rdx), %edx
	subq	%rdx, %rsi
	movzbl	(%rsi), %edx
	movb	%dl, 7(%rsp)
	leal	(%rcx,%rdx,2), %esi
	movl	%esi, 8(%rsp)
	leal	(%rax,%rdx,2), %r8d
	movl	%r8d, 12(%rsp)
	movslq	40(%rsp), %rax
	movq	16(%rsp), %rcx
	leaq	-3(%rax,%rcx), %rdi
	movq	%rdi, 16(%rsp)
	movq	24(%rsp), %rdi
	leaq	(%rax,%rcx), %rdx
	addq	$-2, %rdx
	movq	%rdx, 16(%rsp)
	movzbl	-3(%rax,%rcx), %edx
	subq	%rdx, %rdi
	movzbl	(%rdi), %edx
	movb	%dl, 7(%rsp)
	subl	%edx, %esi
	movl	%esi, 8(%rsp)
	leal	(%rdx,%rdx,2), %edx
	addl	%r8d, %edx
	movl	%edx, 12(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%rax,%rcx), %rdi
	addq	$-1, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-2(%rax,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 7(%rsp)
	leal	(%rsi,%rsi,2), %esi
	addl	%edx, %esi
	movl	%esi, 12(%rsp)
	movq	24(%rsp), %rdx
	movzbl	-1(%rax,%rcx), %eax
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	leal	(%rax,%rax,2), %ecx
	movl	%eax, %edx
	addl	8(%rsp), %edx
	movl	%edx, 8(%rsp)
	addl	%esi, %ecx
	movl	%ecx, 12(%rsp)
	imull	%edx, %edx
	imull	%ecx, %ecx
	addl	%edx, %ecx
	cvtsi2ss	%ecx, %xmm0
	movb	%al, 7(%rsp)
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm2, %xmm0
	jb	.LBB13_16
# %bb.15:                               #   in Loop: Header=BB13_11 Depth=2
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB13_17
.LBB13_16:                              # %call.sqrt
                                        #   in Loop: Header=BB13_11 Depth=2
	callq	sqrt
	movsd	.LCPI13_2(%rip), %xmm4  # xmm4 = mem[0],zero
	movsd	.LCPI13_0(%rip), %xmm3  # xmm3 = mem[0],zero
	xorps	%xmm2, %xmm2
.LBB13_17:                              # %.split
                                        #   in Loop: Header=BB13_11 Depth=2
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 64(%rsp)
	cvtss2sd	%xmm0, %xmm0
	cvtsi2ssl	36(%rsp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm3, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_37
# %bb.18:                               #   in Loop: Header=BB13_11 Depth=2
	movl	$0, 80(%rsp)
	cmpl	$0, 8(%rsp)
	je	.LBB13_19
# %bb.20:                               #   in Loop: Header=BB13_11 Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	12(%rsp), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	8(%rsp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 64(%rsp)
	jmp	.LBB13_21
	.p2align	4, 0x90
.LBB13_37:                              #   in Loop: Header=BB13_11 Depth=2
	movl	$1, 80(%rsp)
.LBB13_38:                              #   in Loop: Header=BB13_11 Depth=2
	cmpl	$1, 80(%rsp)
	jne	.LBB13_55
.LBB13_39:                              #   in Loop: Header=BB13_11 Depth=2
	movslq	52(%rsp), %rcx
	addq	$-3, %rcx
	movslq	40(%rsp), %rax
	imulq	%rcx, %rax
	addq	88(%rsp), %rax
	movslq	48(%rsp), %rcx
	leaq	(%rax,%rcx), %rdx
	movl	$0, 8(%rsp)
	movl	$0, 12(%rsp)
	movl	$0, 44(%rsp)
	movq	24(%rsp), %rsi
	movq	%rdx, 16(%rsp)
	movzbl	-1(%rcx,%rax), %edx
	subq	%rdx, %rsi
	movzbl	(%rsi), %edx
	movb	%dl, 7(%rsp)
	movl	%edx, 8(%rsp)
	leal	(%rdx,%rdx,8), %esi
	movl	%esi, 12(%rsp)
	leal	(%rdx,%rdx,2), %edx
	movl	%edx, 44(%rsp)
	movq	24(%rsp), %rdx
	leaq	(%rcx,%rax), %rdi
	addq	$1, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	(%rcx,%rax), %edi
	subq	%rdi, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, 7(%rsp)
	leal	(%rdx,%rdx,8), %edx
	addl	%esi, %edx
	movl	%edx, 12(%rsp)
	movq	24(%rsp), %rsi
	movzbl	1(%rcx,%rax), %eax
	subq	%rax, %rsi
	movzbl	(%rsi), %eax
	movb	%al, 7(%rsp)
	addl	%eax, 8(%rsp)
	leal	(%rax,%rax,8), %r9d
	addl	%edx, %r9d
	movl	%r9d, 12(%rsp)
	leal	(%rax,%rax,2), %eax
	movl	44(%rsp), %edi
	subl	%eax, %edi
	movl	%edi, 44(%rsp)
	movslq	40(%rsp), %rax
	movq	16(%rsp), %rcx
	leaq	(%rax,%rcx), %r8
	leaq	-3(%rax,%rcx), %rdx
	movq	%rdx, 16(%rsp)
	movq	24(%rsp), %rdx
	leaq	(%rax,%rcx), %rsi
	addq	$-2, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-3(%rax,%rcx), %esi
	subq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, 7(%rsp)
	leal	(,%rdx,4), %esi
	addl	8(%rsp), %esi
	movl	%esi, 8(%rsp)
	leal	(%r9,%rdx,4), %r9d
	movl	%r9d, 12(%rsp)
	leal	(%rdi,%rdx,4), %r10d
	movl	%r10d, 44(%rsp)
	movq	24(%rsp), %rdi
	leaq	(%rax,%rcx), %rdx
	addq	$-1, %rdx
	movq	%rdx, 16(%rsp)
	movzbl	-2(%rax,%rcx), %edx
	subq	%rdx, %rdi
	movzbl	(%rdi), %edx
	movb	%dl, 7(%rsp)
	addl	%edx, %esi
	movl	%esi, 8(%rsp)
	leal	(%r9,%rdx,4), %esi
	movl	%esi, 12(%rsp)
	leal	(%r10,%rdx,2), %edx
	movl	%edx, 44(%rsp)
	movq	24(%rsp), %rdx
	movq	%r8, 16(%rsp)
	movzbl	-1(%rax,%rcx), %edi
	subq	%rdi, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, 7(%rsp)
	leal	(%rsi,%rdx,4), %r8d
	movl	%r8d, 12(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%rax,%rcx), %rdi
	addq	$1, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	(%rax,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 7(%rsp)
	movl	8(%rsp), %edx
	addl	%esi, %edx
	movl	%edx, 8(%rsp)
	leal	(%r8,%rsi,4), %r8d
	movl	%r8d, 12(%rsp)
	addl	%esi, %esi
	movl	44(%rsp), %edi
	subl	%esi, %edi
	movl	%edi, 44(%rsp)
	movq	24(%rsp), %rsi
	movzbl	1(%rax,%rcx), %eax
	subq	%rax, %rsi
	movzbl	(%rsi), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rdx,%rcx,4), %eax
	movl	%eax, 8(%rsp)
	leal	(%r8,%rcx,4), %eax
	movl	%eax, 12(%rsp)
	shll	$2, %ecx
	subl	%ecx, %edi
	movl	%edi, 44(%rsp)
	movslq	40(%rsp), %r9
	movq	16(%rsp), %r10
	leaq	(%r9,%r10), %r8
	leaq	-5(%r9,%r10), %rsi
	movq	%rsi, 16(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%r9,%r10), %rcx
	addq	$-4, %rcx
	movq	%rcx, 16(%rsp)
	movzbl	-5(%r9,%r10), %ecx
	subq	%rcx, %rsi
	movzbl	(%rsi), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rcx,%rcx,8), %esi
	addl	8(%rsp), %esi
	movl	%esi, 8(%rsp)
	addl	%ecx, %eax
	movl	%eax, 12(%rsp)
	leal	(%rcx,%rcx,2), %ecx
	addl	%edi, %ecx
	movl	%ecx, 44(%rsp)
	movq	24(%rsp), %rdi
	leaq	(%r9,%r10), %rdx
	addq	$-3, %rdx
	movq	%rdx, 16(%rsp)
	movzbl	-4(%r9,%r10), %edx
	subq	%rdx, %rdi
	movzbl	(%rdi), %edx
	movb	%dl, 7(%rsp)
	leal	(%rsi,%rdx,4), %esi
	movl	%esi, 8(%rsp)
	addl	%edx, %eax
	movl	%eax, 12(%rsp)
	leal	(%rcx,%rdx,2), %ecx
	movl	%ecx, 44(%rsp)
	movq	24(%rsp), %rdx
	leaq	(%r9,%r10), %rdi
	addq	$-2, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-3(%r9,%r10), %edi
	subq	%rdi, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, 7(%rsp)
	addl	%edx, %esi
	movl	%esi, 8(%rsp)
	addl	%edx, %eax
	movl	%eax, 12(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 44(%rsp)
	movq	24(%rsp), %rcx
	leaq	(%r9,%r10), %rdx
	addq	$-1, %rdx
	movq	%rdx, 16(%rsp)
	movzbl	-2(%r9,%r10), %edx
	subq	%rdx, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	addl	%ecx, %eax
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rcx
	movq	%r8, 16(%rsp)
	movzbl	-1(%r9,%r10), %edx
	subq	%rdx, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	movl	8(%rsp), %edx
	addl	%ecx, %edx
	movl	%edx, 8(%rsp)
	addl	%ecx, %eax
	movl	%eax, 12(%rsp)
	movl	44(%rsp), %esi
	subl	%ecx, %esi
	movl	%esi, 44(%rsp)
	movq	24(%rsp), %rcx
	leaq	(%r9,%r10), %rdi
	addq	$1, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	(%r9,%r10), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rdx,%rcx,4), %edx
	movl	%edx, 8(%rsp)
	addl	%ecx, %eax
	movl	%eax, 12(%rsp)
	addl	%ecx, %ecx
	subl	%ecx, %esi
	movl	%esi, 44(%rsp)
	movq	24(%rsp), %rcx
	movzbl	1(%r9,%r10), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rcx,%rcx,8), %edi
	addl	%edx, %edi
	movl	%edi, 8(%rsp)
	addl	%ecx, %eax
	movl	%eax, 12(%rsp)
	leal	(%rcx,%rcx,2), %eax
	subl	%eax, %esi
	movl	%esi, 44(%rsp)
	movslq	40(%rsp), %rcx
	movq	16(%rsp), %rdx
	leaq	(%rcx,%rdx), %r8
	leaq	-6(%rcx,%rdx), %rsi
	movq	%rsi, 16(%rsp)
	movq	24(%rsp), %rsi
	leaq	(%rcx,%rdx), %rdi
	addq	$-5, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-6(%rcx,%rdx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 7(%rsp)
	leal	(%rsi,%rsi,8), %esi
	addl	8(%rsp), %esi
	movl	%esi, 8(%rsp)
	movq	24(%rsp), %rdi
	leaq	(%rcx,%rdx), %rax
	addq	$-4, %rax
	movq	%rax, 16(%rsp)
	movzbl	-5(%rcx,%rdx), %eax
	subq	%rax, %rdi
	movzbl	(%rdi), %eax
	movb	%al, 7(%rsp)
	leal	(%rsi,%rax,4), %esi
	movl	%esi, 8(%rsp)
	movq	24(%rsp), %rax
	movzbl	-4(%rcx,%rdx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	addl	%eax, %esi
	movl	%esi, 8(%rsp)
	leaq	(%rcx,%rdx), %rax
	addq	$-2, %rax
	movq	%rax, 16(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rcx,%rdx), %rdi
	addq	$-1, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-2(%rcx,%rdx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	addl	%eax, %esi
	movl	%esi, 8(%rsp)
	movq	24(%rsp), %rax
	movq	%r8, 16(%rsp)
	movzbl	-1(%rcx,%rdx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	leal	(%rsi,%rax,4), %eax
	movl	%eax, 8(%rsp)
	movq	24(%rsp), %rsi
	movzbl	(%rcx,%rdx), %ecx
	subq	%rcx, %rsi
	movzbl	(%rsi), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rcx,%rcx,8), %ecx
	addl	%eax, %ecx
	movl	%ecx, 8(%rsp)
	movslq	40(%rsp), %rbx
	leaq	(%rbx,%r8), %r9
	leaq	(%rbx,%r8), %rax
	addq	$-6, %rax
	movq	%rax, 16(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rbx,%r8), %rdi
	addq	$-5, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-6(%rbx,%r8), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	leal	(%rax,%rax,8), %r11d
	addl	%ecx, %r11d
	leal	(%rax,%rax,2), %r10d
	movl	%eax, %ecx
	addl	12(%rsp), %ecx
	movl	%r11d, 8(%rsp)
	movl	%ecx, 12(%rsp)
	movl	44(%rsp), %edi
	subl	%r10d, %edi
	movl	%edi, 44(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rbx,%r8), %rsi
	addq	$-4, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-5(%rbx,%r8), %esi
	subq	%rsi, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	leal	(%r11,%rax,4), %esi
	movl	%esi, 8(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 12(%rsp)
	addl	%eax, %eax
	subl	%eax, %edi
	movl	%edi, 44(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rbx,%r8), %rdx
	addq	$-3, %rdx
	movq	%rdx, 16(%rsp)
	movzbl	-4(%rbx,%r8), %edx
	subq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	addl	%eax, %esi
	movl	%esi, 8(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 12(%rsp)
	subl	%eax, %edi
	movl	%edi, 44(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rbx,%r8), %rdx
	addq	$-2, %rdx
	movq	%rdx, 16(%rsp)
	movzbl	-3(%rbx,%r8), %edx
	subq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 12(%rsp)
	movq	24(%rsp), %rax
	leaq	(%rbx,%r8), %rdx
	addq	$-1, %rdx
	movq	%rdx, 16(%rsp)
	movzbl	-2(%rbx,%r8), %edx
	subq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, 7(%rsp)
	movl	8(%rsp), %edx
	addl	%eax, %edx
	movl	%edx, 8(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 12(%rsp)
	addl	44(%rsp), %eax
	movl	%eax, 44(%rsp)
	movq	24(%rsp), %rsi
	movq	%r9, 16(%rsp)
	movzbl	-1(%rbx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 7(%rsp)
	leal	(%rdx,%rsi,4), %edx
	movl	%edx, 8(%rsp)
	addl	%esi, %ecx
	movl	%ecx, 12(%rsp)
	leal	(%rax,%rsi,2), %eax
	movl	%eax, 44(%rsp)
	movq	24(%rsp), %rsi
	movzbl	(%rbx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 7(%rsp)
	leal	(%rsi,%rsi,8), %edi
	addl	%edx, %edi
	movl	%edi, 8(%rsp)
	addl	%esi, %ecx
	movl	%ecx, 12(%rsp)
	leal	(%rsi,%rsi,2), %esi
	addl	%eax, %esi
	movl	%esi, 44(%rsp)
	movslq	40(%rsp), %rax
	movq	16(%rsp), %rdx
	leaq	(%rax,%rdx), %rdi
	addq	$-5, %rdi
	movq	%rdi, 16(%rsp)
	movq	24(%rsp), %rdi
	leaq	(%rax,%rdx), %rbx
	addq	$-4, %rbx
	movq	%rbx, 16(%rsp)
	movzbl	-5(%rax,%rdx), %ebx
	subq	%rbx, %rdi
	movzbl	(%rdi), %edi
	movb	%dil, 7(%rsp)
	leal	(,%rdi,4), %ebx
	subl	%ebx, %esi
	addl	8(%rsp), %ebx
	movl	%ebx, 8(%rsp)
	leal	(%rcx,%rdi,4), %r8d
	movl	%r8d, 12(%rsp)
	movl	%esi, 44(%rsp)
	movq	24(%rsp), %rdi
	leaq	(%rax,%rdx), %rcx
	addq	$-3, %rcx
	movq	%rcx, 16(%rsp)
	movzbl	-4(%rax,%rdx), %ecx
	subq	%rcx, %rdi
	movzbl	(%rdi), %ecx
	movb	%cl, 7(%rsp)
	addl	%ecx, %ebx
	movl	%ebx, 8(%rsp)
	leal	(%r8,%rcx,4), %edi
	movl	%edi, 12(%rsp)
	addl	%ecx, %ecx
	subl	%ecx, %esi
	movl	%esi, 44(%rsp)
	movq	24(%rsp), %rcx
	leaq	(%rax,%rdx), %rsi
	addq	$-2, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-3(%rax,%rdx), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	leal	(%rdi,%rcx,4), %esi
	movl	%esi, 12(%rsp)
	movq	24(%rsp), %rcx
	leaq	(%rax,%rdx), %rdi
	addq	$-1, %rdi
	movq	%rdi, 16(%rsp)
	movzbl	-2(%rax,%rdx), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 7(%rsp)
	movl	8(%rsp), %edi
	addl	%ecx, %edi
	movl	%edi, 8(%rsp)
	leal	(%rsi,%rcx,4), %esi
	movl	%esi, 12(%rsp)
	addl	%ecx, %ecx
	addl	44(%rsp), %ecx
	movl	%ecx, 44(%rsp)
	movq	24(%rsp), %rbx
	movzbl	-1(%rax,%rdx), %eax
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	movb	%al, 7(%rsp)
	leal	(%rdi,%rax,4), %edx
	movl	%edx, 8(%rsp)
	leal	(%rsi,%rax,4), %edx
	movl	%edx, 12(%rsp)
	leal	(%rcx,%rax,4), %esi
	movl	%esi, 44(%rsp)
	movslq	40(%rsp), %rax
	movq	16(%rsp), %rcx
	leaq	-3(%rax,%rcx), %rdi
	movq	%rdi, 16(%rsp)
	movq	24(%rsp), %rdi
	leaq	(%rax,%rcx), %rbx
	addq	$-2, %rbx
	movq	%rbx, 16(%rsp)
	movzbl	-3(%rax,%rcx), %ebx
	subq	%rbx, %rdi
	movzbl	(%rdi), %edi
	movb	%dil, 7(%rsp)
	addl	%edi, 8(%rsp)
	leal	(%rdi,%rdi,8), %ebx
	addl	%edx, %ebx
	movl	%ebx, 12(%rsp)
	leal	(%rdi,%rdi,2), %edx
	subl	%edx, %esi
	movl	%esi, 44(%rsp)
	movq	24(%rsp), %rdx
	leaq	(%rax,%rcx), %rsi
	addq	$-1, %rsi
	movq	%rsi, 16(%rsp)
	movzbl	-2(%rax,%rcx), %esi
	subq	%rsi, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, 7(%rsp)
	leal	(%rdx,%rdx,8), %edx
	addl	%ebx, %edx
	movl	%edx, 12(%rsp)
	movq	24(%rsp), %rsi
	movzbl	-1(%rax,%rcx), %eax
	subq	%rax, %rsi
	movzbl	(%rsi), %eax
	movb	%al, 7(%rsp)
	addl	%eax, 8(%rsp)
	leal	(%rax,%rax,8), %ecx
	leal	(%rdx,%rcx), %esi
	movl	%esi, 12(%rsp)
	leal	(%rax,%rax,2), %eax
	addl	%eax, 44(%rsp)
	addl	%edx, %ecx
	je	.LBB13_40
# %bb.41:                               #   in Loop: Header=BB13_11 Depth=2
	cvtsi2ssl	8(%rsp), %xmm0
	cvtsi2ssl	12(%rsp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 64(%rsp)
	jmp	.LBB13_42
.LBB13_40:                              #   in Loop: Header=BB13_11 Depth=2
	movl	$1232348160, 64(%rsp)   # imm = 0x49742400
.LBB13_42:                              #   in Loop: Header=BB13_11 Depth=2
	movss	64(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm4
	jbe	.LBB13_44
# %bb.43:                               #   in Loop: Header=BB13_11 Depth=2
	movl	$0, 60(%rsp)
	jmp	.LBB13_49
.LBB13_44:                              #   in Loop: Header=BB13_11 Depth=2
	movss	64(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	.LCPI13_3(%rip), %xmm0
	jbe	.LBB13_46
# %bb.45:                               #   in Loop: Header=BB13_11 Depth=2
	movl	$1, 60(%rsp)
	movl	$0, 56(%rsp)
	jmp	.LBB13_50
.LBB13_46:                              #   in Loop: Header=BB13_11 Depth=2
	cmpl	$0, 44(%rsp)
	jle	.LBB13_48
# %bb.47:                               #   in Loop: Header=BB13_11 Depth=2
	movl	$-1, 60(%rsp)
	jmp	.LBB13_49
.LBB13_19:                              #   in Loop: Header=BB13_11 Depth=2
	movl	$1232348160, 64(%rsp)   # imm = 0x49742400
.LBB13_21:                              #   in Loop: Header=BB13_11 Depth=2
	xorps	%xmm0, %xmm0
	ucomiss	64(%rsp), %xmm0
	jbe	.LBB13_23
# %bb.22:                               #   in Loop: Header=BB13_11 Depth=2
	movss	64(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI13_1(%rip), %xmm0
	movss	%xmm0, 64(%rsp)
	movl	$-1, 44(%rsp)
	jmp	.LBB13_24
.LBB13_23:                              #   in Loop: Header=BB13_11 Depth=2
	movl	$1, 44(%rsp)
.LBB13_24:                              #   in Loop: Header=BB13_11 Depth=2
	movss	64(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm4
	jbe	.LBB13_26
# %bb.25:                               #   in Loop: Header=BB13_11 Depth=2
	movl	$0, 60(%rsp)
	jmp	.LBB13_31
.LBB13_26:                              #   in Loop: Header=BB13_11 Depth=2
	movss	64(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	.LCPI13_3(%rip), %xmm0
	jbe	.LBB13_28
# %bb.27:                               #   in Loop: Header=BB13_11 Depth=2
	movl	$1, 60(%rsp)
	movl	$0, 56(%rsp)
	jmp	.LBB13_32
.LBB13_28:                              #   in Loop: Header=BB13_11 Depth=2
	cmpl	$0, 44(%rsp)
	jle	.LBB13_30
# %bb.29:                               #   in Loop: Header=BB13_11 Depth=2
	movl	$1, 60(%rsp)
	jmp	.LBB13_31
.LBB13_48:                              #   in Loop: Header=BB13_11 Depth=2
	movl	$1, 60(%rsp)
	.p2align	4, 0x90
.LBB13_49:                              #   in Loop: Header=BB13_11 Depth=2
	movl	$1, 56(%rsp)
.LBB13_50:                              #   in Loop: Header=BB13_11 Depth=2
	movl	68(%rsp), %eax
	movq	72(%rsp), %rcx
	movslq	52(%rsp), %rdx
	movslq	60(%rsp), %rsi
	addq	%rdx, %rsi
	movslq	40(%rsp), %rdx
	imulq	%rsi, %rdx
	movslq	48(%rsp), %rsi
	addq	%rdx, %rsi
	movslq	56(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB13_55
# %bb.51:                               #   in Loop: Header=BB13_11 Depth=2
	movl	68(%rsp), %eax
	movq	72(%rsp), %rcx
	movslq	52(%rsp), %rdx
	movslq	60(%rsp), %rsi
	subq	%rsi, %rdx
	movslq	40(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	48(%rsp), %rdx
	addq	%rsi, %rdx
	movslq	56(%rsp), %rsi
	subq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB13_55
# %bb.52:                               #   in Loop: Header=BB13_11 Depth=2
	movl	68(%rsp), %eax
	movq	72(%rsp), %rcx
	movslq	52(%rsp), %rdx
	movslq	60(%rsp), %rsi
	leaq	(%rdx,%rsi,2), %rdx
	movslq	40(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	48(%rsp), %rdx
	addq	%rsi, %rdx
	movslq	56(%rsp), %rsi
	leaq	(%rdx,%rsi,2), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB13_55
# %bb.53:                               #   in Loop: Header=BB13_11 Depth=2
	movl	68(%rsp), %eax
	movq	72(%rsp), %rcx
	movslq	52(%rsp), %rdx
	movslq	60(%rsp), %rsi
	addq	%rsi, %rsi
	subq	%rsi, %rdx
	movslq	40(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	48(%rsp), %rdx
	addq	%rsi, %rdx
	movslq	56(%rsp), %rsi
	addq	%rsi, %rsi
	subq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB13_55
# %bb.54:                               #   in Loop: Header=BB13_11 Depth=2
	movq	104(%rsp), %rax
	movslq	52(%rsp), %rcx
	movslq	40(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	48(%rsp), %rcx
	addq	%rdx, %rcx
	movb	$2, (%rax,%rcx)
	jmp	.LBB13_55
.LBB13_30:                              #   in Loop: Header=BB13_11 Depth=2
	movl	$-1, 60(%rsp)
.LBB13_31:                              #   in Loop: Header=BB13_11 Depth=2
	movl	$1, 56(%rsp)
.LBB13_32:                              #   in Loop: Header=BB13_11 Depth=2
	movl	68(%rsp), %eax
	movq	72(%rsp), %rcx
	movslq	52(%rsp), %rdx
	movslq	60(%rsp), %rsi
	addq	%rdx, %rsi
	movslq	40(%rsp), %rdx
	imulq	%rsi, %rdx
	movslq	48(%rsp), %rsi
	addq	%rdx, %rsi
	movslq	56(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB13_38
# %bb.33:                               #   in Loop: Header=BB13_11 Depth=2
	movl	68(%rsp), %eax
	movq	72(%rsp), %rcx
	movslq	52(%rsp), %rdx
	movslq	60(%rsp), %rsi
	subq	%rsi, %rdx
	movslq	40(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	48(%rsp), %rdx
	addq	%rsi, %rdx
	movslq	56(%rsp), %rsi
	subq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB13_38
# %bb.34:                               #   in Loop: Header=BB13_11 Depth=2
	movl	68(%rsp), %eax
	movq	72(%rsp), %rcx
	movslq	52(%rsp), %rdx
	movslq	60(%rsp), %rsi
	leaq	(%rdx,%rsi,2), %rdx
	movslq	40(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	48(%rsp), %rdx
	addq	%rsi, %rdx
	movslq	56(%rsp), %rsi
	leaq	(%rdx,%rsi,2), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB13_38
# %bb.35:                               #   in Loop: Header=BB13_11 Depth=2
	movl	68(%rsp), %eax
	movq	72(%rsp), %rcx
	movslq	52(%rsp), %rdx
	movslq	60(%rsp), %rsi
	addq	%rsi, %rsi
	subq	%rsi, %rdx
	movslq	40(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	48(%rsp), %rdx
	addq	%rsi, %rdx
	movslq	56(%rsp), %rsi
	addq	%rsi, %rsi
	subq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB13_38
# %bb.36:                               #   in Loop: Header=BB13_11 Depth=2
	movq	104(%rsp), %rax
	movslq	52(%rsp), %rcx
	movslq	40(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	48(%rsp), %rcx
	addq	%rdx, %rcx
	movb	$1, (%rax,%rcx)
	cmpl	$1, 80(%rsp)
	jne	.LBB13_55
	jmp	.LBB13_39
.LBB13_57:
	addq	$112, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	susan_edges, .Lfunc_end13-susan_edges
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function susan_edges_small
.LCPI14_0:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI14_2:
	.quad	4602678819172646912     # double 0.5
.LCPI14_3:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI14_1:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI14_4:
	.long	0                       # float 0
	.text
	.globl	susan_edges_small
	.p2align	4, 0x90
	.type	susan_edges_small,@function
susan_edges_small:                      # @susan_edges_small
	.cfi_startproc
# %bb.0:
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movq	%rdi, 96(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdx, 112(%rsp)
	movq	%rcx, 104(%rsp)
	movl	%r8d, 76(%rsp)
	movl	%r9d, 12(%rsp)
	movslq	%r9d, %rax
	movslq	128(%rsp), %rdx
	imulq	%rax, %rdx
	shlq	$2, %rdx
	movq	%rsi, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$730, 76(%rsp)          # imm = 0x2DA
	movl	$1, 28(%rsp)
	jmp	.LBB14_1
	.p2align	4, 0x90
.LBB14_7:                               #   in Loop: Header=BB14_1 Depth=1
	addl	$1, 28(%rsp)
.LBB14_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
	movl	128(%rsp), %eax
	addl	$-1, %eax
	cmpl	%eax, 28(%rsp)
	jge	.LBB14_8
# %bb.2:                                #   in Loop: Header=BB14_1 Depth=1
	movl	$1, 24(%rsp)
	jmp	.LBB14_3
	.p2align	4, 0x90
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=2
	addl	$1, 24(%rsp)
.LBB14_3:                               #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rsp), %eax
	addl	$-1, %eax
	cmpl	%eax, 24(%rsp)
	jge	.LBB14_7
# %bb.4:                                #   in Loop: Header=BB14_3 Depth=2
	movl	$100, 40(%rsp)
	movslq	28(%rsp), %rcx
	leaq	-1(%rcx), %rax
	movslq	12(%rsp), %r8
	imulq	%r8, %rax
	movq	96(%rsp), %rdi
	addq	%rdi, %rax
	movslq	24(%rsp), %rdx
	leaq	(%rdx,%rax), %rsi
	addq	$-1, %rsi
	movq	%rsi, 56(%rsp)
	imulq	%r8, %rcx
	addq	%rdx, %rcx
	movzbl	(%rdi,%rcx), %ecx
	addq	104(%rsp), %rcx
	leaq	(%rax,%rdx), %r9
	movq	%rcx, 48(%rsp)
	movq	%r9, 56(%rsp)
	movzbl	-1(%rdx,%rax), %r8d
	movq	%rcx, %rsi
	subq	%r8, %rsi
	movzbl	(%rsi), %r8d
	leal	100(%r8), %esi
	movl	%esi, 40(%rsp)
	leaq	(%rdx,%rax), %rsi
	addq	$1, %rsi
	movq	%rsi, 56(%rsp)
	movzbl	(%rdx,%rax), %esi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	movzbl	(%rdi), %esi
	leal	(%r8,%rsi), %esi
	addl	$100, %esi
	movl	%esi, 40(%rsp)
	movzbl	1(%rdx,%rax), %eax
	subq	%rax, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, 40(%rsp)
	movslq	12(%rsp), %rdx
	leaq	(%rdx,%r9), %rax
	addq	$1, %rax
	leaq	-1(%rdx,%r9), %rsi
	movq	%rsi, 56(%rsp)
	movq	48(%rsp), %rsi
	movzbl	-1(%rdx,%r9), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, 40(%rsp)
	movq	%rax, 56(%rsp)
	movq	48(%rsp), %rcx
	movzbl	1(%rdx,%r9), %edx
	subq	%rdx, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, 40(%rsp)
	movslq	12(%rsp), %rdx
	leaq	(%rdx,%rax), %r8
	leaq	(%rdx,%rax), %rdi
	addq	$-2, %rdi
	movq	%rdi, 56(%rsp)
	movq	48(%rsp), %rdi
	leaq	(%rdx,%rax), %rsi
	addq	$-1, %rsi
	movq	%rsi, 56(%rsp)
	movzbl	-2(%rdx,%rax), %esi
	subq	%rsi, %rdi
	movzbl	(%rdi), %esi
	addl	%ecx, %esi
	movl	%esi, 40(%rsp)
	movq	48(%rsp), %rcx
	movq	%r8, 56(%rsp)
	movzbl	-1(%rdx,%rax), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, 40(%rsp)
	movq	48(%rsp), %rsi
	movzbl	(%rdx,%rax), %eax
	subq	%rax, %rsi
	movzbl	(%rsi), %eax
	addl	%ecx, %eax
	movl	%eax, 40(%rsp)
	cmpl	76(%rsp), %eax
	jg	.LBB14_6
# %bb.5:                                #   in Loop: Header=BB14_3 Depth=2
	movl	76(%rsp), %eax
	subl	40(%rsp), %eax
	movq	80(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	12(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB14_6
.LBB14_8:
	movl	$2, 28(%rsp)
	xorps	%xmm2, %xmm2
	movsd	.LCPI14_0(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	.LCPI14_2(%rip), %xmm4  # xmm4 = mem[0],zero
	jmp	.LBB14_9
	.p2align	4, 0x90
.LBB14_52:                              #   in Loop: Header=BB14_9 Depth=1
	addl	$1, 28(%rsp)
.LBB14_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_11 Depth 2
	movl	128(%rsp), %eax
	addl	$-2, %eax
	cmpl	%eax, 28(%rsp)
	jge	.LBB14_53
# %bb.10:                               #   in Loop: Header=BB14_9 Depth=1
	movl	$2, 24(%rsp)
	jmp	.LBB14_11
	.p2align	4, 0x90
.LBB14_51:                              #   in Loop: Header=BB14_11 Depth=2
	addl	$1, 24(%rsp)
.LBB14_11:                              #   Parent Loop BB14_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rsp), %eax
	addl	$-2, %eax
	cmpl	%eax, 24(%rsp)
	jge	.LBB14_52
# %bb.12:                               #   in Loop: Header=BB14_11 Depth=2
	movq	80(%rsp), %rax
	movslq	28(%rsp), %rcx
	movslq	12(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	24(%rsp), %rcx
	addq	%rdx, %rcx
	cmpl	$0, (%rax,%rcx,4)
	jle	.LBB14_51
# %bb.13:                               #   in Loop: Header=BB14_11 Depth=2
	movq	80(%rsp), %rax
	movslq	28(%rsp), %rcx
	movslq	12(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	24(%rsp), %rcx
	addq	%rdx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 72(%rsp)
	movl	76(%rsp), %edx
	subl	%eax, %edx
	movl	%edx, 40(%rsp)
	movq	96(%rsp), %rax
	movzbl	(%rax,%rcx), %eax
	addq	104(%rsp), %rax
	movq	%rax, 48(%rsp)
	cmpl	$251, %edx
	jl	.LBB14_35
# %bb.14:                               #   in Loop: Header=BB14_11 Depth=2
	movslq	28(%rsp), %rax
	addq	$-1, %rax
	movslq	12(%rsp), %rcx
	imulq	%rax, %rcx
	addq	96(%rsp), %rcx
	movslq	24(%rsp), %rdx
	leaq	(%rcx,%rdx), %r8
	movl	$0, 16(%rsp)
	movl	$0, 20(%rsp)
	movq	48(%rsp), %rsi
	movq	%r8, 56(%rsp)
	movzbl	-1(%rdx,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 11(%rsp)
	negl	%esi
	movl	%esi, 16(%rsp)
	movl	%esi, 20(%rsp)
	movq	48(%rsp), %rdi
	leaq	(%rdx,%rcx), %rax
	addq	$1, %rax
	movq	%rax, 56(%rsp)
	movzbl	(%rdx,%rcx), %eax
	subq	%rax, %rdi
	movzbl	(%rdi), %eax
	movb	%al, 11(%rsp)
	subl	%eax, %esi
	movl	%esi, 20(%rsp)
	movq	48(%rsp), %rax
	movzbl	1(%rdx,%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %edx
	movb	%dl, 11(%rsp)
	subl	%edx, %esi
	addl	16(%rsp), %edx
	movl	%edx, 16(%rsp)
	movl	%esi, 20(%rsp)
	movslq	12(%rsp), %rax
	leaq	(%rax,%r8), %rcx
	addq	$1, %rcx
	leaq	-1(%rax,%r8), %rsi
	movq	%rsi, 56(%rsp)
	movq	48(%rsp), %rsi
	movzbl	-1(%rax,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 11(%rsp)
	subl	%esi, %edx
	movl	%edx, 16(%rsp)
	movq	%rcx, 56(%rsp)
	movq	48(%rsp), %rsi
	movzbl	1(%rax,%r8), %eax
	subq	%rax, %rsi
	movzbl	(%rsi), %eax
	movb	%al, 11(%rsp)
	addl	%eax, %edx
	movl	%edx, 16(%rsp)
	movslq	12(%rsp), %rsi
	leaq	(%rsi,%rcx), %r8
	leaq	(%rsi,%rcx), %rax
	addq	$-2, %rax
	movq	%rax, 56(%rsp)
	movq	48(%rsp), %rax
	leaq	(%rsi,%rcx), %rdi
	addq	$-1, %rdi
	movq	%rdi, 56(%rsp)
	movzbl	-2(%rsi,%rcx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movb	%al, 11(%rsp)
	subl	%eax, %edx
	movl	%edx, 16(%rsp)
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	movq	48(%rsp), %rdx
	movq	%r8, 56(%rsp)
	movzbl	-1(%rsi,%rcx), %edi
	subq	%rdi, %rdx
	movzbl	(%rdx), %edx
	movb	%dl, 11(%rsp)
	addl	%edx, %eax
	movl	%eax, 20(%rsp)
	movq	48(%rsp), %rdx
	movzbl	(%rsi,%rcx), %ecx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	movb	%cl, 11(%rsp)
	addl	%ecx, %eax
	addl	16(%rsp), %ecx
	movl	%ecx, 16(%rsp)
	movl	%eax, 20(%rsp)
	imull	%ecx, %ecx
	imull	%eax, %eax
	addl	%ecx, %eax
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm2, %xmm0
	jb	.LBB14_16
# %bb.15:                               #   in Loop: Header=BB14_11 Depth=2
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB14_17
.LBB14_16:                              # %call.sqrt
                                        #   in Loop: Header=BB14_11 Depth=2
	callq	sqrt
	movsd	.LCPI14_2(%rip), %xmm4  # xmm4 = mem[0],zero
	movsd	.LCPI14_0(%rip), %xmm3  # xmm3 = mem[0],zero
	xorps	%xmm2, %xmm2
.LBB14_17:                              # %.split
                                        #   in Loop: Header=BB14_11 Depth=2
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 44(%rsp)
	cvtss2sd	%xmm0, %xmm0
	cvtsi2ssl	40(%rsp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm3, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_35
# %bb.18:                               #   in Loop: Header=BB14_11 Depth=2
	movl	$0, 92(%rsp)
	cmpl	$0, 16(%rsp)
	je	.LBB14_19
# %bb.20:                               #   in Loop: Header=BB14_11 Depth=2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	20(%rsp), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	16(%rsp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 44(%rsp)
	jmp	.LBB14_21
	.p2align	4, 0x90
.LBB14_35:                              #   in Loop: Header=BB14_11 Depth=2
	movl	$1, 92(%rsp)
.LBB14_36:                              #   in Loop: Header=BB14_11 Depth=2
	cmpl	$1, 92(%rsp)
	jne	.LBB14_51
.LBB14_37:                              #   in Loop: Header=BB14_11 Depth=2
	movslq	28(%rsp), %rcx
	addq	$-1, %rcx
	movslq	12(%rsp), %rax
	imulq	%rcx, %rax
	addq	96(%rsp), %rax
	movslq	24(%rsp), %rcx
	leaq	(%rax,%rcx), %rdx
	movl	$0, 16(%rsp)
	movl	$0, 20(%rsp)
	movl	$0, 68(%rsp)
	movq	48(%rsp), %rsi
	movq	%rdx, 56(%rsp)
	movzbl	-1(%rcx,%rax), %edx
	subq	%rdx, %rsi
	movzbl	(%rsi), %edx
	movb	%dl, 11(%rsp)
	movl	%edx, 16(%rsp)
	movl	%edx, 20(%rsp)
	movl	%edx, 68(%rsp)
	movq	48(%rsp), %rsi
	leaq	(%rcx,%rax), %rdi
	addq	$1, %rdi
	movq	%rdi, 56(%rsp)
	movzbl	(%rcx,%rax), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 11(%rsp)
	addl	%esi, %edx
	movl	%edx, 20(%rsp)
	movq	48(%rsp), %rsi
	movzbl	1(%rcx,%rax), %eax
	subq	%rax, %rsi
	movzbl	(%rsi), %eax
	movb	%al, 11(%rsp)
	movl	16(%rsp), %ecx
	addl	%eax, %ecx
	movl	%ecx, 16(%rsp)
	subl	%eax, 68(%rsp)
	addl	%eax, %edx
	movl	%edx, 20(%rsp)
	movslq	12(%rsp), %rdx
	movq	56(%rsp), %rsi
	leaq	(%rdx,%rsi), %r8
	leaq	-2(%rdx,%rsi), %rdi
	movq	%rdi, 56(%rsp)
	movq	48(%rsp), %rdi
	movzbl	-2(%rdx,%rsi), %eax
	subq	%rax, %rdi
	movzbl	(%rdi), %eax
	movb	%al, 11(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 16(%rsp)
	movq	%r8, 56(%rsp)
	movq	48(%rsp), %rax
	movzbl	(%rdx,%rsi), %edx
	subq	%rdx, %rax
	movzbl	(%rax), %eax
	movb	%al, 11(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 16(%rsp)
	movslq	12(%rsp), %rdx
	leaq	(%rdx,%r8), %rax
	leaq	(%rdx,%r8), %rsi
	addq	$-2, %rsi
	movq	%rsi, 56(%rsp)
	movq	48(%rsp), %rsi
	leaq	(%rdx,%r8), %rdi
	addq	$-1, %rdi
	movq	%rdi, 56(%rsp)
	movzbl	-2(%rdx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 11(%rsp)
	addl	%esi, %ecx
	movl	%ecx, 16(%rsp)
	movl	20(%rsp), %ecx
	addl	%esi, %ecx
	subl	%esi, 68(%rsp)
	movl	%ecx, 20(%rsp)
	movq	48(%rsp), %rsi
	movq	%rax, 56(%rsp)
	movzbl	-1(%rdx,%r8), %eax
	subq	%rax, %rsi
	movzbl	(%rsi), %eax
	movb	%al, 11(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 20(%rsp)
	movq	48(%rsp), %rax
	movzbl	(%rdx,%r8), %edx
	subq	%rdx, %rax
	movzbl	(%rax), %eax
	addl	%eax, 16(%rsp)
	movb	%al, 11(%rsp)
	leal	(%rcx,%rax), %edx
	movl	%edx, 20(%rsp)
	addl	%eax, 68(%rsp)
	addl	%eax, %ecx
	je	.LBB14_38
# %bb.39:                               #   in Loop: Header=BB14_11 Depth=2
	cvtsi2ssl	16(%rsp), %xmm0
	cvtsi2ssl	20(%rsp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, 44(%rsp)
	jmp	.LBB14_40
.LBB14_38:                              #   in Loop: Header=BB14_11 Depth=2
	movl	$1232348160, 44(%rsp)   # imm = 0x49742400
.LBB14_40:                              #   in Loop: Header=BB14_11 Depth=2
	movss	44(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm4
	jbe	.LBB14_42
# %bb.41:                               #   in Loop: Header=BB14_11 Depth=2
	movl	$0, 36(%rsp)
	jmp	.LBB14_47
.LBB14_42:                              #   in Loop: Header=BB14_11 Depth=2
	movss	44(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	.LCPI14_3(%rip), %xmm0
	jbe	.LBB14_44
# %bb.43:                               #   in Loop: Header=BB14_11 Depth=2
	movl	$1, 36(%rsp)
	movl	$0, 32(%rsp)
	jmp	.LBB14_48
.LBB14_44:                              #   in Loop: Header=BB14_11 Depth=2
	cmpl	$0, 68(%rsp)
	jle	.LBB14_46
# %bb.45:                               #   in Loop: Header=BB14_11 Depth=2
	movl	$-1, 36(%rsp)
	jmp	.LBB14_47
.LBB14_19:                              #   in Loop: Header=BB14_11 Depth=2
	movl	$1232348160, 44(%rsp)   # imm = 0x49742400
.LBB14_21:                              #   in Loop: Header=BB14_11 Depth=2
	xorps	%xmm0, %xmm0
	ucomiss	44(%rsp), %xmm0
	jbe	.LBB14_23
# %bb.22:                               #   in Loop: Header=BB14_11 Depth=2
	movss	44(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI14_1(%rip), %xmm0
	movss	%xmm0, 44(%rsp)
	movl	$-1, 68(%rsp)
	jmp	.LBB14_24
.LBB14_23:                              #   in Loop: Header=BB14_11 Depth=2
	movl	$1, 68(%rsp)
.LBB14_24:                              #   in Loop: Header=BB14_11 Depth=2
	movss	44(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm4
	jbe	.LBB14_26
# %bb.25:                               #   in Loop: Header=BB14_11 Depth=2
	movl	$0, 36(%rsp)
	jmp	.LBB14_31
.LBB14_26:                              #   in Loop: Header=BB14_11 Depth=2
	movss	44(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	ucomisd	.LCPI14_3(%rip), %xmm0
	jbe	.LBB14_28
# %bb.27:                               #   in Loop: Header=BB14_11 Depth=2
	movl	$1, 36(%rsp)
	movl	$0, 32(%rsp)
	jmp	.LBB14_32
.LBB14_28:                              #   in Loop: Header=BB14_11 Depth=2
	cmpl	$0, 68(%rsp)
	jle	.LBB14_30
# %bb.29:                               #   in Loop: Header=BB14_11 Depth=2
	movl	$1, 36(%rsp)
	jmp	.LBB14_31
.LBB14_46:                              #   in Loop: Header=BB14_11 Depth=2
	movl	$1, 36(%rsp)
	.p2align	4, 0x90
.LBB14_47:                              #   in Loop: Header=BB14_11 Depth=2
	movl	$1, 32(%rsp)
.LBB14_48:                              #   in Loop: Header=BB14_11 Depth=2
	movl	72(%rsp), %eax
	movq	80(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	36(%rsp), %rsi
	addq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	imulq	%rsi, %rdx
	movslq	24(%rsp), %rsi
	addq	%rdx, %rsi
	movslq	32(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB14_51
# %bb.49:                               #   in Loop: Header=BB14_11 Depth=2
	movl	72(%rsp), %eax
	movq	80(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	36(%rsp), %rsi
	subq	%rsi, %rdx
	movslq	12(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	movslq	32(%rsp), %rsi
	subq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB14_51
# %bb.50:                               #   in Loop: Header=BB14_11 Depth=2
	movq	112(%rsp), %rax
	movslq	28(%rsp), %rcx
	movslq	12(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	24(%rsp), %rcx
	addq	%rdx, %rcx
	movb	$2, (%rax,%rcx)
	jmp	.LBB14_51
.LBB14_30:                              #   in Loop: Header=BB14_11 Depth=2
	movl	$-1, 36(%rsp)
.LBB14_31:                              #   in Loop: Header=BB14_11 Depth=2
	movl	$1, 32(%rsp)
.LBB14_32:                              #   in Loop: Header=BB14_11 Depth=2
	movl	72(%rsp), %eax
	movq	80(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	36(%rsp), %rsi
	addq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	imulq	%rsi, %rdx
	movslq	24(%rsp), %rsi
	addq	%rdx, %rsi
	movslq	32(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB14_36
# %bb.33:                               #   in Loop: Header=BB14_11 Depth=2
	movl	72(%rsp), %eax
	movq	80(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	36(%rsp), %rsi
	subq	%rsi, %rdx
	movslq	12(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	movslq	32(%rsp), %rsi
	subq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB14_36
# %bb.34:                               #   in Loop: Header=BB14_11 Depth=2
	movq	112(%rsp), %rax
	movslq	28(%rsp), %rcx
	movslq	12(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	24(%rsp), %rcx
	addq	%rdx, %rcx
	movb	$1, (%rax,%rcx)
	cmpl	$1, 92(%rsp)
	jne	.LBB14_51
	jmp	.LBB14_37
.LBB14_53:
	addq	$120, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	susan_edges_small, .Lfunc_end14-susan_edges_small
	.cfi_endproc
                                        # -- End function
	.globl	corner_draw             # -- Begin function corner_draw
	.p2align	4, 0x90
	.type	corner_draw,@function
corner_draw:                            # @corner_draw
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -24(%rsp)
	movl	%edx, -28(%rsp)
	movl	%ecx, -12(%rsp)
	movl	$0, -32(%rsp)
	jmp	.LBB15_1
	.p2align	4, 0x90
.LBB15_4:                               #   in Loop: Header=BB15_1 Depth=1
	movslq	-28(%rsp), %rdx
	imulq	%rdx, %rcx
	addq	%rcx, %rax
	movq	-24(%rsp), %rcx
	movslq	-32(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movslq	(%rcx,%rdx,8), %rcx
	leaq	(%rax,%rcx), %rdx
	movq	%rdx, -40(%rsp)
	movb	$0, (%rcx,%rax)
	addl	$1, -32(%rsp)
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rsp), %rax
	movslq	-32(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	cmpl	$7, 8(%rax,%rcx,8)
	je	.LBB15_5
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	cmpl	$0, -12(%rsp)
	movq	-8(%rsp), %rax
	movq	-24(%rsp), %rcx
	movslq	-32(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movslq	4(%rcx,%rdx,8), %rcx
	jne	.LBB15_4
# %bb.3:                                #   in Loop: Header=BB15_1 Depth=1
	addq	$-1, %rcx
	movslq	-28(%rsp), %rdx
	imulq	%rcx, %rdx
	addq	%rdx, %rax
	movq	-24(%rsp), %rcx
	movslq	-32(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movslq	(%rcx,%rdx,8), %rcx
	leaq	(%rax,%rcx), %rdx
	movq	%rdx, -40(%rsp)
	movb	$-1, -1(%rcx,%rax)
	movq	-40(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movb	$-1, (%rax)
	movq	-40(%rsp), %rax
	movb	$-1, (%rax)
	movslq	-28(%rsp), %rax
	movq	-40(%rsp), %rcx
	leaq	-1(%rax,%rcx), %rdx
	movq	%rdx, -40(%rsp)
	movb	$-1, -2(%rax,%rcx)
	movq	-40(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movb	$0, (%rax)
	movq	-40(%rsp), %rax
	movb	$-1, (%rax)
	movslq	-28(%rsp), %rax
	movq	-40(%rsp), %rcx
	leaq	-1(%rax,%rcx), %rdx
	movq	%rdx, -40(%rsp)
	movb	$-1, -2(%rax,%rcx)
	movq	-40(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movb	$-1, (%rax)
	movq	-40(%rsp), %rax
	movb	$-1, (%rax)
	addl	$1, -32(%rsp)
	jmp	.LBB15_1
.LBB15_5:
	retq
.Lfunc_end15:
	.size	corner_draw, .Lfunc_end15-corner_draw
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function susan_corners
.LCPI16_0:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI16_1:
	.long	1077936128              # float 3
	.text
	.globl	susan_corners
	.p2align	4, 0x90
	.type	susan_corners,@function
susan_corners:                          # @susan_corners
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$128, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -16
	movq	%rdi, 88(%rsp)
	movq	%rsi, 56(%rsp)
	movq	%rdx, 120(%rsp)
	movl	%ecx, 64(%rsp)
	movq	%r8, 72(%rsp)
	movl	%r9d, 16(%rsp)
	movslq	%r9d, %rax
	movslq	144(%rsp), %rdx
	imulq	%rax, %rdx
	shlq	$2, %rdx
	movq	%rsi, %rdi
	xorl	%esi, %esi
	callq	memset
	movslq	16(%rsp), %rax
	movslq	144(%rsp), %rdi
	imulq	%rax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 104(%rsp)
	movslq	16(%rsp), %rax
	movslq	144(%rsp), %rdi
	imulq	%rax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 96(%rsp)
	movl	$5, 28(%rsp)
	jmp	.LBB16_1
	.p2align	4, 0x90
.LBB16_30:                              #   in Loop: Header=BB16_1 Depth=1
	addl	$1, 28(%rsp)
.LBB16_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_3 Depth 2
	movl	144(%rsp), %eax
	addl	$-5, %eax
	cmpl	%eax, 28(%rsp)
	jge	.LBB16_31
# %bb.2:                                #   in Loop: Header=BB16_1 Depth=1
	movl	$5, 24(%rsp)
	jmp	.LBB16_3
	.p2align	4, 0x90
.LBB16_29:                              #   in Loop: Header=BB16_3 Depth=2
	addl	$1, 24(%rsp)
.LBB16_3:                               #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	16(%rsp), %eax
	addl	$-5, %eax
	cmpl	%eax, 24(%rsp)
	jge	.LBB16_30
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=2
	movl	$100, 20(%rsp)
	movslq	28(%rsp), %rsi
	leaq	-3(%rsi), %rax
	movslq	16(%rsp), %r9
	imulq	%r9, %rax
	movq	88(%rsp), %r8
	addq	%r8, %rax
	movslq	24(%rsp), %rdx
	leaq	(%rax,%rdx), %r10
	leaq	(%rdx,%rax), %rdi
	addq	$-1, %rdi
	movq	%rdi, 32(%rsp)
	imulq	%r9, %rsi
	addq	%rdx, %rsi
	movzbl	(%r8,%rsi), %ecx
	addq	120(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movq	%r10, 32(%rsp)
	movzbl	-1(%rdx,%rax), %r8d
	movq	%rcx, %rsi
	subq	%r8, %rsi
	movzbl	(%rsi), %r8d
	leal	100(%r8), %esi
	movl	%esi, 20(%rsp)
	leaq	(%rdx,%rax), %rsi
	addq	$1, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	(%rdx,%rax), %esi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	movzbl	(%rdi), %esi
	leal	(%r8,%rsi), %esi
	addl	$100, %esi
	movl	%esi, 20(%rsp)
	movzbl	1(%rdx,%rax), %eax
	subq	%rax, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, 20(%rsp)
	movslq	16(%rsp), %rdx
	leaq	(%rdx,%r10), %rax
	addq	$1, %rax
	leaq	-2(%rdx,%r10), %rsi
	movq	%rsi, 32(%rsp)
	movq	48(%rsp), %rsi
	leaq	(%rdx,%r10), %rdi
	addq	$-1, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-2(%rdx,%r10), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, 20(%rsp)
	movq	48(%rsp), %rcx
	leaq	-1(%rax), %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-1(%rdx,%r10), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, 20(%rsp)
	movq	48(%rsp), %rsi
	movq	%rax, 32(%rsp)
	movzbl	(%rdx,%r10), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, 20(%rsp)
	movq	48(%rsp), %rcx
	leaq	(%rdx,%r10), %rdi
	addq	$2, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	1(%rdx,%r10), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, 20(%rsp)
	movq	48(%rsp), %rsi
	movzbl	2(%rdx,%r10), %edx
	subq	%rdx, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, 20(%rsp)
	movslq	16(%rsp), %rdx
	leaq	(%rdx,%rax), %r8
	addq	$1, %r8
	leaq	-4(%rdx,%rax), %rdi
	movq	%rdi, 32(%rsp)
	movq	48(%rsp), %rdi
	leaq	(%rdx,%rax), %rcx
	addq	$-3, %rcx
	movq	%rcx, 32(%rsp)
	movzbl	-4(%rdx,%rax), %ecx
	subq	%rcx, %rdi
	movzbl	(%rdi), %ecx
	addl	%esi, %ecx
	movl	%ecx, 20(%rsp)
	movq	48(%rsp), %rsi
	leaq	(%rdx,%rax), %rdi
	addq	$-2, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-3(%rdx,%rax), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, 20(%rsp)
	movq	48(%rsp), %rcx
	leaq	(%rdx,%rax), %rdi
	addq	$-1, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-2(%rdx,%rax), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, 20(%rsp)
	movq	48(%rsp), %rsi
	leaq	-1(%r8), %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-1(%rdx,%rax), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, 20(%rsp)
	movq	48(%rsp), %rcx
	movq	%r8, 32(%rsp)
	movzbl	(%rdx,%rax), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, 20(%rsp)
	movq	48(%rsp), %rsi
	leaq	(%rdx,%rax), %rdi
	addq	$2, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	1(%rdx,%rax), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, 20(%rsp)
	movq	48(%rsp), %rcx
	movzbl	2(%rdx,%rax), %eax
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%esi, %eax
	movl	%eax, 20(%rsp)
	movslq	16(%rsp), %rcx
	leaq	(%rcx,%r8), %rdx
	addq	$-5, %rdx
	movq	%rdx, 32(%rsp)
	movq	48(%rsp), %rdx
	leaq	(%rcx,%r8), %rsi
	addq	$-4, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-5(%rcx,%r8), %esi
	subq	%rsi, %rdx
	movzbl	(%rdx), %edx
	addl	%eax, %edx
	movl	%edx, 20(%rsp)
	movq	48(%rsp), %rax
	leaq	(%rcx,%r8), %rsi
	addq	$-3, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-4(%rcx,%r8), %esi
	subq	%rsi, %rax
	movzbl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, 20(%rsp)
	movq	48(%rsp), %rdx
	movzbl	-3(%rcx,%r8), %ecx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%eax, %ecx
	movl	%ecx, 20(%rsp)
	cmpl	64(%rsp), %ecx
	jge	.LBB16_29
# %bb.5:                                #   in Loop: Header=BB16_3 Depth=2
	movq	32(%rsp), %rax
	movq	48(%rsp), %rcx
	leaq	3(%rax), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	2(%rax), %eax
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.6:                                #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.7:                                #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.8:                                #   in Loop: Header=BB16_3 Depth=2
	movslq	16(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	48(%rsp), %rdx
	leaq	(%rax,%rcx), %rsi
	addq	$-5, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-6(%rax,%rcx), %eax
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.9:                                #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.10:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.11:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.12:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.13:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.14:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.15:                               #   in Loop: Header=BB16_3 Depth=2
	movslq	16(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	48(%rsp), %rdx
	leaq	(%rax,%rcx), %rsi
	addq	$-4, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-5(%rax,%rcx), %eax
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.16:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.17:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.18:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.19:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.20:                               #   in Loop: Header=BB16_3 Depth=2
	movslq	16(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	48(%rsp), %rdx
	leaq	(%rax,%rcx), %rsi
	addq	$-2, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-3(%rax,%rcx), %eax
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.21:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.22:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	20(%rsp), %eax
	movl	%eax, 20(%rsp)
	cmpl	64(%rsp), %eax
	jge	.LBB16_29
# %bb.23:                               #   in Loop: Header=BB16_3 Depth=2
	movl	$0, 12(%rsp)
	movl	$0, 44(%rsp)
	movslq	28(%rsp), %rax
	addq	$-3, %rax
	movslq	16(%rsp), %rdx
	imulq	%rax, %rdx
	addq	88(%rsp), %rdx
	movslq	24(%rsp), %rsi
	leaq	(%rdx,%rsi), %r8
	movq	48(%rsp), %rax
	movq	%r8, 32(%rsp)
	movzbl	-1(%rsi,%rdx), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %edi
	movb	%dil, 11(%rsp)
	leal	(%rdi,%rdi,2), %eax
                                        # kill: def $edi killed $edi killed $rdi
	negl	%edi
	movl	%edi, 12(%rsp)
	negl	%eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rdi
	leaq	(%rsi,%rdx), %rcx
	addq	$1, %rcx
	movq	%rcx, 32(%rsp)
	movzbl	(%rsi,%rdx), %ecx
	subq	%rcx, %rdi
	movzbl	(%rdi), %ecx
	movb	%cl, 11(%rsp)
	leal	(%rcx,%rcx,2), %ecx
	subl	%ecx, %eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	movzbl	1(%rsi,%rdx), %edx
	subq	%rdx, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	leal	(%rcx,%rcx,2), %edx
	movl	%ecx, %edi
	addl	12(%rsp), %edi
	movl	%edi, 12(%rsp)
	subl	%edx, %eax
	movl	%eax, 44(%rsp)
	movslq	16(%rsp), %rdx
	leaq	(%rdx,%r8), %r9
	addq	$1, %r9
	leaq	-2(%rdx,%r8), %rcx
	movq	%rcx, 32(%rsp)
	movq	48(%rsp), %rcx
	leaq	(%rdx,%r8), %rsi
	addq	$-1, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-2(%rdx,%r8), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	addl	%ecx, %ecx
	subl	%ecx, %edi
	movl	%edi, 12(%rsp)
	subl	%ecx, %eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	leaq	-1(%r9), %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-1(%rdx,%r8), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	subl	%ecx, %edi
	movl	%edi, 12(%rsp)
	addl	%ecx, %ecx
	subl	%ecx, %eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	movq	%r9, 32(%rsp)
	movzbl	(%rdx,%r8), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	addl	%ecx, %ecx
	subl	%ecx, %eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	leaq	(%rdx,%r8), %rsi
	addq	$2, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	1(%rdx,%r8), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	movl	12(%rsp), %esi
	addl	%ecx, %esi
	movl	%esi, 12(%rsp)
	addl	%ecx, %ecx
	subl	%ecx, %eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	movzbl	2(%rdx,%r8), %edx
	subq	%rdx, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	leal	(%rsi,%rcx,2), %edi
	movl	%edi, 12(%rsp)
	addl	%ecx, %ecx
	subl	%ecx, %eax
	movl	%eax, 44(%rsp)
	movslq	16(%rsp), %r9
	movq	32(%rsp), %rdx
	leaq	(%r9,%rdx), %r8
	leaq	-5(%r9,%rdx), %rsi
	movq	%rsi, 32(%rsp)
	movq	48(%rsp), %rsi
	leaq	(%r9,%rdx), %rcx
	addq	$-4, %rcx
	movq	%rcx, 32(%rsp)
	movzbl	-5(%r9,%rdx), %ecx
	subq	%rcx, %rsi
	movzbl	(%rsi), %ecx
	movb	%cl, 11(%rsp)
	leal	(%rcx,%rcx,2), %esi
	subl	%esi, %edi
	movl	%edi, 12(%rsp)
	subl	%ecx, %eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	leaq	(%r9,%rdx), %rsi
	addq	$-3, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-4(%r9,%rdx), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	leal	(%rcx,%rcx), %esi
	subl	%esi, %edi
	movl	%edi, 12(%rsp)
	subl	%ecx, %eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	leaq	(%r9,%rdx), %rsi
	addq	$-2, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-3(%r9,%rdx), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	subl	%ecx, %edi
	movl	%edi, 12(%rsp)
	subl	%ecx, %eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	leaq	(%r9,%rdx), %rsi
	addq	$-1, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-2(%r9,%rdx), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	subl	%ecx, %eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	movq	%r8, 32(%rsp)
	movzbl	-1(%r9,%rdx), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	subl	%ecx, %eax
	addl	12(%rsp), %ecx
	movl	%ecx, 12(%rsp)
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rsi
	leaq	(%r9,%rdx), %rdi
	addq	$1, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	(%r9,%rdx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 11(%rsp)
	leal	(%rcx,%rsi,2), %edi
	movl	%edi, 12(%rsp)
	subl	%esi, %eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	movzbl	1(%r9,%rdx), %edx
	subq	%rdx, %rcx
	movzbl	(%rcx), %edx
	movb	%dl, 11(%rsp)
	leal	(%rdx,%rdx,2), %ecx
	addl	%edi, %ecx
	movl	%ecx, 12(%rsp)
	subl	%edx, %eax
	movl	%eax, 44(%rsp)
	movslq	16(%rsp), %rdx
	movq	32(%rsp), %rsi
	leaq	(%rdx,%rsi), %r8
	leaq	-6(%rdx,%rsi), %rdi
	movq	%rdi, 32(%rsp)
	movq	48(%rsp), %rdi
	leaq	(%rdx,%rsi), %rax
	addq	$-5, %rax
	movq	%rax, 32(%rsp)
	movzbl	-6(%rdx,%rsi), %eax
	subq	%rax, %rdi
	movzbl	(%rdi), %eax
	movb	%al, 11(%rsp)
	leal	(%rax,%rax,2), %eax
	subl	%eax, %ecx
	movl	%ecx, 12(%rsp)
	movq	48(%rsp), %rax
	leaq	(%rdx,%rsi), %rdi
	addq	$-4, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-5(%rdx,%rsi), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movb	%al, 11(%rsp)
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, 12(%rsp)
	movq	48(%rsp), %rax
	movzbl	-4(%rdx,%rsi), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movb	%al, 11(%rsp)
	subl	%eax, %ecx
	movl	%ecx, 12(%rsp)
	leaq	(%rdx,%rsi), %rax
	addq	$-2, %rax
	movq	%rax, 32(%rsp)
	movq	48(%rsp), %rax
	leaq	(%rdx,%rsi), %rdi
	addq	$-1, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-2(%rdx,%rsi), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movb	%al, 11(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 12(%rsp)
	movq	48(%rsp), %rax
	movq	%r8, 32(%rsp)
	movzbl	-1(%rdx,%rsi), %edi
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	movb	%al, 11(%rsp)
	leal	(%rcx,%rax,2), %eax
	movl	%eax, 12(%rsp)
	movq	48(%rsp), %rcx
	movzbl	(%rdx,%rsi), %edx
	subq	%rdx, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	leal	(%rcx,%rcx,2), %edi
	addl	%eax, %edi
	movl	%edi, 12(%rsp)
	movslq	16(%rsp), %rdx
	leaq	(%rdx,%r8), %r9
	leaq	(%rdx,%r8), %rax
	addq	$-6, %rax
	movq	%rax, 32(%rsp)
	movq	48(%rsp), %rax
	leaq	(%rdx,%r8), %rcx
	addq	$-5, %rcx
	movq	%rcx, 32(%rsp)
	movzbl	-6(%rdx,%r8), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %ecx
	movb	%cl, 11(%rsp)
	leal	(%rcx,%rcx,2), %eax
	subl	%eax, %edi
	addl	44(%rsp), %ecx
	movl	%edi, 12(%rsp)
	movl	%ecx, 44(%rsp)
	movq	48(%rsp), %rax
	leaq	(%rdx,%r8), %rsi
	addq	$-4, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-5(%rdx,%r8), %esi
	subq	%rsi, %rax
	movzbl	(%rax), %eax
	movb	%al, 11(%rsp)
	leal	(%rax,%rax), %esi
	subl	%esi, %edi
	movl	%edi, 12(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 44(%rsp)
	movq	48(%rsp), %rax
	leaq	(%rdx,%r8), %rsi
	addq	$-3, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-4(%rdx,%r8), %esi
	subq	%rsi, %rax
	movzbl	(%rax), %eax
	movb	%al, 11(%rsp)
	subl	%eax, %edi
	movl	%edi, 12(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 44(%rsp)
	movq	48(%rsp), %rax
	leaq	(%rdx,%r8), %rsi
	addq	$-2, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-3(%rdx,%r8), %esi
	subq	%rsi, %rax
	movzbl	(%rax), %eax
	movb	%al, 11(%rsp)
	addl	%eax, %ecx
	movl	%ecx, 44(%rsp)
	movq	48(%rsp), %rax
	leaq	(%rdx,%r8), %rsi
	addq	$-1, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-2(%rdx,%r8), %esi
	subq	%rsi, %rax
	movzbl	(%rax), %eax
	movb	%al, 11(%rsp)
	addl	%eax, %ecx
	addl	12(%rsp), %eax
	movl	%eax, 12(%rsp)
	movl	%ecx, 44(%rsp)
	movq	48(%rsp), %rsi
	movq	%r9, 32(%rsp)
	movzbl	-1(%rdx,%r8), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 11(%rsp)
	leal	(%rax,%rsi,2), %eax
	movl	%eax, 12(%rsp)
	addl	%esi, %ecx
	movl	%ecx, 44(%rsp)
	movq	48(%rsp), %rsi
	movzbl	(%rdx,%r8), %edx
	subq	%rdx, %rsi
	movzbl	(%rsi), %edx
	movb	%dl, 11(%rsp)
	leal	(%rdx,%rdx,2), %esi
	addl	%eax, %esi
	movl	%esi, 12(%rsp)
	addl	%edx, %ecx
	movl	%ecx, 44(%rsp)
	movslq	16(%rsp), %r8
	movq	32(%rsp), %rdx
	leaq	(%r8,%rdx), %rdi
	addq	$-5, %rdi
	movq	%rdi, 32(%rsp)
	movq	48(%rsp), %rdi
	leaq	(%r8,%rdx), %rax
	addq	$-4, %rax
	movq	%rax, 32(%rsp)
	movzbl	-5(%r8,%rdx), %eax
	subq	%rax, %rdi
	movzbl	(%rdi), %eax
	movb	%al, 11(%rsp)
	leal	(%rax,%rax), %edi
	subl	%edi, %esi
	movl	%esi, 12(%rsp)
	leal	(%rcx,%rax,2), %eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	leaq	(%r8,%rdx), %rdi
	addq	$-3, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-4(%r8,%rdx), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	subl	%ecx, %esi
	movl	%esi, 12(%rsp)
	leal	(%rax,%rcx,2), %eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	leaq	(%r8,%rdx), %rsi
	addq	$-2, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-3(%r8,%rdx), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	leal	(%rax,%rcx,2), %eax
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rcx
	leaq	(%r8,%rdx), %rsi
	addq	$-1, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-2(%r8,%rdx), %esi
	subq	%rsi, %rcx
	movzbl	(%rcx), %ecx
	movb	%cl, 11(%rsp)
	leal	(%rax,%rcx,2), %eax
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	addl	12(%rsp), %ecx
	movl	%ecx, 12(%rsp)
	movl	%eax, 44(%rsp)
	movq	48(%rsp), %rsi
	movzbl	-1(%r8,%rdx), %edx
	subq	%rdx, %rsi
	movzbl	(%rsi), %edx
	movb	%dl, 11(%rsp)
	leal	(%rcx,%rdx,2), %esi
	movl	%esi, 12(%rsp)
	leal	(%rax,%rdx,2), %r8d
	movl	%r8d, 44(%rsp)
	movslq	16(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	-3(%rax,%rcx), %rdi
	movq	%rdi, 32(%rsp)
	movq	48(%rsp), %rdi
	leaq	(%rax,%rcx), %rdx
	addq	$-2, %rdx
	movq	%rdx, 32(%rsp)
	movzbl	-3(%rax,%rcx), %edx
	subq	%rdx, %rdi
	movzbl	(%rdi), %edx
	movb	%dl, 11(%rsp)
	subl	%edx, %esi
	movl	%esi, 12(%rsp)
	leal	(%rdx,%rdx,2), %edx
	addl	%r8d, %edx
	movl	%edx, 44(%rsp)
	movq	48(%rsp), %rsi
	leaq	(%rax,%rcx), %rdi
	addq	$-1, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-2(%rax,%rcx), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	movb	%sil, 11(%rsp)
	leal	(%rsi,%rsi,2), %esi
	addl	%edx, %esi
	movl	%esi, 44(%rsp)
	movq	48(%rsp), %rdx
	movzbl	-1(%rax,%rcx), %eax
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	movb	%al, 11(%rsp)
	movl	%eax, %ecx
	addl	12(%rsp), %ecx
	leal	(%rax,%rax,2), %eax
	movl	%ecx, 12(%rsp)
	addl	%esi, %eax
	movl	%eax, 44(%rsp)
	imull	%ecx, %ecx
	movl	%ecx, 116(%rsp)
	imull	%eax, %eax
	movl	%eax, 112(%rsp)
	addl	%ecx, %eax
	movl	%eax, 68(%rsp)
	movl	20(%rsp), %ecx
	imull	%ecx, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	addl	%ecx, %edx
	sarl	%edx
	cmpl	%edx, %eax
	jle	.LBB16_29
# %bb.24:                               #   in Loop: Header=BB16_3 Depth=2
	movl	112(%rsp), %eax
	cmpl	116(%rsp), %eax
	jge	.LBB16_26
# %bb.25:                               #   in Loop: Header=BB16_3 Depth=2
	cvtsi2ssl	44(%rsp), %xmm0
	movss	%xmm0, 80(%rsp)         # 4-byte Spill
	movl	12(%rsp), %edi
	callq	abs
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, 84(%rsp)
	movl	12(%rsp), %edi
	callq	abs
	cltd
	idivl	12(%rsp)
	movl	%eax, 68(%rsp)
	movq	48(%rsp), %r10
	movq	88(%rsp), %r8
	movss	84(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm0, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movapd	%xmm1, %xmm2
	movsd	.LCPI16_0(%rip), %xmm4  # xmm4 = mem[0],zero
	subsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %edx
	movslq	28(%rsp), %r9
	addsd	%xmm4, %xmm1
	cvttsd2si	%xmm1, %edi
	cmoval	%edx, %edi
	movslq	%edi, %rsi
	addq	%r9, %rsi
	movslq	16(%rsp), %r11
	imulq	%r11, %rsi
	movslq	24(%rsp), %rdx
	addq	%rdx, %rsi
	cltq
	addq	%rax, %rsi
	movzbl	(%r8,%rsi), %esi
	movq	%r10, %rcx
	subq	%rsi, %rcx
	movaps	%xmm0, %xmm1
	addss	%xmm0, %xmm1
	ucomiss	%xmm1, %xmm3
	cvtss2sd	%xmm1, %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %esi
	addsd	%xmm4, %xmm1
	cvttsd2si	%xmm1, %edi
	movzbl	(%rcx), %ecx
	cmoval	%esi, %edi
	movslq	%edi, %rsi
	addq	%r9, %rsi
	imulq	%r11, %rsi
	addq	%rdx, %rsi
	leaq	(%rsi,%rax,2), %rsi
	movzbl	(%r8,%rsi), %esi
	movq	%r10, %rdi
	subq	%rsi, %rdi
	movzbl	(%rdi), %esi
	addl	%ecx, %esi
	movss	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm3
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm4, %xmm1
	cvttsd2si	%xmm1, %ecx
	addsd	%xmm4, %xmm0
	cvttsd2si	%xmm0, %edi
	cmoval	%ecx, %edi
	movslq	%edi, %rcx
	addq	%r9, %rcx
	imulq	%r11, %rcx
	addq	%rdx, %rcx
	leaq	(%rax,%rax,2), %rax
	addq	%rcx, %rax
	movzbl	(%r8,%rax), %eax
	subq	%rax, %r10
	movzbl	(%r10), %eax
	addl	%esi, %eax
	jmp	.LBB16_27
.LBB16_26:                              #   in Loop: Header=BB16_3 Depth=2
	cvtsi2ssl	12(%rsp), %xmm0
	movss	%xmm0, 80(%rsp)         # 4-byte Spill
	movl	44(%rsp), %edi
	callq	abs
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	80(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, 84(%rsp)
	movl	44(%rsp), %edi
	callq	abs
	cltd
	idivl	44(%rsp)
                                        # kill: def $eax killed $eax def $rax
	movl	28(%rsp), %r8d
	leal	(%r8,%rax), %esi
	movl	16(%rsp), %r10d
	imull	%r10d, %esi
	movl	24(%rsp), %r11d
	addl	%r11d, %esi
	movss	84(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm3, %xmm3
	ucomiss	%xmm0, %xmm3
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movapd	%xmm1, %xmm2
	movsd	.LCPI16_0(%rip), %xmm4  # xmm4 = mem[0],zero
	subsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %ecx
	addsd	%xmm4, %xmm1
	cvttsd2si	%xmm1, %edi
	movl	%eax, 68(%rsp)
	cmoval	%ecx, %edi
	movq	48(%rsp), %rcx
	movq	88(%rsp), %r9
	addl	%esi, %edi
	movslq	%edi, %rsi
	movzbl	(%r9,%rsi), %esi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	leal	(%r8,%rax,2), %esi
	imull	%r10d, %esi
	addl	%r11d, %esi
	movaps	%xmm0, %xmm1
	addss	%xmm0, %xmm1
	ucomiss	%xmm1, %xmm3
	cvtss2sd	%xmm1, %xmm1
	movapd	%xmm1, %xmm2
	subsd	%xmm4, %xmm2
	cvttsd2si	%xmm2, %edx
	movzbl	(%rdi), %edi
	addsd	%xmm4, %xmm1
	cvttsd2si	%xmm1, %ebx
	cmoval	%edx, %ebx
	addl	%esi, %ebx
	movslq	%ebx, %rdx
	movzbl	(%r9,%rdx), %edx
	movq	%rcx, %rsi
	subq	%rdx, %rsi
	movzbl	(%rsi), %edx
	addl	%edi, %edx
	leal	(%rax,%rax,2), %eax
	addl	%r8d, %eax
	imull	%r10d, %eax
	addl	%r11d, %eax
	movss	.LCPI16_1(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm1, %xmm0
	ucomiss	%xmm0, %xmm3
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm4, %xmm1
	cvttsd2si	%xmm1, %esi
	addsd	%xmm4, %xmm0
	cvttsd2si	%xmm0, %edi
	cmoval	%esi, %edi
	addl	%eax, %edi
	movslq	%edi, %rax
	movzbl	(%r9,%rax), %eax
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%edx, %eax
.LBB16_27:                              #   in Loop: Header=BB16_3 Depth=2
	movl	%eax, 68(%rsp)
	cmpl	$291, 68(%rsp)          # imm = 0x123
	jl	.LBB16_29
# %bb.28:                               #   in Loop: Header=BB16_3 Depth=2
	movl	64(%rsp), %eax
	subl	20(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	movl	%eax, (%rcx,%rdx,4)
	imull	$51, 12(%rsp), %eax
	cltd
	idivl	20(%rsp)
	movq	104(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	movl	%eax, (%rcx,%rdx,4)
	imull	$51, 44(%rsp), %eax
	cltd
	idivl	20(%rsp)
	movq	96(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB16_29
.LBB16_31:
	movl	$0, 20(%rsp)
	movl	$5, 28(%rsp)
	jmp	.LBB16_32
	.p2align	4, 0x90
.LBB16_86:                              #   in Loop: Header=BB16_32 Depth=1
	addl	$1, 28(%rsp)
.LBB16_32:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_34 Depth 2
	movl	144(%rsp), %eax
	addl	$-5, %eax
	cmpl	%eax, 28(%rsp)
	jge	.LBB16_87
# %bb.33:                               #   in Loop: Header=BB16_32 Depth=1
	movl	$5, 24(%rsp)
	jmp	.LBB16_34
	.p2align	4, 0x90
.LBB16_85:                              #   in Loop: Header=BB16_34 Depth=2
	addl	$1, 24(%rsp)
.LBB16_34:                              #   Parent Loop BB16_32 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	16(%rsp), %eax
	addl	$-5, %eax
	cmpl	%eax, 24(%rsp)
	jge	.LBB16_86
# %bb.35:                               #   in Loop: Header=BB16_34 Depth=2
	movq	56(%rsp), %rax
	movslq	28(%rsp), %rcx
	movslq	16(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	24(%rsp), %rcx
	addq	%rdx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 12(%rsp)
	testl	%eax, %eax
	jle	.LBB16_85
# %bb.36:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.37:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.38:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.39:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.40:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.41:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.42:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.43:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.44:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.45:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.46:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.47:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.48:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.49:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.50:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.51:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.52:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.53:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.54:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.55:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.56:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$-1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.57:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.58:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.59:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jle	.LBB16_85
# %bb.60:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.61:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.62:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.63:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.64:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.65:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.66:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.67:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.68:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.69:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$1, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.70:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.71:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.72:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.73:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.74:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.75:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.76:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$2, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.77:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.78:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.79:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.80:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.81:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.82:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.83:                               #   in Loop: Header=BB16_34 Depth=2
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	28(%rsp), %rdx
	addq	$3, %rdx
	movslq	16(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	24(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jl	.LBB16_85
# %bb.84:                               #   in Loop: Header=BB16_34 Depth=2
	movq	72(%rsp), %rax
	movslq	20(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	$0, 8(%rax,%rcx,8)
	movl	24(%rsp), %eax
	movq	72(%rsp), %rcx
	movslq	20(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%eax, (%rcx,%rdx,8)
	movl	28(%rsp), %eax
	movq	72(%rsp), %rcx
	movslq	20(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%eax, 4(%rcx,%rdx,8)
	movq	104(%rsp), %rax
	movslq	28(%rsp), %rcx
	movslq	16(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	24(%rsp), %rcx
	addq	%rdx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	72(%rsp), %rcx
	movslq	20(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%eax, 12(%rcx,%rdx,8)
	movq	96(%rsp), %rax
	movslq	28(%rsp), %rcx
	movslq	16(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	24(%rsp), %rcx
	addq	%rdx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	72(%rsp), %rcx
	movslq	20(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%eax, 16(%rcx,%rdx,8)
	movq	88(%rsp), %rax
	movslq	28(%rsp), %rcx
	movslq	16(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	24(%rsp), %rcx
	addq	%rdx, %rcx
	movzbl	(%rax,%rcx), %eax
	movq	72(%rsp), %rcx
	movslq	20(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%eax, 20(%rcx,%rdx,8)
	movl	20(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 20(%rsp)
	cmpl	$15000, %eax            # imm = 0x3A98
	jne	.LBB16_85
# %bb.88:
	movq	stderr(%rip), %rdi
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB16_87:
	movq	72(%rsp), %rax
	movslq	20(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	$7, 8(%rax,%rcx,8)
	movq	104(%rsp), %rdi
	callq	free
	movq	96(%rsp), %rdi
	callq	free
	addq	$128, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	susan_corners, .Lfunc_end16-susan_corners
	.cfi_endproc
                                        # -- End function
	.globl	susan_corners_quick     # -- Begin function susan_corners_quick
	.p2align	4, 0x90
	.type	susan_corners_quick,@function
susan_corners_quick:                    # @susan_corners_quick
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, 72(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 80(%rsp)
	movl	%ecx, 44(%rsp)
	movq	%r8, 56(%rsp)
	movl	%r9d, 8(%rsp)
	movslq	%r9d, %rax
	movslq	112(%rsp), %rdx
	imulq	%rax, %rdx
	shlq	$2, %rdx
	movq	%rsi, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$7, 16(%rsp)
	jmp	.LBB17_1
	.p2align	4, 0x90
.LBB17_25:                              #   in Loop: Header=BB17_1 Depth=1
	addl	$1, 16(%rsp)
.LBB17_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_3 Depth 2
	movl	112(%rsp), %eax
	addl	$-7, %eax
	cmpl	%eax, 16(%rsp)
	jge	.LBB17_26
# %bb.2:                                #   in Loop: Header=BB17_1 Depth=1
	movl	$7, 12(%rsp)
	jmp	.LBB17_3
	.p2align	4, 0x90
.LBB17_24:                              #   in Loop: Header=BB17_3 Depth=2
	addl	$1, 12(%rsp)
.LBB17_3:                               #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%rsp), %eax
	addl	$-7, %eax
	cmpl	%eax, 12(%rsp)
	jge	.LBB17_25
# %bb.4:                                #   in Loop: Header=BB17_3 Depth=2
	movl	$100, 4(%rsp)
	movslq	16(%rsp), %rsi
	leaq	-3(%rsi), %rax
	movslq	8(%rsp), %r9
	imulq	%r9, %rax
	movq	72(%rsp), %r8
	addq	%r8, %rax
	movslq	12(%rsp), %rdx
	leaq	(%rax,%rdx), %r10
	leaq	(%rdx,%rax), %rdi
	addq	$-1, %rdi
	movq	%rdi, 32(%rsp)
	imulq	%r9, %rsi
	addq	%rdx, %rsi
	movzbl	(%r8,%rsi), %ecx
	addq	80(%rsp), %rcx
	movq	%rcx, 48(%rsp)
	movq	%r10, 32(%rsp)
	movzbl	-1(%rdx,%rax), %r8d
	movq	%rcx, %rsi
	subq	%r8, %rsi
	movzbl	(%rsi), %r8d
	leal	100(%r8), %esi
	movl	%esi, 4(%rsp)
	leaq	(%rdx,%rax), %rsi
	addq	$1, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	(%rdx,%rax), %esi
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	movzbl	(%rdi), %esi
	leal	(%r8,%rsi), %esi
	addl	$100, %esi
	movl	%esi, 4(%rsp)
	movzbl	1(%rdx,%rax), %eax
	subq	%rax, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, 4(%rsp)
	movslq	8(%rsp), %rdx
	leaq	(%rdx,%r10), %rax
	addq	$1, %rax
	leaq	-2(%rdx,%r10), %rsi
	movq	%rsi, 32(%rsp)
	movq	48(%rsp), %rsi
	leaq	(%rdx,%r10), %rdi
	addq	$-1, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-2(%rdx,%r10), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, 4(%rsp)
	movq	48(%rsp), %rcx
	leaq	-1(%rax), %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-1(%rdx,%r10), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, 4(%rsp)
	movq	48(%rsp), %rsi
	movq	%rax, 32(%rsp)
	movzbl	(%rdx,%r10), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, 4(%rsp)
	movq	48(%rsp), %rcx
	leaq	(%rdx,%r10), %rdi
	addq	$2, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	1(%rdx,%r10), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, 4(%rsp)
	movq	48(%rsp), %rsi
	movzbl	2(%rdx,%r10), %edx
	subq	%rdx, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, 4(%rsp)
	movslq	8(%rsp), %rdx
	leaq	(%rdx,%rax), %r8
	addq	$1, %r8
	leaq	-4(%rdx,%rax), %rdi
	movq	%rdi, 32(%rsp)
	movq	48(%rsp), %rdi
	leaq	(%rdx,%rax), %rcx
	addq	$-3, %rcx
	movq	%rcx, 32(%rsp)
	movzbl	-4(%rdx,%rax), %ecx
	subq	%rcx, %rdi
	movzbl	(%rdi), %ecx
	addl	%esi, %ecx
	movl	%ecx, 4(%rsp)
	movq	48(%rsp), %rsi
	leaq	(%rdx,%rax), %rdi
	addq	$-2, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-3(%rdx,%rax), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, 4(%rsp)
	movq	48(%rsp), %rcx
	leaq	(%rdx,%rax), %rdi
	addq	$-1, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-2(%rdx,%rax), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, 4(%rsp)
	movq	48(%rsp), %rsi
	leaq	-1(%r8), %rdi
	movq	%rdi, 32(%rsp)
	movzbl	-1(%rdx,%rax), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, 4(%rsp)
	movq	48(%rsp), %rcx
	movq	%r8, 32(%rsp)
	movzbl	(%rdx,%rax), %edi
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	addl	%esi, %ecx
	movl	%ecx, 4(%rsp)
	movq	48(%rsp), %rsi
	leaq	(%rdx,%rax), %rdi
	addq	$2, %rdi
	movq	%rdi, 32(%rsp)
	movzbl	1(%rdx,%rax), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	addl	%ecx, %esi
	movl	%esi, 4(%rsp)
	movq	48(%rsp), %rcx
	movzbl	2(%rdx,%rax), %eax
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%esi, %eax
	movl	%eax, 4(%rsp)
	movslq	8(%rsp), %rcx
	leaq	(%rcx,%r8), %rdx
	addq	$-5, %rdx
	movq	%rdx, 32(%rsp)
	movq	48(%rsp), %rdx
	leaq	(%rcx,%r8), %rsi
	addq	$-4, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-5(%rcx,%r8), %esi
	subq	%rsi, %rdx
	movzbl	(%rdx), %edx
	addl	%eax, %edx
	movl	%edx, 4(%rsp)
	movq	48(%rsp), %rax
	leaq	(%rcx,%r8), %rsi
	addq	$-3, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-4(%rcx,%r8), %esi
	subq	%rsi, %rax
	movzbl	(%rax), %eax
	addl	%edx, %eax
	movl	%eax, 4(%rsp)
	movq	48(%rsp), %rdx
	movzbl	-3(%rcx,%r8), %ecx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%eax, %ecx
	movl	%ecx, 4(%rsp)
	cmpl	44(%rsp), %ecx
	jge	.LBB17_24
# %bb.5:                                #   in Loop: Header=BB17_3 Depth=2
	movq	32(%rsp), %rax
	movq	48(%rsp), %rcx
	leaq	3(%rax), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	2(%rax), %eax
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.6:                                #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.7:                                #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.8:                                #   in Loop: Header=BB17_3 Depth=2
	movslq	8(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	48(%rsp), %rdx
	leaq	(%rax,%rcx), %rsi
	addq	$-5, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-6(%rax,%rcx), %eax
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.9:                                #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.10:                               #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.11:                               #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.12:                               #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.13:                               #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.14:                               #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.15:                               #   in Loop: Header=BB17_3 Depth=2
	movslq	8(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	48(%rsp), %rdx
	leaq	(%rax,%rcx), %rsi
	addq	$-4, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-5(%rax,%rcx), %eax
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.16:                               #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.17:                               #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.18:                               #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.19:                               #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.20:                               #   in Loop: Header=BB17_3 Depth=2
	movslq	8(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	48(%rsp), %rdx
	leaq	(%rax,%rcx), %rsi
	addq	$-2, %rsi
	movq	%rsi, 32(%rsp)
	movzbl	-3(%rax,%rcx), %eax
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.21:                               #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, 32(%rsp)
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.22:                               #   in Loop: Header=BB17_3 Depth=2
	movq	48(%rsp), %rax
	movq	32(%rsp), %rcx
	movzbl	(%rcx), %ecx
	subq	%rcx, %rax
	movzbl	(%rax), %eax
	addl	4(%rsp), %eax
	movl	%eax, 4(%rsp)
	cmpl	44(%rsp), %eax
	jge	.LBB17_24
# %bb.23:                               #   in Loop: Header=BB17_3 Depth=2
	movl	44(%rsp), %eax
	subl	4(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	movl	%eax, (%rcx,%rdx,4)
	jmp	.LBB17_24
.LBB17_26:
	movl	$0, 4(%rsp)
	movl	$7, 16(%rsp)
	jmp	.LBB17_27
	.p2align	4, 0x90
.LBB17_81:                              #   in Loop: Header=BB17_27 Depth=1
	addl	$1, 16(%rsp)
.LBB17_27:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_29 Depth 2
	movl	112(%rsp), %eax
	addl	$-7, %eax
	cmpl	%eax, 16(%rsp)
	jge	.LBB17_82
# %bb.28:                               #   in Loop: Header=BB17_27 Depth=1
	movl	$7, 12(%rsp)
	jmp	.LBB17_29
	.p2align	4, 0x90
.LBB17_80:                              #   in Loop: Header=BB17_29 Depth=2
	addl	$1, 12(%rsp)
.LBB17_29:                              #   Parent Loop BB17_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%rsp), %eax
	addl	$-7, %eax
	cmpl	%eax, 12(%rsp)
	jge	.LBB17_81
# %bb.30:                               #   in Loop: Header=BB17_29 Depth=2
	movq	24(%rsp), %rax
	movslq	16(%rsp), %rcx
	movslq	8(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	12(%rsp), %rcx
	addq	%rdx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 20(%rsp)
	testl	%eax, %eax
	jle	.LBB17_80
# %bb.31:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.32:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.33:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.34:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.35:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.36:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.37:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.38:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.39:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.40:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.41:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.42:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.43:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.44:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.45:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.46:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.47:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.48:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.49:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.50:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.51:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$-1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.52:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.53:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.54:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jle	.LBB17_80
# %bb.55:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.56:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.57:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.58:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.59:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.60:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.61:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.62:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.63:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.64:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$1, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.65:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.66:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.67:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.68:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.69:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.70:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.71:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$2, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.72:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-12(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.73:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-8(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.74:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	-4(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.75:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.76:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	4(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.77:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	8(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.78:                               #   in Loop: Header=BB17_29 Depth=2
	movl	20(%rsp), %eax
	movq	24(%rsp), %rcx
	movslq	16(%rsp), %rdx
	addq	$3, %rdx
	movslq	8(%rsp), %rsi
	imulq	%rdx, %rsi
	movslq	12(%rsp), %rdx
	addq	%rsi, %rdx
	cmpl	12(%rcx,%rdx,4), %eax
	jl	.LBB17_80
# %bb.79:                               #   in Loop: Header=BB17_29 Depth=2
	movq	56(%rsp), %rax
	movslq	4(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	$0, 8(%rax,%rcx,8)
	movl	12(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	4(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%eax, (%rcx,%rdx,8)
	movl	16(%rsp), %eax
	movq	56(%rsp), %rcx
	movslq	4(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%eax, 4(%rcx,%rdx,8)
	movq	72(%rsp), %rax
	movslq	16(%rsp), %rcx
	leaq	-2(%rcx), %rdi
	movslq	8(%rsp), %r8
	imulq	%r8, %rdi
	movslq	12(%rsp), %r9
	addq	%r9, %rdi
	movzbl	-2(%rax,%rdi), %edx
	movzbl	-1(%rax,%rdi), %esi
	addl	%edx, %esi
	movzbl	(%rax,%rdi), %edx
	addl	%esi, %edx
	movzbl	1(%rax,%rdi), %esi
	addl	%edx, %esi
	movzbl	2(%rax,%rdi), %edx
	addl	%esi, %edx
	leaq	-1(%rcx), %rsi
	imulq	%r8, %rsi
	addq	%r9, %rsi
	movzbl	-2(%rax,%rsi), %edi
	addl	%edx, %edi
	movzbl	-1(%rax,%rsi), %edx
	addl	%edi, %edx
	movzbl	(%rax,%rsi), %edi
	addl	%edx, %edi
	movzbl	1(%rax,%rsi), %edx
	addl	%edi, %edx
	movzbl	2(%rax,%rsi), %esi
	addl	%edx, %esi
	movq	%rcx, %rdx
	imulq	%r8, %rdx
	addq	%r9, %rdx
	movzbl	-2(%rax,%rdx), %edi
	addl	%esi, %edi
	movzbl	-1(%rax,%rdx), %esi
	addl	%edi, %esi
	movzbl	(%rax,%rdx), %edi
	addl	%esi, %edi
	movzbl	1(%rax,%rdx), %esi
	addl	%edi, %esi
	movzbl	2(%rax,%rdx), %edx
	addl	%esi, %edx
	leaq	1(%rcx), %rsi
	imulq	%r8, %rsi
	addq	%r9, %rsi
	movzbl	-2(%rax,%rsi), %edi
	addl	%edx, %edi
	movzbl	-1(%rax,%rsi), %edx
	addl	%edi, %edx
	movzbl	(%rax,%rsi), %edi
	addl	%edx, %edi
	movzbl	1(%rax,%rsi), %edx
	addl	%edi, %edx
	movzbl	2(%rax,%rsi), %esi
	addl	%edx, %esi
	addq	$2, %rcx
	imulq	%r8, %rcx
	addq	%r9, %rcx
	movzbl	-2(%rax,%rcx), %edx
	addl	%esi, %edx
	movzbl	-1(%rax,%rcx), %esi
	addl	%edx, %esi
	movzbl	(%rax,%rcx), %edx
	addl	%esi, %edx
	movzbl	1(%rax,%rcx), %esi
	addl	%edx, %esi
	movzbl	2(%rax,%rcx), %eax
	addl	%esi, %eax
	movl	%eax, 20(%rsp)
	cltq
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	shrq	$32, %rax
	sarl	$3, %eax
	addl	%ecx, %eax
	movq	56(%rsp), %rcx
	movslq	4(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%eax, 20(%rcx,%rdx,8)
	movq	72(%rsp), %rax
	movslq	16(%rsp), %rdi
	leaq	-2(%rdi), %r10
	movslq	8(%rsp), %r8
	imulq	%r8, %r10
	movslq	12(%rsp), %r11
	addq	%r11, %r10
	movzbl	2(%rax,%r10), %ecx
	leaq	-1(%rdi), %r9
	imulq	%r8, %r9
	addq	%r11, %r9
	movzbl	2(%rax,%r9), %esi
	addl	%ecx, %esi
	movq	%rdi, %rcx
	imulq	%r8, %rcx
	addq	%r11, %rcx
	movzbl	2(%rax,%rcx), %edx
	addl	%esi, %edx
	leaq	1(%rdi), %r14
	imulq	%r8, %r14
	addq	%r11, %r14
	movzbl	2(%rax,%r14), %ebx
	addl	%edx, %ebx
	addq	$2, %rdi
	imulq	%r8, %rdi
	addq	%r11, %rdi
	movzbl	2(%rax,%rdi), %edx
	addl	%ebx, %edx
	movzbl	-2(%rax,%r10), %r8d
	movzbl	-2(%rax,%r9), %ebx
	addl	%r8d, %ebx
	movzbl	-2(%rax,%rcx), %esi
	addl	%ebx, %esi
	movzbl	-2(%rax,%r14), %ebx
	addl	%esi, %ebx
	movzbl	-2(%rax,%rdi), %esi
	addl	%ebx, %esi
	subl	%esi, %edx
	movl	%edx, 20(%rsp)
	movzbl	1(%rax,%r10), %esi
	addl	%edx, %esi
	movzbl	1(%rax,%r9), %ebx
	addl	%esi, %ebx
	movzbl	1(%rax,%rcx), %esi
	addl	%ebx, %esi
	movzbl	1(%rax,%r14), %ebx
	addl	%esi, %ebx
	movzbl	1(%rax,%rdi), %r8d
	addl	%ebx, %r8d
	movzbl	-1(%rax,%r10), %esi
	movzbl	-1(%rax,%r9), %ebx
	addl	%esi, %ebx
	movzbl	-1(%rax,%rcx), %ecx
	addl	%ebx, %ecx
	movzbl	-1(%rax,%r14), %esi
	addl	%ecx, %esi
	movzbl	-1(%rax,%rdi), %ecx
	addl	%esi, %ecx
	subl	%ecx, %r8d
	addl	%edx, %r8d
	movl	%r8d, 20(%rsp)
	movzbl	-2(%rax,%rdi), %ecx
	movzbl	-1(%rax,%rdi), %edx
	addl	%ecx, %edx
	movzbl	(%rax,%rdi), %ecx
	addl	%edx, %ecx
	movzbl	1(%rax,%rdi), %edx
	addl	%ecx, %edx
	movzbl	2(%rax,%rdi), %ecx
	addl	%edx, %ecx
	movzbl	-2(%rax,%r10), %edx
	movzbl	-1(%rax,%r10), %esi
	addl	%edx, %esi
	movzbl	(%rax,%r10), %edx
	addl	%esi, %edx
	movzbl	1(%rax,%r10), %esi
	addl	%edx, %esi
	movzbl	2(%rax,%r10), %edx
	addl	%esi, %edx
	subl	%edx, %ecx
	movl	%ecx, 68(%rsp)
	movzbl	-2(%rax,%r14), %edx
	addl	%ecx, %edx
	movzbl	-1(%rax,%r14), %esi
	addl	%edx, %esi
	movzbl	(%rax,%r14), %edx
	addl	%esi, %edx
	movzbl	1(%rax,%r14), %esi
	addl	%edx, %esi
	movzbl	2(%rax,%r14), %edx
	addl	%esi, %edx
	movzbl	-2(%rax,%r9), %esi
	movzbl	-1(%rax,%r9), %edi
	addl	%esi, %edi
	movzbl	(%rax,%r9), %esi
	addl	%edi, %esi
	movzbl	1(%rax,%r9), %edi
	addl	%esi, %edi
	movzbl	2(%rax,%r9), %eax
	addl	%edi, %eax
	subl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, 68(%rsp)
	movslq	%r8d, %rax
	imulq	$-2004318071, %rax, %rcx # imm = 0x88888889
	shrq	$32, %rcx
	addl	%ecx, %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	sarl	$3, %eax
	addl	%ecx, %eax
	movq	56(%rsp), %rcx
	movslq	4(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%eax, 12(%rcx,%rdx,8)
	movslq	68(%rsp), %rax
	imulq	$-2004318071, %rax, %rcx # imm = 0x88888889
	shrq	$32, %rcx
	addl	%eax, %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	sarl	$3, %ecx
	addl	%eax, %ecx
	movq	56(%rsp), %rax
	movslq	4(%rsp), %rdx
	leaq	(%rdx,%rdx,2), %rdx
	movl	%ecx, 16(%rax,%rdx,8)
	movl	4(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 4(%rsp)
	cmpl	$15000, %eax            # imm = 0x3A98
	jne	.LBB17_80
# %bb.83:
	movq	stderr(%rip), %rdi
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB17_82:
	movq	56(%rsp), %rax
	movslq	4(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	$7, 8(%rax,%rcx,8)
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	susan_corners_quick, .Lfunc_end17-susan_corners_quick
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI18_0:
	.long	0                       # float 0
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$360232, %rsp           # imm = 0x57F28
	.cfi_def_cfa_offset 360240
	movl	$0, 116(%rsp)
	movl	%edi, 60(%rsp)
	movq	%rsi, 88(%rsp)
	movl	$1082130432, 112(%rsp)  # imm = 0x40800000
	movl	$3, 28(%rsp)
	movl	$20, 56(%rsp)
	movl	$0, 52(%rsp)
	movl	$1, 108(%rsp)
	movl	$0, 36(%rsp)
	movl	$0, 84(%rsp)
	movl	$0, 104(%rsp)
	movl	$1850, 100(%rsp)        # imm = 0x73A
	movl	$2650, 96(%rsp)         # imm = 0xA5A
	movl	$0, 32(%rsp)
	cmpl	$2, 60(%rsp)
	jg	.LBB18_2
# %bb.1:
	callq	usage
.LBB18_2:
	movq	88(%rsp), %rax
	movq	8(%rax), %rdi
	leaq	40(%rsp), %rsi
	leaq	20(%rsp), %rdx
	leaq	24(%rsp), %rcx
	callq	get_image
	jmp	.LBB18_3
	.p2align	4, 0x90
.LBB18_23:                              #   in Loop: Header=BB18_3 Depth=1
	callq	usage
.LBB18_24:                              #   in Loop: Header=BB18_3 Depth=1
	addl	$1, 28(%rsp)
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	movl	28(%rsp), %eax
	cmpl	60(%rsp), %eax
	jge	.LBB18_25
# %bb.4:                                #   in Loop: Header=BB18_3 Depth=1
	movq	88(%rsp), %rax
	movslq	28(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 120(%rsp)
	cmpb	$45, (%rax)
	jne	.LBB18_23
# %bb.5:                                #   in Loop: Header=BB18_3 Depth=1
	movq	120(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 120(%rsp)
	movsbl	1(%rax), %eax
	addl	$-51, %eax
	cmpl	$65, %eax
	ja	.LBB18_24
# %bb.6:                                #   in Loop: Header=BB18_3 Depth=1
	jmpq	*.LJTI18_0(,%rax,8)
.LBB18_13:                              #   in Loop: Header=BB18_3 Depth=1
	movl	$1, 36(%rsp)
	addl	$1, 28(%rsp)
	jmp	.LBB18_3
.LBB18_9:                               #   in Loop: Header=BB18_3 Depth=1
	movl	$2, 32(%rsp)
	addl	$1, 28(%rsp)
	jmp	.LBB18_3
.LBB18_11:                              #   in Loop: Header=BB18_3 Depth=1
	movl	$0, 108(%rsp)
	addl	$1, 28(%rsp)
	jmp	.LBB18_3
.LBB18_12:                              #   in Loop: Header=BB18_3 Depth=1
	movl	$1, 84(%rsp)
	addl	$1, 28(%rsp)
	jmp	.LBB18_3
.LBB18_10:                              #   in Loop: Header=BB18_3 Depth=1
	movl	$1, 52(%rsp)
	addl	$1, 28(%rsp)
	jmp	.LBB18_3
.LBB18_14:                              #   in Loop: Header=BB18_3 Depth=1
	movl	$1, 104(%rsp)
	addl	$1, 28(%rsp)
	jmp	.LBB18_3
.LBB18_15:                              #   in Loop: Header=BB18_3 Depth=1
	movl	28(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rsp)
	cmpl	60(%rsp), %eax
	jge	.LBB18_16
# %bb.18:                               #   in Loop: Header=BB18_3 Depth=1
	movq	88(%rsp), %rax
	movslq	28(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	atof
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 112(%rsp)
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB18_24
# %bb.19:                               #   in Loop: Header=BB18_3 Depth=1
	movl	$1, 36(%rsp)
	addl	$1, 28(%rsp)
	jmp	.LBB18_3
.LBB18_8:                               #   in Loop: Header=BB18_3 Depth=1
	movl	$1, 32(%rsp)
	addl	$1, 28(%rsp)
	jmp	.LBB18_3
.LBB18_20:                              #   in Loop: Header=BB18_3 Depth=1
	movl	28(%rsp), %eax
	addl	$1, %eax
	movl	%eax, 28(%rsp)
	cmpl	60(%rsp), %eax
	jge	.LBB18_21
# %bb.22:                               #   in Loop: Header=BB18_3 Depth=1
	movq	88(%rsp), %rax
	movslq	28(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	atoi
	movl	%eax, 56(%rsp)
	addl	$1, 28(%rsp)
	jmp	.LBB18_3
.LBB18_7:                               #   in Loop: Header=BB18_3 Depth=1
	movl	$0, 32(%rsp)
	addl	$1, 28(%rsp)
	jmp	.LBB18_3
.LBB18_25:
	cmpl	$1, 52(%rsp)
	jne	.LBB18_28
# %bb.26:
	cmpl	$0, 32(%rsp)
	jne	.LBB18_28
# %bb.27:
	movl	$1, 32(%rsp)
.LBB18_28:
	movl	32(%rsp), %eax
	cmpl	$2, %eax
	je	.LBB18_43
# %bb.29:
	cmpl	$1, %eax
	je	.LBB18_32
# %bb.30:
	testl	%eax, %eax
	jne	.LBB18_49
# %bb.31:
	movl	56(%rsp), %esi
	leaq	72(%rsp), %rdi
	movl	$2, %edx
	callq	setup_brightness_lut
	movl	36(%rsp), %edi
	movq	40(%rsp), %rsi
	movss	112(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	20(%rsp), %edx
	movl	24(%rsp), %ecx
	movq	72(%rsp), %r8
	callq	susan_smoothing
	jmp	.LBB18_49
.LBB18_32:
	movslq	20(%rsp), %rax
	movslq	24(%rsp), %rdi
	imulq	%rax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 64(%rsp)
	movl	56(%rsp), %esi
	leaq	72(%rsp), %rdi
	movl	$6, %edx
	callq	setup_brightness_lut
	cmpl	$0, 52(%rsp)
	je	.LBB18_37
# %bb.33:
	cmpl	$0, 36(%rsp)
	movq	40(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movl	96(%rsp), %ecx
	movl	20(%rsp), %r8d
	movl	24(%rsp), %r9d
	je	.LBB18_35
# %bb.34:
	callq	susan_principle_small
	jmp	.LBB18_36
.LBB18_43:
	movslq	20(%rsp), %rax
	movslq	24(%rsp), %rdi
	imulq	%rax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, 64(%rsp)
	movl	56(%rsp), %esi
	leaq	72(%rsp), %rdi
	movl	$6, %edx
	callq	setup_brightness_lut
	cmpl	$0, 52(%rsp)
	je	.LBB18_45
# %bb.44:
	movq	40(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movl	100(%rsp), %ecx
	movl	20(%rsp), %r8d
	movl	24(%rsp), %r9d
.LBB18_35:
	callq	susan_principle
.LBB18_36:
	movq	64(%rsp), %rdi
	movq	40(%rsp), %rsi
	movl	20(%rsp), %edx
	imull	24(%rsp), %edx
	callq	int_to_uchar
	jmp	.LBB18_49
.LBB18_37:
	movslq	20(%rsp), %rax
	movslq	24(%rsp), %rdi
	imulq	%rax, %rdi
	callq	malloc
	movq	%rax, 128(%rsp)
	movslq	20(%rsp), %rcx
	movslq	24(%rsp), %rdx
	imulq	%rcx, %rdx
	movq	%rax, %rdi
	movl	$100, %esi
	callq	memset
	cmpl	$0, 36(%rsp)
	movq	40(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	128(%rsp), %rdx
	movq	72(%rsp), %rcx
	movl	96(%rsp), %r8d
	movl	20(%rsp), %r9d
	movl	24(%rsp), %eax
	je	.LBB18_39
# %bb.38:
	movl	%eax, (%rsp)
	callq	susan_edges_small
	cmpl	$0, 108(%rsp)
	je	.LBB18_42
.LBB18_41:
	movq	64(%rsp), %rdi
	movq	128(%rsp), %rsi
	movl	20(%rsp), %edx
	movl	24(%rsp), %ecx
	callq	susan_thin
.LBB18_42:
	movq	40(%rsp), %rdi
	movq	128(%rsp), %rsi
	movl	20(%rsp), %edx
	movl	24(%rsp), %ecx
	movl	84(%rsp), %r8d
	callq	edge_draw
	jmp	.LBB18_49
.LBB18_45:
	cmpl	$0, 104(%rsp)
	movq	40(%rsp), %rdi
	movq	64(%rsp), %rsi
	movq	72(%rsp), %rdx
	movl	100(%rsp), %ecx
	movl	20(%rsp), %r9d
	movl	24(%rsp), %eax
	je	.LBB18_47
# %bb.46:
	movl	%eax, (%rsp)
	leaq	128(%rsp), %r8
	callq	susan_corners_quick
	jmp	.LBB18_48
.LBB18_39:
	movl	%eax, (%rsp)
	callq	susan_edges
	cmpl	$0, 108(%rsp)
	jne	.LBB18_41
	jmp	.LBB18_42
.LBB18_47:
	movl	%eax, (%rsp)
	leaq	128(%rsp), %r8
	callq	susan_corners
.LBB18_48:
	movq	40(%rsp), %rdi
	movl	20(%rsp), %edx
	movl	84(%rsp), %ecx
	leaq	128(%rsp), %rsi
	callq	corner_draw
.LBB18_49:
	movq	88(%rsp), %rax
	movq	16(%rax), %rdi
	movq	40(%rsp), %rsi
	movl	20(%rsp), %edx
	movl	24(%rsp), %ecx
	callq	put_image
	movl	116(%rsp), %eax
	addq	$360232, %rsp           # imm = 0x57F28
	.cfi_def_cfa_offset 8
	retq
.LBB18_16:
	.cfi_def_cfa_offset 360240
	movl	$.L.str.30, %edi
	jmp	.LBB18_17
.LBB18_21:
	movl	$.L.str.31, %edi
.LBB18_17:
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end18:
	.size	main, .Lfunc_end18-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI18_0:
	.quad	.LBB18_13
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_12
	.quad	.LBB18_9
	.quad	.LBB18_15
	.quad	.LBB18_8
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_24
	.quad	.LBB18_11
	.quad	.LBB18_24
	.quad	.LBB18_10
	.quad	.LBB18_14
	.quad	.LBB18_24
	.quad	.LBB18_7
	.quad	.LBB18_20
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: susan <in.pgm> <out.pgm> [options]\n\n"
	.size	.L.str, 44

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"-s : Smoothing mode (default)\n"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"-e : Edges mode\n"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"-c : Corners mode\n\n"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"See source code for more information about setting the thresholds\n"
	.size	.L.str.4, 67

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"-t <thresh> : Brightness threshold, all modes (default=20)\n"
	.size	.L.str.5, 60

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\n"
	.size	.L.str.6, 107

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"-3 : Use flat 3x3 mask, edges or smoothing mode\n"
	.size	.L.str.7, 49

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"-n : No post-processing on the binary edge map (runs much faster); edges mode\n"
	.size	.L.str.8, 79

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\n"
	.size	.L.str.9, 111

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\n"
	.size	.L.str.10, 108

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\n"
	.size	.L.str.11, 91

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\nSUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\n"
	.size	.L.str.12, 77

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Image %s not binary PGM.\n"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"is"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"r"
	.size	.L.str.15, 2

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Can't input image %s.\n"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Image %s does not have binary PGM header.\n"
	.size	.L.str.17, 43

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Image %s is wrong size.\n"
	.size	.L.str.18, 25

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"w"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Can't output image%s.\n"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"P5\n"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%d %d\n"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"255\n"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Can't write image %s.\n"
	.size	.L.str.24, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Distance_thresh (%f) too big for integer arithmetic.\n"
	.size	.L.str.25, 54

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Either reduce it to <=15 or recompile with variable \"total\"\n"
	.size	.L.str.26, 61

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"as a float: see top \"defines\" section.\n"
	.size	.L.str.27, 40

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\n"
	.size	.L.str.28, 65

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Too many corners.\n"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"No argument following -d\n"
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"No argument following -t\n"
	.size	.L.str.31, 26


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
