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
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$10000, %rsp            # imm = 0x2710
	.cfi_def_cfa_offset 10032
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	callq	_IO_getc
	movl	%eax, %ebx
	movq	%rsp, %r15
	cmpl	$35, %ebx
	jne	.LBB1_2
	jmp	.LBB1_4
	.p2align	4, 0x90
.LBB1_12:
	movq	%r14, %rdi
	callq	_IO_getc
	movl	%eax, %ebx
	cmpl	$35, %ebx
	je	.LBB1_4
.LBB1_2:
	cmpl	$-1, %ebx
	je	.LBB1_3
# %bb.5:
	cmpl	$48, %ebx
	jl	.LBB1_12
.LBB1_6:
	cmpl	$57, %ebx
	jg	.LBB1_12
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_4:
	movq	%r15, %rdi
	movl	$9000, %esi             # imm = 0x2328
	movq	%r14, %rdx
	callq	fgets
	cmpl	$48, %ebx
	jge	.LBB1_6
	jmp	.LBB1_12
.LBB1_7:                                # %.preheader
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	leal	(%r15,%r15,4), %eax
	leal	(%rbx,%rax,2), %r15d
	addl	$-48, %r15d
	movq	%r14, %rdi
	callq	_IO_getc
	cmpl	$-1, %eax
	je	.LBB1_11
# %bb.9:                                #   in Loop: Header=BB1_8 Depth=1
	movl	%eax, %ebx
	cmpl	$48, %eax
	jl	.LBB1_11
# %bb.10:                               #   in Loop: Header=BB1_8 Depth=1
	cmpl	$58, %ebx
	jl	.LBB1_8
.LBB1_11:
	movl	%r15d, %eax
	addq	$10000, %rsp            # imm = 0x2710
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB1_3:
	.cfi_def_cfa_offset 10032
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
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %r14
	movl	$.L.str.15, %esi
	callq	fopen
	testq	%rax, %rax
	je	.LBB2_1
# %bb.3:
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	fgetc
	movb	%al, (%rsp)
	movq	%rbx, %rdi
	callq	fgetc
	movb	%al, 1(%rsp)
	cmpb	$80, (%rsp)
	jne	.LBB2_5
# %bb.4:
	cmpb	$53, 1(%rsp)
	jne	.LBB2_5
# %bb.6:
	movq	%rbx, %rdi
	callq	getint
	movl	%eax, (%r12)
	movq	%rbx, %rdi
	callq	getint
	movl	%eax, (%r15)
	movq	%rbx, %rdi
	callq	getint
	movslq	(%r12), %rax
	movslq	(%r15), %rdi
	imulq	%rax, %rdi
	callq	malloc
	movq	%rax, (%r13)
	movslq	(%r12), %rcx
	movslq	(%r15), %rdx
	imulq	%rcx, %rdx
	movl	$1, %esi
	movq	%rax, %rdi
	movq	%rbx, %rcx
	callq	fread
	testq	%rax, %rax
	je	.LBB2_7
# %bb.8:
	movq	%rbx, %rdi
	callq	fclose
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
.LBB2_5:
	.cfi_def_cfa_offset 160
	movq	stderr(%rip), %rdi
	movl	$.L.str.17, %esi
	jmp	.LBB2_2
.LBB2_1:
	movq	stderr(%rip), %rdi
	movl	$.L.str.16, %esi
	jmp	.LBB2_2
.LBB2_7:
	movq	stderr(%rip), %rdi
	movl	$.L.str.18, %esi
.LBB2_2:
	movq	%r14, %rdx
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
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %r12d
	movl	%edx, %ebp
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	$.L.str.19, %esi
	callq	fopen
	testq	%rax, %rax
	je	.LBB3_1
# %bb.3:
	movq	%rax, %rbx
	movl	$.L.str.21, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	fprintf
	movl	$.L.str.22, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movl	%r12d, %ecx
	xorl	%eax, %eax
	callq	fprintf
	movl	$.L.str.23, %esi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	callq	fprintf
	imull	%r12d, %ebp
	movslq	%ebp, %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rbx, %rcx
	callq	fwrite
	cmpq	$1, %rax
	jne	.LBB3_4
# %bb.5:
	movq	%rbx, %rdi
	callq	fclose
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
.LBB3_1:
	.cfi_def_cfa_offset 48
	movq	stderr(%rip), %rdi
	movl	$.L.str.20, %esi
	jmp	.LBB3_2
.LBB3_4:
	movq	stderr(%rip), %rdi
	movl	$.L.str.24, %esi
.LBB3_2:
	movq	%r14, %rdx
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
	movl	%edx, %r8d
	movl	(%rdi), %r9d
	xorl	%eax, %eax
	movl	%r9d, %r10d
	cmpl	%r8d, %eax
	jl	.LBB4_2
	jmp	.LBB4_7
	.p2align	4, 0x90
.LBB4_6:                                #   in Loop: Header=BB4_2 Depth=1
	addq	$1, %rax
	cmpl	%r8d, %eax
	jge	.LBB4_7
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	%r9d, (%rdi,%rax,4)
	jle	.LBB4_4
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	movl	(%rdi,%rax,4), %r9d
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	cmpl	%r10d, (%rdi,%rax,4)
	jge	.LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_2 Depth=1
	movl	(%rdi,%rax,4), %r10d
	jmp	.LBB4_6
.LBB4_7:
	subl	%r10d, %r9d
	xorl	%ecx, %ecx
	cmpl	%r8d, %ecx
	jge	.LBB4_10
	.p2align	4, 0x90
.LBB4_9:                                # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rcx,4), %edx
	subl	%r10d, %edx
	movl	%edx, %eax
	shll	$8, %eax
	subl	%edx, %eax
	cltd
	idivl	%r9d
	movb	%al, (%rsi,%rcx)
	addq	$1, %rcx
	cmpl	%r8d, %ecx
	jl	.LBB4_9
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movl	$516, %edi              # imm = 0x204
	callq	malloc
	addq	$258, %rax              # imm = 0x102
	cvtsi2ss	%r14d, %xmm0
	movss	%xmm0, 4(%rsp)          # 4-byte Spill
	movq	%rax, (%rbx)
	movq	$-256, %rbp
	cmpl	$256, %ebp              # imm = 0x100
	jle	.LBB5_2
	jmp	.LBB5_5
	.p2align	4, 0x90
.LBB5_4:                                #   in Loop: Header=BB5_2 Depth=1
	xorps	.LCPI5_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	exp
	mulsd	.LCPI5_1(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	cvttss2si	%xmm0, %eax
	movq	(%rbx), %rcx
	movb	%al, (%rcx,%rbp)
	addq	$1, %rbp
	cmpl	$256, %ebp              # imm = 0x100
	jg	.LBB5_5
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ebp, %xmm0
	divss	4(%rsp), %xmm0          # 4-byte Folded Reload
	mulss	%xmm0, %xmm0
	cmpl	$6, %r15d
	jne	.LBB5_4
# %bb.3:                                #   in Loop: Header=BB5_2 Depth=1
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	mulss	%xmm1, %xmm0
	jmp	.LBB5_4
.LBB5_5:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $r9d killed $r9d def $r9
	movl	%r8d, %r14d
	movl	%ecx, 8(%rsp)           # 4-byte Spill
	movq	%rdx, 112(%rsp)         # 8-byte Spill
	movq	%rdi, %rbp
	movl	%r8d, %eax
	movq	%r9, 88(%rsp)           # 8-byte Spill
	imull	%r9d, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%ebx, %ebx
	movq	%rsi, 104(%rsp)         # 8-byte Spill
	movq	%rsi, %rdi
	xorl	%esi, %esi
	callq	memset
	leal	(%r14,%r14,2), %r15d
	addl	$3, %r15d
	movl	%r14d, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movq	%r14, 24(%rsp)          # 8-byte Spill
	movslq	%r14d, %rcx
	leaq	5(%rcx,%rbp), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	leaq	6(%rbp,%rcx,2), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rcx,2), %rdx
	leaq	6(%rbp,%rdx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leaq	6(%rbp,%rcx,4), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rcx,4), %rcx
	leaq	5(%rbp,%rcx), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	leaq	4(,%rdx,2), %rax
	addq	%rbp, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movl	$3, %edx
	jmp	.LBB6_1
	.p2align	4, 0x90
.LBB6_7:                                #   in Loop: Header=BB6_1 Depth=1
	movl	12(%rsp), %edx          # 4-byte Reload
	addl	$1, %edx
	addq	80(%rsp), %r15          # 8-byte Folded Reload
	movq	96(%rsp), %rbx          # 8-byte Reload
	addl	24(%rsp), %ebx          # 4-byte Folded Reload
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	-3(%rax), %ecx
	cmpl	%ecx, %edx
	jge	.LBB6_8
# %bb.2:                                # %.preheader
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movslq	%ebx, %r8
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r8), %r9
	movq	72(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r8), %r10
	movq	64(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r8), %r11
	movq	56(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r8), %rcx
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r8), %rdx
	movq	40(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r8), %r13
	addq	32(%rsp), %r8           # 8-byte Folded Reload
	xorl	%r14d, %r14d
	jmp	.LBB6_3
	.p2align	4, 0x90
.LBB6_6:                                #   in Loop: Header=BB6_3 Depth=2
	addq	$1, %r14
.LBB6_3:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	3(%r14), %edi
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	-3(%rax), %r12d
	cmpl	%r12d, %edi
	jge	.LBB6_7
