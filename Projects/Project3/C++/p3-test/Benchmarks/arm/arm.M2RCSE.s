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
	movq	$0, 8(%rsp)
	callq	ReadLinks
	movl	%eax, nlinks(%rip)
	callq	PostscriptOpen
	leaq	8(%rsp), %rbx
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	$.L.str.8, %edi
	movl	$nlinks, %esi
	xorl	%eax, %eax
	callq	scanf
	leaq	4(%rsp), %r14
	xorl	%ebx, %ebx
	cmpl	nlinks(%rip), %ebx
	jge	.LBB1_3
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movl	$.L.str.8, %edi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	scanf
	movl	4(%rsp), %eax
	movl	%eax, linklen(,%rbx,4)
	addq	$1, %rbx
	cmpl	nlinks(%rip), %ebx
	jl	.LBB1_2
.LBB1_3:
	movl	nlinks(%rip), %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	cmpl	nlinks(%rip), %eax
	jge	.LBB2_3
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	addl	linklen(,%rax,4), %ebx
	addq	$1, %rax
	cmpl	nlinks(%rip), %eax
	jl	.LBB2_2
.LBB2_3:
	movl	%ebx, %ebp
	negl	%ebp
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.16, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.17, %edi
	movl	%ebp, %esi
	movl	%ebp, %edx
	movl	%ebx, %ecx
	movl	%ebx, %r8d
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.18, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.19, %edi
	xorl	%eax, %eax
	callq	printf
	addl	$100, %ebx
	movl	$.L.str.20, %edi
	movl	%ebx, %esi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	printf
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	cmpl	$1, %ebp
	jg	.LBB3_4
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movl	$.L.str.8, %edi
	movq	%rbx, %rsi
	xorl	%eax, %eax
	callq	scanf
	cmpl	$-1, %eax
	je	.LBB3_5
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	addl	$1, %ebp
	addq	$4, %rbx
	cmpl	$1, %ebp
	jle	.LBB3_2
.LBB3_4:
	movl	(%r14), %esi
	movl	4(%r14), %edx
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	callq	printf
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	xorl	%edx, %edx
	cmpl	%edi, %eax
	jge	.LBB5_3
	.p2align	4, 0x90
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	addl	linklen(,%rax,4), %edx
	addq	$1, %rax
	cmpl	%edi, %eax
	jl	.LBB5_2
.LBB5_3:
	movl	%edx, %r8d
	shrl	$31, %r8d
	addl	%edx, %r8d
	sarl	%r8d
	xorl	%esi, %esi
	xorl	%eax, %eax
	cmpl	%edi, %esi
	jge	.LBB5_7
	.p2align	4, 0x90
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	movl	linklen(,%rsi,4), %ecx
	addl	%eax, %ecx
	cmpl	%r8d, %ecx
	jg	.LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	addl	linklen(,%rsi,4), %eax
	addq	$1, %rsi
	cmpl	%edi, %esi
	jl	.LBB5_5
.LBB5_7:
	movl	linklen(,%rsi,4), %esi
	subl	%eax, %edx
	subl	%esi, %edx
	movl	$target, %ecx
	movl	%eax, %edi
	callq	Solve3
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	movl	%ecx, %eax
	popq	%rcx
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
	movq	%rcx, %r12
	movl	%edx, %ebx
	movl	%esi, %r15d
	movl	%edi, %r14d
	movl	$.L.str.3, %edi
	movl	%r14d, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf
	leal	(%r14,%r15), %ebp
	movq	%rsp, %rcx
	movl	%ebp, %edi
	movl	%ebx, %esi
	movq	%r12, %rdx
	callq	Solve2
	testl	%eax, %eax
	je	.LBB7_3
# %bb.1:
	movl	$.L.str.4, %edi
	movl	%ebp, %esi
	movl	%ebx, %edx
	jmp	.LBB7_2
.LBB7_3:
	leal	(%r15,%rbx), %ebp
	movq	%rsp, %rcx
	movl	%r14d, %edi
	movl	%ebp, %esi
	movq	%r12, %rdx
	callq	Solve2
	testl	%eax, %eax
	je	.LBB7_5
# %bb.4:
	movl	$.L.str.4, %edi
	movl	%r14d, %esi
	movl	%ebp, %edx
