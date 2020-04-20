	.text
	.file	"llvm-link"
	.globl	main                    # -- Begin function main
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
	subq	$96, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpl	$2, %edi
	jge	.LBB0_1
# %bb.6:
	movq	stdin(%rip), %rsi
	movq	%rsp, %rbx
	movq	%rbx, %rdi
	callq	sha_stream
	movq	%rbx, %rdi
	callq	sha_print
	jmp	.LBB0_7
.LBB0_1:                                # %.preheader
	movq	%rsi, %r15
	movl	%edi, %r12d
	movl	$1, %r13d
	movq	%rsp, %r14
	cmpl	%r13d, %r12d
	jne	.LBB0_3
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	(%r15,%r13,8), %rsi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %r13
	cmpl	%r13d, %r12d
	je	.LBB0_7
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%r15,%r13,8), %rdi
	movl	$.L.str, %esi
	callq	fopen
	testq	%rax, %rax
	je	.LBB0_4
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	sha_stream
	movq	%r14, %rdi
	callq	sha_print
	movq	%rbx, %rdi
	callq	fclose
	addq	$1, %r13
	cmpl	%r13d, %r12d
	jne	.LBB0_3
.LBB0_7:
	xorl	%eax, %eax
	addq	$96, %rsp
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function sha_init
.LCPI1_0:
	.long	1732584193              # 0x67452301
	.long	4023233417              # 0xefcdab89
	.long	2562383102              # 0x98badcfe
	.long	271733878               # 0x10325476
	.text
	.globl	sha_init
	.p2align	4, 0x90
	.type	sha_init,@function
sha_init:                               # @sha_init
	.cfi_startproc
# %bb.0:
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1732584193,4023233417,2562383102,271733878]
	movups	%xmm0, (%rdi)
	movl	$3285377520, %eax       # imm = 0xC3D2E1F0
	movq	%rax, 16(%rdi)
	movl	$0, 24(%rdi)
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
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, %r12
	movq	%rdi, %r14
	leal	(,%rdx,8), %eax
	movl	20(%rdi), %ecx
	addl	%eax, %ecx
	jae	.LBB2_2
# %bb.1:
	addl	$1, 24(%r14)
.LBB2_2:
	addl	%eax, 20(%r14)
	movslq	%edx, %r15
	shrl	$29, %edx
	addl	%edx, 24(%r14)
	leaq	28(%r14), %rbx
	cmpl	$64, %r15d
	jl	.LBB2_5
	.p2align	4, 0x90
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movups	(%r12), %xmm0
	movups	16(%r12), %xmm1
	movups	32(%r12), %xmm2
	movups	48(%r12), %xmm3
	movups	%xmm3, 48(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm0, (%rbx)
	movq	%rbx, %rdi
	movl	$64, %esi
	callq	byte_reverse
	movq	%r14, %rdi
	callq	sha_transform
	addq	$64, %r12
	addq	$-64, %r15
	cmpl	$64, %r15d
	jge	.LBB2_4
.LBB2_5:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memcpy
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
.Lfunc_end2:
	.size	sha_update, .Lfunc_end2-sha_update
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function byte_reverse
	.type	byte_reverse,@function
byte_reverse:                           # @byte_reverse
	.cfi_startproc
# %bb.0:
	movslq	%esi, %rax
	shrq	$2, %rax
	xorl	%ecx, %ecx
	cmpl	%eax, %ecx
	jge	.LBB3_3
	.p2align	4, 0x90
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rcx,4), %edx
	movb	%dl, -4(%rsp)
	movzbl	1(%rdi,%rcx,4), %edx
	movb	%dl, -3(%rsp)
	movzbl	2(%rdi,%rcx,4), %edx
	movb	%dl, -2(%rsp)
	movzbl	3(%rdi,%rcx,4), %edx
	movb	%dl, -1(%rsp)
	movb	%dl, (%rdi,%rcx,4)
	movzbl	-2(%rsp), %edx
	movb	%dl, 1(%rdi,%rcx,4)
	movzbl	-3(%rsp), %edx
	movb	%dl, 2(%rdi,%rcx,4)
	movzbl	-4(%rsp), %edx
	movb	%dl, 3(%rdi,%rcx,4)
	addq	$1, %rcx
	cmpl	%eax, %ecx
	jl	.LBB3_2
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$200, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	xorl	%eax, %eax
	cmpl	$16, %eax
	jge	.LBB4_2
	.p2align	4, 0x90
