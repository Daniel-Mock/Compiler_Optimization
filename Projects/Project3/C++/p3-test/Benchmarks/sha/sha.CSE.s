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
	subq	$128, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -16
	movl	$0, 28(%rsp)
	movl	%edi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	cmpl	$2, %edi
	jge	.LBB0_1
# %bb.6:
	movq	stdin(%rip), %rsi
	movq	%rsi, 8(%rsp)
	leaq	32(%rsp), %rbx
	movq	%rbx, %rdi
	callq	sha_stream
	movq	%rbx, %rdi
	callq	sha_print
	jmp	.LBB0_7
.LBB0_1:
	leaq	32(%rsp), %rbx
	addl	$-1, 24(%rsp)
	jne	.LBB0_3
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	8(%rsp), %rsi
	movq	%rbx, %rdi
	callq	sha_stream
	movq	%rbx, %rdi
	callq	sha_print
	movq	8(%rsp), %rdi
	callq	fclose
	addl	$-1, 24(%rsp)
	je	.LBB0_7
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movq	8(%rax), %rdi
	movl	$.L.str, %esi
	callq	fopen
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	16(%rsp), %rax
	movq	(%rax), %rsi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	addl	$-1, 24(%rsp)
	jne	.LBB0_3
.LBB0_7:
	xorl	%eax, %eax
	addq	$128, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	sha_init                # -- Begin function sha_init
	.p2align	4, 0x90
	.type	sha_init,@function
sha_init:                               # @sha_init
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movl	$1732584193, (%rdi)     # imm = 0x67452301
	movq	-8(%rsp), %rax
	movl	$-271733879, 4(%rax)    # imm = 0xEFCDAB89
	movq	-8(%rsp), %rax
	movl	$-1732584194, 8(%rax)   # imm = 0x98BADCFE
	movq	-8(%rsp), %rax
	movl	$271733878, 12(%rax)    # imm = 0x10325476
	movq	-8(%rsp), %rax
	movl	$-1009589776, 16(%rax)  # imm = 0xC3D2E1F0
	movq	-8(%rsp), %rax
	movl	$0, 20(%rax)
	movq	-8(%rsp), %rax
	movl	$0, 24(%rax)
	retq
.Lfunc_end1:
	.size	sha_init, .Lfunc_end1-sha_init
	.cfi_endproc
                                        # -- End function
	.globl	sha_update              # -- Begin function sha_update
	.p2align	4, 0x90
	.type	sha_update,@function
sha_update:                             # @sha_update
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movl	%edx, 4(%rsp)
	movl	20(%rdi), %eax
	leal	(%rax,%rdx,8), %ecx
	cmpl	%eax, %ecx
	jae	.LBB2_2
# %bb.1:
	movq	8(%rsp), %rax
	addl	$1, 24(%rax)
.LBB2_2:
	movl	4(%rsp), %eax
	shll	$3, %eax
	movq	8(%rsp), %rcx
	addl	%eax, 20(%rcx)
	movl	4(%rsp), %eax
	shrl	$29, %eax
	movq	8(%rsp), %rcx
	addl	%eax, 24(%rcx)
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rdi
	addq	$28, %rdi
	cmpl	$64, 4(%rsp)
	movq	16(%rsp), %rsi
	jl	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	movups	(%rsi), %xmm0
	movups	16(%rsi), %xmm1
	movups	32(%rsi), %xmm2
	movups	48(%rsi), %xmm3
	movups	%xmm3, 48(%rdi)
	movups	%xmm2, 32(%rdi)
	movups	%xmm1, 16(%rdi)
	movups	%xmm0, (%rdi)
	movq	8(%rsp), %rdi
	addq	$28, %rdi
	movl	$64, %esi
	callq	byte_reverse
	movq	8(%rsp), %rdi
	callq	sha_transform
	addq	$64, 16(%rsp)
	addl	$-64, 4(%rsp)
	jmp	.LBB2_3
.LBB2_5:
	movslq	4(%rsp), %rdx
	callq	memcpy
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	sha_update, .Lfunc_end2-sha_update
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function byte_reverse
	.type	byte_reverse,@function
