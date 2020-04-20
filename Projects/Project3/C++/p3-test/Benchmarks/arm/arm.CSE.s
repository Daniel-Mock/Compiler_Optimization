	.text
	.file	"llvm-link"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movl	$0, 12(%rsp)
	movq	$0, (%rsp)
	callq	ReadLinks
	movl	%eax, nlinks(%rip)
	callq	PostscriptOpen
	movq	%rsp, %rbx
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$target, %edi
	callq	LineTo_i
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	$target, %edi
	callq	ReadTarget
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%rbx, %rdi
	callq	MoveTo_i
	movl	nlinks(%rip), %edi
	callq	Solven
	testl	%eax, %eax
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB0_3
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	ReadLinks               # -- Begin function ReadLinks
	.p2align	4, 0x90
	.type	ReadLinks,@function
ReadLinks:                              # @ReadLinks
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movl	$.L.str.8, %edi
	movl	$nlinks, %esi
	xorl	%eax, %eax
	callq	scanf
	movl	$0, 8(%rsp)
	leaq	12(%rsp), %rbx
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	8(%rsp), %eax
	cmpl	nlinks(%rip), %eax
	jge	.LBB1_3
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$.L.str.8, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	scanf
	movl	12(%rsp), %eax
	movslq	8(%rsp), %rcx
	movl	%eax, linklen(,%rcx,4)
	addl	$1, 8(%rsp)
	jmp	.LBB1_1
.LBB1_3:
	movl	nlinks(%rip), %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	ReadLinks, .Lfunc_end1-ReadLinks
	.cfi_endproc
                                        # -- End function
	.globl	PostscriptOpen          # -- Begin function PostscriptOpen
	.p2align	4, 0x90
	.type	PostscriptOpen,@function
PostscriptOpen:                         # @PostscriptOpen
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	$0, 4(%rsp)
	movl	$0, (%rsp)
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsp), %eax
	cmpl	nlinks(%rip), %eax
	jge	.LBB2_3
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movslq	(%rsp), %rax
	movl	linklen(,%rax,4), %ecx
	addl	%ecx, 4(%rsp)
	addl	$1, %eax
	movl	%eax, (%rsp)
	jmp	.LBB2_1
.LBB2_3:
	movl	4(%rsp), %eax
	movl	%eax, 16(%rsp)
	movl	%eax, 20(%rsp)
	negl	%eax
	movl	%eax, 8(%rsp)
	movl	%eax, 12(%rsp)
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.16, %edi
	xorl	%eax, %eax
	callq	printf
	movl	12(%rsp), %esi
	movl	8(%rsp), %edx
	movl	20(%rsp), %ecx
	movl	16(%rsp), %r8d
	movl	$.L.str.17, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$100, %edx
	movl	$100, %esi
	subl	12(%rsp), %esi
	subl	8(%rsp), %edx
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	PostscriptOpen, .Lfunc_end2-PostscriptOpen
	.cfi_endproc
                                        # -- End function
	.globl	ReadTarget              # -- Begin function ReadTarget
	.p2align	4, 0x90
	.type	ReadTarget,@function
ReadTarget:                             # @ReadTarget
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movl	$0, 4(%rsp)
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$1, 4(%rsp)
	movq	8(%rsp), %rax
	jg	.LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movslq	4(%rsp), %rcx
	leaq	(%rax,%rcx,4), %rsi
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	scanf
	movl	%eax, 20(%rsp)
	cmpl	$-1, %eax
	je	.LBB3_5
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	addl	$1, 4(%rsp)
	jmp	.LBB3_1
.LBB3_4:
	movl	(%rax), %esi
	movl	4(%rax), %edx
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB3_5:
	.cfi_def_cfa_offset 32
	callq	PostscriptClose
	xorl	%edi, %edi
	callq	exit
.Lfunc_end3:
	.size	ReadTarget, .Lfunc_end3-ReadTarget
	.cfi_endproc
                                        # -- End function
	.globl	MoveTo_i                # -- Begin function MoveTo_i
	.p2align	4, 0x90
	.type	MoveTo_i,@function