.LBB4_15:                               # =>This Inner Loop Header: Depth=1
	movl	28(%rdi,%rax,4), %ecx
	movl	%ecx, -128(%rsp,%rax,4)
	addq	$1, %rax
	cmpl	$16, %eax
	jl	.LBB4_15
.LBB4_2:                                # %.preheader3
	movl	$16, %eax
	cmpl	$79, %eax
	jg	.LBB4_5
	.p2align	4, 0x90
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	movl	-140(%rsp,%rax,4), %ecx
	xorl	-160(%rsp,%rax,4), %ecx
	xorl	-184(%rsp,%rax,4), %ecx
	xorl	-192(%rsp,%rax,4), %ecx
	movl	%ecx, -128(%rsp,%rax,4)
	addq	$1, %rax
	cmpl	$79, %eax
	jle	.LBB4_4
.LBB4_5:
	movl	(%rdi), %r10d
	movl	4(%rdi), %eax
	movl	8(%rdi), %ebp
	movl	12(%rdi), %r8d
	movl	16(%rdi), %r9d
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB4_6:                                # =>This Inner Loop Header: Depth=1
	movl	%r8d, %ecx
	cmpl	$20, %r11d
	jge	.LBB4_7
# %bb.16:                               #   in Loop: Header=BB4_6 Depth=1
	movl	%eax, %edx
	andl	%ebp, %edx
	movl	%eax, %ebx
	roll	$30, %eax
	movl	%ebp, %r8d
	movl	%eax, %ebp
	movl	%r10d, %eax
	roll	$5, %r10d
	notl	%ebx
	andl	%ecx, %ebx
	orl	%edx, %ebx
	addl	%r10d, %ebx
	addl	%r9d, %ebx
	movl	-128(%rsp,%r11,4), %edx
	leal	(%rdx,%rbx), %r10d
	addl	$1518500249, %r10d      # imm = 0x5A827999
	addq	$1, %r11
	movl	%ecx, %r9d
	jmp	.LBB4_6
.LBB4_7:                                # %.preheader2
	movl	$20, %r8d
	.p2align	4, 0x90
.LBB4_8:                                # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	cmpl	$40, %r8d
	jge	.LBB4_9
# %bb.17:                               #   in Loop: Header=BB4_8 Depth=1
	movl	%eax, %ebx
	xorl	%ebp, %ebx
	roll	$30, %eax
	movl	%ebp, %ecx
	movl	%eax, %ebp
	movl	%r10d, %eax
	roll	$5, %r10d
	xorl	%edx, %ebx
	addl	%r10d, %ebx
	addl	%r9d, %ebx
	movl	-128(%rsp,%r8,4), %esi
	leal	(%rsi,%rbx), %r10d
	addl	$1859775393, %r10d      # imm = 0x6ED9EBA1
	addq	$1, %r8
	movl	%edx, %r9d
	jmp	.LBB4_8
.LBB4_9:                                # %.preheader1
	movl	$40, %r11d
	movl	$2400959708, %r8d       # imm = 0x8F1BBCDC
	.p2align	4, 0x90
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	movl	%edx, %ecx
	cmpl	$60, %r11d
	jge	.LBB4_11