byte_reverse:                           # @byte_reverse
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movl	%esi, -12(%rsp)
	movslq	%esi, %rax
	shrq	$2, %rax
	movl	%eax, -12(%rsp)
	movq	%rdi, -24(%rsp)
	movl	$0, -16(%rsp)
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	-16(%rsp), %eax
	cmpl	-12(%rsp), %eax
	jge	.LBB3_3
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rsp), %rax
	movzbl	(%rax), %ecx
	movb	%cl, -28(%rsp)
	movzbl	1(%rax), %ecx
	movb	%cl, -27(%rsp)
	movzbl	2(%rax), %ecx
	movb	%cl, -26(%rsp)
	movzbl	3(%rax), %ecx
	movb	%cl, -25(%rsp)
	movb	%cl, (%rax)
	movzbl	-26(%rsp), %eax
	movq	-24(%rsp), %rcx
	movb	%al, 1(%rcx)
	movzbl	-27(%rsp), %eax
	movq	-24(%rsp), %rcx
	movb	%al, 2(%rcx)
	movzbl	-28(%rsp), %eax
	movq	-24(%rsp), %rcx
	movb	%al, 3(%rcx)
	addq	$4, -24(%rsp)
	addl	$1, -16(%rsp)
	jmp	.LBB3_1
.LBB3_3:
	retq
.Lfunc_end3:
	.size	byte_reverse, .Lfunc_end3-byte_reverse
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function sha_transform
	.type	sha_transform,@function
sha_transform:                          # @sha_transform
	.cfi_startproc
# %bb.0:
	subq	$248, %rsp
	.cfi_def_cfa_offset 256
	movq	%rdi, -96(%rsp)
	movl	$0, -120(%rsp)
	cmpl	$15, -120(%rsp)
	jg	.LBB4_3
	.p2align	4, 0x90
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movq	-96(%rsp), %rax
	movslq	-120(%rsp), %rcx
	movl	28(%rax,%rcx,4), %eax
	movl	%eax, -80(%rsp,%rcx,4)
	leal	1(%rcx), %eax
	movl	%eax, -120(%rsp)
	cmpl	$15, -120(%rsp)
	jle	.LBB4_2
.LBB4_3:
	movl	$16, -120(%rsp)
	cmpl	$79, -120(%rsp)
	jg	.LBB4_6
	.p2align	4, 0x90
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movslq	-120(%rsp), %rax
	movl	-92(%rsp,%rax,4), %ecx
	xorl	-112(%rsp,%rax,4), %ecx
	xorl	-136(%rsp,%rax,4), %ecx
	xorl	-144(%rsp,%rax,4), %ecx
	movl	%ecx, -80(%rsp,%rax,4)
	addl	$1, %eax
	movl	%eax, -120(%rsp)
	cmpl	$79, -120(%rsp)
	jle	.LBB4_5