# %bb.4:                                #   in Loop: Header=BB6_3 Depth=2
	leal	(%r15,%r14), %edi
	movslq	%edi, %rdi
	movq	16(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax,%rdi), %esi
	addq	112(%rsp), %rsi         # 8-byte Folded Reload
	movzbl	2(%r9,%r14), %ebx
	movq	%rsi, %rdi
	subq	%rbx, %rdi
	movzbl	(%rdi), %edi
	movzbl	3(%r9,%r14), %ebx
	movq	%rsi, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	4(%r9,%r14), %edi
	movq	%rsi, %rax
	subq	%rdi, %rax
	movzbl	(%rax), %eax
	addl	%ebx, %eax
	movzbl	-4(%r10,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	-3(%r10,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	-2(%r10,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	-1(%r10,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	(%r10,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	-6(%r11,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	-5(%r11,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	-4(%r11,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	-3(%r11,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	-2(%r11,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	-1(%r11,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	(%r11,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	-6(%rcx,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	-5(%rcx,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	-4(%rcx,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	-2(%rcx,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	-1(%rcx,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	(%rcx,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	-6(%rdx,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	-5(%rdx,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	-4(%rdx,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	-3(%rdx,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	-2(%rdx,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	-1(%rdx,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	(%rdx,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	-4(%r13,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	-3(%r13,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	-2(%r13,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	-1(%r13,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	(%r13,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	-2(%r8,%r14), %edi
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	addl	%eax, %edi
	movzbl	-1(%r8,%r14), %eax
	movq	%rsi, %rbx
	subq	%rax, %rbx
	movzbl	(%rbx), %eax
	addl	%edi, %eax
	movzbl	(%r8,%r14), %edi
	subq	%rdi, %rsi
	movzbl	(%rsi), %esi
	leal	(%rsi,%rax), %edi
	addl	$100, %edi
	cmpl	8(%rsp), %edi           # 4-byte Folded Reload
	jg	.LBB6_6
# %bb.5:                                #   in Loop: Header=BB6_3 Depth=2
	movl	8(%rsp), %eax           # 4-byte Reload
	subl	%edi, %eax
	leal	(%r15,%r14), %esi
	movslq	%esi, %rsi
	movq	104(%rsp), %rdi         # 8-byte Reload
	movl	%eax, (%rdi,%rsi,4)
	jmp	.LBB6_6
.LBB6_8:
	addq	$120, %rsp
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%r8d, %ebp
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	%r8d, %eax
	imull	%r9d, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%r13d, %r13d
	movq	%rsi, %rdi
	xorl	%esi, %esi
	callq	memset
	leaq	2(%r15), %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movslq	%ebp, %rcx
	movl	$1, %r9d
	addl	$-1, %ebx
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	leal	-1(%rcx), %r10d
	movl	%ebp, 8(%rsp)           # 4-byte Spill
	movl	%ebp, %r11d
	cmpl	12(%rsp), %r9d          # 4-byte Folded Reload
	jl	.LBB7_2
	jmp	.LBB7_8
	.p2align	4, 0x90
.LBB7_7:                                #   in Loop: Header=BB7_2 Depth=1
	addl	$1, %r9d
	movl	8(%rsp), %eax           # 4-byte Reload
	addl	%eax, %r11d
	addl	%eax, %r13d
	cmpl	12(%rsp), %r9d          # 4-byte Folded Reload
	jge	.LBB7_8
.LBB7_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	movslq	%r13d, %rax
	addq	16(%rsp), %rax          # 8-byte Folded Reload
	movl	$1, %edx
	cmpl	%r10d, %edx
	jl	.LBB7_4
	jmp	.LBB7_7
	.p2align	4, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=2
	addl	$1, %edx
	addq	$1, %rax
	cmpl	%r10d, %edx
	jge	.LBB7_7
.LBB7_4:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%r11,%rdx), %ebp
	movslq	%ebp, %rbx
	movzbl	(%r15,%rbx), %r8d
	addq	%r14, %r8
	movzbl	-2(%rax), %esi
	movq	%r8, %rbp
	subq	%rsi, %rbp
	movzbl	(%rbp), %esi
	movzbl	-1(%rax), %ebp
	movq	%r8, %rdi
	subq	%rbp, %rdi
	movzbl	(%rdi), %edi
	addl	%esi, %edi
	movzbl	(%rax), %esi
	movq	%r8, %rbp
	subq	%rsi, %rbp
	movzbl	(%rbp), %esi
	addl	%edi, %esi
	movzbl	-2(%rax,%rcx), %edi
	movq	%r8, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%esi, %edi
	movzbl	(%rax,%rcx), %esi
	movq	%r8, %rbp
	subq	%rsi, %rbp
	movzbl	(%rbp), %esi
	addl	%edi, %esi
	movzbl	-2(%rax,%rcx,2), %edi
	movq	%r8, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%esi, %edi
	movzbl	-1(%rax,%rcx,2), %esi
	movq	%r8, %rbp
	subq	%rsi, %rbp
	movzbl	(%rbp), %esi
	addl	%edi, %esi
	movzbl	(%rax,%rcx,2), %edi
	subq	%rdi, %r8
	movzbl	(%r8), %edi
	leal	(%rdi,%rsi), %ebp
	addl	$100, %ebp
	cmpl	$730, %ebp              # imm = 0x2DA
	jg	.LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=2
	movl	$730, %esi              # imm = 0x2DA
	subl	%ebp, %esi
	movl	%esi, (%r12,%rbx,4)
	jmp	.LBB7_6
.LBB7_8:
	addq	$24, %rsp
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
                                        # kill: def $esi killed $esi def $rsi
	leal	-1(%rsi), %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	movslq	%eax, %r8
	movzbl	-1(%rdi,%r8), %eax
	movl	%eax, -40(%rsp)
	movzbl	(%rdi,%r8), %eax
	movl	%eax, -36(%rsp)
	movzbl	1(%rdi,%r8), %eax
	movl	%eax, -32(%rsp)
	movl	%esi, %eax
	imull	%ecx, %eax
	addl	%edx, %eax
	movslq	%eax, %r8
	movzbl	-1(%r8,%rdi), %eax
	movl	%eax, -28(%rsp)
	movzbl	1(%r8,%rdi), %eax
	movl	%eax, -24(%rsp)
	addl	$1, %esi
	imull	%ecx, %esi
	addl	%edx, %esi
	movslq	%esi, %rax
	movzbl	-1(%rdi,%rax), %ecx
	movl	%ecx, -20(%rsp)
	movzbl	(%rdi,%rax), %ecx
	movl	%ecx, -16(%rsp)
	movzbl	1(%rdi,%rax), %eax
	movl	%eax, -12(%rsp)
	xorl	%eax, %eax
	cmpl	$6, %eax
	jle	.LBB8_2
	jmp	.LBB8_8
	.p2align	4, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_2 Depth=1
	addl	$1, %eax
	cmpl	$6, %eax
	jg	.LBB8_8
.LBB8_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	xorl	%ecx, %ecx
	jmp	.LBB8_3
	.p2align	4, 0x90
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=2
	addq	$1, %rcx
.LBB8_3:                                #   Parent Loop BB8_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$7, %edx
	subl	%eax, %edx
	cmpl	%edx, %ecx
	jge	.LBB8_7
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=2
	movl	-40(%rsp,%rcx,4), %edx
	cmpl	-36(%rsp,%rcx,4), %edx
	jle	.LBB8_6
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=2
	movl	-40(%rsp,%rcx,4), %edx
	movl	-36(%rsp,%rcx,4), %esi
	movl	%esi, -40(%rsp,%rcx,4)
	movl	%edx, -36(%rsp,%rcx,4)
	jmp	.LBB8_6
.LBB8_8:
	movl	-28(%rsp), %ecx
	addl	-24(%rsp), %ecx
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, %r15d
	movq	%rcx, %r14
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, (%rsp)            # 8-byte Spill
	xorl	%ebp, %ebp
	movslq	%r8d, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	cmpl	(%r14), %ebp
	jge	.LBB9_2
	.p2align	4, 0x90
.LBB9_11:                               # =>This Inner Loop Header: Depth=1
	leal	(%r15,%rbp), %eax
	movslq	(%r13), %rdx
	leal	(%rdx,%r15,2), %ecx
	imull	%eax, %ecx
	movslq	%ecx, %rdi
	addq	%r12, %rdi
	addq	16(%rsp), %rdi          # 8-byte Folded Reload
	movslq	%ebp, %rsi
	imulq	%rdx, %rsi
	movq	(%rsp), %rax            # 8-byte Reload
	addq	(%rax), %rsi
	callq	memcpy
	addl	$1, %ebp
	cmpl	(%r14), %ebp
	jl	.LBB9_11
.LBB9_2:                                # %.preheader2
	xorl	%ebp, %ebp
	movl	$-1, %eax
	movq	16(%rsp), %rbx          # 8-byte Reload
	cmpl	%r15d, %ebp
	jge	.LBB9_4
	.p2align	4, 0x90
.LBB9_12:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	8(%rsp), %rax           # 8-byte Reload
	addl	%r15d, %eax
	movslq	(%r13), %rdx
	leal	(%rdx,%r15,2), %ecx
	imull	%eax, %ecx
	movslq	%ecx, %rdi
	addq	%r12, %rdi
	addq	%rbx, %rdi
	movslq	%ebp, %rsi
	imulq	%rdx, %rsi
	movq	(%rsp), %rax            # 8-byte Reload
	addq	(%rax), %rsi
	callq	memcpy
	movl	(%r14), %eax
	leal	(%r15,%rbp), %ecx
	addl	%eax, %ecx
	movslq	(%r13), %rdx
	leal	(%rdx,%r15,2), %esi
	imull	%ecx, %esi
	movslq	%esi, %rdi
	addq	%r12, %rdi
	addq	%rbx, %rdi
	addl	8(%rsp), %eax           # 4-byte Folded Reload
	movslq	%eax, %rsi
	imulq	%rdx, %rsi
	movq	(%rsp), %rax            # 8-byte Reload
	addq	(%rax), %rsi
	callq	memcpy
	movq	8(%rsp), %rax           # 8-byte Reload
	addl	$1, %ebp
	addl	$-1, %eax
	cmpl	%r15d, %ebp
	jl	.LBB9_12
.LBB9_4:                                # %.preheader1
	xorl	%eax, %eax
	leal	(%r15,%r15), %ecx
	cmpl	%r15d, %eax
	jl	.LBB9_6
	jmp	.LBB9_10
	.p2align	4, 0x90
.LBB9_9:                                #   in Loop: Header=BB9_6 Depth=1
	addl	$1, %eax
	cmpl	%r15d, %eax
	jge	.LBB9_10
.LBB9_6:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_7 Depth 2
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB9_7:                                #   Parent Loop BB9_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14), %esi
	addl	%ecx, %esi
	cmpl	%esi, %edx
	jge	.LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_7 Depth=2
	movl	(%r13), %esi
	addl	%ecx, %esi
	imull	%edx, %esi
	addl	%r15d, %esi
	leal	(%rsi,%rax), %edi
	movslq	%edi, %rdi
	movzbl	(%r12,%rdi), %ebx
	movl	%eax, %edi
	notl	%edi
	addl	%edi, %esi
	movslq	%esi, %rsi
	movb	%bl, (%r12,%rsi)
	movl	(%r13), %esi
	leal	(%rsi,%r15,2), %ebp
	imull	%edx, %ebp
	addl	%esi, %ebp
	addl	%r15d, %ebp
	addl	%ebp, %edi
	movslq	%edi, %rsi
	movzbl	(%r12,%rsi), %ebx
	addl	%eax, %ebp
	movslq	%ebp, %rsi
	movb	%bl, (%r12,%rsi)
	addl	$1, %edx
	jmp	.LBB9_7
.LBB9_10:
	addl	%ecx, (%r13)
	addl	%ecx, (%r14)
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%r12, (%rax)
	addq	$24, %rsp
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, 80(%rsp)           # 8-byte Spill
	movl	%edi, %ebp
	cvtsd2ss	%xmm0, %xmm1
	movq	%rsi, 16(%rsp)          # 8-byte Spill
	movq	%rsi, 32(%rsp)
	movl	%edx, 8(%rsp)
	movl	%ecx, 12(%rsp)
	movl	$1, %r15d
	testl	%edi, %edi
	jne	.LBB10_2
# %bb.1:
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	.LCPI10_0(%rip), %xmm0
	cvttsd2si	%xmm0, %r15d
	addl	$1, %r15d
.LBB10_2:
	ucomiss	.LCPI10_1(%rip), %xmm1
	ja	.LBB10_36
# %bb.3:
	movaps	%xmm1, 48(%rsp)         # 16-byte Spill
	leal	(%r15,%r15), %eax
	addl	$1, %eax
	cmpl	8(%rsp), %eax
	jg	.LBB10_37
# %bb.4:
	leal	(%r15,%r15), %eax
	addl	$1, %eax
	cmpl	12(%rsp), %eax
	jg	.LBB10_37
# %bb.5:
	leal	(%r15,%r15), %eax
	movl	8(%rsp), %ecx
	addl	%eax, %ecx
	addl	12(%rsp), %eax
	imull	%ecx, %eax
	movslq	%eax, %rdi
	callq	malloc
	leaq	32(%rsp), %rdi
	leaq	8(%rsp), %rdx
	leaq	12(%rsp), %rcx
	movq	%rax, %rsi
	movl	%r15d, %r8d
	callq	enlarge
	testl	%ebp, %ebp
	je	.LBB10_12
# %bb.6:                                # %.preheader3
	movl	$1, %r8d
	movl	$0, 44(%rsp)            # 4-byte Folded Spill
	jmp	.LBB10_7
	.p2align	4, 0x90
.LBB10_34:                              #   in Loop: Header=BB10_7 Depth=1
	addl	$1, %r8d
	addl	$1, 44(%rsp)            # 4-byte Folded Spill
.LBB10_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_9 Depth 2
	movl	12(%rsp), %eax
	addl	$-1, %eax
	cmpl	%eax, %r8d
	jge	.LBB10_35
# %bb.8:                                # %.preheader2
                                        #   in Loop: Header=BB10_7 Depth=1
	movl	$1, %r14d
	movl	%r8d, 40(%rsp)          # 4-byte Spill
	jmp	.LBB10_9
	.p2align	4, 0x90
.LBB10_11:                              #   in Loop: Header=BB10_9 Depth=2
	movq	32(%rsp), %rdi
	movl	8(%rsp), %ecx
	movl	40(%rsp), %ebp          # 4-byte Reload
	movl	%ebp, %esi
	movl	%r14d, %edx
	callq	median
	movq	16(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx)
	addq	$1, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	addq	$1, %r14
	movl	%ebp, %r8d
.LBB10_9:                               #   Parent Loop BB10_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%rsp), %eax
	addl	$-1, %eax
	cmpl	%eax, %r14d
	jge	.LBB10_34
# %bb.10:                               #   in Loop: Header=BB10_9 Depth=2
	movq	32(%rsp), %rdx
	movslq	8(%rsp), %r12
	movl	44(%rsp), %eax          # 4-byte Reload
	imull	%r12d, %eax
	cltq
	leaq	(%rdx,%rax), %rdi
	movl	%r8d, %ecx
	imull	%r12d, %ecx
	addl	%r14d, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rdx,%rcx), %esi
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rsi), %rcx
	movzbl	-1(%r14,%rdi), %ebp
	movq	%rcx, %rsi
	movq	%rbp, 72(%rsp)          # 8-byte Spill
	subq	%rbp, %rsi
	movzbl	(%rsi), %r13d
	movzbl	(%r14,%rdi), %ebp
	movq	%rcx, %rsi
	movq	%rbp, 24(%rsp)          # 8-byte Spill
	subq	%rbp, %rsi
	movzbl	(%rsi), %r9d
	leal	(%r9,%r13), %esi
	movzbl	1(%r14,%rdi), %ebp
	movq	%rcx, %rdi
	movq	%rbp, 112(%rsp)         # 8-byte Spill
	subq	%rbp, %rdi
	movzbl	(%rdi), %r10d
	addl	%r10d, %esi
	addq	%r12, %rax
	addq	%rdx, %rax
	movzbl	-1(%r14,%rax), %edi
	movq	%rcx, %rdx
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	subq	%rdi, %rdx
	movzbl	(%rdx), %r11d
	addl	%r11d, %esi
	movzbl	(%r14,%rax), %edi
	movzbl	1(%r14,%rax), %ebx
	addq	%r12, %rax
	movq	%rcx, %rdx
	movq	%rdi, 96(%rsp)          # 8-byte Spill
	subq	%rdi, %rdx
	movzbl	(%rdx), %ebp
	addl	%ebp, %esi
	movq	%rcx, %rdx
	movq	%rbx, 88(%rsp)          # 8-byte Spill
	subq	%rbx, %rdx
	movzbl	(%rdx), %edx
	addl	%edx, %esi
	movzbl	-1(%r14,%rax), %ebx
	movq	%rcx, %rdi
	subq	%rbx, %rdi
	movzbl	(%rdi), %r12d
	addl	%r12d, %esi
	movzbl	(%r14,%rax), %r15d
	movq	%rcx, %rdi
	subq	%r15, %rdi
	movzbl	(%rdi), %edi
	addl	%edi, %esi
	movzbl	1(%r14,%rax), %r8d
	subq	%r8, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %esi
	addl	$-100, %esi
	je	.LBB10_11
# %bb.33:                               #   in Loop: Header=BB10_9 Depth=2
	imull	72(%rsp), %r13d         # 4-byte Folded Reload
	imull	24(%rsp), %r9d          # 4-byte Folded Reload
	addl	%r13d, %r9d
	imull	112(%rsp), %r10d        # 4-byte Folded Reload
	addl	%r9d, %r10d
	imull	104(%rsp), %r11d        # 4-byte Folded Reload
	addl	%r10d, %r11d
	imull	96(%rsp), %ebp          # 4-byte Folded Reload
	addl	%r11d, %ebp
	imull	88(%rsp), %edx          # 4-byte Folded Reload
	addl	%ebp, %edx
	imull	%ebx, %r12d
	addl	%edx, %r12d
	imull	%r15d, %edi
	addl	%r12d, %edi
	imull	%r8d, %eax
	addl	%edi, %eax
	imull	$100, 48(%rsp), %ecx    # 4-byte Folded Reload
	subl	%ecx, %eax
	cltd
	idivl	%esi
	movq	16(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx)
	addq	$1, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	addq	$1, %r14
	movl	40(%rsp), %r8d          # 4-byte Reload
	jmp	.LBB10_9
.LBB10_12:
	leal	(%r15,%r15), %ebx
	addl	$1, %ebx
	movslq	8(%rsp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%ebx, %eax
	imull	%ebx, %eax
	movslq	%eax, %rdi
	callq	malloc
	movaps	48(%rsp), %xmm1         # 16-byte Reload
	mulss	%xmm1, %xmm1
	xorps	.LCPI10_2(%rip), %xmm1
	movl	%r15d, %r14d
	negl	%r14d
	movl	%r14d, %r13d
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%rax, %rbp
	movaps	%xmm1, 48(%rsp)         # 16-byte Spill
	cmpl	%r15d, %r13d
	jle	.LBB10_23
	jmp	.LBB10_14
	.p2align	4, 0x90
.LBB10_26:                              #   in Loop: Header=BB10_23 Depth=1
	addl	$1, %r13d
	cmpl	%r15d, %r13d
	jg	.LBB10_14
.LBB10_23:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_25 Depth 2
	movl	%r14d, %r12d
	cmpl	%r15d, %r12d
	jg	.LBB10_26
	.p2align	4, 0x90
.LBB10_25:                              #   Parent Loop BB10_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%r13d, %eax
	imull	%r13d, %eax
	movl	%r12d, %ecx
	imull	%r12d, %ecx
	addl	%eax, %ecx
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ecx, %xmm0
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	exp
	movaps	48(%rsp), %xmm1         # 16-byte Reload
	mulsd	.LCPI10_3(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movb	%al, (%rbp)
	addq	$1, %rbp
	addl	$1, %r12d
	cmpl	%r15d, %r12d
	jle	.LBB10_25
	jmp	.LBB10_26
.LBB10_14:                              # %.preheader1
	addl	$-1, %ebx
	movslq	%ebx, %r12
	notq	%r12
	addq	24(%rsp), %r12          # 8-byte Folded Reload
	movslq	%r15d, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	%r15d, %eax
	negl	%eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movl	%r15d, %r13d
	jmp	.LBB10_15
	.p2align	4, 0x90
.LBB10_32:                              #   in Loop: Header=BB10_15 Depth=1
	addl	$1, %r13d
.LBB10_15:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_17 Depth 2
                                        #       Child Loop BB10_20 Depth 3
                                        #         Child Loop BB10_22 Depth 4
	movl	12(%rsp), %eax
	subl	%r15d, %eax
	cmpl	%eax, %r13d
	jge	.LBB10_35
# %bb.16:                               # %.preheader
                                        #   in Loop: Header=BB10_15 Depth=1
	movl	%r15d, %r14d
	jmp	.LBB10_17
	.p2align	4, 0x90
.LBB10_28:                              #   in Loop: Header=BB10_17 Depth=2
	addl	$-10000, %r11d          # imm = 0xD8F0
	je	.LBB10_29
# %bb.30:                               #   in Loop: Header=BB10_17 Depth=2
	imull	$10000, %r8d, %ecx      # imm = 0x2710
	subl	%ecx, %eax
	cltd
	idivl	%r11d
	movq	16(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx)
.LBB10_31:                              #   in Loop: Header=BB10_17 Depth=2
	addq	$1, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	addl	$1, %r14d
.LBB10_17:                              #   Parent Loop BB10_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_20 Depth 3
                                        #         Child Loop BB10_22 Depth 4
	movl	8(%rsp), %eax
	subl	%r15d, %eax
	cmpl	%eax, %r14d
	jge	.LBB10_32
# %bb.18:                               #   in Loop: Header=BB10_17 Depth=2
	movq	32(%rsp), %rax
	movl	%r13d, %ecx
	subl	%r15d, %ecx
	movslq	8(%rsp), %rdx
	movslq	%ecx, %rsi
	imulq	%rdx, %rsi
	addq	%rax, %rsi
	movslq	%r14d, %rcx
	addq	%rsi, %rcx
	subq	48(%rsp), %rcx          # 8-byte Folded Reload
	imull	%r13d, %edx
	addl	%r14d, %edx
	movslq	%edx, %rdx
	movzbl	(%rax,%rdx), %r8d
	movq	80(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r8), %r10
	xorl	%r11d, %r11d
	movl	24(%rsp), %r9d          # 4-byte Reload
	movq	72(%rsp), %rbp          # 8-byte Reload
	xorl	%eax, %eax
	cmpl	%r15d, %r9d
	jle	.LBB10_20
	jmp	.LBB10_28
	.p2align	4, 0x90
.LBB10_27:                              #   in Loop: Header=BB10_20 Depth=3
	addq	%r12, %rcx
	addl	$1, %r9d
	cmpl	%r15d, %r9d
	jg	.LBB10_28
.LBB10_20:                              #   Parent Loop BB10_15 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_22 Depth 4
	movl	%r15d, %edx
	negl	%edx
	cmpl	%r15d, %edx
	jg	.LBB10_27
	.p2align	4, 0x90
.LBB10_22:                              #   Parent Loop BB10_15 Depth=1
                                        #     Parent Loop BB10_17 Depth=2
                                        #       Parent Loop BB10_20 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movzbl	(%rcx), %ebx
	addq	$1, %rcx
	movq	%r10, %rdi
	subq	%rbx, %rdi
	movzbl	(%rbp), %esi
	addq	$1, %rbp
	movzbl	(%rdi), %edi
	imull	%esi, %edi
	addl	%edi, %r11d
	imull	%ebx, %edi
	addl	%edi, %eax
	addl	$1, %edx
	cmpl	%r15d, %edx
	jle	.LBB10_22
	jmp	.LBB10_27
	.p2align	4, 0x90
.LBB10_29:                              #   in Loop: Header=BB10_17 Depth=2
	movq	32(%rsp), %rdi
	movl	8(%rsp), %ecx
	movl	%r13d, %esi
	movl	%r14d, %edx
	callq	median
	movq	16(%rsp), %rcx          # 8-byte Reload
	movb	%al, (%rcx)
	jmp	.LBB10_31
.LBB10_35:
	addq	$120, %rsp
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
.LBB10_37:
	.cfi_def_cfa_offset 176
	movl	8(%rsp), %edx
	movl	12(%rsp), %ecx
	movl	$.L.str.28, %edi
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB10_36:
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
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
	testl	%r8d, %r8d
	jne	.LBB11_6
# %bb.1:                                # %.preheader
	xorl	%r10d, %r10d
	movl	%edx, %r8d
	imull	%ecx, %r8d
	movslq	%edx, %r9
	cmpl	%r8d, %r10d
	jl	.LBB11_3
	jmp	.LBB11_6
	.p2align	4, 0x90
.LBB11_5:                               #   in Loop: Header=BB11_3 Depth=1
	addq	$1, %r10
	cmpl	%r8d, %r10d
	jge	.LBB11_6
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	leaq	(%rsi,%r10), %r11
	movzbl	(%r11), %eax
	cmpl	$7, %eax
	jg	.LBB11_5
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	subq	%rsi, %r11
	addq	%rdi, %r11
	subq	%r9, %r11
	movw	$-1, -1(%r11)
	movb	$-1, 1(%r11)
	leaq	(%r11,%r9), %rax
	addq	$-1, %rax
	movb	$-1, -1(%r11,%r9)
	movb	$-1, 1(%r11,%r9)
	movw	$-1, (%r9,%rax)
	movb	$-1, 2(%r9,%rax)
	jmp	.LBB11_5
.LBB11_6:
	xorl	%r8d, %r8d
	imull	%ecx, %edx
	cmpl	%edx, %r8d
	jl	.LBB11_8
	jmp	.LBB11_11
	.p2align	4, 0x90
.LBB11_10:                              #   in Loop: Header=BB11_8 Depth=1
	addq	$1, %r8
	cmpl	%edx, %r8d
	jge	.LBB11_11
.LBB11_8:                               # =>This Inner Loop Header: Depth=1
	leaq	(%rsi,%r8), %rcx
	movzbl	(%rcx), %eax
	cmpl	$7, %eax
	jg	.LBB11_10
# %bb.9:                                #   in Loop: Header=BB11_8 Depth=1
	subq	%rsi, %rcx
	movb	$0, (%rdi,%rcx)
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdx, %rbp
	movq	%rdi, -24(%rsp)         # 8-byte Spill
	addl	$-4, %ecx
	movl	%ecx, -12(%rsp)         # 4-byte Spill
	leal	-4(%rdx), %r9d
	movsd	.LCPI12_0(%rip), %xmm0  # xmm0 = mem[0],zero
                                        # implicit-def: $r11d
                                        # implicit-def: $eax
	movl	$4, %r13d
	movq	%rdx, -96(%rsp)         # 8-byte Spill
	movl	%r9d, -104(%rsp)        # 4-byte Spill
	movq	%rsi, -48(%rsp)         # 8-byte Spill
	cmpl	-12(%rsp), %r13d        # 4-byte Folded Reload
	jl	.LBB12_2
	jmp	.LBB12_74
	.p2align	4, 0x90
.LBB12_73:                              #   in Loop: Header=BB12_2 Depth=1
	addl	$1, %r13d
	cmpl	-12(%rsp), %r13d        # 4-byte Folded Reload
	jge	.LBB12_74
.LBB12_2:                               # %.preheader1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_4 Depth 2
                                        #       Child Loop BB12_29 Depth 3
                                        #         Child Loop BB12_31 Depth 4
	movl	$4, %r15d
	cmpl	%r9d, %r15d
	jl	.LBB12_4
	jmp	.LBB12_73
.LBB12_71:                              #   in Loop: Header=BB12_4 Depth=2
	addl	$-2, %r15d
	movl	-100(%rsp), %edx        # 4-byte Reload
	cmpl	$4, %edx
	movl	$4, %ecx
	cmovll	%ecx, %edx
	movq	-32(%rsp), %rsi         # 8-byte Reload
	movb	$100, (%r9,%rsi)
	cmpl	$4, %r15d
	cmovll	%ecx, %r15d
	movl	%edx, %r13d
	movq	-96(%rsp), %rbp         # 8-byte Reload
	movq	%r9, %rsi
	movl	-104(%rsp), %r9d        # 4-byte Reload
	.p2align	4, 0x90
.LBB12_72:                              #   in Loop: Header=BB12_4 Depth=2
	addl	$1, %r15d
	cmpl	%r9d, %r15d
	jge	.LBB12_73
.LBB12_4:                               #   Parent Loop BB12_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_29 Depth 3
                                        #         Child Loop BB12_31 Depth 4
	movl	%r13d, %r10d
	imull	%ebp, %r10d
	leal	(%r10,%r15), %edx
	movslq	%edx, %r8
	movzbl	(%rsi,%r8), %edx
	cmpl	$7, %edx
	jg	.LBB12_72
# %bb.5:                                #   in Loop: Header=BB12_4 Depth=2
	movq	-24(%rsp), %rcx         # 8-byte Reload
	movl	(%rcx,%r8,4), %ecx
	movl	%ecx, -40(%rsp)         # 4-byte Spill
	leal	-1(%r13), %r9d
	imull	%ebp, %r9d
	movslq	%r9d, %rdi
	addq	%rsi, %rdi
	movq	%rbp, %r12
	movslq	%r15d, %rbp
	leaq	(%rdi,%rbp), %r14
	movzbl	-1(%rbp,%rdi), %ebx
	xorl	%ecx, %ecx
	cmpl	$8, %ebx
	setl	%cl
	movzbl	(%rbp,%rdi), %ebx
	xorl	%edx, %edx
	cmpl	$8, %ebx
	setl	%dl
	addl	%ecx, %edx
	movzbl	1(%rbp,%rdi), %ecx
	xorl	%ebx, %ebx
	cmpl	$8, %ecx
	setl	%bl
	addl	%edx, %ebx
	movslq	%r12d, %rcx
	leaq	(%rcx,%r14), %rdi
	addq	$-1, %rdi
	movzbl	-1(%rcx,%r14), %edx
	xorl	%ebp, %ebp
	cmpl	$8, %edx
	setl	%bpl
	addl	%ebx, %ebp
	movzbl	1(%rcx,%r14), %edx
	xorl	%ebx, %ebx
	cmpl	$8, %edx
	setl	%bl
	addl	%ebp, %ebx
	movzbl	(%rcx,%rdi), %edx
	xorl	%ebp, %ebp
	cmpl	$8, %edx
	setl	%bpl
	addl	%ebx, %ebp
	movzbl	1(%rcx,%rdi), %edx
	xorl	%ebx, %ebx
	cmpl	$8, %edx
	setl	%bl
	addl	%ebp, %ebx
	movzbl	2(%rcx,%rdi), %ecx
	xorl	%r14d, %r14d
	cmpl	$8, %ecx
	setl	%r14b
	addl	%ebx, %r14d
	cmpl	$1, %r14d
	je	.LBB12_9
# %bb.6:                                #   in Loop: Header=BB12_4 Depth=2
	testl	%r14d, %r14d
	jne	.LBB12_7
# %bb.8:                                #   in Loop: Header=BB12_4 Depth=2
	movb	$100, (%rsi,%r8)
	jmp	.LBB12_7
.LBB12_9:                               #   in Loop: Header=BB12_4 Depth=2
	movzbl	(%rsi,%r8), %ecx
	cmpl	$5, %ecx
	jg	.LBB12_7
# %bb.10:                               #   in Loop: Header=BB12_4 Depth=2
	movl	%r9d, %ecx
	addl	%r15d, %ecx
	leal	(%r9,%r15), %edx
	addl	$-1, %edx
	movslq	%edx, %rdx
	movq	-24(%rsp), %rbp         # 8-byte Reload
	movl	(%rbp,%rdx,4), %edx
	movl	%edx, -88(%rsp)
	movslq	%ecx, %rdi
	movl	(%rbp,%rdi,4), %ecx
	movl	%ecx, -84(%rsp)
	movl	4(%rbp,%rdi,4), %ecx
	movl	%ecx, -80(%rsp)
	leal	-1(%r10,%r15), %ecx
	movslq	%ecx, %rcx
	movl	(%rbp,%rcx,4), %ecx
	movl	%ecx, -76(%rsp)
	movl	$0, -72(%rsp)
	movl	4(%rbp,%r8,4), %ecx
	movl	%ecx, -68(%rsp)
	leal	1(%r13), %ecx
	imull	-96(%rsp), %ecx         # 4-byte Folded Reload
	leal	(%rcx,%r15), %edx
	addl	$-1, %edx
                                        # kill: def $ecx killed $ecx killed $rcx
	addl	%r15d, %ecx
	movslq	%edx, %rdx
	movl	(%rbp,%rdx,4), %edx
	movl	%edx, -64(%rsp)
	movslq	%ecx, %rcx
	movl	(%rbp,%rcx,4), %edx
	movl	%edx, -60(%rsp)
	movl	4(%rbp,%rcx,4), %edx
	movl	%edx, -56(%rsp)
	movzbl	-1(%rdi,%rsi), %edx
	cmpl	$7, %edx
	jg	.LBB12_13
# %bb.11:                               #   in Loop: Header=BB12_4 Depth=2
	movq	$0, -88(%rsp)
	movl	$0, -76(%rsp)
	shll	-80(%rsp)
	shll	-64(%rsp)
	movl	-68(%rsp), %ecx
	movl	-60(%rsp), %edx
	leal	(%rcx,%rcx,2), %ecx
	movl	%ecx, -68(%rsp)
	leal	(%rdx,%rdx,2), %ecx
	movl	%ecx, -60(%rsp)
	shll	$2, -56(%rsp)
	jmp	.LBB12_12
	.p2align	4, 0x90
.LBB12_7:                               #   in Loop: Header=BB12_4 Depth=2
	movq	-96(%rsp), %rbp         # 8-byte Reload
	movl	-104(%rsp), %r9d        # 4-byte Reload
.LBB12_41:                              #   in Loop: Header=BB12_4 Depth=2
	cmpl	$2, %r14d
	jne	.LBB12_66
.LBB12_42:                              #   in Loop: Header=BB12_4 Depth=2
	movl	%r14d, -100(%rsp)       # 4-byte Spill
	leal	-1(%r13), %ecx
	movl	%ecx, -8(%rsp)          # 4-byte Spill
	movl	%ecx, %r14d
	imull	%ebp, %r14d
	addl	%r15d, %r14d
	movslq	%r14d, %rcx
	movzbl	-1(%rcx,%rsi), %edx
	xorl	%ebx, %ebx
	movl	%edx, -4(%rsp)          # 4-byte Spill
	cmpl	$8, %edx
	setl	%bl
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movzbl	1(%rcx,%rsi), %edi
	xorl	%ecx, %ecx
	cmpl	$8, %edi
	setl	%cl
	leal	1(%r13), %r9d
	imull	%ebp, %r9d
	addl	%r15d, %r9d
	movslq	%r9d, %r8
	movq	%rbp, %r10
	movzbl	-1(%r8,%rsi), %ebp
	xorl	%edx, %edx
	cmpl	$8, %ebp
	setl	%dl
	movzbl	1(%r8,%rsi), %r12d
	xorl	%ebp, %ebp
	cmpl	$8, %r12d
	setl	%bpl
	movq	%r10, %r12
	leal	(%rbx,%rcx), %esi
	addl	%edx, %esi
	addl	%ebp, %esi
	cmpl	$2, %esi
	jne	.LBB12_56
# %bb.43:                               #   in Loop: Header=BB12_4 Depth=2
	orl	%ebp, %ebx
	orl	%edx, %ecx
	testl	%ecx, %ebx
	je	.LBB12_56
# %bb.44:                               #   in Loop: Header=BB12_4 Depth=2
	xorl	%ebx, %ebx
	cmpl	$7, %edi
	setg	%bl
	xorl	%ecx, %ecx
	cmpl	$8, %edi
	setl	%cl
	leal	-1(%rcx), %edi
	movl	%ecx, %edx
	negl	%edx
	cmpl	$8, -4(%rsp)            # 4-byte Folded Reload
	cmovgel	%ecx, %edi
	cmovll	%edx, %ebx
	movq	%r13, %rdx
	leal	(%rbx,%r13), %ecx
	imull	%r12d, %ecx
	addl	%r15d, %ecx
	addl	%edi, %ecx
	movslq	%ecx, %r8
	movq	-24(%rsp), %rcx         # 8-byte Reload
	cvtsi2ssl	(%rcx,%r8,4), %xmm1
	cvtsi2ssl	-40(%rsp), %xmm2 # 4-byte Folded Reload
	divss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	movq	%r12, %rbp
	jbe	.LBB12_45
# %bb.46:                               #   in Loop: Header=BB12_4 Depth=2
	testl	%edi, %edi
	movq	-48(%rsp), %rsi         # 8-byte Reload
	jne	.LBB12_50
# %bb.47:                               #   in Loop: Header=BB12_4 Depth=2
	leal	(%rdx,%rbx,2), %ecx
	imull	%ebp, %ecx
	addl	%r15d, %ecx
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %ecx
	cmpl	$8, %ecx
	jl	.LBB12_50
# %bb.48:                               #   in Loop: Header=BB12_4 Depth=2
	leal	(%rdx,%rbx,2), %ecx
	imull	%ebp, %ecx
	addl	%r15d, %ecx
	movslq	%ecx, %rcx
	movzbl	-1(%rcx,%rsi), %ecx
	cmpl	$8, %ecx
	jl	.LBB12_50
# %bb.49:                               #   in Loop: Header=BB12_4 Depth=2
	leal	(%rdx,%rbx,2), %ecx
	imull	%ebp, %ecx
	addl	%r15d, %ecx
	movslq	%ecx, %rcx
	movzbl	1(%rcx,%rsi), %ecx
	cmpl	$7, %ecx
	jg	.LBB12_55
.LBB12_50:                              #   in Loop: Header=BB12_4 Depth=2
	testl	%ebx, %ebx
	jne	.LBB12_51
# %bb.52:                               #   in Loop: Header=BB12_4 Depth=2
	movl	%edx, %ecx
	imull	%ebp, %ecx
	addl	%r15d, %ecx
	leal	(%rcx,%rdi,2), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %ecx
	cmpl	$8, %ecx
	jl	.LBB12_51
# %bb.53:                               #   in Loop: Header=BB12_4 Depth=2
	leal	(%r9,%rdi,2), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %ecx
	cmpl	$8, %ecx
	jl	.LBB12_51
# %bb.54:                               #   in Loop: Header=BB12_4 Depth=2
	leal	(%r14,%rdi,2), %ecx
	movslq	%ecx, %rcx
	movzbl	(%rsi,%rcx), %ecx
	cmpl	$8, %ecx
	jl	.LBB12_51
.LBB12_55:                              #   in Loop: Header=BB12_4 Depth=2
	movq	%rdx, %r13
	movl	%r13d, %ecx
	imull	%ebp, %ecx
	addl	%r15d, %ecx
	movslq	%ecx, %rcx
	movb	$100, (%rsi,%rcx)
	movb	$3, (%rsi,%r8)
	jmp	.LBB12_64
.LBB12_56:                              #   in Loop: Header=BB12_4 Depth=2
	movq	-48(%rsp), %rsi         # 8-byte Reload
	movq	-32(%rsp), %r10         # 8-byte Reload
	movzbl	(%rsi,%r10), %ecx
	xorl	%ebx, %ebx
	cmpl	$8, %ecx
	setl	%bl
	movq	%r13, %rdi
	movl	%r13d, %ecx
	imull	%r12d, %ecx
	addl	%r15d, %ecx
	movslq	%ecx, %r9
	movzbl	1(%r9,%rsi), %ecx
	xorl	%ebp, %ebp
	cmpl	$8, %ecx
	setl	%bpl
	movzbl	(%rsi,%r8), %edx
	xorl	%ecx, %ecx
	cmpl	$8, %edx
	setl	%cl
	movzbl	-1(%r9,%rsi), %edx
	xorl	%r13d, %r13d
	cmpl	$8, %edx
	setl	%r13b
	leal	(%rbx,%rbp), %edx
	addl	%ecx, %edx
	addl	%r13d, %edx
	cmpl	$2, %edx
	jne	.LBB12_57
# %bb.58:                               #   in Loop: Header=BB12_4 Depth=2
	movl	%r13d, %edx
	orl	%ebp, %edx
	movl	%ebx, %esi
	orl	%ecx, %esi
	testl	%esi, %edx
	je	.LBB12_59
# %bb.60:                               #   in Loop: Header=BB12_4 Depth=2
	movq	%rdi, %r12
	leal	-2(%rdi), %edx
	movq	-96(%rsp), %r14         # 8-byte Reload
	imull	%r14d, %edx
	addl	%r15d, %edx
	movslq	%edx, %rdx
	movq	-48(%rsp), %rsi         # 8-byte Reload
	movzbl	-1(%rdx,%rsi), %edi
	cmpl	$8, %edi
	setl	%dil
	movzbl	1(%rdx,%rsi), %edx
	cmpl	$8, %edx
	setl	%dl
	orb	%dil, %dl
	movzbl	%dl, %edx
	andl	%edx, %ebx
	movzbl	-2(%r10,%rsi), %edx
	cmpl	$8, %edx
	setl	%dil
	movzbl	-2(%r8,%rsi), %edx
	cmpl	$8, %edx
	setl	%dl
	orb	%dil, %dl
	movzbl	%dl, %edx
	andl	%edx, %r13d
	orl	%ebx, %r13d
	movzbl	2(%r10,%rsi), %edx
	cmpl	$8, %edx
	setl	%dl
	movzbl	2(%r8,%rsi), %edi
	cmpl	$8, %edi
	setl	%bl
	orb	%dl, %bl
	movzbl	%bl, %edx
	andl	%edx, %ebp
	orl	%r13d, %ebp
	leal	2(%r12), %edx
	imull	%r14d, %edx
	addl	%r15d, %edx
	movslq	%edx, %rdx
	movzbl	-1(%rdx,%rsi), %edi
	cmpl	$8, %edi
	setl	%bl
	movzbl	1(%rdx,%rsi), %edx
	cmpl	$8, %edx
	setl	%dl
	orb	%bl, %dl
	movzbl	%dl, %edx
	andl	%edx, %ecx
	orl	%ebp, %ecx
	je	.LBB12_61
# %bb.62:                               #   in Loop: Header=BB12_4 Depth=2
	addl	$-2, %r15d
	movl	-8(%rsp), %edx          # 4-byte Reload
	cmpl	$4, %edx
	movl	$4, %ecx
	cmovll	%ecx, %edx
	movb	$100, (%rsi,%r9)
	cmpl	$4, %r15d
	cmovll	%ecx, %r15d
	movl	%edx, %r13d
	jmp	.LBB12_63
.LBB12_57:                              #   in Loop: Header=BB12_4 Depth=2
	movq	%r12, %rdx
	movq	-48(%rsp), %rsi         # 8-byte Reload
	movl	-104(%rsp), %r9d        # 4-byte Reload
	movq	%rdi, %r13
	movq	%r12, %rbp
	jmp	.LBB12_65
.LBB12_13:                              #   in Loop: Header=BB12_4 Depth=2
	movzbl	(%rsi,%rdi), %edx
	cmpl	$7, %edx
	jg	.LBB12_15
# %bb.14:                               #   in Loop: Header=BB12_4 Depth=2
	movq	$0, -88(%rsp)
	movl	$0, -80(%rsp)
	shll	-76(%rsp)
	shll	-68(%rsp)
	movl	-64(%rsp), %ecx
	movl	-56(%rsp), %edx
	leal	(%rcx,%rcx,2), %ecx
	movl	%ecx, -64(%rsp)
	leal	(%rdx,%rdx,2), %ecx
	movl	%ecx, -56(%rsp)
	shll	$2, -60(%rsp)
	jmp	.LBB12_12
.LBB12_45:                              #   in Loop: Header=BB12_4 Depth=2
	movq	-48(%rsp), %rsi         # 8-byte Reload
.LBB12_51:                              #   in Loop: Header=BB12_4 Depth=2
	movl	-104(%rsp), %r9d        # 4-byte Reload
	movq	%rdx, %r13
	jmp	.LBB12_65
.LBB12_59:                              #   in Loop: Header=BB12_4 Depth=2
	movq	-96(%rsp), %rbp         # 8-byte Reload
	movq	-48(%rsp), %rsi         # 8-byte Reload
	movl	-104(%rsp), %r9d        # 4-byte Reload
	movq	%rdi, %r13
	jmp	.LBB12_65
.LBB12_15:                              #   in Loop: Header=BB12_4 Depth=2
	movzbl	1(%rdi,%rsi), %edx
	cmpl	$7, %edx
	jg	.LBB12_17
# %bb.16:                               #   in Loop: Header=BB12_4 Depth=2
	movq	$0, -84(%rsp)
	movl	$0, -68(%rsp)
	shll	-88(%rsp)
	shll	-56(%rsp)
	movl	-76(%rsp), %ecx
	movl	-60(%rsp), %edx
	leal	(%rcx,%rcx,2), %ecx
	movl	%ecx, -76(%rsp)
	leal	(%rdx,%rdx,2), %ecx
	movl	%ecx, -60(%rsp)
	shll	$2, -64(%rsp)
	jmp	.LBB12_12
.LBB12_61:                              #   in Loop: Header=BB12_4 Depth=2
	movq	%r12, %r13
.LBB12_63:                              #   in Loop: Header=BB12_4 Depth=2
	movq	-96(%rsp), %rbp         # 8-byte Reload
.LBB12_64:                              #   in Loop: Header=BB12_4 Depth=2
	movl	-104(%rsp), %r9d        # 4-byte Reload
.LBB12_65:                              #   in Loop: Header=BB12_4 Depth=2
	movl	-100(%rsp), %r14d       # 4-byte Reload
.LBB12_66:                              #   in Loop: Header=BB12_4 Depth=2
	cmpl	$3, %r14d
	jl	.LBB12_72
# %bb.67:                               #   in Loop: Header=BB12_4 Depth=2
	leal	-1(%r13), %edx
	movl	%edx, %ecx
	imull	%ebp, %ecx
	addl	%r15d, %ecx
	movslq	%ecx, %r10
	movzbl	(%rsi,%r10), %ecx
	movq	%rsi, %r9
	xorl	%r12d, %r12d
	cmpl	$8, %ecx
	setl	%r12b
	movl	%r13d, %ecx
	imull	%ebp, %ecx
	addl	%r15d, %ecx
	movslq	%ecx, %rsi
	movzbl	1(%rsi,%r9), %ecx
	xorl	%r14d, %r14d
	cmpl	$8, %ecx
	setl	%r14b
	movq	%r13, -40(%rsp)         # 8-byte Spill
	leal	1(%r13), %ecx
	imull	%ebp, %ecx
	addl	%r15d, %ecx
	movslq	%ecx, %r13
	movzbl	(%r9,%r13), %ecx
	xorl	%r8d, %r8d
	cmpl	$8, %ecx
	setl	%r8b
	movzbl	-1(%rsi,%r9), %ecx
	xorl	%edi, %edi
	cmpl	$8, %ecx
	setl	%dil
	leal	(%r12,%r14), %ecx
	addl	%r8d, %ecx
	addl	%edi, %ecx
	cmpl	$2, %ecx
	jl	.LBB12_68
# %bb.69:                               #   in Loop: Header=BB12_4 Depth=2
	movq	%rsi, -32(%rsp)         # 8-byte Spill
	movl	%edx, -100(%rsp)        # 4-byte Spill
	movzbl	-1(%r10,%r9), %esi
	xorl	%ecx, %ecx
	cmpl	$8, %esi
	setl	%cl
	movzbl	1(%r10,%r9), %esi
	xorl	%ebp, %ebp
	cmpl	$8, %esi
	setl	%bpl
	movzbl	-1(%r13,%r9), %esi
	xorl	%ebx, %ebx
	cmpl	$8, %esi
	setl	%bl
	movzbl	1(%r13,%r9), %esi
	xorl	%edx, %edx
	cmpl	$8, %esi
	setl	%dl
	orl	%r12d, %ecx
	orl	%r14d, %ebp
	orl	%r8d, %edx
	orl	%edi, %ebx
	leal	(%rcx,%rbp), %esi
	addl	%edx, %esi
	addl	%ebx, %esi
	andl	%r12d, %ebp
	andl	%r14d, %edx
	addl	%ebp, %edx
	andl	%r8d, %ebx
	addl	%edx, %ebx
	andl	%edi, %ecx
	addl	%ebx, %ecx
	subl	%ecx, %esi
	cmpl	$1, %esi
	jle	.LBB12_71
# %bb.70:                               #   in Loop: Header=BB12_4 Depth=2
	movq	-96(%rsp), %rbp         # 8-byte Reload
.LBB12_68:                              #   in Loop: Header=BB12_4 Depth=2
	movq	%r9, %rsi
	movl	-104(%rsp), %r9d        # 4-byte Reload
	movq	-40(%rsp), %r13         # 8-byte Reload
	addl	$1, %r15d
	cmpl	%r9d, %r15d
	jl	.LBB12_4
	jmp	.LBB12_73
.LBB12_17:                              #   in Loop: Header=BB12_4 Depth=2
	movzbl	-1(%r8,%rsi), %edx
	cmpl	$7, %edx
	jg	.LBB12_19
# %bb.18:                               #   in Loop: Header=BB12_4 Depth=2
	movl	$0, -76(%rsp)
	movl	$0, -88(%rsp)
	movl	$0, -64(%rsp)
	shll	-84(%rsp)
	shll	-60(%rsp)
	movl	-80(%rsp), %ecx
	movl	-56(%rsp), %edx
	leal	(%rcx,%rcx,2), %ecx
	movl	%ecx, -80(%rsp)
	leal	(%rdx,%rdx,2), %ecx
	movl	%ecx, -56(%rsp)
	shll	$2, -68(%rsp)
	jmp	.LBB12_12
.LBB12_19:                              #   in Loop: Header=BB12_4 Depth=2
	movzbl	1(%r8,%rsi), %edx
	cmpl	$7, %edx
	jg	.LBB12_21
# %bb.20:                               #   in Loop: Header=BB12_4 Depth=2
	movl	$0, -68(%rsp)
	movl	$0, -80(%rsp)
	movl	$0, -56(%rsp)
	shll	-84(%rsp)
	shll	-60(%rsp)
	movl	-88(%rsp), %ecx
	movl	-64(%rsp), %edx
	leal	(%rcx,%rcx,2), %ecx
	movl	%ecx, -88(%rsp)
	leal	(%rdx,%rdx,2), %ecx
	movl	%ecx, -64(%rsp)
	shll	$2, -76(%rsp)
	jmp	.LBB12_12
.LBB12_21:                              #   in Loop: Header=BB12_4 Depth=2
	movzbl	-1(%rcx,%rsi), %edx
	cmpl	$7, %edx
	jg	.LBB12_23
# %bb.22:                               #   in Loop: Header=BB12_4 Depth=2
	movq	$0, -64(%rsp)
	movl	$0, -76(%rsp)
	shll	-88(%rsp)
	shll	-56(%rsp)
	movl	-84(%rsp), %ecx
	movl	-68(%rsp), %edx
	leal	(%rcx,%rcx,2), %ecx
	movl	%ecx, -84(%rsp)
	leal	(%rdx,%rdx,2), %ecx
	movl	%ecx, -68(%rsp)
	shll	$2, -80(%rsp)
	jmp	.LBB12_12
.LBB12_23:                              #   in Loop: Header=BB12_4 Depth=2
	movzbl	(%rsi,%rcx), %edx
	cmpl	$7, %edx
	jg	.LBB12_25
# %bb.24:                               #   in Loop: Header=BB12_4 Depth=2
	movq	$0, -64(%rsp)
	movl	$0, -56(%rsp)
	shll	-76(%rsp)
	shll	-68(%rsp)
	movl	-88(%rsp), %ecx
	movl	-80(%rsp), %edx
	leal	(%rcx,%rcx,2), %ecx
	movl	%ecx, -88(%rsp)
	leal	(%rdx,%rdx,2), %ecx
	movl	%ecx, -80(%rsp)
	shll	$2, -84(%rsp)
.LBB12_12:                              #   in Loop: Header=BB12_4 Depth=2
	movq	-96(%rsp), %rbp         # 8-byte Reload
	movl	-104(%rsp), %r9d        # 4-byte Reload
.LBB12_27:                              #   in Loop: Header=BB12_4 Depth=2
	xorl	%ecx, %ecx
	leaq	-88(%rsp), %rdi
	xorl	%ebx, %ebx
	cmpl	$2, %ebx
	jle	.LBB12_29
.LBB12_35:                              #   in Loop: Header=BB12_4 Depth=2
	testl	%ecx, %ecx
	jle	.LBB12_41
# %bb.36:                               #   in Loop: Header=BB12_4 Depth=2
	movzbl	(%rsi,%r8), %ecx
	cmpl	$3, %ecx
	jg	.LBB12_38
# %bb.37:                               #   in Loop: Header=BB12_4 Depth=2
	leal	(%r11,%r13), %ecx
	addl	$-1, %ecx
	imull	%ebp, %ecx
	addl	%r15d, %ecx
	addl	%eax, %ecx
	movslq	%ecx, %rcx
	movb	$4, -1(%rcx,%rsi)
	jmp	.LBB12_39
	.p2align	4, 0x90
.LBB12_34:                              #   in Loop: Header=BB12_29 Depth=3
	addl	$1, %ebx
	addq	$12, %rdi
	cmpl	$2, %ebx
	jg	.LBB12_35
.LBB12_29:                              # %.preheader
                                        #   Parent Loop BB12_2 Depth=1
                                        #     Parent Loop BB12_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_31 Depth 4
	xorl	%edx, %edx
	cmpl	$2, %edx
	jle	.LBB12_31
	jmp	.LBB12_34
	.p2align	4, 0x90
.LBB12_33:                              #   in Loop: Header=BB12_31 Depth=4
	addq	$1, %rdx
	cmpl	$2, %edx
	jg	.LBB12_34
.LBB12_31:                              #   Parent Loop BB12_2 Depth=1
                                        #     Parent Loop BB12_4 Depth=2
                                        #       Parent Loop BB12_29 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	%ecx, (%rdi,%rdx,4)
	jle	.LBB12_33
# %bb.32:                               #   in Loop: Header=BB12_31 Depth=4
	movl	(%rdi,%rdx,4), %ecx
	movl	%ebx, %r11d
	movl	%edx, %eax
	jmp	.LBB12_33
.LBB12_38:                              #   in Loop: Header=BB12_4 Depth=2
	movb	(%rsi,%r8), %cl
	addb	$1, %cl
	leal	(%r11,%r13), %edx
	addl	$-1, %edx
	imull	%ebp, %edx
	addl	%r15d, %edx
	addl	%eax, %edx
	movslq	%edx, %rdx
	movb	%cl, -1(%rdx,%rsi)
.LBB12_39:                              #   in Loop: Header=BB12_4 Depth=2
	leal	(%r11,%r11), %ecx
	addl	%eax, %ecx
	cmpl	$2, %ecx
	jg	.LBB12_41
# %bb.40:                               #   in Loop: Header=BB12_4 Depth=2
	leal	(%r11,%r13), %r13d
	addl	$-1, %r13d
	cmpl	$4, %r13d
	movl	$4, %ecx
	cmovll	%ecx, %r13d
	leal	(%rax,%r15), %r15d
	addl	$-2, %r15d
	cmpl	$4, %r15d
	cmovll	%ecx, %r15d
	cmpl	$2, %r14d
	je	.LBB12_42
	jmp	.LBB12_66
.LBB12_25:                              #   in Loop: Header=BB12_4 Depth=2
	movzbl	1(%rcx,%rsi), %ecx
	cmpl	$7, %ecx
	movq	-96(%rsp), %rbp         # 8-byte Reload
	movl	-104(%rsp), %r9d        # 4-byte Reload
	jg	.LBB12_27
# %bb.26:                               #   in Loop: Header=BB12_4 Depth=2
	movl	$0, -68(%rsp)
	movq	$0, -60(%rsp)
	shll	-64(%rsp)
	shll	-80(%rsp)
	movl	-84(%rsp), %ecx
	movl	-76(%rsp), %edx
	leal	(%rcx,%rcx,2), %ecx
	movl	%ecx, -84(%rsp)
	leal	(%rdx,%rdx,2), %ecx
	movl	%ecx, -76(%rsp)
	shll	$2, -88(%rsp)
	jmp	.LBB12_27
.LBB12_74:
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
.Lfunc_end12:
	.size	susan_thin, .Lfunc_end12-susan_thin
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function susan_edges
.LCPI13_0:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI13_3:
	.quad	4602678819172646912     # double 0.5
.LCPI13_4:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI13_1:
	.long	1232348160              # float 1.0E+6
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI13_2:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	susan_edges
	.p2align	4, 0x90
	.type	susan_edges,@function
susan_edges:                            # @susan_edges
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
	subq	$360, %rsp              # imm = 0x168
	.cfi_def_cfa_offset 416
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %r14d
	movl	%r8d, 12(%rsp)          # 4-byte Spill
	movq	%rcx, 248(%rsp)         # 8-byte Spill
	movq	%rdx, 144(%rsp)         # 8-byte Spill
	movq	%rdi, %rbp
	movl	416(%rsp), %ecx
	movl	%r9d, %eax
	imull	%ecx, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%ebx, %ebx
	movq	%rsi, 112(%rsp)         # 8-byte Spill
	movq	%rsi, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%r14, %r8
	leal	(%r14,%r14,2), %esi
	addl	$3, %esi
	movl	%r8d, %eax
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movslq	%r8d, %rax
	leaq	5(%rax,%rbp), %rcx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	leaq	6(%rbp,%rax,2), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	leaq	(%rax,%rax,2), %rcx
	leaq	6(%rbp,%rcx), %rdx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	leaq	6(%rbp,%rax,4), %rdx
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	movq	%rax, 48(%rsp)          # 8-byte Spill
	leaq	(%rax,%rax,4), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	leaq	5(%rbp,%rax), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rbp, 16(%rsp)          # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	4(%rbp,%rcx,2), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	$3, %r13d
	movq	%r14, 120(%rsp)         # 8-byte Spill
	jmp	.LBB13_1
	.p2align	4, 0x90
.LBB13_7:                               #   in Loop: Header=BB13_1 Depth=1
	addl	$1, %r13d
	addq	152(%rsp), %rsi         # 8-byte Folded Reload
	movq	120(%rsp), %r8          # 8-byte Reload
	movq	104(%rsp), %rbx         # 8-byte Reload
	addl	%r8d, %ebx
.LBB13_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	movl	416(%rsp), %eax
	addl	$-3, %eax
	cmpl	%eax, %r13d
	jge	.LBB13_8
# %bb.2:                                # %.preheader2
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movslq	%ebx, %rdx
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rdx), %rcx
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rdx), %rax
	movq	88(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%rdx), %r8
	movq	80(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%rdx), %r9
	movq	72(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%rdx), %r10
	movq	64(%rsp), %rdi          # 8-byte Reload
	leaq	(%rdi,%rdx), %r11
	addq	56(%rsp), %rdx          # 8-byte Folded Reload
	xorl	%r14d, %r14d
	jmp	.LBB13_3
	.p2align	4, 0x90
.LBB13_6:                               #   in Loop: Header=BB13_3 Depth=2
	addq	$1, %r14
.LBB13_3:                               #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	3(%r14), %edi
	movq	120(%rsp), %rbx         # 8-byte Reload
	addl	$-3, %ebx
	cmpl	%ebx, %edi
	jge	.LBB13_7
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=2
	leal	(%rsi,%r14), %edi
	movslq	%edi, %rdi
	movq	16(%rsp), %rbx          # 8-byte Reload
	movzbl	(%rbx,%rdi), %r12d
	addq	248(%rsp), %r12         # 8-byte Folded Reload
	movzbl	2(%rcx,%r14), %edi
	movq	%r12, %rbx
	subq	%rdi, %rbx
	movzbl	(%rbx), %edi
	movzbl	3(%rcx,%r14), %ebx
	movq	%r12, %r15
	subq	%rbx, %r15
	movzbl	(%r15), %ebx
	addl	%edi, %ebx
	movzbl	4(%rcx,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-4(%rax,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	-3(%rax,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-2(%rax,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	-1(%rax,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	(%rax,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	-6(%r8,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-5(%r8,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	-4(%r8,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-3(%r8,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	-2(%r8,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-1(%r8,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	(%r8,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-6(%r9,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	-5(%r9,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-4(%r9,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	-2(%r9,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-1(%r9,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	(%r9,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-6(%r10,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	-5(%r10,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-4(%r10,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	-3(%r10,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-2(%r10,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	-1(%r10,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	(%r10,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	-4(%r11,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-3(%r11,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	-2(%r11,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-1(%r11,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	(%r11,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	-2(%rdx,%r14), %ebx
	movq	%r12, %rbp
	subq	%rbx, %rbp
	movzbl	(%rbp), %ebx
	addl	%edi, %ebx
	movzbl	-1(%rdx,%r14), %edi
	movq	%r12, %rbp
	subq	%rdi, %rbp
	movzbl	(%rbp), %edi
	addl	%ebx, %edi
	movzbl	(%rdx,%r14), %ebx
	subq	%rbx, %r12
	movzbl	(%r12), %ebx
	leal	(%rbx,%rdi), %edi
	addl	$100, %edi
	cmpl	12(%rsp), %edi          # 4-byte Folded Reload
	jg	.LBB13_6
# %bb.5:                                #   in Loop: Header=BB13_3 Depth=2
	movl	12(%rsp), %ebx          # 4-byte Reload
	subl	%edi, %ebx
	leal	(%rsi,%r14), %edi
	movslq	%edi, %rdi
	movq	112(%rsp), %rbp         # 8-byte Reload
	movl	%ebx, (%rbp,%rdi,4)
	jmp	.LBB13_6
.LBB13_8:                               # %.preheader1
	movq	48(%rsp), %rdx          # 8-byte Reload
	leal	4(,%rdx,4), %r9d
	movq	16(%rsp), %rax          # 8-byte Reload
	leaq	(%rdx,%rax), %rcx
	addq	$6, %rcx
	movq	%rcx, 296(%rsp)         # 8-byte Spill
	leaq	7(%rax,%rdx,2), %rcx
	movq	%rcx, 288(%rsp)         # 8-byte Spill
	movq	40(%rsp), %rsi          # 8-byte Reload
	leaq	7(%rax,%rsi), %rcx
	movq	%rcx, 280(%rsp)         # 8-byte Spill
	leaq	7(%rax,%rdx,4), %rcx
	movq	%rcx, 272(%rsp)         # 8-byte Spill
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	6(%rax,%rcx), %rcx
	movq	%rcx, 264(%rsp)         # 8-byte Spill
	leaq	5(%rax,%rsi,2), %rax
	movq	%rax, 256(%rsp)         # 8-byte Spill
	movl	$4, %r10d
	xorps	%xmm3, %xmm3
	movsd	.LCPI13_0(%rip), %xmm4  # xmm4 = mem[0],zero
	movss	.LCPI13_1(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	movsd	.LCPI13_3(%rip), %xmm7  # xmm7 = mem[0],zero
	movl	%r8d, %ecx
	movq	112(%rsp), %rdi         # 8-byte Reload
	jmp	.LBB13_9
	.p2align	4, 0x90
.LBB13_39:                              #   in Loop: Header=BB13_9 Depth=1
	addl	$1, %r10d
	addq	152(%rsp), %r9          # 8-byte Folded Reload
	movl	136(%rsp), %ecx         # 4-byte Reload
	addl	%r8d, %ecx
.LBB13_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_11 Depth 2
	movl	416(%rsp), %eax
	addl	$-4, %eax
	cmpl	%eax, %r10d
	jge	.LBB13_40
# %bb.10:                               # %.preheader
                                        #   in Loop: Header=BB13_9 Depth=1
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	movslq	%ecx, %rcx
	movq	16(%rsp), %rax          # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	movq	296(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movq	288(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	280(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	272(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	264(%rsp), %rax         # 8-byte Reload
	addq	%rcx, %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	addq	256(%rsp), %rcx         # 8-byte Folded Reload
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	movq	%r9, 128(%rsp)          # 8-byte Spill
	movq	%r10, 160(%rsp)         # 8-byte Spill
	jmp	.LBB13_11
	.p2align	4, 0x90
.LBB13_38:                              #   in Loop: Header=BB13_11 Depth=2
	addq	$1, %rbx
.LBB13_11:                              #   Parent Loop BB13_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	4(%rbx), %eax
	leal	-4(%r8), %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_39
# %bb.12:                               #   in Loop: Header=BB13_11 Depth=2
	leal	(%r9,%rbx), %eax
	cltq
	cmpl	$0, (%rdi,%rax,4)
	jle	.LBB13_38
# %bb.13:                               #   in Loop: Header=BB13_11 Depth=2
	leal	(%r9,%rbx), %eax
	cltq
	movl	(%rdi,%rax,4), %r14d
	movl	12(%rsp), %r12d         # 4-byte Reload
	subl	%r14d, %r12d
	movq	16(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rax), %r13d
	addq	248(%rsp), %r13         # 8-byte Folded Reload
	movl	$1, %r11d
	cmpl	$601, %r12d             # imm = 0x259
	jl	.LBB13_27
# %bb.14:                               #   in Loop: Header=BB13_11 Depth=2
	movq	208(%rsp), %rsi         # 8-byte Reload
	movzbl	3(%rsi,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %ecx
	leal	(%rcx,%rcx,2), %eax
	movzbl	4(%rsi,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	leal	(%rdx,%rdx,2), %edx
	addl	%eax, %edx
	movzbl	5(%rsi,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %eax
	leal	(%rax,%rax,2), %esi
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%ecx, %eax
	addl	%edx, %esi
	movq	200(%rsp), %rbp         # 8-byte Reload
	movzbl	-4(%rbp,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %ecx
	leal	(%rcx,%rcx), %edx
	subl	%edx, %eax
	leal	(%rsi,%rcx,2), %ecx
	movzbl	-3(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	subl	%edx, %eax
	leal	(%rcx,%rdx,2), %ecx
	movzbl	-2(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	leal	(%rcx,%rdx,2), %ecx
	movzbl	-1(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	addl	%edx, %eax
	leal	(%rcx,%rdx,2), %edx
	movzbl	(%rbp,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %esi
	leal	(%rax,%rsi,2), %ecx
	leal	(%rdx,%rsi,2), %eax
	movq	192(%rsp), %rbp         # 8-byte Reload
	movzbl	-6(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	leal	(%rdx,%rdx,2), %esi
	subl	%esi, %ecx
	addl	%edx, %eax
	movzbl	-5(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	leal	(%rdx,%rdx), %esi
	subl	%esi, %ecx
	addl	%eax, %edx
	movzbl	-4(%rbp,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %eax
	subl	%eax, %ecx
	addl	%eax, %edx
	movzbl	-3(%rbp,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %eax
	addl	%edx, %eax
	movzbl	-2(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	addl	%edx, %ecx
	addl	%edx, %eax
	movzbl	-1(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	leal	(%rcx,%rdx,2), %esi
	addl	%edx, %eax
	movzbl	(%rbp,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %edx
	leal	(%rdx,%rdx,2), %ecx
	addl	%esi, %ecx
	addl	%edx, %eax
	movq	168(%rsp), %rsi         # 8-byte Reload
	movzbl	-6(%rsi,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	leal	(%rdx,%rdx,2), %edx
	subl	%edx, %ecx
	movzbl	-5(%rsi,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	addl	%edx, %edx
	subl	%edx, %ecx
	movzbl	-4(%rsi,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	subl	%edx, %ecx
	movzbl	-2(%rsi,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	addl	%ecx, %edx
	movzbl	-1(%rsi,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %ecx
	leal	(%rdx,%rcx,2), %edx
	movzbl	(%rsi,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %ecx
	leal	(%rcx,%rcx,2), %ecx
	addl	%edx, %ecx
	movq	184(%rsp), %rbp         # 8-byte Reload
	movzbl	-6(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	leal	(%rdx,%rdx,2), %esi
	subl	%esi, %ecx
	subl	%eax, %edx
	movzbl	-5(%rbp,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %eax
	leal	(%rax,%rax), %esi
	subl	%esi, %ecx
	addl	%edx, %eax
	movzbl	-4(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	subl	%edx, %ecx
	addl	%edx, %eax
	movzbl	-3(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	addl	%eax, %edx
	movzbl	-2(%rbp,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %eax
	addl	%eax, %ecx
	addl	%eax, %edx
	movzbl	-1(%rbp,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %eax
	leal	(%rcx,%rax,2), %ecx
	addl	%eax, %edx
	movzbl	(%rbp,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %esi
	leal	(%rsi,%rsi,2), %eax
	addl	%ecx, %eax
	addl	%esi, %edx
	movq	176(%rsp), %rbp         # 8-byte Reload
	movzbl	-4(%rbp,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %ecx
	leal	(%rcx,%rcx), %esi
	subl	%esi, %eax
	leal	(%rdx,%rcx,2), %ecx
	movzbl	-3(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	subl	%edx, %eax
	leal	(%rcx,%rdx,2), %ecx
	movzbl	-2(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	leal	(%rcx,%rdx,2), %ecx
	movzbl	-1(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	addl	%edx, %eax
	leal	(%rcx,%rdx,2), %ecx
	movzbl	(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	leal	(%rax,%rdx,2), %ebp
	leal	(%rcx,%rdx,2), %eax
	movq	216(%rsp), %rdx         # 8-byte Reload
	movzbl	-2(%rdx,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %ecx
	subl	%ecx, %ebp
	leal	(%rcx,%rcx,2), %ecx
	addl	%eax, %ecx
	movzbl	-1(%rdx,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %eax
	leal	(%rax,%rax,2), %eax
	addl	%ecx, %eax
	movzbl	(%rdx,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %ecx
	addl	%ecx, %ebp
	leal	(%rcx,%rcx,2), %r15d
	addl	%eax, %r15d
	movl	%ebp, %eax
	imull	%ebp, %eax
	movl	%r15d, %ecx
	imull	%r15d, %ecx
	addl	%eax, %ecx
	cvtsi2ss	%ecx, %xmm0
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm3, %xmm0
	jb	.LBB13_16
# %bb.15:                               #   in Loop: Header=BB13_11 Depth=2
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB13_17
.LBB13_16:                              # %call.sqrt
                                        #   in Loop: Header=BB13_11 Depth=2
	callq	sqrt
	movl	$1, %r11d
	movsd	.LCPI13_3(%rip), %xmm7  # xmm7 = mem[0],zero
	movss	.LCPI13_1(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	movsd	.LCPI13_0(%rip), %xmm4  # xmm4 = mem[0],zero
	xorps	%xmm3, %xmm3
	movq	160(%rsp), %r10         # 8-byte Reload
	movq	128(%rsp), %r9          # 8-byte Reload
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	120(%rsp), %r8          # 8-byte Reload
.LBB13_17:                              # %.split
                                        #   in Loop: Header=BB13_11 Depth=2
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtsi2ss	%r12d, %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm4, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_27
# %bb.18:                               #   in Loop: Header=BB13_11 Depth=2
	movaps	%xmm5, %xmm1
	testl	%ebp, %ebp
	je	.LBB13_20
# %bb.19:                               #   in Loop: Header=BB13_11 Depth=2
	xorps	%xmm1, %xmm1
	cvtsi2ss	%r15d, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ebp, %xmm0
	divss	%xmm0, %xmm1
.LBB13_20:                              #   in Loop: Header=BB13_11 Depth=2
	xorl	%edx, %edx
	xorps	%xmm6, %xmm6
	ucomiss	%xmm1, %xmm6
	setbe	%sil
	movaps	%xmm1, %xmm2
	xorps	.LCPI13_2(%rip), %xmm2
	movaps	%xmm1, %xmm0
	cmpltss	%xmm6, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movl	$1, %eax
	xorl	%r11d, %r11d
	ucomisd	%xmm1, %xmm7
	movl	$0, %ecx
	ja	.LBB13_22
# %bb.21:                               #   in Loop: Header=BB13_11 Depth=2
	movb	%sil, %dl
	leal	(%rdx,%rdx), %eax
	addl	$-1, %eax
	cvtss2sd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	xorl	%eax, %eax
	ucomisd	.LCPI13_4(%rip), %xmm0
	setbe	%al
	leal	-1(%rcx,%rcx), %ecx
	movl	$1, %edx
	cmoval	%edx, %ecx
.LBB13_22:                              #   in Loop: Header=BB13_11 Depth=2
	leal	(%r10,%rcx), %edx
	imull	%r8d, %edx
	addl	%eax, %edx
	leal	(%rbx,%rdx), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	cmpl	(%rdi,%rdx,4), %r14d
	jle	.LBB13_27
# %bb.23:                               #   in Loop: Header=BB13_11 Depth=2
	movl	%r10d, %edx
	subl	%ecx, %edx
	imull	%r8d, %edx
	subl	%eax, %edx
	leal	(%rbx,%rdx), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	cmpl	(%rdi,%rdx,4), %r14d
	jl	.LBB13_27
# %bb.24:                               #   in Loop: Header=BB13_11 Depth=2
	leal	(%r10,%rcx,2), %edx
	imull	%r8d, %edx
	leal	(%rdx,%rax,2), %edx
	leal	(%rbx,%rdx), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	cmpl	(%rdi,%rdx,4), %r14d
	jle	.LBB13_27
# %bb.25:                               #   in Loop: Header=BB13_11 Depth=2
	addl	%ecx, %ecx
	addl	%eax, %eax
	movl	%r10d, %edx
	subl	%ecx, %edx
	imull	%r8d, %edx
	subl	%eax, %edx
	leal	(%rbx,%rdx), %eax
	addl	$4, %eax
	cltq
	cmpl	(%rdi,%rax,4), %r14d
	jl	.LBB13_27
# %bb.26:                               #   in Loop: Header=BB13_11 Depth=2
	leal	(%r9,%rbx), %eax
	cltq
	movq	144(%rsp), %rcx         # 8-byte Reload
	movb	$1, (%rcx,%rax)
	.p2align	4, 0x90
.LBB13_27:                              #   in Loop: Header=BB13_11 Depth=2
	testl	%r11d, %r11d
	je	.LBB13_38
# %bb.28:                               #   in Loop: Header=BB13_11 Depth=2
	movl	%r14d, 140(%rsp)        # 4-byte Spill
	movq	208(%rsp), %rdx         # 8-byte Reload
	movzbl	3(%rdx,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %eax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	leal	(%rax,%rax,8), %eax
	movzbl	4(%rdx,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %ecx
	leal	(%rcx,%rcx,8), %ecx
	addl	%eax, %ecx
	movzbl	5(%rdx,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	leal	(%rax,%rax,8), %eax
	addl	%ecx, %eax
	movq	200(%rsp), %rdx         # 8-byte Reload
	movzbl	-4(%rdx,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %ecx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	leal	(%rax,%rcx,4), %eax
	movzbl	-3(%rdx,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %r15d
	leal	(%rax,%r15,4), %eax
	movzbl	-2(%rdx,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %ecx
	leal	(%rax,%rcx,4), %eax
	movzbl	-1(%rdx,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leal	(%rax,%rcx,4), %ecx
	movzbl	(%rdx,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leal	(%rcx,%rax,4), %ecx
	movq	192(%rsp), %rax         # 8-byte Reload
	movzbl	-6(%rax,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %esi
	movq	%rsi, %rdx
	movq	%rsi, 88(%rsp)          # 8-byte Spill
	addl	%esi, %ecx
	movzbl	-5(%rax,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %esi
	movq	%rsi, %rdx
	movq	%rsi, 72(%rsp)          # 8-byte Spill
	addl	%esi, %ecx
	movzbl	-4(%rax,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	movl	%edx, 64(%rsp)          # 4-byte Spill
	addl	%edx, %ecx
	movzbl	-3(%rax,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	addl	%ecx, %edx
	movzbl	-2(%rax,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %ecx
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	addl	%ecx, %edx
	movzbl	-1(%rax,%rbx), %ecx
	negq	%rcx
	movzbl	(%r13,%rcx), %ecx
	addl	%ecx, %edx
	movzbl	(%rax,%rbx), %esi
	negq	%rsi
	movzbl	(%r13,%rsi), %esi
	movq	%rsi, %rax
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	addl	%esi, %edx
	movq	184(%rsp), %rax         # 8-byte Reload
	movzbl	-6(%rax,%rbx), %esi
	negq	%rsi
	movzbl	(%r13,%rsi), %ebp
	movq	%rbp, %rsi
	movq	%rbp, 40(%rsp)          # 8-byte Spill
	addl	%ebp, %edx
	movzbl	-5(%rax,%rbx), %esi
	negq	%rsi
	movzbl	(%r13,%rsi), %ebp
	movq	%rbp, %rsi
	movq	%rbp, 232(%rsp)         # 8-byte Spill
	addl	%ebp, %edx
	movzbl	-4(%rax,%rbx), %esi
	negq	%rsi
	movzbl	(%r13,%rsi), %esi
	movl	%esi, 28(%rsp)          # 4-byte Spill
	addl	%esi, %edx
	movzbl	-3(%rax,%rbx), %esi
	negq	%rsi
	movzbl	(%r13,%rsi), %ebp
	addl	%edx, %ebp
	movzbl	-2(%rax,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	movl	%edx, 24(%rsp)          # 4-byte Spill
	addl	%edx, %ebp
	movzbl	-1(%rax,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %esi
	movq	%rsi, %rdx
	movq	%rsi, 224(%rsp)         # 8-byte Spill
	addl	%esi, %ebp
	movzbl	(%rax,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %r11d
	addl	%r11d, %ebp
	movq	176(%rsp), %rax         # 8-byte Reload
	movzbl	-4(%rax,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %r9d
	leal	(%rbp,%r9,4), %edx
	movzbl	-3(%rax,%rbx), %ebp
	negq	%rbp
	movzbl	(%r13,%rbp), %r8d
	leal	(%rdx,%r8,4), %edx
	movzbl	-2(%rax,%rbx), %ebp
	negq	%rbp
	movzbl	(%r13,%rbp), %ebp
	leal	(%rdx,%rbp,4), %edx
	movzbl	-1(%rax,%rbx), %ebp
	negq	%rbp
	movzbl	(%r13,%rbp), %r14d
	leal	(%rdx,%r14,4), %edx
	movzbl	(%rax,%rbx), %ebp
	negq	%rbp
	movzbl	(%r13,%rbp), %r12d
	leal	(%rdx,%r12,4), %edx
	movq	216(%rsp), %rax         # 8-byte Reload
	movzbl	-2(%rax,%rbx), %ebp
	negq	%rbp
	movzbl	(%r13,%rbp), %esi
	leal	(%rsi,%rsi,8), %ebp
	addl	%edx, %ebp
	movzbl	-1(%rax,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %edx
	leal	(%rdx,%rdx,8), %edi
	addl	%ebp, %edi
	movzbl	(%rax,%rbx), %edx
	negq	%rdx
	movzbl	(%r13,%rdx), %r10d
	movq	%r15, %rdx
	movaps	%xmm5, %xmm0
	leal	(%r10,%r10,8), %ebp
	addl	%edi, %ebp
	je	.LBB13_30
# %bb.29:                               #   in Loop: Header=BB13_11 Depth=2
	movq	240(%rsp), %rdi         # 8-byte Reload
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	addl	104(%rsp), %edi         # 4-byte Folded Reload
	movq	96(%rsp), %rax          # 8-byte Reload
	leal	(%rdi,%rax,4), %edi
	addl	%edx, %edi
	addl	32(%rsp), %edi          # 4-byte Folded Reload
	movq	80(%rsp), %rax          # 8-byte Reload
	leal	(%rdi,%rax,4), %edi
	movq	88(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax,8), %r15d
	addl	%edi, %r15d
	movq	72(%rsp), %rax          # 8-byte Reload
	leal	(%r15,%rax,4), %edi
	addl	64(%rsp), %edi          # 4-byte Folded Reload
	addl	56(%rsp), %edi          # 4-byte Folded Reload
	leal	(%rdi,%rcx,4), %edi
	movq	48(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax,8), %eax
	addl	%edi, %eax
	movq	%rcx, %r15
	movq	168(%rsp), %rcx         # 8-byte Reload
	movzbl	-6(%rcx,%rbx), %edi
	negq	%rdi
	movzbl	(%r13,%rdi), %edi
	leal	(%rdi,%rdi,8), %edi
	addl	%eax, %edi
	movzbl	-5(%rcx,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %eax
	leal	(%rdi,%rax,4), %eax
	movzbl	-4(%rcx,%rbx), %edi
	negq	%rdi
	movzbl	(%r13,%rdi), %edi
	addl	%eax, %edi
	movzbl	-2(%rcx,%rbx), %eax
	negq	%rax
	movzbl	(%r13,%rax), %eax
	addl	%edi, %eax
	movzbl	-1(%rcx,%rbx), %edi
	negq	%rdi
	movzbl	(%r13,%rdi), %edi
	leal	(%rax,%rdi,4), %eax
	movzbl	(%rcx,%rbx), %edi
	movq	%r15, %rcx
	negq	%rdi
	movzbl	(%r13,%rdi), %edi
	leal	(%rdi,%rdi,8), %edi
	addl	%eax, %edi
	movq	40(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax,8), %eax
	addl	%edi, %eax
	movq	232(%rsp), %rdi         # 8-byte Reload
	leal	(%rax,%rdi,4), %eax
	addl	28(%rsp), %eax          # 4-byte Folded Reload
	addl	24(%rsp), %eax          # 4-byte Folded Reload
	movq	224(%rsp), %rdi         # 8-byte Reload
	leal	(%rax,%rdi,4), %eax
	leal	(%r11,%r11,8), %edi
	addl	%eax, %edi
	leal	(%rdi,%r9,4), %eax
	addl	%r8d, %eax
	addl	%r14d, %eax
	leal	(%rax,%r12,4), %eax
	addl	%esi, %eax
	addl	%r10d, %eax
	cvtsi2ss	%eax, %xmm0
	cvtsi2ss	%ebp, %xmm1
	divss	%xmm1, %xmm0
.LBB13_30:                              #   in Loop: Header=BB13_11 Depth=2
	movq	%r10, 304(%rsp)         # 8-byte Spill
	movq	%rsi, 312(%rsp)         # 8-byte Spill
	movq	%r12, 320(%rsp)         # 8-byte Spill
	movq	%r14, 328(%rsp)         # 8-byte Spill
	movq	%r8, 336(%rsp)          # 8-byte Spill
	movq	%r11, 344(%rsp)         # 8-byte Spill
	movq	%r9, 352(%rsp)          # 8-byte Spill
	movq	40(%rsp), %r8           # 8-byte Reload
	movq	48(%rsp), %r11          # 8-byte Reload
	movq	%rcx, %r9
	movl	56(%rsp), %r10d         # 4-byte Reload
	movl	64(%rsp), %r12d         # 4-byte Reload
	movq	72(%rsp), %r14          # 8-byte Reload
	movq	88(%rsp), %r13          # 8-byte Reload
	movq	80(%rsp), %r15          # 8-byte Reload
	movq	32(%rsp), %rsi          # 8-byte Reload
	movq	96(%rsp), %rbp          # 8-byte Reload
	movq	104(%rsp), %rcx         # 8-byte Reload
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm7
	jbe	.LBB13_32
# %bb.31:                               #   in Loop: Header=BB13_11 Depth=2
	movl	$1, %eax
	xorl	%ecx, %ecx
	jmp	.LBB13_33
.LBB13_32:                              #   in Loop: Header=BB13_11 Depth=2
	movq	240(%rsp), %rax         # 8-byte Reload
	leal	(%rax,%rax,2), %eax
	leal	(%rcx,%rcx,2), %edi
	subl	%edi, %eax
	leal	(%rax,%rbp,4), %eax
	leal	(%rax,%rdx,2), %eax
	addl	%esi, %esi
	subl	%esi, %eax
	shll	$2, %r15d
	subl	%r15d, %eax
	leal	(%r13,%r13,2), %edi
	addl	%eax, %edi
	leal	(%rdi,%r14,2), %eax
	addl	%r12d, %eax
	subl	%r10d, %eax
	addl	%r9d, %r9d
	subl	%r9d, %eax
	leal	(%r11,%r11,2), %ecx
	subl	%ecx, %eax
	leal	(%r8,%r8,2), %ecx
	subl	%ecx, %eax
	movq	232(%rsp), %rcx         # 8-byte Reload
	addl	%ecx, %ecx
	subl	%ecx, %eax
	subl	28(%rsp), %eax          # 4-byte Folded Reload
	addl	24(%rsp), %eax          # 4-byte Folded Reload
	movq	224(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx,2), %eax
	movq	344(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rcx,2), %ecx
	addl	%eax, %ecx
	movq	352(%rsp), %rax         # 8-byte Reload
	shll	$2, %eax
	subl	%eax, %ecx
	movq	336(%rsp), %rax         # 8-byte Reload
	addl	%eax, %eax
	subl	%eax, %ecx
	movq	328(%rsp), %rax         # 8-byte Reload
	leal	(%rcx,%rax,2), %eax
	movq	320(%rsp), %rcx         # 8-byte Reload
	leal	(%rax,%rcx,4), %eax
	movq	312(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rcx,2), %ecx
	subl	%ecx, %eax
	movq	304(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rcx,2), %ecx
	addl	%eax, %ecx
	xorl	%edx, %edx
	testl	%ecx, %ecx
	setle	%dl
	xorl	%eax, %eax
	ucomisd	.LCPI13_4(%rip), %xmm0
	setbe	%al
	leal	-1(%rdx,%rdx), %ecx
	movl	$1, %edx
	cmoval	%edx, %ecx
.LBB13_33:                              #   in Loop: Header=BB13_11 Depth=2
	movq	128(%rsp), %r9          # 8-byte Reload
	movq	160(%rsp), %r10         # 8-byte Reload
	leal	(%r10,%rcx), %edx
	movq	120(%rsp), %r8          # 8-byte Reload
	imull	%r8d, %edx
	addl	%eax, %edx
	leal	(%rbx,%rdx), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	movq	112(%rsp), %rdi         # 8-byte Reload
	movl	140(%rsp), %esi         # 4-byte Reload
	cmpl	(%rdi,%rdx,4), %esi
	jle	.LBB13_38
# %bb.34:                               #   in Loop: Header=BB13_11 Depth=2
	movl	%r10d, %edx
	subl	%ecx, %edx
	imull	%r8d, %edx
	subl	%eax, %edx
	leal	(%rbx,%rdx), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	cmpl	(%rdi,%rdx,4), %esi
	jl	.LBB13_38
# %bb.35:                               #   in Loop: Header=BB13_11 Depth=2
	leal	(%r10,%rcx,2), %edx
	imull	%r8d, %edx
	leal	(%rdx,%rax,2), %edx
	leal	(%rbx,%rdx), %edx
	addl	$4, %edx
	movslq	%edx, %rdx
	cmpl	(%rdi,%rdx,4), %esi
	jle	.LBB13_38
# %bb.36:                               #   in Loop: Header=BB13_11 Depth=2
	addl	%ecx, %ecx
	addl	%eax, %eax
	movl	%r10d, %edx
	subl	%ecx, %edx
	imull	%r8d, %edx
	subl	%eax, %edx
	leal	(%rbx,%rdx), %eax
	addl	$4, %eax
	cltq
	cmpl	(%rdi,%rax,4), %esi
	jl	.LBB13_38
# %bb.37:                               #   in Loop: Header=BB13_11 Depth=2
	leal	(%r9,%rbx), %eax
	cltq
	movq	144(%rsp), %rcx         # 8-byte Reload
	movb	$2, (%rcx,%rax)
	jmp	.LBB13_38
.LBB13_40:
	addq	$360, %rsp              # imm = 0x168
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
	.size	susan_edges, .Lfunc_end13-susan_edges
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function susan_edges_small
.LCPI14_0:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI14_3:
	.quad	4602678819172646912     # double 0.5
.LCPI14_4:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI14_1:
	.long	1232348160              # float 1.0E+6
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI14_2:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	susan_edges_small
	.p2align	4, 0x90
	.type	susan_edges_small,@function
susan_edges_small:                      # @susan_edges_small
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
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %r15d
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %rbx
	movl	176(%rsp), %ebp
	movl	%r9d, %eax
	imull	%ebp, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	xorl	%r14d, %r14d
	movq	%rsi, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%rbx, 16(%rsp)          # 8-byte Spill
	leaq	2(%rbx), %r8
	movslq	%r15d, %rax
	movl	$1, %r10d
	movq	%rbp, (%rsp)            # 8-byte Spill
	leal	-1(%rbp), %r9d
	leal	-1(%r15), %r11d
	movq	%r15, 8(%rsp)           # 8-byte Spill
                                        # kill: def $r15d killed $r15d killed $r15 def $r15
	cmpl	%r9d, %r10d
	jl	.LBB14_2
	jmp	.LBB14_8
	.p2align	4, 0x90
.LBB14_7:                               #   in Loop: Header=BB14_2 Depth=1
	addl	$1, %r10d
	movq	8(%rsp), %rcx           # 8-byte Reload
	addl	%ecx, %r15d
	addl	%ecx, %r14d
	cmpl	%r9d, %r10d
	jge	.LBB14_8
.LBB14_2:                               # %.preheader2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_4 Depth 2
	movslq	%r14d, %rsi
	addq	%r8, %rsi
	movl	$1, %ebp
	cmpl	%r11d, %ebp
	jl	.LBB14_4
	jmp	.LBB14_7
	.p2align	4, 0x90
.LBB14_6:                               #   in Loop: Header=BB14_4 Depth=2
	addl	$1, %ebp
	addq	$1, %rsi
	cmpl	%r11d, %ebp
	jge	.LBB14_7
.LBB14_4:                               #   Parent Loop BB14_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	(%r15,%rbp), %edx
	movslq	%edx, %r12
	movq	16(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rcx,%r12), %ebx
	addq	64(%rsp), %rbx          # 8-byte Folded Reload
	movzbl	-2(%rsi), %edi
	movq	%rbx, %rdx
	subq	%rdi, %rdx
	movzbl	(%rdx), %edx
	movzbl	-1(%rsi), %edi
	movq	%rbx, %rcx
	subq	%rdi, %rcx
	movzbl	(%rcx), %ecx
	addl	%edx, %ecx
	movzbl	(%rsi), %edx
	movq	%rbx, %rdi
	subq	%rdx, %rdi
	movzbl	(%rdi), %edx
	addl	%ecx, %edx
	movzbl	-2(%rsi,%rax), %ecx
	movq	%rbx, %rdi
	subq	%rcx, %rdi
	movzbl	(%rdi), %ecx
	addl	%edx, %ecx
	movzbl	(%rsi,%rax), %edx
	movq	%rbx, %rdi
	subq	%rdx, %rdi
	movzbl	(%rdi), %edx
	addl	%ecx, %edx
	movzbl	-2(%rsi,%rax,2), %ecx
	movq	%rbx, %rdi
	subq	%rcx, %rdi
	movzbl	(%rdi), %ecx
	addl	%edx, %ecx
	movzbl	-1(%rsi,%rax,2), %edx
	movq	%rbx, %rdi
	subq	%rdx, %rdi
	movzbl	(%rdi), %edx
	addl	%ecx, %edx
	movzbl	(%rsi,%rax,2), %ecx
	subq	%rcx, %rbx
	movzbl	(%rbx), %ecx
	leal	(%rcx,%rdx), %edx
	addl	$100, %edx
	cmpl	$730, %edx              # imm = 0x2DA
	jg	.LBB14_6
# %bb.5:                                #   in Loop: Header=BB14_4 Depth=2
	movl	$730, %ecx              # imm = 0x2DA
	subl	%edx, %ecx
	movl	%ecx, (%r13,%r12,4)
	jmp	.LBB14_6
.LBB14_8:                               # %.preheader1
	leal	(%rax,%rax), %r10d
	addl	$2, %r10d
	movl	%eax, %ecx
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rcx          # 8-byte Reload
	leaq	3(%rcx), %rdx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	leaq	3(%rcx,%rax,2), %rdx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	leaq	3(%rax,%rcx), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	$2, %r11d
	movq	(%rsp), %rax            # 8-byte Reload
	addl	$-2, %eax
	movq	%rax, (%rsp)            # 8-byte Spill
	xorps	%xmm3, %xmm3
	movsd	.LCPI14_0(%rip), %xmm4  # xmm4 = mem[0],zero
	movss	.LCPI14_1(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	movsd	.LCPI14_3(%rip), %xmm7  # xmm7 = mem[0],zero
	movq	8(%rsp), %r9            # 8-byte Reload
	movl	%r9d, %eax
	movq	%r13, 40(%rsp)          # 8-byte Spill
	cmpl	(%rsp), %r11d           # 4-byte Folded Reload
	jl	.LBB14_10
	jmp	.LBB14_37
	.p2align	4, 0x90
.LBB14_36:                              #   in Loop: Header=BB14_10 Depth=1
	addl	$1, %r11d
	addq	96(%rsp), %r10          # 8-byte Folded Reload
	movl	24(%rsp), %eax          # 4-byte Reload
	addl	%r9d, %eax
	cmpl	(%rsp), %r11d           # 4-byte Folded Reload
	jge	.LBB14_37
.LBB14_10:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_11 Depth 2
	movl	%eax, 24(%rsp)          # 4-byte Spill
	movslq	%eax, %r14
	movq	88(%rsp), %rax          # 8-byte Reload
	addq	%r14, %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rax          # 8-byte Reload
	addq	%r14, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	addq	72(%rsp), %r14          # 8-byte Folded Reload
	xorl	%r15d, %r15d
	movq	%r11, 112(%rsp)         # 8-byte Spill
	movq	%r14, 104(%rsp)         # 8-byte Spill
	jmp	.LBB14_11
	.p2align	4, 0x90
.LBB14_35:                              #   in Loop: Header=BB14_11 Depth=2
	addq	$1, %r15
.LBB14_11:                              #   Parent Loop BB14_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	2(%r15), %eax
	leal	-2(%r9), %ecx
	cmpl	%ecx, %eax
	jge	.LBB14_36
# %bb.12:                               #   in Loop: Header=BB14_11 Depth=2
	leal	(%r10,%r15), %eax
	cltq
	cmpl	$0, (%r13,%rax,4)
	jle	.LBB14_35
# %bb.13:                               #   in Loop: Header=BB14_11 Depth=2
	leal	(%r10,%r15), %eax
	cltq
	movl	(%r13,%rax,4), %esi
	movl	$730, %r13d             # imm = 0x2DA
	subl	%esi, %r13d
	movq	16(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rax), %ebp
	addq	64(%rsp), %rbp          # 8-byte Folded Reload
	movl	$1, %edi
	cmpl	$251, %r13d
	jl	.LBB14_14
# %bb.15:                               #   in Loop: Header=BB14_11 Depth=2
	movq	56(%rsp), %rdx          # 8-byte Reload
	movzbl	-2(%rdx,%r15), %eax
	negq	%rax
	movzbl	(%rbp,%rax), %ecx
	movzbl	-1(%rdx,%r15), %eax
	negq	%rax
	movzbl	(%rbp,%rax), %eax
	addl	%ecx, %eax
	movzbl	(%rdx,%r15), %edx
	negq	%rdx
	movzbl	(%rbp,%rdx), %edx
	addl	%edx, %eax
	subl	%ecx, %edx
	movzbl	-2(%r14,%r15), %ecx
	negq	%rcx
	movzbl	(%rbp,%rcx), %ecx
	subl	%ecx, %edx
	movzbl	(%r14,%r15), %ecx
	negq	%rcx
	movzbl	(%rbp,%rcx), %ebx
	addl	%edx, %ebx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movzbl	-2(%rdx,%r15), %ecx
	negq	%rcx
	movzbl	(%rbp,%rcx), %ecx
	subl	%ecx, %ebx
	subl	%eax, %ecx
	movzbl	-1(%rdx,%r15), %eax
	negq	%rax
	movzbl	(%rbp,%rax), %r12d
	addl	%ecx, %r12d
	movzbl	(%rdx,%r15), %eax
	negq	%rax
	movzbl	(%rbp,%rax), %eax
	addl	%eax, %ebx
	addl	%eax, %r12d
	movl	%ebx, %eax
	imull	%ebx, %eax
	movl	%r12d, %ecx
	imull	%r12d, %ecx
	addl	%eax, %ecx
	cvtsi2ss	%ecx, %xmm0
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm3, %xmm0
	jb	.LBB14_17
# %bb.16:                               #   in Loop: Header=BB14_11 Depth=2
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB14_18
	.p2align	4, 0x90
.LBB14_14:                              #   in Loop: Header=BB14_11 Depth=2
	movq	40(%rsp), %r13          # 8-byte Reload
	testl	%edi, %edi
	je	.LBB14_35
	jmp	.LBB14_27
.LBB14_17:                              # %call.sqrt
                                        #   in Loop: Header=BB14_11 Depth=2
	movq	%r10, %r14
	movl	%esi, 28(%rsp)          # 4-byte Spill
	callq	sqrt
	movl	$1, %edi
	movl	28(%rsp), %esi          # 4-byte Reload
	movsd	.LCPI14_3(%rip), %xmm7  # xmm7 = mem[0],zero
	movss	.LCPI14_1(%rip), %xmm5  # xmm5 = mem[0],zero,zero,zero
	movsd	.LCPI14_0(%rip), %xmm4  # xmm4 = mem[0],zero
	xorps	%xmm3, %xmm3
	movq	112(%rsp), %r11         # 8-byte Reload
	movq	%r14, %r10
	movq	104(%rsp), %r14         # 8-byte Reload
	movq	8(%rsp), %r9            # 8-byte Reload
.LBB14_18:                              # %.split
                                        #   in Loop: Header=BB14_11 Depth=2
	cvtsd2ss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	cvtsi2ss	%r13d, %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	%xmm4, %xmm1
	ucomisd	%xmm1, %xmm0
	movq	40(%rsp), %r13          # 8-byte Reload
	jbe	.LBB14_26
# %bb.19:                               #   in Loop: Header=BB14_11 Depth=2
	movaps	%xmm5, %xmm1
	testl	%ebx, %ebx
	je	.LBB14_21
# %bb.20:                               #   in Loop: Header=BB14_11 Depth=2
	xorps	%xmm1, %xmm1
	cvtsi2ss	%r12d, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ebx, %xmm0
	divss	%xmm0, %xmm1
.LBB14_21:                              #   in Loop: Header=BB14_11 Depth=2
	xorl	%edx, %edx
	xorps	%xmm6, %xmm6
	ucomiss	%xmm1, %xmm6
	setbe	%bl
	movaps	%xmm1, %xmm2
	xorps	.LCPI14_2(%rip), %xmm2
	movaps	%xmm1, %xmm0
	cmpltss	%xmm6, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	xorps	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movl	$1, %eax
	xorl	%edi, %edi
	ucomisd	%xmm1, %xmm7
	movl	$0, %ecx
	ja	.LBB14_23
# %bb.22:                               #   in Loop: Header=BB14_11 Depth=2
	movb	%bl, %dl
	leal	(%rdx,%rdx), %eax
	addl	$-1, %eax
	cvtss2sd	%xmm0, %xmm0
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setg	%cl
	xorl	%eax, %eax
	ucomisd	.LCPI14_4(%rip), %xmm0
	setbe	%al
	leal	-1(%rcx,%rcx), %ecx
	movl	$1, %edx
	cmoval	%edx, %ecx
.LBB14_23:                              #   in Loop: Header=BB14_11 Depth=2
	leal	(%r11,%rcx), %edx
	imull	%r9d, %edx
	addl	%eax, %edx
	leal	(%r15,%rdx), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%r13,%rdx,4), %esi
	jle	.LBB14_26
# %bb.24:                               #   in Loop: Header=BB14_11 Depth=2
	movl	%r11d, %edx
	subl	%ecx, %edx
	imull	%r9d, %edx
	subl	%eax, %edx
	leal	(%r15,%rdx), %eax
	addl	$2, %eax
	cltq
	cmpl	(%r13,%rax,4), %esi
	jl	.LBB14_26
# %bb.25:                               #   in Loop: Header=BB14_11 Depth=2
	leal	(%r10,%r15), %eax
	cltq
	movq	32(%rsp), %rcx          # 8-byte Reload
	movb	$1, (%rcx,%rax)
	.p2align	4, 0x90
.LBB14_26:                              #   in Loop: Header=BB14_11 Depth=2
	testl	%edi, %edi
	je	.LBB14_35
.LBB14_27:                              #   in Loop: Header=BB14_11 Depth=2
	movl	%esi, %r12d
	movq	56(%rsp), %rdx          # 8-byte Reload
	movzbl	-2(%rdx,%r15), %eax
	negq	%rax
	movzbl	(%rbp,%rax), %eax
	movzbl	-1(%rdx,%r15), %ecx
	negq	%rcx
	movzbl	(%rbp,%rcx), %esi
	addl	%eax, %esi
	movzbl	(%rdx,%r15), %ecx
	negq	%rcx
	movzbl	(%rbp,%rcx), %r8d
	addl	%r8d, %esi
	movq	48(%rsp), %rcx          # 8-byte Reload
	movzbl	-2(%rcx,%r15), %edx
	negq	%rdx
	movzbl	(%rbp,%rdx), %edx
	addl	%edx, %esi
	movzbl	-1(%rcx,%r15), %edi
	negq	%rdi
	movzbl	(%rbp,%rdi), %edi
	addl	%esi, %edi
	movzbl	(%rcx,%r15), %esi
	negq	%rsi
	movzbl	(%rbp,%rsi), %esi
	movaps	%xmm5, %xmm0
	addl	%esi, %edi
	je	.LBB14_29
# %bb.28:                               #   in Loop: Header=BB14_11 Depth=2
	leal	(%rax,%r8), %ebx
	movzbl	-2(%r14,%r15), %ecx
	negq	%rcx
	movzbl	(%rbp,%rcx), %ecx
	addl	%ebx, %ecx
	movzbl	(%r14,%r15), %ebx
	negq	%rbx
	movzbl	(%rbp,%rbx), %ebp
	addl	%ecx, %ebp
	addl	%edx, %ebp
	addl	%esi, %ebp
	xorps	%xmm0, %xmm0
	cvtsi2ss	%ebp, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ss	%edi, %xmm1
	divss	%xmm1, %xmm0
.LBB14_29:                              #   in Loop: Header=BB14_11 Depth=2
	cvtss2sd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm7
	jbe	.LBB14_31
# %bb.30:                               #   in Loop: Header=BB14_11 Depth=2
	movl	$1, %eax
	xorl	%ecx, %ecx
	jmp	.LBB14_32
.LBB14_31:                              #   in Loop: Header=BB14_11 Depth=2
	subl	%r8d, %eax
	subl	%edx, %eax
	addl	%esi, %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setle	%cl
	xorl	%eax, %eax
	ucomisd	.LCPI14_4(%rip), %xmm0
	setbe	%al
	leal	-1(%rcx,%rcx), %ecx
	movl	$1, %edx
	cmoval	%edx, %ecx
.LBB14_32:                              #   in Loop: Header=BB14_11 Depth=2
	leal	(%r11,%rcx), %edx
	imull	%r9d, %edx
	addl	%eax, %edx
	leal	(%r15,%rdx), %edx
	addl	$2, %edx
	movslq	%edx, %rdx
	cmpl	(%r13,%rdx,4), %r12d
	jle	.LBB14_35
# %bb.33:                               #   in Loop: Header=BB14_11 Depth=2
	movl	%r11d, %edx
	subl	%ecx, %edx
	imull	%r9d, %edx
	subl	%eax, %edx
	leal	(%r15,%rdx), %eax
	addl	$2, %eax
	cltq
	cmpl	(%r13,%rax,4), %r12d
	jl	.LBB14_35
# %bb.34:                               #   in Loop: Header=BB14_11 Depth=2
	leal	(%r10,%r15), %eax
	cltq
	movq	32(%rsp), %rcx          # 8-byte Reload
	movb	$2, (%rcx,%rax)
	jmp	.LBB14_35
.LBB14_37:
	addq	$120, %rsp
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
	xorl	%r9d, %r9d
	movslq	%edx, %r8
	jmp	.LBB15_1
	.p2align	4, 0x90
.LBB15_4:                               #   in Loop: Header=BB15_1 Depth=1
	imull	%edx, %eax
	movslq	%eax, %r11
	addq	%rdi, %r11
	movslq	(%rsi,%r10,8), %rax
	movb	$0, (%rax,%r11)
	addl	$1, %r9d
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	movslq	%r9d, %rax
	leaq	(%rax,%rax,2), %r10
	cmpl	$7, 8(%rsi,%r10,8)
	je	.LBB15_5
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	movl	4(%rsi,%r10,8), %eax
	testl	%ecx, %ecx
	jne	.LBB15_4
# %bb.3:                                #   in Loop: Header=BB15_1 Depth=1
	addl	$-1, %eax
	imull	%edx, %eax
	cltq
	addq	%rdi, %rax
	movslq	(%rsi,%r10,8), %r10
	leaq	(%rax,%r10), %r11
	movw	$-1, -1(%r10,%rax)
	movb	$-1, 1(%r10,%rax)
	leaq	-1(%r8,%r11), %rax
	movw	$255, -1(%r8,%r11)
	movb	$-1, 1(%r8,%r11)
	movw	$-1, (%r8,%rax)
	movb	$-1, 2(%r8,%rax)
	addl	$1, %r9d
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
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movq	%r8, 104(%rsp)          # 8-byte Spill
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, 8(%rsp)           # 8-byte Spill
	movq	%rdi, %rbx
	movl	240(%rsp), %ecx
	movl	%r9d, %eax
	imull	%ecx, %eax
	movslq	%eax, %rbp
	shlq	$2, %rbp
	movq	%rsi, %rdi
	xorl	%esi, %esi
	movq	%rbp, %rdx
	callq	memset
	movq	%rbp, %rdi
	callq	malloc
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	%rbp, %rdi
	callq	malloc
	movq	%r15, %r10
	movl	%r14d, %edi
	movq	%rbx, %r9
	movq	%rax, 64(%rsp)          # 8-byte Spill
	leal	5(%r13,%r13,4), %r11d
	movl	%r13d, %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	leal	(%r13,%r13), %edx
	movslq	%r13d, %rax
	leaq	7(%rax,%rbx), %rcx
	movq	%rcx, 168(%rsp)         # 8-byte Spill
	leaq	8(%rbx,%rax,2), %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	leaq	(%rax,%rax,2), %rcx
	leaq	8(%rbx,%rcx), %rbp
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	leaq	8(%rbx,%rax,4), %rbp
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	leaq	(%rax,%rax,4), %rax
	leaq	7(%rbx,%rax), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leaq	6(%rbx,%rcx,2), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	$5, %eax
	movq	%r13, (%rsp)            # 8-byte Spill
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	jmp	.LBB16_1
	.p2align	4, 0x90
.LBB16_30:                              #   in Loop: Header=BB16_1 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	addl	$1, %eax
	addq	176(%rsp), %r11         # 8-byte Folded Reload
	movq	(%rsp), %r13            # 8-byte Reload
	movl	92(%rsp), %edx          # 4-byte Reload
	addl	%r13d, %edx
.LBB16_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_3 Depth 2
	movl	240(%rsp), %ecx
	leal	-5(%rcx), %r8d
	cmpl	%r8d, %eax
	jge	.LBB16_31
# %bb.2:                                # %.preheader2
                                        #   in Loop: Header=BB16_1 Depth=1
	movq	%rax, 80(%rsp)          # 8-byte Spill
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movslq	%edx, %r8
	leaq	(%r9,%r8), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	168(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r8), %r13
	movq	160(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r8), %rbp
	movq	152(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r8), %r15
	movq	144(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r8), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	136(%rsp), %rax         # 8-byte Reload
	addq	%r8, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	addq	128(%rsp), %r8          # 8-byte Folded Reload
	xorl	%ebx, %ebx
	jmp	.LBB16_3
	.p2align	4, 0x90
.LBB16_29:                              #   in Loop: Header=BB16_3 Depth=2
	addq	$1, %rbx
.LBB16_3:                               #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	5(%rbx), %eax
	movq	(%rsp), %rcx            # 8-byte Reload
	addl	$-5, %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_30
# %bb.4:                                #   in Loop: Header=BB16_3 Depth=2
	leal	(%r11,%rbx), %eax
	cltq
	movzbl	(%r9,%rax), %r14d
	addq	%r10, %r14
	movq	40(%rsp), %rsi          # 8-byte Reload
	movzbl	4(%rsi,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	movzbl	5(%rsi,%rbx), %ecx
	movq	%r14, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%eax, %ecx
	movzbl	6(%rsi,%rbx), %eax
	movq	%r14, %rdx
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	%ecx, %eax
	movzbl	-4(%r13,%rbx), %ecx
	movq	%r14, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%eax, %ecx
	movzbl	-3(%r13,%rbx), %eax
	movq	%r14, %rdx
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	%ecx, %eax
	movzbl	-2(%r13,%rbx), %ecx
	movq	%r14, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%eax, %ecx
	movzbl	-1(%r13,%rbx), %eax
	movq	%r14, %rdx
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	%ecx, %eax
	movzbl	(%r13,%rbx), %ecx
	movq	%r14, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%eax, %ecx
	movzbl	-6(%rbp,%rbx), %eax
	movq	%r14, %rdx
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	%ecx, %eax
	movzbl	-5(%rbp,%rbx), %ecx
	movq	%r14, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%eax, %ecx
	movzbl	-4(%rbp,%rbx), %eax
	movq	%r14, %rdx
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	%ecx, %eax
	movzbl	-3(%rbp,%rbx), %ecx
	movq	%r14, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%eax, %ecx
	movzbl	-2(%rbp,%rbx), %eax
	movq	%r14, %rdx
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	%ecx, %eax
	movzbl	-1(%rbp,%rbx), %ecx
	movq	%r14, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%eax, %ecx
	movzbl	(%rbp,%rbx), %eax
	movq	%r14, %rdx
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	%ecx, %eax
	movzbl	-6(%r15,%rbx), %ecx
	movq	%r14, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%eax, %ecx
	movzbl	-5(%r15,%rbx), %eax
	movq	%r14, %rdx
	subq	%rax, %rdx
	movzbl	(%rdx), %eax
	addl	%ecx, %eax
	movzbl	-4(%r15,%rbx), %ecx
	movq	%r14, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	leal	(%rcx,%rax), %r12d
	addl	$100, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.5:                                #   in Loop: Header=BB16_3 Depth=2
	movzbl	-2(%r15,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.6:                                #   in Loop: Header=BB16_3 Depth=2
	movzbl	-1(%r15,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.7:                                #   in Loop: Header=BB16_3 Depth=2
	movzbl	(%r15,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.8:                                #   in Loop: Header=BB16_3 Depth=2
	movq	32(%rsp), %rax          # 8-byte Reload
	movzbl	-6(%rax,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.9:                                #   in Loop: Header=BB16_3 Depth=2
	movq	32(%rsp), %rax          # 8-byte Reload
	movzbl	-5(%rax,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.10:                               #   in Loop: Header=BB16_3 Depth=2
	movq	32(%rsp), %rax          # 8-byte Reload
	movzbl	-4(%rax,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.11:                               #   in Loop: Header=BB16_3 Depth=2
	movq	32(%rsp), %rax          # 8-byte Reload
	movzbl	-3(%rax,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.12:                               #   in Loop: Header=BB16_3 Depth=2
	movq	32(%rsp), %rax          # 8-byte Reload
	movzbl	-2(%rax,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.13:                               #   in Loop: Header=BB16_3 Depth=2
	movq	32(%rsp), %rax          # 8-byte Reload
	movzbl	-1(%rax,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.14:                               #   in Loop: Header=BB16_3 Depth=2
	movq	32(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.15:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	movzbl	-4(%rax,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.16:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	movzbl	-3(%rax,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.17:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	movzbl	-2(%rax,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.18:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	movzbl	-1(%rax,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.19:                               #   in Loop: Header=BB16_3 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	movzbl	(%rax,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.20:                               #   in Loop: Header=BB16_3 Depth=2
	movzbl	-2(%r8,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.21:                               #   in Loop: Header=BB16_3 Depth=2
	movzbl	-1(%r8,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.22:                               #   in Loop: Header=BB16_3 Depth=2
	movzbl	(%r8,%rbx), %eax
	movq	%r14, %rcx
	subq	%rax, %rcx
	movzbl	(%rcx), %eax
	addl	%eax, %r12d
	cmpl	%edi, %r12d
	jge	.LBB16_29
# %bb.23:                               #   in Loop: Header=BB16_3 Depth=2
	movq	40(%rsp), %rsi          # 8-byte Reload
	movzbl	4(%rsi,%rbx), %eax
	negq	%rax
	movzbl	(%r14,%rax), %ecx
	leal	(%rcx,%rcx,2), %eax
	movzbl	5(%rsi,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	leal	(%rdx,%rdx,2), %edx
	addl	%eax, %edx
	movzbl	6(%rsi,%rbx), %eax
	negq	%rax
	movzbl	(%r14,%rax), %eax
	movq	%r11, 96(%rsp)          # 8-byte Spill
	leal	(%rax,%rax,2), %esi
                                        # kill: def $eax killed $eax killed $rax def $rax
	subl	%ecx, %eax
	addl	%edx, %esi
	movzbl	-4(%r13,%rbx), %ecx
	negq	%rcx
	movzbl	(%r14,%rcx), %ecx
	leal	(%rcx,%rcx), %edx
	subl	%edx, %eax
	leal	(%rsi,%rcx,2), %ecx
	movzbl	-3(%r13,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	subl	%edx, %eax
	leal	(%rcx,%rdx,2), %ecx
	movzbl	-2(%r13,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	leal	(%rcx,%rdx,2), %ecx
	movzbl	-1(%r13,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	addl	%edx, %eax
	leal	(%rcx,%rdx,2), %edx
	movzbl	(%r13,%rbx), %ecx
	negq	%rcx
	movzbl	(%r14,%rcx), %esi
	leal	(%rax,%rsi,2), %ecx
	leal	(%rdx,%rsi,2), %eax
	movzbl	-6(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	leal	(%rdx,%rdx,2), %esi
	subl	%esi, %ecx
	addl	%edx, %eax
	movzbl	-5(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	leal	(%rdx,%rdx), %esi
	subl	%esi, %ecx
	addl	%eax, %edx
	movzbl	-4(%rbp,%rbx), %eax
	negq	%rax
	movzbl	(%r14,%rax), %eax
	subl	%eax, %ecx
	addl	%eax, %edx
	movzbl	-3(%rbp,%rbx), %eax
	negq	%rax
	movzbl	(%r14,%rax), %eax
	addl	%edx, %eax
	movzbl	-2(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	addl	%edx, %ecx
	addl	%edx, %eax
	movzbl	-1(%rbp,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	leal	(%rcx,%rdx,2), %esi
	addl	%edx, %eax
	movzbl	(%rbp,%rbx), %ecx
	negq	%rcx
	movzbl	(%r14,%rcx), %edx
	leal	(%rdx,%rdx,2), %ecx
	addl	%esi, %ecx
	addl	%edx, %eax
	movzbl	-6(%r15,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	leal	(%rdx,%rdx,2), %edx
	subl	%edx, %ecx
	movzbl	-5(%r15,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	addl	%edx, %edx
	subl	%edx, %ecx
	movzbl	-4(%r15,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	subl	%edx, %ecx
	movzbl	-2(%r15,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	addl	%ecx, %edx
	movzbl	-1(%r15,%rbx), %ecx
	negq	%rcx
	movzbl	(%r14,%rcx), %ecx
	leal	(%rdx,%rcx,2), %edx
	movzbl	(%r15,%rbx), %ecx
	negq	%rcx
	movzbl	(%r14,%rcx), %ecx
	leal	(%rcx,%rcx,2), %ecx
	addl	%edx, %ecx
	movq	32(%rsp), %r11          # 8-byte Reload
	movzbl	-6(%r11,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	leal	(%rdx,%rdx,2), %esi
	subl	%esi, %ecx
	subl	%eax, %edx
	movzbl	-5(%r11,%rbx), %eax
	negq	%rax
	movzbl	(%r14,%rax), %eax
	leal	(%rax,%rax), %esi
	subl	%esi, %ecx
	addl	%edx, %eax
	movzbl	-4(%r11,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	subl	%edx, %ecx
	addl	%edx, %eax
	movzbl	-3(%r11,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	addl	%eax, %edx
	movzbl	-2(%r11,%rbx), %eax
	negq	%rax
	movzbl	(%r14,%rax), %eax
	addl	%eax, %ecx
	addl	%eax, %edx
	movzbl	-1(%r11,%rbx), %eax
	negq	%rax
	movzbl	(%r14,%rax), %eax
	leal	(%rcx,%rax,2), %ecx
	addl	%eax, %edx
	movzbl	(%r11,%rbx), %eax
	negq	%rax
	movzbl	(%r14,%rax), %esi
	leal	(%rsi,%rsi,2), %eax
	addl	%ecx, %eax
	addl	%esi, %edx
	movq	48(%rsp), %r11          # 8-byte Reload
	movzbl	-4(%r11,%rbx), %ecx
	negq	%rcx
	movzbl	(%r14,%rcx), %ecx
	leal	(%rcx,%rcx), %esi
	subl	%esi, %eax
	leal	(%rdx,%rcx,2), %ecx
	movzbl	-3(%r11,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	subl	%edx, %eax
	leal	(%rcx,%rdx,2), %ecx
	movzbl	-2(%r11,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	leal	(%rcx,%rdx,2), %ecx
	movzbl	-1(%r11,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	addl	%edx, %eax
	leal	(%rcx,%rdx,2), %ecx
	movzbl	(%r11,%rbx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	leal	(%rax,%rdx,2), %esi
	leal	(%rcx,%rdx,2), %eax
	movzbl	-2(%r8,%rbx), %ecx
	negq	%rcx
	movzbl	(%r14,%rcx), %ecx
	subl	%ecx, %esi
	leal	(%rcx,%rcx,2), %ecx
	addl	%eax, %ecx
	movzbl	-1(%r8,%rbx), %eax
	negq	%rax
	movzbl	(%r14,%rax), %eax
	leal	(%rax,%rax,2), %eax
	addl	%ecx, %eax
	movzbl	(%r8,%rbx), %ecx
	negq	%rcx
	movzbl	(%r14,%rcx), %ecx
	addl	%ecx, %esi
	leal	(%rcx,%rcx,2), %ecx
	addl	%eax, %ecx
	movl	%esi, 28(%rsp)          # 4-byte Spill
	movl	%esi, %eax
	imull	%eax, %eax
	movl	%ecx, 24(%rsp)          # 4-byte Spill
                                        # kill: def $ecx killed $ecx def $rcx
	imull	%ecx, %ecx
	movl	%r12d, %edx
	imull	%r12d, %edx
	movl	%edx, %esi
	shrl	$31, %esi
	addl	%edx, %esi
	leal	(%rax,%rcx), %edx
	sarl	%esi
	cmpl	%esi, %edx
	movq	96(%rsp), %r11          # 8-byte Reload
	jle	.LBB16_29
# %bb.24:                               #   in Loop: Header=BB16_3 Depth=2
	movq	%r8, 112(%rsp)          # 8-byte Spill
	movq	%r10, 120(%rsp)         # 8-byte Spill
	movl	%edi, 88(%rsp)          # 4-byte Spill
	cmpl	%eax, %ecx
	jge	.LBB16_26
# %bb.25:                               #   in Loop: Header=BB16_3 Depth=2
	cvtsi2ssl	24(%rsp), %xmm0 # 4-byte Folded Reload
	movss	%xmm0, 20(%rsp)         # 4-byte Spill
	movl	28(%rsp), %edi          # 4-byte Reload
	callq	abs
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	20(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, 20(%rsp)         # 4-byte Spill
	movl	28(%rsp), %edi          # 4-byte Reload
	callq	abs
	cltd
	idivl	28(%rsp)                # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	xorps	%xmm2, %xmm2
	movss	20(%rsp), %xmm4         # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm4, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LCPI16_0(%rip), %xmm3  # xmm3 = mem[0],zero
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %ecx
	addsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %edx
	cmoval	%ecx, %edx
	movq	80(%rsp), %rdi          # 8-byte Reload
	addl	%edi, %edx
	movq	(%rsp), %r8             # 8-byte Reload
	imull	%r8d, %edx
	addl	%eax, %edx
	leal	(%rbx,%rdx), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movq	56(%rsp), %r9           # 8-byte Reload
	movzbl	(%r9,%rcx), %ecx
	negq	%rcx
	movaps	%xmm4, %xmm0
	addss	%xmm4, %xmm0
	ucomiss	%xmm0, %xmm2
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %edx
	addsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %esi
	movzbl	(%r14,%rcx), %ecx
	cmoval	%edx, %esi
	addl	%edi, %esi
	imull	%r8d, %esi
	leal	(%rsi,%rax,2), %edx
	leal	(%rbx,%rdx), %edx
	addl	$5, %edx
	movslq	%edx, %rdx
	movzbl	(%r9,%rdx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	addl	%ecx, %edx
	movss	.LCPI16_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	ucomiss	%xmm4, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm4, %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %ecx
	addsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %esi
	cmoval	%ecx, %esi
	addl	%edi, %esi
	imull	%r8d, %esi
	leal	(%rax,%rax,2), %eax
	jmp	.LBB16_27
.LBB16_26:                              #   in Loop: Header=BB16_3 Depth=2
	cvtsi2ssl	28(%rsp), %xmm0 # 4-byte Folded Reload
	movss	%xmm0, 20(%rsp)         # 4-byte Spill
	movl	24(%rsp), %edi          # 4-byte Reload
	callq	abs
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	20(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	%xmm1, 20(%rsp)         # 4-byte Spill
	movl	24(%rsp), %edi          # 4-byte Reload
	callq	abs
	cltd
	idivl	24(%rsp)                # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	xorps	%xmm2, %xmm2
	movss	20(%rsp), %xmm4         # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	ucomiss	%xmm4, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm4, %xmm0
	movapd	%xmm0, %xmm1
	movsd	.LCPI16_0(%rip), %xmm3  # xmm3 = mem[0],zero
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %ecx
	addsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %edx
	cmoval	%ecx, %edx
	movq	80(%rsp), %rdi          # 8-byte Reload
	leal	(%rdi,%rax), %ecx
	movq	(%rsp), %r8             # 8-byte Reload
	imull	%r8d, %ecx
	addl	%edx, %ecx
	leal	(%rbx,%rcx), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movq	56(%rsp), %r9           # 8-byte Reload
	movzbl	(%r9,%rcx), %ecx
	negq	%rcx
	movaps	%xmm4, %xmm0
	addss	%xmm4, %xmm0
	ucomiss	%xmm0, %xmm2
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %edx
	addsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %esi
	movzbl	(%r14,%rcx), %ecx
	cmoval	%edx, %esi
	leal	(%rdi,%rax,2), %edx
	imull	%r8d, %edx
	addl	%esi, %edx
	leal	(%rbx,%rdx), %edx
	addl	$5, %edx
	movslq	%edx, %rdx
	movzbl	(%r9,%rdx), %edx
	negq	%rdx
	movzbl	(%r14,%rdx), %edx
	addl	%ecx, %edx
	movss	.LCPI16_1(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm4
	ucomiss	%xmm4, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm4, %xmm0
	movapd	%xmm0, %xmm1
	subsd	%xmm3, %xmm1
	cvttsd2si	%xmm1, %ecx
	addsd	%xmm3, %xmm0
	cvttsd2si	%xmm0, %esi
	cmoval	%ecx, %esi
	leal	(%rax,%rax,2), %eax
	addl	%edi, %eax
	imull	%r8d, %eax
.LBB16_27:                              #   in Loop: Header=BB16_3 Depth=2
	addl	%esi, %eax
	leal	(%rbx,%rax), %eax
	addl	$5, %eax
	cltq
	movzbl	(%r9,%rax), %eax
	negq	%rax
	movzbl	(%r14,%rax), %eax
	addl	%edx, %eax
	cmpl	$291, %eax              # imm = 0x123
	movq	8(%rsp), %rdx           # 8-byte Reload
	movl	88(%rsp), %edi          # 4-byte Reload
	movq	120(%rsp), %r10         # 8-byte Reload
	movq	96(%rsp), %r11          # 8-byte Reload
	movq	112(%rsp), %r8          # 8-byte Reload
	jl	.LBB16_29
# %bb.28:                               #   in Loop: Header=BB16_3 Depth=2
	movl	%edi, %eax
	subl	%r12d, %eax
	leal	(%r11,%rbx), %ecx
	movslq	%ecx, %rcx
	movl	%eax, (%rdx,%rcx,4)
	imull	$51, 28(%rsp), %eax     # 4-byte Folded Reload
	cltd
	idivl	%r12d
	movq	72(%rsp), %rdx          # 8-byte Reload
	movl	%eax, (%rdx,%rcx,4)
	imull	$51, 24(%rsp), %eax     # 4-byte Folded Reload
	cltd
	idivl	%r12d
	movq	64(%rsp), %rdx          # 8-byte Reload
	movl	%eax, (%rdx,%rcx,4)
	jmp	.LBB16_29
.LBB16_31:                              # %.preheader1
	leal	(%r13,%r13,4), %ecx
	leal	(,%r13,8), %r11d
	movl	%r11d, %r14d
	subl	%r13d, %r14d
	leal	(%r13,%r13), %edi
	leal	(%rdi,%rdi,2), %eax
	leal	(,%r13,4), %r10d
	leal	(%r13,%r13,2), %r15d
	movl	$5, %r12d
	xorl	%edx, %edx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	cmpl	%r8d, %r12d
	jl	.LBB16_33
	jmp	.LBB16_88
	.p2align	4, 0x90
.LBB16_87:                              #   in Loop: Header=BB16_33 Depth=1
	addl	$1, %r12d
	addl	%r13d, %ecx
	addl	%r13d, %r11d
	addl	%r13d, %r14d
	addl	%r13d, %eax
	addl	%r13d, %r10d
	addl	%r13d, %r15d
	addl	%r13d, %edi
	cmpl	%r8d, %r12d
	jge	.LBB16_88
.LBB16_33:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_34 Depth 2
	xorl	%edx, %edx
	jmp	.LBB16_34
.LBB16_85:                              #   in Loop: Header=BB16_34 Depth=2
	movq	40(%rsp), %r13          # 8-byte Reload
	movslq	%r13d, %r13
	leaq	(,%r13,2), %rax
	addq	%r13, %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rbx         # 8-byte Reload
	movl	$0, 8(%rbx,%rax,8)
	movl	%esi, (%rbx,%rax,8)
	movl	%r12d, 4(%rbx,%rax,8)
	leal	5(%rcx,%rdx), %esi
	movslq	%esi, %rsi
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	(%rax,%rsi,4), %ebp
	movq	32(%rsp), %rsi          # 8-byte Reload
	movl	%ebp, 12(%rbx,%rsi,8)
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	40(%rsp), %rbp          # 8-byte Reload
	movl	(%rax,%rbp,4), %ebp
	movl	%ebp, 16(%rbx,%rsi,8)
	movq	%rsi, %rbp
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	40(%rsp), %rsi          # 8-byte Reload
	movzbl	(%rax,%rsi), %esi
	movl	%esi, 20(%rbx,%rbp,8)
	addl	$1, %r13d
	movq	%r13, 40(%rsp)          # 8-byte Spill
	cmpl	$15000, %r13d           # imm = 0x3A98
	movq	(%rsp), %r13            # 8-byte Reload
	movq	%r9, %rax
	je	.LBB16_89
	.p2align	4, 0x90
.LBB16_86:                              #   in Loop: Header=BB16_34 Depth=2
	addl	$1, %edx
.LBB16_34:                              #   Parent Loop BB16_33 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	5(%rdx), %esi
	leal	-5(%r13), %ebp
	cmpl	%ebp, %esi
	jge	.LBB16_87
# %bb.35:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%rcx,%rdx), %ebp
	addl	$5, %ebp
	movslq	%ebp, %rbp
	movq	8(%rsp), %r9            # 8-byte Reload
	movl	(%r9,%rbp,4), %ebp
	testl	%ebp, %ebp
	jle	.LBB16_86
# %bb.36:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%rdi,%rdx), %ebx
	addl	$2, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.37:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%rdi,%rdx), %ebx
	addl	$3, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.38:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%rdi,%rdx), %ebx
	addl	$4, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.39:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%rdi,%rdx), %ebx
	addl	$5, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.40:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%rdi,%rdx), %ebx
	addl	$6, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.41:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%rdi,%rdx), %ebx
	addl	$7, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.42:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%rdi,%rdx), %ebx
	addl	$8, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.43:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r15,%rdx), %ebx
	addl	$2, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.44:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r15,%rdx), %ebx
	addl	$3, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.45:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r15,%rdx), %ebx
	addl	$4, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.46:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r15,%rdx), %ebx
	addl	$5, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.47:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r15,%rdx), %ebx
	addl	$6, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.48:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r15,%rdx), %ebx
	addl	$7, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.49:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r15,%rdx), %ebx
	addl	$8, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.50:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r10,%rdx), %ebx
	addl	$2, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.51:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r10,%rdx), %ebx
	addl	$3, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.52:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r10,%rdx), %ebx
	addl	$4, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.53:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r10,%rdx), %ebx
	addl	$5, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.54:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r10,%rdx), %ebx
	addl	$6, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.55:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r10,%rdx), %ebx
	addl	$7, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.56:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r10,%rdx), %ebx
	addl	$8, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.57:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%rcx,%rdx), %ebx
	addl	$2, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.58:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%rcx,%rdx), %ebx
	addl	$3, %ebx
	movslq	%ebx, %rbx
	cmpl	(%r9,%rbx,4), %ebp
	jle	.LBB16_86
# %bb.59:                               #   in Loop: Header=BB16_34 Depth=2
	movq	%rax, %r9
	leal	(%rcx,%rdx), %ebx
	addl	$4, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jle	.LBB16_60
# %bb.61:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%rcx,%rdx), %ebx
	addl	$6, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.62:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%rcx,%rdx), %ebx
	addl	$7, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.63:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%rcx,%rdx), %ebx
	addl	$8, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.64:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r9,%rdx), %ebx
	addl	$2, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.65:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r9,%rdx), %ebx
	addl	$3, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.66:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r9,%rdx), %ebx
	addl	$4, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.67:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r9,%rdx), %ebx
	addl	$5, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.68:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r9,%rdx), %ebx
	addl	$6, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.69:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r9,%rdx), %ebx
	addl	$7, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.70:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r9,%rdx), %ebx
	addl	$8, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.71:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r14,%rdx), %ebx
	addl	$2, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.72:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r14,%rdx), %ebx
	addl	$3, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.73:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r14,%rdx), %ebx
	addl	$4, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.74:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r14,%rdx), %ebx
	addl	$5, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.75:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r14,%rdx), %ebx
	addl	$6, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.76:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r14,%rdx), %ebx
	addl	$7, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.77:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r14,%rdx), %ebx
	addl	$8, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.78:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r11,%rdx), %ebx
	addl	$2, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.79:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r11,%rdx), %ebx
	addl	$3, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.80:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r11,%rdx), %ebx
	addl	$4, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.81:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r11,%rdx), %ebx
	addl	$5, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.82:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r11,%rdx), %ebx
	addl	$6, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.83:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r11,%rdx), %ebx
	addl	$7, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jl	.LBB16_60
# %bb.84:                               #   in Loop: Header=BB16_34 Depth=2
	leal	(%r11,%rdx), %ebx
	addl	$8, %ebx
	movslq	%ebx, %rbx
	movq	8(%rsp), %rax           # 8-byte Reload
	cmpl	(%rax,%rbx,4), %ebp
	jge	.LBB16_85
.LBB16_60:                              #   in Loop: Header=BB16_34 Depth=2
	movq	(%rsp), %r13            # 8-byte Reload
	movq	%r9, %rax
	addl	$1, %edx
	jmp	.LBB16_34
.LBB16_88:
	movslq	40(%rsp), %rax          # 4-byte Folded Reload
	leaq	(%rax,%rax,2), %rax
	movq	104(%rsp), %rcx         # 8-byte Reload
	movl	$7, 8(%rcx,%rax,8)
	movq	72(%rsp), %rdi          # 8-byte Reload
	callq	free
	movq	64(%rsp), %rdi          # 8-byte Reload
	callq	free
	addq	$184, %rsp
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
.LBB16_89:
	.cfi_def_cfa_offset 240
	movq	stderr(%rip), %rdi
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %r13d
	movq	%r8, 96(%rsp)           # 8-byte Spill
	movl	%ecx, %ebp
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	304(%rsp), %ecx
	movl	%r9d, %eax
	imull	%ecx, %eax
	movslq	%eax, %rdx
	shlq	$2, %rdx
	movq	%rsi, %rdi
	xorl	%esi, %esi
	callq	memset
	leal	(,%r13,8), %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movl	%eax, %edi
	subl	%r13d, %edi
	leal	7(%rdi), %eax
	movl	%r13d, %ecx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leal	(,%r13,4), %esi
	movslq	%r13d, %rdx
	leaq	9(%rdx,%rbx), %rcx
	movq	%rcx, (%rsp)            # 8-byte Spill
	leaq	10(%rbx,%rdx,2), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	leaq	(%rdx,%rdx,2), %r8
	leaq	10(%rbx,%r8), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	leaq	10(%rbx,%rdx,4), %rcx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	leaq	(%rdx,%rdx,4), %rdx
	leaq	9(%rbx,%rdx), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rbx, 48(%rsp)          # 8-byte Spill
	leaq	8(%rbx,%r8,2), %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movl	$7, %ebx
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	jmp	.LBB17_1
	.p2align	4, 0x90
.LBB17_25:                              #   in Loop: Header=BB17_1 Depth=1
	movl	112(%rsp), %ebx         # 4-byte Reload
	addl	$1, %ebx
	addq	40(%rsp), %rax          # 8-byte Folded Reload
	movl	16(%rsp), %esi          # 4-byte Reload
	addl	%r13d, %esi
	movq	24(%rsp), %rdi          # 8-byte Reload
.LBB17_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_3 Depth 2
	movl	304(%rsp), %ecx
	leal	-7(%rcx), %edx
	cmpl	%edx, %ebx
	jge	.LBB17_26
# %bb.2:                                # %.preheader2
                                        #   in Loop: Header=BB17_1 Depth=1
	movl	%ebx, 112(%rsp)         # 4-byte Spill
	movl	%esi, 16(%rsp)          # 4-byte Spill
	movslq	%esi, %rdx
	movq	48(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rdx), %r11
	movq	(%rsp), %rcx            # 8-byte Reload
	leaq	(%rcx,%rdx), %rsi
	movq	88(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rdx), %r14
	movq	80(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rdx), %r8
	movq	72(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rdx), %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	32(%rsp), %rcx          # 8-byte Reload
	addq	%rdx, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	addq	64(%rsp), %rdx          # 8-byte Folded Reload
	movq	%rdx, 104(%rsp)         # 8-byte Spill
	xorl	%edi, %edi
	jmp	.LBB17_3
	.p2align	4, 0x90
.LBB17_24:                              #   in Loop: Header=BB17_3 Depth=2
	addq	$1, %rdi
.LBB17_3:                               #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	7(%rdi), %edx
	leal	-7(%r13), %ecx
	cmpl	%ecx, %edx
	jge	.LBB17_25
# %bb.4:                                #   in Loop: Header=BB17_3 Depth=2
	leal	(%rax,%rdi), %ecx
	movslq	%ecx, %rcx
	movq	48(%rsp), %rdx          # 8-byte Reload
	movzbl	(%rdx,%rcx), %r10d
	addq	%r12, %r10
	movzbl	6(%r11,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	movzbl	7(%r11,%rdi), %edx
	movq	%r10, %rbx
	subq	%rdx, %rbx
	movzbl	(%rbx), %edx
	addl	%ecx, %edx
	movzbl	8(%r11,%rdi), %ecx
	movq	%r10, %rbx
	subq	%rcx, %rbx
	movzbl	(%rbx), %ecx
	addl	%edx, %ecx
	movzbl	-4(%rsi,%rdi), %edx
	movq	%r10, %rbx
	subq	%rdx, %rbx
	movzbl	(%rbx), %edx
	addl	%ecx, %edx
	movzbl	-3(%rsi,%rdi), %ecx
	movq	%r10, %rbx
	subq	%rcx, %rbx
	movzbl	(%rbx), %ecx
	addl	%edx, %ecx
	movzbl	-2(%rsi,%rdi), %edx
	movq	%r10, %rbx
	subq	%rdx, %rbx
	movzbl	(%rbx), %edx
	addl	%ecx, %edx
	movzbl	-1(%rsi,%rdi), %ecx
	movq	%r10, %rbx
	subq	%rcx, %rbx
	movzbl	(%rbx), %ecx
	addl	%edx, %ecx
	movzbl	(%rsi,%rdi), %edx
	movq	%r10, %rbx
	subq	%rdx, %rbx
	movzbl	(%rbx), %edx
	addl	%ecx, %edx
	movzbl	-6(%r14,%rdi), %ecx
	movq	%r10, %rbx
	subq	%rcx, %rbx
	movzbl	(%rbx), %ecx
	addl	%edx, %ecx
	movzbl	-5(%r14,%rdi), %edx
	movq	%r10, %rbx
	subq	%rdx, %rbx
	movzbl	(%rbx), %edx
	addl	%ecx, %edx
	movzbl	-4(%r14,%rdi), %ecx
	movq	%r10, %rbx
	subq	%rcx, %rbx
	movzbl	(%rbx), %ecx
	addl	%edx, %ecx
	movzbl	-3(%r14,%rdi), %edx
	movq	%r10, %rbx
	subq	%rdx, %rbx
	movzbl	(%rbx), %edx
	addl	%ecx, %edx
	movzbl	-2(%r14,%rdi), %ecx
	movq	%r10, %rbx
	subq	%rcx, %rbx
	movzbl	(%rbx), %ecx
	addl	%edx, %ecx
	movzbl	-1(%r14,%rdi), %edx
	movq	%r10, %rbx
	subq	%rdx, %rbx
	movzbl	(%rbx), %edx
	addl	%ecx, %edx
	movzbl	(%r14,%rdi), %ecx
	movq	%r10, %rbx
	subq	%rcx, %rbx
	movzbl	(%rbx), %ecx
	addl	%edx, %ecx
	movzbl	-6(%r8,%rdi), %edx
	movq	%r10, %rbx
	subq	%rdx, %rbx
	movzbl	(%rbx), %edx
	addl	%ecx, %edx
	movzbl	-5(%r8,%rdi), %ecx
	movq	%r10, %rbx
	subq	%rcx, %rbx
	movzbl	(%rbx), %ecx
	addl	%edx, %ecx
	movzbl	-4(%r8,%rdi), %edx
	movq	%r10, %rbx
	subq	%rdx, %rbx
	movzbl	(%rbx), %edx
	leal	(%rdx,%rcx), %r9d
	addl	$100, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.5:                                #   in Loop: Header=BB17_3 Depth=2
	movzbl	-2(%r8,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.6:                                #   in Loop: Header=BB17_3 Depth=2
	movzbl	-1(%r8,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.7:                                #   in Loop: Header=BB17_3 Depth=2
	movzbl	(%r8,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.8:                                #   in Loop: Header=BB17_3 Depth=2
	movq	8(%rsp), %rcx           # 8-byte Reload
	movzbl	-6(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.9:                                #   in Loop: Header=BB17_3 Depth=2
	movq	8(%rsp), %rcx           # 8-byte Reload
	movzbl	-5(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.10:                               #   in Loop: Header=BB17_3 Depth=2
	movq	8(%rsp), %rcx           # 8-byte Reload
	movzbl	-4(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.11:                               #   in Loop: Header=BB17_3 Depth=2
	movq	8(%rsp), %rcx           # 8-byte Reload
	movzbl	-3(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.12:                               #   in Loop: Header=BB17_3 Depth=2
	movq	8(%rsp), %rcx           # 8-byte Reload
	movzbl	-2(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.13:                               #   in Loop: Header=BB17_3 Depth=2
	movq	8(%rsp), %rcx           # 8-byte Reload
	movzbl	-1(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.14:                               #   in Loop: Header=BB17_3 Depth=2
	movq	8(%rsp), %rcx           # 8-byte Reload
	movzbl	(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.15:                               #   in Loop: Header=BB17_3 Depth=2
	movq	56(%rsp), %rcx          # 8-byte Reload
	movzbl	-4(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.16:                               #   in Loop: Header=BB17_3 Depth=2
	movq	56(%rsp), %rcx          # 8-byte Reload
	movzbl	-3(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.17:                               #   in Loop: Header=BB17_3 Depth=2
	movq	56(%rsp), %rcx          # 8-byte Reload
	movzbl	-2(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.18:                               #   in Loop: Header=BB17_3 Depth=2
	movq	56(%rsp), %rcx          # 8-byte Reload
	movzbl	-1(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.19:                               #   in Loop: Header=BB17_3 Depth=2
	movq	56(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.20:                               #   in Loop: Header=BB17_3 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	movzbl	-2(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.21:                               #   in Loop: Header=BB17_3 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	movzbl	-1(%rcx,%rdi), %ecx
	movq	%r10, %rdx
	subq	%rcx, %rdx
	movzbl	(%rdx), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.22:                               #   in Loop: Header=BB17_3 Depth=2
	movq	104(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rdi), %ecx
	subq	%rcx, %r10
	movzbl	(%r10), %ecx
	addl	%ecx, %r9d
	cmpl	%ebp, %r9d
	jge	.LBB17_24
# %bb.23:                               #   in Loop: Header=BB17_3 Depth=2
	movl	%ebp, %ecx
	subl	%r9d, %ecx
	leal	(%rax,%rdi), %edx
	movslq	%edx, %rdx
	movl	%ecx, (%r15,%rdx,4)
	jmp	.LBB17_24
.LBB17_26:                              # %.preheader1
	leal	(%r13,%r13), %eax
	leal	(%rax,%rax,2), %r10d
	leal	(%r13,%r13,4), %r14d
	leal	(%r13,%r13,8), %r11d
	leal	(%rax,%rax,4), %r8d
	leal	(,%r13,4), %eax
	movl	$7, %r12d
	xorl	%ecx, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	movq	176(%rsp), %rsi         # 8-byte Reload
	cmpl	%edx, %r12d
	jl	.LBB17_28
	jmp	.LBB17_82
	.p2align	4, 0x90
.LBB17_81:                              #   in Loop: Header=BB17_28 Depth=1
	addl	$1, %r12d
	addl	%r13d, %r10d
	addl	%r13d, %esi
	addl	%r13d, %r14d
	addl	%r13d, %r11d
	addl	%r13d, %edi
	addl	%r13d, %r8d
	addl	%r13d, %eax
	cmpl	%edx, %r12d
	jge	.LBB17_82
.LBB17_28:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_29 Depth 2
	xorl	%ebp, %ebp
	jmp	.LBB17_29
	.p2align	4, 0x90
.LBB17_80:                              #   in Loop: Header=BB17_29 Depth=2
	addl	$1, %ebp
	movq	%r9, %rdi
.LBB17_29:                              #   Parent Loop BB17_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	7(%rbp), %ebx
	leal	-7(%r13), %ecx
	cmpl	%ecx, %ebx
	jge	.LBB17_81
# %bb.30:                               #   in Loop: Header=BB17_29 Depth=2
	movq	%rdi, %r9
	leal	(%rdi,%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movl	(%r15,%rcx,4), %edi
	testl	%edi, %edi
	jle	.LBB17_80
# %bb.31:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rax,%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.32:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rax,%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.33:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rax,%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.34:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rax,%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.35:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rax,%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.36:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rax,%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.37:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rax,%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.38:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r14,%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.39:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r14,%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.40:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r14,%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.41:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r14,%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.42:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r14,%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.43:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r14,%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.44:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r14,%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.45:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r10,%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.46:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r10,%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.47:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r10,%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.48:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r10,%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.49:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r10,%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.50:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r10,%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.51:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r10,%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.52:                               #   in Loop: Header=BB17_29 Depth=2
	movq	%r9, %rcx
	movq	%r9, 24(%rsp)           # 8-byte Spill
	leal	(%r9,%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.53:                               #   in Loop: Header=BB17_29 Depth=2
	movq	24(%rsp), %rcx          # 8-byte Reload
	leal	(%rcx,%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.54:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r9,%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jle	.LBB17_80
# %bb.55:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r9,%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.56:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r9,%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.57:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r9,%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.58:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rsi,%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.59:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rsi,%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.60:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rsi,%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.61:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rsi,%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.62:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rsi,%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.63:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rsi,%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.64:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%rsi,%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.65:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r11,%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.66:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r11,%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.67:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r11,%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.68:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r11,%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.69:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r11,%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.70:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r11,%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.71:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r11,%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.72:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r8,%rbp), %ecx
	addl	$4, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.73:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r8,%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.74:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r8,%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.75:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r8,%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.76:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r8,%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.77:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r8,%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.78:                               #   in Loop: Header=BB17_29 Depth=2
	leal	(%r8,%rbp), %ecx
	addl	$10, %ecx
	movslq	%ecx, %rcx
	cmpl	(%r15,%rcx,4), %edi
	jl	.LBB17_80
# %bb.79:                               #   in Loop: Header=BB17_29 Depth=2
	movq	8(%rsp), %rcx           # 8-byte Reload
	movslq	%ecx, %rcx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	leaq	(%rcx,%rcx,2), %rcx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movq	96(%rsp), %rdi          # 8-byte Reload
	movl	$0, 8(%rdi,%rcx,8)
	movl	%ebx, (%rdi,%rcx,8)
	movl	%r12d, 4(%rdi,%rcx,8)
	leal	5(%r14,%rbp), %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	movq	48(%rsp), %rbx          # 8-byte Reload
	movzbl	(%rbx,%rcx), %ecx
	leal	6(%r14,%rbp), %edi
	movslq	%edi, %rdi
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movzbl	(%rbx,%rdi), %edi
	addl	%ecx, %edi
	leal	(%r14,%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movzbl	(%rbx,%rcx), %ecx
	addl	%edi, %ecx
	leal	(%r14,%rbp), %edi
	addl	$8, %edi
	movslq	%edi, %rdi
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	movzbl	(%rbx,%rdi), %edi
	addl	%ecx, %edi
	leal	(%r14,%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rbx,%rcx), %ecx
	addl	%edi, %ecx
	leal	(%r10,%rbp), %edi
	addl	$5, %edi
	movslq	%edi, %rdi
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rdi          # 8-byte Reload
	movzbl	(%rbx,%rdi), %edi
	addl	%ecx, %edi
	leal	(%r10,%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 160(%rsp)         # 8-byte Spill
	movzbl	(%rbx,%rcx), %ecx
	addl	%edi, %ecx
	leal	(%r10,%rbp), %edi
	addl	$7, %edi
	movslq	%edi, %rdi
	movq	%rdi, 104(%rsp)         # 8-byte Spill
	movzbl	(%rbx,%rdi), %edi
	addl	%ecx, %edi
	leal	(%r10,%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rbx,%rcx), %ecx
	addl	%edi, %ecx
	leal	(%r10,%rbp), %edi
	addl	$9, %edi
	movslq	%edi, %rdi
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movq	72(%rsp), %rdi          # 8-byte Reload
	movzbl	(%rbx,%rdi), %edi
	addl	%ecx, %edi
	movl	%edi, (%rsp)            # 4-byte Spill
	movq	%r9, %rbx
	leal	(%r9,%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	48(%rsp), %rdi          # 8-byte Reload
	movzbl	(%rdi,%rcx), %ecx
	addl	(%rsp), %ecx            # 4-byte Folded Reload
	movl	%ecx, (%rsp)            # 4-byte Spill
	leal	(%r9,%rbp), %edi
	addl	$6, %edi
	movslq	%edi, %rdi
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rdi), %ecx
	addl	(%rsp), %ecx            # 4-byte Folded Reload
	movl	%ecx, (%rsp)            # 4-byte Spill
	leal	(%r9,%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movq	48(%rsp), %rdi          # 8-byte Reload
	movzbl	(%rdi,%rcx), %ecx
	addl	(%rsp), %ecx            # 4-byte Folded Reload
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	leal	(%r9,%rbp), %edi
	addl	$8, %edi
	movslq	%edi, %rdi
	movq	%rdi, (%rsp)            # 8-byte Spill
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	48(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rcx,%rdi), %edi
	addl	32(%rsp), %edi          # 4-byte Folded Reload
	leal	(%r9,%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	48(%rsp), %rbx          # 8-byte Reload
	movq	64(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rbx,%rcx), %ecx
	addl	%edi, %ecx
	movq	%rsi, 176(%rsp)         # 8-byte Spill
	leal	(%rsi,%rbp), %edi
	addl	$5, %edi
	movslq	%edi, %rdi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rdi          # 8-byte Reload
	movzbl	(%rbx,%rdi), %edi
	addl	%ecx, %edi
	leal	(%rsi,%rbp), %ecx
	addl	$6, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movzbl	(%rbx,%rcx), %ecx
	addl	%edi, %ecx
	leal	(%rsi,%rbp), %edi
	addl	$7, %edi
	movslq	%edi, %rdi
	movq	%rdi, 240(%rsp)         # 8-byte Spill
	movzbl	(%rbx,%rdi), %edi
	addl	%ecx, %edi
	leal	(%rsi,%rbp), %ecx
	addl	$8, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 232(%rsp)         # 8-byte Spill
	movzbl	(%rbx,%rcx), %ecx
	addl	%edi, %ecx
	leal	(%rsi,%rbp), %edi
	addl	$9, %edi
	movslq	%edi, %rsi
	movq	%rsi, 128(%rsp)         # 8-byte Spill
	movzbl	(%rbx,%rsi), %edi
	addl	%ecx, %edi
	leal	(%r11,%rbp), %ecx
	addl	$5, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movzbl	(%rbx,%rcx), %ecx
	addl	%edi, %ecx
	leal	(%r11,%rbp), %edi
	addl	$6, %edi
	movslq	%edi, %rsi
	movq	%rsi, 208(%rsp)         # 8-byte Spill
	movzbl	(%rbx,%rsi), %edi
	addl	%ecx, %edi
	leal	(%r11,%rbp), %ecx
	addl	$7, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	movzbl	(%rbx,%rcx), %ecx
	addl	%edi, %ecx
	leal	(%r11,%rbp), %edi
	addl	$8, %edi
	movslq	%edi, %rsi
	movq	%rsi, 200(%rsp)         # 8-byte Spill
	movzbl	(%rbx,%rsi), %edi
	addl	%ecx, %edi
	leal	(%r11,%rbp), %ecx
	addl	$9, %ecx
	movslq	%ecx, %rcx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	movzbl	(%rbx,%rcx), %ecx
	movq	%rbx, %rsi
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	imulq	$1374389535, %rcx, %rcx # imm = 0x51EB851F
	movq	%rcx, %rdi
	shrq	$63, %rdi
	shrq	$32, %rcx
	sarl	$3, %ecx
	addl	%edi, %ecx
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	%ecx, 20(%rbx,%rdi,8)
	movq	16(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rsi,%rcx), %ebx
	movq	%rbx, 192(%rsp)         # 8-byte Spill
	movq	72(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rsi,%rcx), %ecx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	64(%rsp), %rdi          # 8-byte Reload
	movzbl	(%rsi,%rdi), %edi
	addl	%ebx, %ecx
	addl	%ecx, %edi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	144(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rsi,%rcx), %ecx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	movq	24(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rsi,%rcx), %ecx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	80(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rsi,%rcx), %ecx
	movq	72(%rsp), %rbx          # 8-byte Reload
	movq	64(%rsp), %rdi          # 8-byte Reload
	addl	%edi, %ebx
	addl	%ebx, %ecx
	movq	128(%rsp), %rbx         # 8-byte Reload
	movzbl	(%rsi,%rbx), %ebx
	movl	%ebx, 144(%rsp)         # 4-byte Spill
	movq	16(%rsp), %rdi          # 8-byte Reload
	addl	%ebx, %edi
	movq	184(%rsp), %rbx         # 8-byte Reload
	movzbl	(%rsi,%rbx), %ebx
	movl	%ebx, 128(%rsp)         # 4-byte Spill
	addl	%ebx, %edi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rbx          # 8-byte Reload
	movzbl	(%rsi,%rbx), %ebx
	movl	%ebx, 24(%rsp)          # 4-byte Spill
	addl	%ebx, %ecx
	movq	120(%rsp), %rbx         # 8-byte Reload
	movzbl	(%rsi,%rbx), %edi
	movl	%edi, 120(%rsp)         # 4-byte Spill
	addl	%edi, %ecx
	movq	16(%rsp), %rdi          # 8-byte Reload
	subl	%ecx, %edi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	152(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rsi,%rcx), %ecx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	40(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rsi,%rcx), %ebx
	movl	%ebx, 152(%rsp)         # 4-byte Spill
	movq	80(%rsp), %rcx          # 8-byte Reload
	addl	%edi, %ecx
	addl	%ebx, %ecx
	movq	(%rsp), %rbx            # 8-byte Reload
	movzbl	(%rsi,%rbx), %edi
	addl	%ecx, %edi
	movl	%edi, (%rsp)            # 4-byte Spill
	movq	168(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rsi,%rcx), %ecx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	160(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rsi,%rcx), %edi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	88(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rsi,%rcx), %ebx
	movq	32(%rsp), %rcx          # 8-byte Reload
	addl	%edi, %ecx
	addl	%ecx, %ebx
	movq	232(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rsi,%rcx), %ecx
	movl	%ecx, 88(%rsp)          # 4-byte Spill
	movl	(%rsp), %edi            # 4-byte Reload
	addl	%ecx, %edi
	movq	200(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rsi,%rcx), %ecx
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	addl	%ecx, %edi
	movq	136(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rsi,%rcx), %ecx
	movl	%ecx, 168(%rsp)         # 4-byte Spill
	addl	%ecx, %ebx
	movq	208(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rsi,%rcx), %ecx
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	addl	%ecx, %ebx
	movl	%edi, %ecx
	subl	%ebx, %ecx
	addl	16(%rsp), %ecx          # 4-byte Folded Reload
	movl	%ecx, (%rsp)            # 4-byte Spill
	movl	120(%rsp), %edi         # 4-byte Reload
	addl	136(%rsp), %edi         # 4-byte Folded Reload
	movq	216(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rsi,%rcx), %ebx
	addl	%edi, %ebx
	addl	160(%rsp), %ebx         # 4-byte Folded Reload
	addl	128(%rsp), %ebx         # 4-byte Folded Reload
	movq	32(%rsp), %rdi          # 8-byte Reload
	addl	64(%rsp), %edi          # 4-byte Folded Reload
	movq	56(%rsp), %rcx          # 8-byte Reload
	movzbl	(%rsi,%rcx), %ecx
	addl	%edi, %ecx
	addl	80(%rsp), %ecx          # 4-byte Folded Reload
	addl	192(%rsp), %ecx         # 4-byte Folded Reload
	subl	%ecx, %ebx
	movl	24(%rsp), %ecx          # 4-byte Reload
	addl	%ebx, %ecx
	addl	168(%rsp), %ecx         # 4-byte Folded Reload
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movq	240(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rsi,%rcx), %edi
	addl	24(%rsp), %edi          # 4-byte Folded Reload
	addl	88(%rsp), %edi          # 4-byte Folded Reload
	addl	144(%rsp), %edi         # 4-byte Folded Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	addl	72(%rsp), %ecx          # 4-byte Folded Reload
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	104(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rsi,%rcx), %ecx
	movq	176(%rsp), %rsi         # 8-byte Reload
	addl	40(%rsp), %ecx          # 4-byte Folded Reload
	addl	152(%rsp), %ecx         # 4-byte Folded Reload
	addl	224(%rsp), %ecx         # 4-byte Folded Reload
	subl	%ecx, %edi
	addl	%ebx, %edi
	movl	%edi, 16(%rsp)          # 4-byte Spill
	movslq	(%rsp), %rcx            # 4-byte Folded Reload
	imulq	$-2004318071, %rcx, %rbx # imm = 0x88888889
	shrq	$32, %rbx
	addl	%ebx, %ecx
	movl	%ecx, %ebx
	shrl	$31, %ebx
	sarl	$3, %ecx
	addl	%ebx, %ecx
	movq	112(%rsp), %rbx         # 8-byte Reload
	movq	96(%rsp), %rdi          # 8-byte Reload
	movl	%ecx, 12(%rdi,%rbx,8)
	movslq	16(%rsp), %rcx          # 4-byte Folded Reload
	imulq	$-2004318071, %rcx, %rdi # imm = 0x88888889
	shrq	$32, %rdi
	addl	%edi, %ecx
	movl	%ecx, %edi
	shrl	$31, %edi
	sarl	$3, %ecx
	addl	%edi, %ecx
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	96(%rsp), %rbx          # 8-byte Reload
	movl	%ecx, 16(%rbx,%rdi,8)
	movq	8(%rsp), %rcx           # 8-byte Reload
	addl	$1, %ecx
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	cmpl	$15000, %ecx            # imm = 0x3A98
	jne	.LBB17_80
# %bb.83:
	movq	stderr(%rip), %rdi
	movl	$.L.str.29, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB17_82:
	movslq	8(%rsp), %rax           # 4-byte Folded Reload
	leaq	(%rax,%rax,2), %rax
	movq	96(%rsp), %rcx          # 8-byte Reload
	movl	$7, 8(%rcx,%rax,8)
	addq	$248, %rsp
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
.Lfunc_end17:
	.size	susan_corners_quick, .Lfunc_end17-susan_corners_quick
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function main
.LCPI18_0:
	.long	1082130432              # float 4
.LCPI18_1:
	.long	0                       # float 0
	.text
	.globl	main
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
	subq	$360072, %rsp           # imm = 0x57E88
	.cfi_def_cfa_offset 360128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	%edi, %ebp
	cmpl	$2, %edi
	jg	.LBB18_2
# %bb.1:
	callq	usage
.LBB18_2:
	movq	8(%rbx), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	20(%rsp), %rcx
	callq	get_image
	xorl	%r14d, %r14d
	movss	.LCPI18_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 60(%rsp)         # 4-byte Spill
	movl	$3, %r13d
	movl	$20, 36(%rsp)           # 4-byte Folded Spill
	movl	$1, 56(%rsp)            # 4-byte Folded Spill
	xorl	%r12d, %r12d
	movl	$0, 48(%rsp)            # 4-byte Folded Spill
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
	xorl	%r15d, %r15d
	cmpl	%ebp, %r13d
	jl	.LBB18_4
	jmp	.LBB18_24
.LBB18_9:                               #   in Loop: Header=BB18_4 Depth=1
	movl	$2, %r15d
	addl	$1, %r13d
	cmpl	%ebp, %r13d
	jge	.LBB18_24
	.p2align	4, 0x90
.LBB18_4:                               # =>This Inner Loop Header: Depth=1
	movslq	%r13d, %rax
	movq	(%rbx,%rax,8), %rax
	cmpb	$45, (%rax)
	jne	.LBB18_22
# %bb.5:                                #   in Loop: Header=BB18_4 Depth=1
	movsbl	1(%rax), %eax
	addl	$-51, %eax
	cmpl	$65, %eax
	ja	.LBB18_23
# %bb.6:                                #   in Loop: Header=BB18_4 Depth=1
	jmpq	*.LJTI18_0(,%rax,8)
.LBB18_13:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$1, %r12d
	addl	$1, %r13d
	cmpl	%ebp, %r13d
	jl	.LBB18_4
	jmp	.LBB18_24
	.p2align	4, 0x90
.LBB18_22:                              #   in Loop: Header=BB18_4 Depth=1
	callq	usage
.LBB18_23:                              #   in Loop: Header=BB18_4 Depth=1
	addl	$1, %r13d
	cmpl	%ebp, %r13d
	jl	.LBB18_4
	jmp	.LBB18_24
.LBB18_11:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$0, 56(%rsp)            # 4-byte Folded Spill
	addl	$1, %r13d
	cmpl	%ebp, %r13d
	jl	.LBB18_4
	jmp	.LBB18_24
.LBB18_12:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$1, 48(%rsp)            # 4-byte Folded Spill
	addl	$1, %r13d
	cmpl	%ebp, %r13d
	jl	.LBB18_4
	jmp	.LBB18_24
.LBB18_10:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$1, %r14d
	addl	$1, %r13d
	cmpl	%ebp, %r13d
	jl	.LBB18_4
	jmp	.LBB18_24
.LBB18_14:                              #   in Loop: Header=BB18_4 Depth=1
	movl	$1, 52(%rsp)            # 4-byte Folded Spill
	addl	$1, %r13d
	cmpl	%ebp, %r13d
	jl	.LBB18_4
	jmp	.LBB18_24
.LBB18_15:                              #   in Loop: Header=BB18_4 Depth=1
	addl	$1, %r13d
	cmpl	%ebp, %r13d
	jge	.LBB18_16
# %bb.18:                               #   in Loop: Header=BB18_4 Depth=1
	movslq	%r13d, %rax
	movq	(%rbx,%rax,8), %rdi
	callq	atof
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 60(%rsp)         # 4-byte Spill
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	movl	$1, %eax
	cmoval	%eax, %r12d
	addl	$1, %r13d
	cmpl	%ebp, %r13d
	jl	.LBB18_4
	jmp	.LBB18_24
.LBB18_8:                               #   in Loop: Header=BB18_4 Depth=1
	movl	$1, %r15d
	addl	$1, %r13d
	cmpl	%ebp, %r13d
	jl	.LBB18_4
	jmp	.LBB18_24
.LBB18_19:                              #   in Loop: Header=BB18_4 Depth=1
	addl	$1, %r13d
	cmpl	%ebp, %r13d
	jge	.LBB18_20
# %bb.21:                               #   in Loop: Header=BB18_4 Depth=1
	movslq	%r13d, %rax
	movq	(%rbx,%rax,8), %rdi
	callq	atoi
	movl	%eax, 36(%rsp)          # 4-byte Spill
	addl	$1, %r13d
	cmpl	%ebp, %r13d
	jl	.LBB18_4
	jmp	.LBB18_24
.LBB18_7:                               #   in Loop: Header=BB18_4 Depth=1
	xorl	%r15d, %r15d
	addl	$1, %r13d
	cmpl	%ebp, %r13d
	jl	.LBB18_4
.LBB18_24:
	movl	%r14d, %eax
	xorl	$1, %eax
	orl	%r15d, %eax
	movl	$1, %eax
	cmovnel	%r15d, %eax
	cmpl	$2, %eax
	je	.LBB18_39
# %bb.25:
	cmpl	$1, %eax
	je	.LBB18_28
# %bb.26:
	testl	%eax, %eax
	jne	.LBB18_45
# %bb.27:
	leaq	40(%rsp), %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movl	$2, %edx
	callq	setup_brightness_lut
	movq	24(%rsp), %rsi
	movss	60(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	16(%rsp), %edx
	movl	20(%rsp), %ecx
	movq	40(%rsp), %r8
	movl	%r12d, %edi
	callq	susan_smoothing
	jmp	.LBB18_45
.LBB18_28:
	movslq	16(%rsp), %rax
	movslq	20(%rsp), %rdi
	imulq	%rax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbp
	leaq	40(%rsp), %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movl	$6, %edx
	callq	setup_brightness_lut
	testl	%r14d, %r14d
	je	.LBB18_33
# %bb.29:
	movq	24(%rsp), %rdi
	movq	40(%rsp), %rdx
	movl	16(%rsp), %r8d
	movl	20(%rsp), %r9d
	movq	%rbp, %rsi
	movl	$2650, %ecx             # imm = 0xA5A
	testl	%r12d, %r12d
	je	.LBB18_31
# %bb.30:
	callq	susan_principle_small
	jmp	.LBB18_32
.LBB18_39:
	movslq	16(%rsp), %rax
	movslq	20(%rsp), %rdi
	imulq	%rax, %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %rbp
	leaq	40(%rsp), %rdi
	movl	36(%rsp), %esi          # 4-byte Reload
	movl	$6, %edx
	callq	setup_brightness_lut
	testl	%r14d, %r14d
	je	.LBB18_41
# %bb.40:
	movq	24(%rsp), %rdi
	movq	40(%rsp), %rdx
	movl	16(%rsp), %r8d
	movl	20(%rsp), %r9d
	movq	%rbp, %rsi
	movl	$1850, %ecx             # imm = 0x73A
.LBB18_31:
	callq	susan_principle
.LBB18_32:
	movq	24(%rsp), %rsi
	movl	16(%rsp), %edx
	imull	20(%rsp), %edx
	movq	%rbp, %rdi
	callq	int_to_uchar
	jmp	.LBB18_45
.LBB18_33:
	movslq	16(%rsp), %rax
	movslq	20(%rsp), %rdi
	imulq	%rax, %rdi
	callq	malloc
	movq	%rax, %r15
	movslq	16(%rsp), %rax
	movslq	20(%rsp), %rdx
	imulq	%rax, %rdx
	movq	%r15, %rdi
	movl	$100, %esi
	callq	memset
	movq	24(%rsp), %rdi
	movq	40(%rsp), %rcx
	movl	16(%rsp), %r9d
	movl	20(%rsp), %eax
	testl	%r12d, %r12d
	je	.LBB18_35
# %bb.34:
	movl	%eax, (%rsp)
	movq	%rbp, %rsi
	movq	%r15, %rdx
	movl	$2650, %r8d             # imm = 0xA5A
	callq	susan_edges_small
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	je	.LBB18_38
.LBB18_37:
	movl	16(%rsp), %edx
	movl	20(%rsp), %ecx
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	susan_thin
.LBB18_38:
	movq	24(%rsp), %rdi
	movl	16(%rsp), %edx
	movl	20(%rsp), %ecx
	movq	%r15, %rsi
	movl	48(%rsp), %r8d          # 4-byte Reload
	callq	edge_draw
	jmp	.LBB18_45
.LBB18_41:
	movq	24(%rsp), %rdi
	movq	40(%rsp), %rdx
	movl	16(%rsp), %r9d
	movl	20(%rsp), %eax
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	je	.LBB18_43
# %bb.42:
	movl	%eax, (%rsp)
	leaq	64(%rsp), %r8
	movq	%rbp, %rsi
	movl	$1850, %ecx             # imm = 0x73A
	callq	susan_corners_quick
	jmp	.LBB18_44
.LBB18_35:
	movl	%eax, (%rsp)
	movq	%rbp, %rsi
	movq	%r15, %rdx
	movl	$2650, %r8d             # imm = 0xA5A
	callq	susan_edges
	cmpl	$0, 56(%rsp)            # 4-byte Folded Reload
	jne	.LBB18_37
	jmp	.LBB18_38
.LBB18_43:
	movl	%eax, (%rsp)
	leaq	64(%rsp), %r8
	movq	%rbp, %rsi
	movl	$1850, %ecx             # imm = 0x73A
	callq	susan_corners
.LBB18_44:
	movq	24(%rsp), %rdi
	movl	16(%rsp), %edx
	leaq	64(%rsp), %rsi
	movl	48(%rsp), %ecx          # 4-byte Reload
	callq	corner_draw
.LBB18_45:
	movq	16(%rbx), %rdi
	movq	24(%rsp), %rsi
	movl	16(%rsp), %edx
	movl	20(%rsp), %ecx
	callq	put_image
	xorl	%eax, %eax
	addq	$360072, %rsp           # imm = 0x57E88
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
.LBB18_16:
	.cfi_def_cfa_offset 360128
	movl	$.L.str.30, %edi
	jmp	.LBB18_17
.LBB18_20:
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
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_12
	.quad	.LBB18_9
	.quad	.LBB18_15
	.quad	.LBB18_8
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_23
	.quad	.LBB18_11
	.quad	.LBB18_23
	.quad	.LBB18_10
	.quad	.LBB18_14
	.quad	.LBB18_23
	.quad	.LBB18_7
	.quad	.LBB18_19
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