# %bb.18:                               #   in Loop: Header=BB4_10 Depth=1
	movl	%ebp, %esi
	movl	%ebp, %edx
	orl	%ecx, %ebp
	andl	%eax, %ebp
	andl	%ecx, %esi
	orl	%ebp, %esi
	roll	$30, %eax
	movl	%eax, %ebp
	movl	%r10d, %eax
	roll	$5, %r10d
	addl	%r10d, %esi
	addl	%r9d, %esi
	addl	-128(%rsp,%r11,4), %esi
	leal	(%r8,%rsi), %r10d
	addq	$1, %r11
	movl	%ecx, %r9d
	jmp	.LBB4_10
.LBB4_11:                               # %.preheader
	movl	$60, %r11d
	.p2align	4, 0x90
.LBB4_12:                               # =>This Inner Loop Header: Depth=1
	movl	%ecx, %edx
	cmpl	$79, %r11d
	jg	.LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=1
	movl	%r10d, %esi
	roll	$5, %esi
	movl	%eax, %ebx
	roll	$30, %eax
	xorl	%ebp, %ebx
	movl	%ebp, %ecx
	movl	%eax, %ebp
	movl	%r10d, %eax
	xorl	%edx, %ebx
	addl	%esi, %ebx
	addl	%r9d, %ebx
	addl	-128(%rsp,%r11,4), %ebx
	leal	(%r8,%rbx), %r10d
	addl	$994510074, %r10d       # imm = 0x3B4704FA
	addq	$1, %r11
	movl	%edx, %r9d
	jmp	.LBB4_12
.LBB4_14:
	addl	%r10d, (%rdi)
	addl	%eax, 4(%rdi)
	addl	%ebp, 8(%rdi)
	addl	%edx, 12(%rdi)
	addl	%r9d, 16(%rdi)
	addq	$200, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	movq	%rdi, %rbx
	movl	20(%rdi), %ebp
	movl	24(%rdi), %r15d
	movl	%ebp, %ecx
	shrl	$3, %ecx
	andl	$63, %ecx
	leaq	28(%rdi), %r14
	leal	1(%rcx), %eax
	movb	$-128, 28(%rdi,%rcx)
	addq	%rax, %rdi
	addq	$28, %rdi
	cmpl	$57, %eax
	jl	.LBB5_2
# %bb.1:
	movl	$64, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	xorl	%esi, %esi
	callq	memset
	movq	%r14, %rdi
	movl	$64, %esi
	callq	byte_reverse
	movq	%rbx, %rdi
	callq	sha_transform
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%r14)
	movups	%xmm0, 16(%r14)
	movups	%xmm0, (%r14)
	movq	$0, 48(%r14)
	jmp	.LBB5_3
.LBB5_2:
	movl	$56, %ecx
	subl	%eax, %ecx
	movslq	%ecx, %rdx
	xorl	%esi, %esi
	callq	memset
.LBB5_3:
	movq	%r14, %rdi
	movl	$64, %esi
	callq	byte_reverse
	movl	%r15d, 84(%rbx)
	movl	%ebp, 88(%rbx)
	movq	%rbx, %rdi
	callq	sha_transform
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
	.size	sha_final, .Lfunc_end5-sha_final
	.cfi_endproc
                                        # -- End function
	.globl	sha_stream              # -- Begin function sha_stream
	.p2align	4, 0x90
	.type	sha_stream,@function
sha_stream:                             # @sha_stream
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$8192, %rsp             # imm = 0x2000
	.cfi_def_cfa_offset 8224
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	sha_init
	movq	%rsp, %rbx
	.p2align	4, 0x90
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movl	$1, %esi
	movl	$8192, %edx             # imm = 0x2000
	movq	%rbx, %rdi
	movq	%r14, %rcx
	callq	fread
	testl	%eax, %eax
	jle	.LBB6_3
# %bb.2:                                #   in Loop: Header=BB6_1 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	sha_update
	jmp	.LBB6_1
.LBB6_3:
	movq	%r15, %rdi
	callq	sha_final
	addq	$8192, %rsp             # imm = 0x2000
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
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