.LBB4_6:
	movq	-96(%rsp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -100(%rsp)
	movl	4(%rax), %ecx
	movl	%ecx, -104(%rsp)
	movl	8(%rax), %ecx
	movl	%ecx, -108(%rsp)
	movl	12(%rax), %ecx
	movl	%ecx, -112(%rsp)
	movl	16(%rax), %eax
	movl	%eax, -116(%rsp)
	movl	$0, -120(%rsp)
	cmpl	$19, -120(%rsp)
	jg	.LBB4_9
	.p2align	4, 0x90
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	movl	-100(%rsp), %ecx
	movl	-104(%rsp), %eax
	movl	%ecx, -104(%rsp)
	roll	$5, %ecx
	movl	-108(%rsp), %r8d
	movl	%eax, %esi
	andl	%r8d, %esi
	movl	%eax, %edi
	notl	%edi
	movl	-112(%rsp), %edx
	andl	%edx, %edi
	orl	%esi, %edi
	addl	%ecx, %edi
	addl	-116(%rsp), %edi
	movslq	-120(%rsp), %rcx
	movl	-80(%rsp,%rcx,4), %esi
	leal	(%rsi,%rdi), %esi
	addl	$1518500249, %esi       # imm = 0x5A827999
	movl	%esi, -84(%rsp)
	movl	%edx, -116(%rsp)
	movl	%r8d, -112(%rsp)
	roll	$30, %eax
	movl	%eax, -108(%rsp)
	movl	%esi, -100(%rsp)
	leal	1(%rcx), %eax
	movl	%eax, -120(%rsp)
	cmpl	$19, -120(%rsp)
	jle	.LBB4_8
.LBB4_9:
	movl	$20, -120(%rsp)
	cmpl	$39, -120(%rsp)
	jg	.LBB4_12
	.p2align	4, 0x90
.LBB4_11:                               # =>This Inner Loop Header: Depth=1
	movl	-100(%rsp), %eax
	movl	%eax, %ecx
	roll	$5, %ecx
	movl	-104(%rsp), %r8d
	movl	%eax, -104(%rsp)
	movl	-108(%rsp), %eax
	movl	%r8d, %esi
	xorl	%eax, %esi
	movl	-112(%rsp), %edi
	xorl	%edi, %esi
	addl	%ecx, %esi
	addl	-116(%rsp), %esi
	movslq	-120(%rsp), %rcx
	movl	-80(%rsp,%rcx,4), %edx
	leal	(%rdx,%rsi), %edx
	addl	$1859775393, %edx       # imm = 0x6ED9EBA1
	movl	%edx, -84(%rsp)
	movl	%edi, -116(%rsp)
	movl	%eax, -112(%rsp)
	roll	$30, %r8d
	movl	%r8d, -108(%rsp)
	movl	%edx, -100(%rsp)
	leal	1(%rcx), %eax
	movl	%eax, -120(%rsp)
	cmpl	$39, -120(%rsp)
	jle	.LBB4_11
.LBB4_12:
	movl	$2400959708, %r8d       # imm = 0x8F1BBCDC
	movl	$40, -120(%rsp)
	cmpl	$59, -120(%rsp)
	jg	.LBB4_15
	.p2align	4, 0x90
.LBB4_14:                               # =>This Inner Loop Header: Depth=1
	movl	-100(%rsp), %edx
	movl	-104(%rsp), %ecx
	movl	%edx, -104(%rsp)
	roll	$5, %edx
	movl	-108(%rsp), %esi
	movl	-112(%rsp), %edi
	movl	%esi, %eax
	movl	%esi, -112(%rsp)
	orl	%edi, %esi
	andl	%ecx, %esi
	andl	%edi, %eax
	orl	%esi, %eax
	addl	%edx, %eax
	addl	-116(%rsp), %eax
	movslq	-120(%rsp), %rdx
	addl	-80(%rsp,%rdx,4), %eax
	addl	%r8d, %eax
	movl	%eax, -84(%rsp)
	movl	%edi, -116(%rsp)
	roll	$30, %ecx
	movl	%ecx, -108(%rsp)
	movl	%eax, -100(%rsp)
	leal	1(%rdx), %eax
	movl	%eax, -120(%rsp)
	cmpl	$59, -120(%rsp)
	jle	.LBB4_14
.LBB4_15:
	movl	$60, -120(%rsp)
	.p2align	4, 0x90
.LBB4_16:                               # =>This Inner Loop Header: Depth=1
	cmpl	$79, -120(%rsp)
	movl	-100(%rsp), %ecx
	jg	.LBB4_18
# %bb.17:                               #   in Loop: Header=BB4_16 Depth=1
	movl	-100(%rsp), %r9d
	shldl	$5, %r9d, %ecx
	movl	-104(%rsp), %edx
	movl	-108(%rsp), %esi
	movl	%edx, %edi
	xorl	%esi, %edi
	movl	-112(%rsp), %eax
	xorl	%eax, %edi
	addl	%ecx, %edi
	addl	-116(%rsp), %edi
	movslq	-120(%rsp), %rcx
	addl	-80(%rsp,%rcx,4), %edi
	leal	(%r8,%rdi), %edi
	addl	$994510074, %edi        # imm = 0x3B4704FA
	movl	%edi, -84(%rsp)
	movl	%eax, -116(%rsp)
	movl	%esi, -112(%rsp)
	roll	$30, %edx
	movl	%edx, -108(%rsp)
	movl	%r9d, -104(%rsp)
	movl	%edi, -100(%rsp)
	leal	1(%rcx), %eax
	movl	%eax, -120(%rsp)
	jmp	.LBB4_16
.LBB4_18:
	movq	-96(%rsp), %rax
	addl	%ecx, (%rax)
	movl	-104(%rsp), %eax
	movq	-96(%rsp), %rcx
	addl	%eax, 4(%rcx)
	movl	-108(%rsp), %eax
	movq	-96(%rsp), %rcx
	addl	%eax, 8(%rcx)
	movl	-112(%rsp), %eax
	movq	-96(%rsp), %rcx
	addl	%eax, 12(%rcx)
	movl	-116(%rsp), %eax
	movq	-96(%rsp), %rcx
	addl	%eax, 16(%rcx)
	addq	$248, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	sha_transform, .Lfunc_end4-sha_transform
	.cfi_endproc
                                        # -- End function
	.globl	sha_final               # -- Begin function sha_final
	.p2align	4, 0x90
	.type	sha_final,@function
sha_final:                              # @sha_final
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movl	20(%rdi), %eax
	movl	%eax, 16(%rsp)
	movl	24(%rdi), %ecx
	movl	%ecx, 12(%rsp)
	shrl	$3, %eax
	andl	$63, %eax
	movl	%eax, 20(%rsp)
	movb	$-128, 28(%rdi,%rax)
	movslq	20(%rsp), %rax
	movq	(%rsp), %rcx
	leaq	(%rcx,%rax), %rdi
	addq	$28, %rdi
	cmpq	$57, %rax
	jl	.LBB5_2
# %bb.1:
	movl	$64, %edx
	subq	%rax, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	(%rsp), %rdi
	addq	$28, %rdi
	movl	$64, %esi
	callq	byte_reverse
	movq	(%rsp), %rdi
	callq	sha_transform
	movq	(%rsp), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 60(%rax)
	movups	%xmm0, 44(%rax)
	movups	%xmm0, 28(%rax)
	movq	$0, 76(%rax)
	jmp	.LBB5_3
.LBB5_2:
	movl	$56, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB5_3:
	movq	(%rsp), %rdi
	addq	$28, %rdi
	movl	$64, %esi
	callq	byte_reverse
	movl	12(%rsp), %eax
	movq	(%rsp), %rcx
	movl	%eax, 84(%rcx)
	movl	16(%rsp), %eax
	movq	(%rsp), %rcx
	movl	%eax, 88(%rcx)
	movq	(%rsp), %rdi
	callq	sha_transform
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	sha_final, .Lfunc_end5-sha_final
	.cfi_endproc
                                        # -- End function
	.globl	sha_stream              # -- Begin function sha_stream
	.p2align	4, 0x90
	.type	sha_stream,@function
sha_stream:                             # @sha_stream
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$8224, %rsp             # imm = 0x2020
	.cfi_def_cfa_offset 8240
	.cfi_offset %rbx, -16
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	callq	sha_init
	leaq	32(%rsp), %rbx
	.p2align	4, 0x90
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rcx
	movl	$1, %esi
	movl	$8192, %edx             # imm = 0x2000
	movq	%rbx, %rdi
	callq	fread
	movl	%eax, 12(%rsp)
	movq	24(%rsp), %rdi
	testl	%eax, %eax
	jle	.LBB6_3
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movl	12(%rsp), %edx
	movq	%rbx, %rsi
	callq	sha_update
	jmp	.LBB6_1
.LBB6_3:
	callq	sha_final
	addq	$8224, %rsp             # imm = 0x2020
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	sha_stream, .Lfunc_end6-sha_stream
	.cfi_endproc
                                        # -- End function
	.globl	sha_print               # -- Begin function sha_print
	.p2align	4, 0x90
	.type	sha_print,@function
sha_print:                              # @sha_print
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movl	(%rdi), %esi
	movl	4(%rdi), %edx
	movl	8(%rdi), %ecx
	movl	12(%rdi), %r8d
	movl	16(%rdi), %r9d
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	sha_print, .Lfunc_end7-sha_print
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"error opening %s for reading\n"
	.size	.L.str.1, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%08x %08x %08x %08x %08x\n"
	.size	.L.str.5, 26


	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