MoveTo_i:                               # @MoveTo_i
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movl	(%rdi), %esi
	movl	4(%rdi), %edx
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	MoveTo_i, .Lfunc_end4-MoveTo_i
	.cfi_endproc
                                        # -- End function
	.globl	Solven                  # -- Begin function Solven
	.p2align	4, 0x90
	.type	Solven,@function
Solven:                                 # @Solven
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	%edi, 16(%rsp)
	movl	$0, 4(%rsp)
	movl	$0, 12(%rsp)
	.p2align	4, 0x90
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	cmpl	16(%rsp), %eax
	jge	.LBB5_3
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movslq	12(%rsp), %rax
	movl	linklen(,%rax,4), %ecx
	addl	%ecx, 4(%rsp)
	addl	$1, %eax
	movl	%eax, 12(%rsp)
	jmp	.LBB5_1
.LBB5_3:
	movl	4(%rsp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, 28(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	.p2align	4, 0x90
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	movl	(%rsp), %eax
	cmpl	16(%rsp), %eax
	jge	.LBB5_7
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	movl	8(%rsp), %eax
	movslq	(%rsp), %rcx
	addl	linklen(,%rcx,4), %eax
	cmpl	28(%rsp), %eax
	jg	.LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_4 Depth=1
	movslq	(%rsp), %rax
	movl	linklen(,%rax,4), %ecx
	addl	%ecx, 8(%rsp)
	addl	$1, %eax
	movl	%eax, (%rsp)
	jmp	.LBB5_4
.LBB5_7:
	movslq	(%rsp), %rax
	movl	linklen(,%rax,4), %esi
	movl	%esi, 36(%rsp)
	movl	4(%rsp), %edx
	movl	8(%rsp), %edi
	subl	%edi, %edx
	subl	%esi, %edx
	movl	%edx, 32(%rsp)
	movl	$target, %ecx
	callq	Solve3
	testl	%eax, %eax
	je	.LBB5_9
# %bb.8:
	movl	$1, 20(%rsp)
	jmp	.LBB5_10
.LBB5_9:
	movl	$0, 20(%rsp)
.LBB5_10:
	movl	$1, 24(%rsp)
	movl	20(%rsp), %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	Solven, .Lfunc_end5-Solven
	.cfi_endproc
                                        # -- End function
	.globl	LineTo_i                # -- Begin function LineTo_i
	.p2align	4, 0x90
	.type	LineTo_i,@function
LineTo_i:                               # @LineTo_i
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movl	(%rdi), %esi
	movl	4(%rdi), %edx
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	LineTo_i, .Lfunc_end6-LineTo_i
	.cfi_endproc
                                        # -- End function
	.globl	Solve3                  # -- Begin function Solve3
	.p2align	4, 0x90
	.type	Solve3,@function
Solve3:                                 # @Solve3
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -16
	movl	%edx, %eax
	movl	%esi, %edx
	movl	%edi, %esi
	movl	%edi, 20(%rsp)
	movl	%edx, 16(%rsp)
	movl	%eax, 12(%rsp)
	movq	%rcx, 56(%rsp)
	movl	$.L.str.3, %edi
	movl	%eax, %ecx
	xorl	%eax, %eax
	callq	printf
	movl	20(%rsp), %edi
	addl	16(%rsp), %edi
	movl	12(%rsp), %esi
	movq	56(%rsp), %rdx
	leaq	32(%rsp), %rcx
	callq	Solve2
	movl	20(%rsp), %esi
	movl	16(%rsp), %r8d
	testl	%eax, %eax
	je	.LBB7_4
# %bb.1:
	addl	%r8d, %esi
	movl	12(%rsp), %edx
	jmp	.LBB7_2
.LBB7_4:
	addl	12(%rsp), %r8d
	movq	56(%rsp), %rdx
	leaq	32(%rsp), %rcx
	movl	%esi, %edi
	movl	%r8d, %esi
	callq	Solve2
	movl	20(%rsp), %esi
	testl	%eax, %eax
	je	.LBB7_6
# %bb.5:
	movl	16(%rsp), %edx
	addl	12(%rsp), %edx
.LBB7_2:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
.LBB7_3:
	leaq	32(%rsp), %rdi
	callq	LineTo_d
	movl	$1, 24(%rsp)
.LBB7_9:
	movl	$1, 28(%rsp)
	movl	24(%rsp), %eax
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB7_6:
	.cfi_def_cfa_offset 96
	movl	%esi, 64(%rsp)
	movl	$0, 68(%rsp)
	movq	56(%rsp), %rdi
	leaq	64(%rsp), %rsi
	leaq	72(%rsp), %rbx
	movq	%rbx, %rdx
	callq	SubVec
	movl	16(%rsp), %edi
	movl	12(%rsp), %esi
	leaq	32(%rsp), %rcx
	movq	%rbx, %rdx
	callq	Solve2
	testl	%eax, %eax
	je	.LBB7_8
# %bb.7:
	movl	20(%rsp), %esi
	cvtsi2sd	%esi, %xmm0
	addsd	32(%rsp), %xmm0
	movsd	%xmm0, 32(%rsp)
	movl	16(%rsp), %edx
	movl	12(%rsp), %ecx
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	leaq	64(%rsp), %rdi
	callq	LineTo_i
	jmp	.LBB7_3
.LBB7_8:
	movl	$0, 24(%rsp)
	jmp	.LBB7_9
.Lfunc_end7:
	.size	Solve3, .Lfunc_end7-Solve3
	.cfi_endproc
                                        # -- End function
	.globl	Solve2                  # -- Begin function Solve2
	.p2align	4, 0x90
	.type	Solve2,@function
Solve2:                                 # @Solve2
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rcx, %r8
	movl	%esi, %ecx
	movl	%edi, %esi
	movl	%edi, 12(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%r8, 24(%rsp)
	movq	$0, 16(%rsp)
	leaq	16(%rsp), %rdi
	callq	TwoCircles
	movl	%eax, 4(%rsp)
	movl	12(%rsp), %esi
	movl	8(%rsp), %edx
	movq	32(%rsp), %rcx
	movl	(%rcx), %r8d
	movl	4(%rcx), %r9d
	movq	24(%rsp), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rcx), %xmm1          # xmm1 = mem[0],zero
	movl	$.L.str.6, %edi
	movl	%eax, %ecx
	movb	$2, %al
	callq	printf
	xorl	%eax, %eax
	cmpl	$0, 4(%rsp)
	setne	%al
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	Solve2, .Lfunc_end8-Solve2
	.cfi_endproc
                                        # -- End function
	.globl	LineTo_d                # -- Begin function LineTo_d
	.p2align	4, 0x90
	.type	LineTo_d,@function
LineTo_d:                               # @LineTo_d
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rdi), %xmm1          # xmm1 = mem[0],zero
	movl	$.L.str.12, %edi
	movb	$2, %al
	callq	printf
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	LineTo_d, .Lfunc_end9-LineTo_d
	.cfi_endproc
                                        # -- End function
	.globl	SubVec                  # -- Begin function SubVec
	.p2align	4, 0x90
	.type	SubVec,@function
SubVec:                                 # @SubVec
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	%rdx, -24(%rsp)
	movl	$0, -28(%rsp)
	cmpl	$1, -28(%rsp)
	jg	.LBB10_3
	.p2align	4, 0x90
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax
	movslq	-28(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rsp), %rdx
	subl	(%rdx,%rcx,4), %eax
	movq	-24(%rsp), %rdx
	movl	%eax, (%rdx,%rcx,4)
	addl	$1, -28(%rsp)
	cmpl	$1, -28(%rsp)
	jle	.LBB10_2
.LBB10_3:
	retq
.Lfunc_end10:
	.size	SubVec, .Lfunc_end10-SubVec
	.cfi_endproc
                                        # -- End function
	.globl	TwoCircles              # -- Begin function TwoCircles
	.p2align	4, 0x90
	.type	TwoCircles,@function
TwoCircles:                             # @TwoCircles
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -16
	movq	%rdi, %rax
	movq	%rdi, 24(%rsp)
	movl	%esi, 12(%rsp)
	movq	%rdx, 48(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, 16(%rsp)
	movl	$-1, 4(%rsp)
	leaq	56(%rsp), %rbx
	movq	%rdx, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	SubVec
	movl	12(%rsp), %edi
	movl	8(%rsp), %edx
	leaq	32(%rsp), %rcx
	movq	%rbx, %rsi
	callq	TwoCircles0a
	movl	%eax, 4(%rsp)
	movq	24(%rsp), %rax
	cvtsi2sdl	(%rax), %xmm0
	addsd	32(%rsp), %xmm0
	movq	16(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	24(%rsp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	4(%rax), %xmm0
	addsd	40(%rsp), %xmm0
	movq	16(%rsp), %rax
	movsd	%xmm0, 8(%rax)
	movl	4(%rsp), %eax
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	TwoCircles, .Lfunc_end11-TwoCircles
	.cfi_endproc
                                        # -- End function
	.globl	TwoCircles0a            # -- Begin function TwoCircles0a
	.p2align	4, 0x90
	.type	TwoCircles0a,@function
TwoCircles0a:                           # @TwoCircles0a
	.cfi_startproc
# %bb.0:
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movl	%edi, 20(%rsp)
	movq	%rsi, 32(%rsp)
	movl	%edx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rsi, %rdi
	callq	Length2
	movsd	%xmm0, 56(%rsp)
	movl	20(%rsp), %eax
	movl	16(%rsp), %ecx
	leal	(%rax,%rcx), %edx
	imull	%edx, %edx
	cvtsi2sd	%edx, %xmm1
	subl	%ecx, %eax
	imull	%eax, %eax
	cvtsi2sd	%eax, %xmm2
	movsd	%xmm1, 64(%rsp)
	movsd	%xmm2, 48(%rsp)
	ucomisd	%xmm1, %xmm0
	ja	.LBB12_2
# %bb.1:
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	56(%rsp), %xmm0
	jbe	.LBB12_3
.LBB12_2:
	movl	$0, 8(%rsp)
.LBB12_11:
	movl	$1, 12(%rsp)
	movl	8(%rsp), %eax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB12_3:
	.cfi_def_cfa_offset 80
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	64(%rsp), %xmm0
	jne	.LBB12_5
	jp	.LBB12_5
# %bb.4:
	movl	20(%rsp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	addl	16(%rsp), %eax
.LBB12_9:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 40(%rsp)
	movq	32(%rsp), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%rax), %xmm1
	mulsd	%xmm0, %xmm1
	movq	24(%rsp), %rax
	movsd	%xmm1, (%rax)
	movq	32(%rsp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sdl	4(%rax), %xmm0
	mulsd	40(%rsp), %xmm0
	movq	24(%rsp), %rax
	movsd	%xmm0, 8(%rax)
	movl	$1, 8(%rsp)
	jmp	.LBB12_11
.LBB12_5:
	movsd	56(%rsp), %xmm0         # xmm0 = mem[0],zero
	ucomisd	48(%rsp), %xmm0
	jne	.LBB12_10
	jp	.LBB12_10
# %bb.6:
	movl	20(%rsp), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	48(%rsp), %xmm1         # xmm1 = mem[0],zero
	xorps	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB12_8
	jp	.LBB12_8
# %bb.7:
	movq	24(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	24(%rsp), %rax
	movq	$0, 8(%rax)
	movl	$3, 8(%rsp)
	jmp	.LBB12_11
.LBB12_10:
	movl	20(%rsp), %edi
	movq	32(%rsp), %rsi
	movl	16(%rsp), %edx
	movq	24(%rsp), %rcx
	callq	TwoCircles0b
	movl	%eax, 8(%rsp)
	jmp	.LBB12_11
.LBB12_8:
	subl	16(%rsp), %eax
	jmp	.LBB12_9
.Lfunc_end12:
	.size	TwoCircles0a, .Lfunc_end12-TwoCircles0a
	.cfi_endproc
                                        # -- End function
	.globl	Length2                 # -- Begin function Length2
	.p2align	4, 0x90
	.type	Length2,@function
Length2:                                # @Length2
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	$0, -16(%rsp)
	movl	$0, -20(%rsp)
	cmpl	$1, -20(%rsp)
	jg	.LBB13_3
	.p2align	4, 0x90
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax
	movslq	-20(%rsp), %rcx
	xorps	%xmm0, %xmm0
	cvtsi2sdl	(%rax,%rcx,4), %xmm0
	mulsd	%xmm0, %xmm0
	addsd	-16(%rsp), %xmm0
	movsd	%xmm0, -16(%rsp)
	leal	1(%rcx), %eax
	movl	%eax, -20(%rsp)
	cmpl	$1, -20(%rsp)
	jle	.LBB13_2
.LBB13_3:
	movsd	-16(%rsp), %xmm0        # xmm0 = mem[0],zero
	retq
.Lfunc_end13:
	.size	Length2, .Lfunc_end13-Length2
	.cfi_endproc
                                        # -- End function
	.globl	TwoCircles0b            # -- Begin function TwoCircles0b
	.p2align	4, 0x90
	.type	TwoCircles0b,@function
TwoCircles0b:                           # @TwoCircles0b
	.cfi_startproc
# %bb.0:
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movl	%edi, 4(%rsp)
	movq	%rsi, 56(%rsp)
	movl	%edx, (%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rsi, %rdi
	callq	Length2
	xorps	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB14_2
# %bb.1:
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB14_3
.LBB14_2:                               # %call.sqrt
	callq	sqrt
.LBB14_3:                               # %.split
	movsd	%xmm0, 64(%rsp)
	movq	56(%rsp), %rax
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 16(%rsp)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	4(%rax), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)
	movl	4(%rsp), %edi
	movl	(%rsp), %esi
	leaq	32(%rsp), %rdx
	callq	TwoCircles00
	movsd	16(%rsp), %xmm0         # xmm0 = mem[0],zero
	mulsd	32(%rsp), %xmm0
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	mulsd	40(%rsp), %xmm1
	subsd	%xmm1, %xmm0
	movq	24(%rsp), %rax
	movsd	%xmm0, (%rax)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	mulsd	32(%rsp), %xmm0
	movsd	16(%rsp), %xmm1         # xmm1 = mem[0],zero
	mulsd	40(%rsp), %xmm1
	addsd	%xmm0, %xmm1
	movq	24(%rsp), %rax
	movsd	%xmm1, 8(%rax)
	movl	$2, %eax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	TwoCircles0b, .Lfunc_end14-TwoCircles0b
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function TwoCircles00
.LCPI15_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	TwoCircles00
	.p2align	4, 0x90
	.type	TwoCircles00,@function
TwoCircles00:                           # @TwoCircles00
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	%edi, 20(%rsp)
	movsd	%xmm0, 32(%rsp)
	movl	%esi, 16(%rsp)
	imull	%edi, %edi
	cvtsi2sd	%edi, %xmm1
	movq	%rdx, (%rsp)
	imull	%esi, %esi
	cvtsi2sd	%esi, %xmm2
	movsd	%xmm1, 8(%rsp)
	movsd	%xmm2, 24(%rsp)
	subsd	%xmm2, %xmm1
	divsd	%xmm0, %xmm1
	addsd	%xmm0, %xmm1
	divsd	.LCPI15_0(%rip), %xmm1
	movsd	%xmm1, (%rdx)
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movq	(%rsp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jb	.LBB15_2
# %bb.1:
	sqrtsd	%xmm0, %xmm0
	jmp	.LBB15_3
.LBB15_2:                               # %call.sqrt
	callq	sqrt
.LBB15_3:                               # %.split
	movq	(%rsp), %rax
	movsd	%xmm0, 8(%rax)
	movq	(%rsp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movl	$.L.str.7, %edi
	movb	$2, %al
	callq	printf
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	TwoCircles00, .Lfunc_end15-TwoCircles00
	.cfi_endproc
                                        # -- End function
	.globl	PostscriptClose         # -- Begin function PostscriptClose
	.p2align	4, 0x90
	.type	PostscriptClose,@function
PostscriptClose:                        # @PostscriptClose
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.L.str.21, %edi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	PostscriptClose, .Lfunc_end16-PostscriptClose
	.cfi_endproc
                                        # -- End function
	.globl	PrintLinks              # -- Begin function PrintLinks
	.p2align	4, 0x90
	.type	PrintLinks,@function
PrintLinks:                             # @PrintLinks
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 4(%rsp)
	.p2align	4, 0x90
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	movl	4(%rsp), %eax
	cmpl	nlinks(%rip), %eax
	jge	.LBB17_3
# %bb.2:                                #   in Loop: Header=BB17_1 Depth=1
	movslq	4(%rsp), %rsi
	movl	linklen(,%rsi,4), %edx
	movl	$.L.str.14, %edi
                                        # kill: def $esi killed $esi killed $rsi
	xorl	%eax, %eax
	callq	printf
	addl	$1, 4(%rsp)
	jmp	.LBB17_1
.LBB17_3:
	movl	$10, %edi
	callq	putchar
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	PrintLinks, .Lfunc_end17-PrintLinks
	.cfi_endproc
                                        # -- End function
	.globl	EqPointi                # -- Begin function EqPointi
	.p2align	4, 0x90
	.type	EqPointi,@function
EqPointi:                               # @EqPointi
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movl	$0, -28(%rsp)
	cmpl	$1, -28(%rsp)
	jg	.LBB18_5
	.p2align	4, 0x90
.LBB18_2:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rsp), %rax
	movslq	-28(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rsp), %rdx
	cmpl	(%rdx,%rcx,4), %eax
	jne	.LBB18_3
# %bb.4:                                #   in Loop: Header=BB18_2 Depth=1
	addl	$1, -28(%rsp)
	cmpl	$1, -28(%rsp)
	jle	.LBB18_2
.LBB18_5:
	movl	$1, -24(%rsp)
	jmp	.LBB18_6
.LBB18_3:
	movl	$0, -24(%rsp)
.LBB18_6:
	movl	$1, -20(%rsp)
	movl	-24(%rsp), %eax
	retq
.Lfunc_end18:
	.size	EqPointi, .Lfunc_end18-EqPointi
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function RadDeg
.LCPI19_0:
	.quad	4640537203540230144     # double 180
.LCPI19_1:
	.quad	4614256656552045848     # double 3.1415926535897931
	.text
	.globl	RadDeg
	.p2align	4, 0x90
	.type	RadDeg,@function
RadDeg:                                 # @RadDeg
	.cfi_startproc
# %bb.0:
	movsd	%xmm0, -8(%rsp)
	mulsd	.LCPI19_0(%rip), %xmm0
	divsd	.LCPI19_1(%rip), %xmm0
	retq
.Lfunc_end19:
	.size	RadDeg, .Lfunc_end19-RadDeg
	.cfi_endproc
                                        # -- End function
	.type	nlinks,@object          # @nlinks
	.comm	nlinks,4,4
	.type	target,@object          # @target
	.comm	target,8,4
	.type	linklen,@object         # @linklen
	.comm	linklen,80,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"newpath\n"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Solven: no solutions!\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"closepath stroke\n"
	.size	.L.str.2, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%5d    %5d    lineto\n"
	.size	.L.str.10, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%%==>Solve3: links = %d,%d,%d\n"
	.size	.L.str.3, 31

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%%Solve3: link1=%d, link2=%d, joint=\n"
	.size	.L.str.4, 38

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%%Solve3: link1=%d, link2=%d, link3=%d, joints=\n"
	.size	.L.str.5, 49

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%8.2lf %8.2lf lineto\n"
	.size	.L.str.12, 22

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%%<==Solve2: L1=%d, L2=%d; nsoln=%d, target=(%d,%d),J=(%g,%g)\n"
	.size	.L.str.6, 63

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%%TwoCircles00: p=(%g,%g)\n"
	.size	.L.str.7, 27

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%5d    %5d    moveto\n"
	.size	.L.str.11, 22

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%d"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%%Target point = (%d,%d)\n"
	.size	.L.str.9, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"showpage\n%%%%EOF\n"
	.size	.L.str.21, 18

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%%!PS\n"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%%%%Creator: arm.c (Joseph O'Rourke)\n"
	.size	.L.str.16, 38

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%%%%BoundingBox: %d %d %d %d\n"
	.size	.L.str.17, 30

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%%%%EndComments\n"
	.size	.L.str.18, 17

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	".00 .00 setlinewidth\n"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%d %d translate\n"
	.size	.L.str.20, 17

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%%"
	.size	.L.str.13, 3

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%d:%d\t"
	.size	.L.str.14, 7


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