.LBB7_2:
	xorl	%eax, %eax
	callq	printf
.LBB7_8:
	movq	%rsp, %rdi
	callq	LineTo_d
	movl	$1, %eax
.LBB7_9:
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
.LBB7_5:
	.cfi_def_cfa_offset 80
	movl	%r14d, 16(%rsp)
	movl	$0, 20(%rsp)
	leaq	16(%rsp), %rsi
	leaq	24(%rsp), %rbp
	movq	%r12, %rdi
	movq	%rbp, %rdx
	callq	SubVec
	movq	%rsp, %rcx
	movl	%r15d, %edi
	movl	%ebx, %esi
	movq	%rbp, %rdx
	callq	Solve2
	testl	%eax, %eax
	je	.LBB7_6
# %bb.7:
	cvtsi2sd	%r14d, %xmm0
	addsd	(%rsp), %xmm0
	movsd	%xmm0, (%rsp)
	movl	$.L.str.5, %edi
	movl	%r14d, %esi
	movl	%r15d, %edx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	printf
	leaq	16(%rsp), %rdi
	callq	LineTo_i
	jmp	.LBB7_8
.LBB7_6:
	xorl	%eax, %eax
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
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movl	%esi, %r15d
	movl	%edi, %ebp
	movq	$0, 8(%rsp)
	leaq	8(%rsp), %rdi
	movl	%ebp, %esi
	movl	%r15d, %ecx
	movq	%r14, %r8
	callq	TwoCircles
	movl	%eax, %r12d
	movl	(%rbx), %r8d
	movl	4(%rbx), %r9d
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%r14), %xmm1          # xmm1 = mem[0],zero
	movl	$.L.str.6, %edi
	movl	%ebp, %esi
	movl	%r15d, %edx
	movl	%eax, %ecx
	movb	$2, %al
	callq	printf
	xorl	%eax, %eax
	testl	%r12d, %r12d
	setne	%al
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
	xorl	%eax, %eax
	cmpl	$1, %eax
	jg	.LBB10_3
	.p2align	4, 0x90
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rax,4), %ecx
	subl	(%rsi,%rax,4), %ecx
	movl	%ecx, (%rdx,%rax,4)
	addq	$1, %rax
	cmpl	$1, %eax
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
	movq	%r8, %rbx
	movl	%ecx, %r14d
	movl	%esi, %r15d
	movq	%rdi, %rbp
	leaq	24(%rsp), %r12
	movq	%rdx, %rdi
	movq	%rbp, %rsi
	movq	%r12, %rdx
	callq	SubVec
	movq	%rsp, %rcx
	movl	%r15d, %edi
	movq	%r12, %rsi
	movl	%r14d, %edx
	callq	TwoCircles0a
	cvtsi2sdl	(%rbp), %xmm0
	addsd	(%rsp), %xmm0
	movsd	%xmm0, (%rbx)
	xorps	%xmm0, %xmm0
	cvtsi2sdl	4(%rbp), %xmm0
	addsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rbx)
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %r14
	movl	%edx, %r12d
	movq	%rsi, %r15
	movl	%edi, %ebx
	movq	%rsi, %rdi
	callq	Length2
	leal	(%rbx,%r12), %edx
	movl	%edx, %eax
	imull	%edx, %eax
	cvtsi2sd	%eax, %xmm2
	xorl	%eax, %eax
	ucomisd	%xmm2, %xmm0
	ja	.LBB12_10
# %bb.1:
	movl	%ebx, %ecx
	subl	%r12d, %ecx
	movl	%ecx, %esi
	imull	%ecx, %esi
	cvtsi2sd	%esi, %xmm1
	ucomisd	%xmm0, %xmm1
	ja	.LBB12_10
# %bb.2:
	ucomisd	%xmm2, %xmm0
	jne	.LBB12_4
	jp	.LBB12_4
# %bb.3:
	cvtsi2sd	%ebx, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
.LBB12_8:
	divsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%r15), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%r14)
	xorps	%xmm1, %xmm1
	cvtsi2sdl	4(%r15), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%r14)
	movl	$1, %eax
.LBB12_10:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB12_4:
	.cfi_def_cfa_offset 48
	ucomisd	%xmm1, %xmm0
	jne	.LBB12_9
	jp	.LBB12_9
# %bb.5:
	cvtsi2sd	%ebx, %xmm0
	xorps	%xmm2, %xmm2
	ucomisd	%xmm2, %xmm1
	jne	.LBB12_7
	jp	.LBB12_7
# %bb.6:
	movsd	%xmm0, (%r14)
	movq	$0, 8(%r14)
	movl	$3, %eax
	jmp	.LBB12_10
.LBB12_9:
	movl	%ebx, %edi
	movq	%r15, %rsi
	movl	%r12d, %edx
	movq	%r14, %rcx
	callq	TwoCircles0b
	jmp	.LBB12_10
.LBB12_7:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ecx, %xmm1
	jmp	.LBB12_8
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
	xorpd	%xmm0, %xmm0
	xorl	%eax, %eax
	cmpl	$1, %eax
	jg	.LBB13_3
	.p2align	4, 0x90
.LBB13_2:                               # =>This Inner Loop Header: Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%rdi,%rax,4), %xmm1
	mulsd	%xmm1, %xmm1
	addsd	%xmm1, %xmm0
	addq	$1, %rax
	cmpl	$1, %eax
	jle	.LBB13_2
.LBB13_3:
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movl	%edx, %r14d
	movq	%rsi, %rbp
	movl	%edi, %r15d
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
	xorps	%xmm1, %xmm1
	cvtsi2sdl	(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	xorps	%xmm1, %xmm1
	cvtsi2sdl	4(%rbp), %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movq	%rsp, %rdx
	movl	%r15d, %edi
	movl	%r14d, %esi
	callq	TwoCircles00
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	movsd	32(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	movsd	8(%rsp), %xmm1          # xmm1 = mem[0],zero
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, (%rbx)
	mulsd	(%rsp), %xmm2
	movapd	%xmm3, %xmm0
	mulsd	8(%rsp), %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rbx)
	movl	$2, %eax
	addq	$40, %rsp
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	imull	%edi, %edi
	cvtsi2sd	%edi, %xmm1
	imull	%esi, %esi
	cvtsi2sd	%esi, %xmm2
	movq	%rdx, %rbx
	movapd	%xmm1, %xmm3
	subsd	%xmm2, %xmm3
	divsd	%xmm0, %xmm3
	addsd	%xmm0, %xmm3
	divsd	.LCPI15_0(%rip), %xmm3
	movsd	%xmm3, (%rdx)
	mulsd	%xmm3, %xmm3
	subsd	%xmm3, %xmm1
	xorpd	%xmm0, %xmm0
	ucomisd	%xmm0, %xmm1
	jb	.LBB15_2
# %bb.1:
	sqrtsd	%xmm1, %xmm1
	jmp	.LBB15_3
.LBB15_2:                               # %call.sqrt
	movapd	%xmm1, %xmm0
	callq	sqrt
	movapd	%xmm0, %xmm1
.LBB15_3:                               # %.split
	movsd	%xmm1, 8(%rbx)
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movl	$.L.str.7, %edi
	movb	$2, %al
	callq	printf
	popq	%rbx
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%ebx, %ebx
	cmpl	nlinks(%rip), %ebx
	jge	.LBB17_3
	.p2align	4, 0x90
.LBB17_2:                               # =>This Inner Loop Header: Depth=1
	movl	linklen(,%rbx,4), %edx
	movl	$.L.str.14, %edi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %rbx
	cmpl	nlinks(%rip), %ebx
	jl	.LBB17_2
.LBB17_3:
	movl	$10, %edi
	callq	putchar
	popq	%rbx
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
	xorl	%eax, %eax
	cmpl	$1, %eax
	jg	.LBB18_2
	.p2align	4, 0x90
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rax,4), %ecx
	cmpl	(%rsi,%rax,4), %ecx
	jne	.LBB18_4
# %bb.6:                                #   in Loop: Header=BB18_3 Depth=1
	addq	$1, %rax
	cmpl	$1, %eax
	jle	.LBB18_3
.LBB18_2:
	movl	$1, %eax
	retq
.LBB18_4:
	xorl	%eax, %eax
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
