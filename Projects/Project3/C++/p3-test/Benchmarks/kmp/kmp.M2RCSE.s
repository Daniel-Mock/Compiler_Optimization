	.text
	.file	"llvm-link"
	.globl	preprocpat              # -- Begin function preprocpat
	.p2align	4, 0x90
	.type	preprocpat,@function
preprocpat:                             # @preprocpat
	.cfi_startproc
# %bb.0:
	movl	$-1, (%rsi)
	movl	$-1, %eax
	xorl	%r9d, %r9d
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	%r9d, %rcx
	movl	%edx, (%rsi,%rcx,4)
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	%r9d, %rcx
	cmpb	$0, (%rdi,%rcx)
	je	.LBB0_8
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movslq	%r9d, %rdx
	cmpl	$-1, %eax
	cltq
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	(%rdi,%rdx), %r8d
	movsbl	(%rdi,%rax), %ecx
	cmpl	%ecx, %r8d
	jne	.LBB0_6
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movsbl	1(%rdi,%rax), %r8d
	addq	$1, %rax
	movsbl	1(%rdi,%rdx), %ecx
	addq	$1, %rdx
	movl	%edx, %r9d
	movl	%eax, %edx
	cmpl	%ecx, %r8d
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	%eax, %rcx
	movl	(%rsi,%rcx,4), %edx
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movl	(%rsi,%rax,4), %eax
	jmp	.LBB0_7
.LBB0_8:
	retq
.Lfunc_end0:
	.size	preprocpat, .Lfunc_end0-preprocpat
	.cfi_endproc
                                        # -- End function
	.globl	search                  # -- Begin function search
	.p2align	4, 0x90
	.type	search,@function
search:                                 # @search
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
	movq	%rsi, %rbx
	cmpb	$0, (%rdi)
	je	.LBB1_8
# %bb.1:
	movq	%rdi, %r14
	movq	next(%rip), %rsi
	callq	preprocpat
	xorl	%eax, %eax
	cmpb	$0, (%rbx)
	jne	.LBB1_4
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=1
	addq	$1, %rbx
	leaq	1(%rcx), %rax
	cmpb	$0, 1(%r14,%rcx)
	je	.LBB1_7
# %bb.2:                                #   in Loop: Header=BB1_4 Depth=1
	cmpb	$0, (%rbx)
	je	.LBB1_3
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movslq	%eax, %rcx
	cmpl	$-1, %eax
	je	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	movsbl	(%r14,%rcx), %eax
	movsbl	(%rbx), %edx
	cmpl	%edx, %eax
	je	.LBB1_6
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	movq	next(%rip), %rax
	movl	(%rax,%rcx,4), %eax
	cmpb	$0, (%rbx)
	jne	.LBB1_4
.LBB1_3:
	xorl	%ebx, %ebx
	jmp	.LBB1_8
.LBB1_7:
	cltq
	subq	%rax, %rbx
.LBB1_8:
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	search, .Lfunc_end1-search
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	cmpl	$1, %edi
	jle	.LBB2_25
# %bb.1:
	movq	8(%rbx), %rdi
	movl	$.L.str.1, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_2
# %bb.3:
	movq	8(%rbx), %rdi
	movl	$.L.str.3, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_4
# %bb.5:
	movq	8(%rbx), %rdi
	movl	$.L.str.5, %esi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB2_26
# %bb.6:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$32785, %r12d           # imm = 0x8011
	movl	$4, %r13d
	jmp	.LBB2_7
.LBB2_2:
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$524305, %r12d          # imm = 0x80011
	movl	$6, %r13d
	jmp	.LBB2_7
.LBB2_4:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$98321, %r12d           # imm = 0x18011
	movl	$5, %r13d
.LBB2_7:
	movl	%r12d, %r15d
	movq	%r15, %rdi
	callq	malloc
	movq	%rax, buffer(%rip)
	testq	%rax, %rax
	je	.LBB2_8
# %bb.10:
	movl	$63009, %edi            # imm = 0xF621
	movl	$12584, %esi            # imm = 0x3128
	movl	$33363, %edx            # imm = 0x8253
	callq	init_mill
	movq	%rax, %rbx
	leal	1(%r13), %edi
	callq	malloc
	movq	%rax, pat(%rip)
	movl	%r13d, %eax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	leaq	(,%rax,4), %rdi
	callq	malloc
	movq	%rax, next(%rip)
	cmpq	$0, pat(%rip)
	movq	stderr(%rip), %rdi
	je	.LBB2_9
# %bb.11:
	testq	%rax, %rax
	je	.LBB2_9
# %bb.12:
	xorl	%ebp, %ebp
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	callq	fprintf
	movabsq	$2635249153387078803, %r14 # imm = 0x2492492492492493
	cmpl	%r12d, %ebp
	jge	.LBB2_15
	.p2align	4, 0x90
.LBB2_14:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	rndnum
	movq	%rax, %rcx
	mulq	%r14
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	leal	(,%rax,8), %edx
	subl	%edx, %eax
	addl	%ecx, %eax
	addb	$97, %al
	movq	buffer(%rip), %rcx
	movb	%al, (%rcx,%rbp)
	addq	$1, %rbp
	cmpl	%r12d, %ebp
	jl	.LBB2_14
.LBB2_15:
	movq	buffer(%rip), %rax
	movb	$0, -1(%r15,%rax)
	movq	%r12, 24(%rsp)          # 8-byte Spill
	leal	(%r12,%r12,2), %eax
	movl	%eax, 8(%rsp)           # 4-byte Spill
	xorl	%r15d, %r15d
	cmpl	$22, %r15d
	jle	.LBB2_17
	jmp	.LBB2_24
	.p2align	4, 0x90
.LBB2_23:                               #   in Loop: Header=BB2_17 Depth=1
	movl	$.L.str.11, %edi
	movl	%ebp, %esi
	xorl	%eax, %eax
	callq	printf
	movq	buffer(%rip), %rcx
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	(%rax,%rax,2), %eax
	addl	%r12d, %r15d
	leal	(%r15,%r15,2), %edx
	negl	%edx
	movq	32(%rsp), %rsi          # 8-byte Reload
	leal	(%rsi,%rdx), %esi
	addl	$3, %esi
	cltd
	idivl	%esi
	cltq
	movb	$97, -1(%rax,%rcx)
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r15d
	cmpl	$22, %r15d
	jg	.LBB2_24
.LBB2_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_19 Depth 2
                                        #     Child Loop BB2_21 Depth 2
	leal	1(%r15), %esi
	movl	$.L.str.9, %edi
	movl	%esi, 12(%rsp)          # 4-byte Spill
	xorl	%eax, %eax
	callq	printf
	xorl	%ebp, %ebp
	cmpl	%r13d, %ebp
	jge	.LBB2_20
	.p2align	4, 0x90
.LBB2_19:                               #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	callq	rndnum
	movq	%rax, %rcx
	mulq	%r14
	movl	%ecx, %eax
	subl	%edx, %eax
	shrl	%eax
	addl	%edx, %eax
	shrl	$2, %eax
	leal	(,%rax,8), %edx
	subl	%edx, %eax
	addl	%ecx, %eax
	addb	$97, %al
	movq	pat(%rip), %rcx
	movb	%al, (%rcx,%rbp)
	movq	pat(%rip), %rax
	movsbl	(%rax,%rbp), %esi
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	addq	$1, %rbp
	cmpl	%r13d, %ebp
	jl	.LBB2_19
.LBB2_20:                               #   in Loop: Header=BB2_17 Depth=1
	movq	pat(%rip), %rax
	movq	16(%rsp), %rcx          # 8-byte Reload
	movb	$0, (%rax,%rcx)
	movq	buffer(%rip), %rcx
	movslq	%r15d, %rax
	movq	%r15, %rdx
	imulq	$1431655766, %rax, %r15 # imm = 0x55555556
	movq	%r15, %r12
	shrq	$63, %r12
	shrq	$32, %r15
	leal	(%r15,%r12), %eax
	leal	(%rax,%rax,2), %eax
	negl	%eax
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	leal	(%rdx,%rax), %esi
	addl	$3, %esi
	movl	8(%rsp), %eax           # 4-byte Reload
	cltd
	idivl	%esi
	cltq
	movb	$0, -1(%rcx,%rax)
	addq	$-1, %rax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	addl	%eax, %ecx
	sarl	$2, %ecx
	movslq	%ecx, %rax
	addq	buffer(%rip), %rax
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB2_21:                               #   Parent Loop BB2_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	pat(%rip), %rdi
	movq	%rax, %rsi
	callq	search
	testq	%rax, %rax
	je	.LBB2_23
# %bb.22:                               #   in Loop: Header=BB2_21 Depth=2
	addq	$1, %rax
	addl	$1, %ebp
	jmp	.LBB2_21
.LBB2_24:
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%rbx, %rdi
	callq	nuke_mill
	xorl	%eax, %eax
	addq	$40, %rsp
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
.LBB2_25:
	.cfi_def_cfa_offset 96
	movq	(%rbx), %rsi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB2_8:
	movq	stderr(%rip), %rdi
.LBB2_9:
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB2_26:
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$-1, %edi
	callq	exit
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.globl	init_mill               # -- Begin function init_mill
	.p2align	4, 0x90
	.type	init_mill,@function
init_mill:                              # @init_mill
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$24, %edi
	callq	malloc
	movq	%rbx, (%rax)
	movq	%r15, 8(%rax)
	movq	%r14, 16(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	init_mill, .Lfunc_end3-init_mill
	.cfi_endproc
                                        # -- End function
	.globl	nuke_mill               # -- Begin function nuke_mill
	.p2align	4, 0x90
	.type	nuke_mill,@function
nuke_mill:                              # @nuke_mill
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	free
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	nuke_mill, .Lfunc_end4-nuke_mill
	.cfi_endproc
                                        # -- End function
	.globl	rndnum                  # -- Begin function rndnum
	.p2align	4, 0x90
	.type	rndnum,@function
rndnum:                                 # @rndnum
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	xorl	%r8d, %r8d
	cmpl	$31, %r8d
	jg	.LBB5_3
	.p2align	4, 0x90
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdi), %r10
	movq	8(%rdi), %r9
	movq	%r10, %rcx
	shrq	$31, %rcx
	movq	%r10, %rsi
	shrq	$6, %rsi
	xorl	%esi, %ecx
	movl	%r10d, %esi
	shrl	$4, %esi
	movl	%r10d, %edx
	shrl	$2, %edx
	xorl	%esi, %edx
	xorl	%ecx, %edx
	xorl	%r10d, %edx
	andl	$1, %edx
	shlq	$31, %rdx
	shrq	%r10
	orq	%rdx, %r10
	movq	%r10, (%rdi)
	movl	%r9d, %ecx
	shrl	$2, %ecx
	movl	%r9d, %edx
	shrl	$30, %edx
	xorl	%ecx, %edx
	andl	$1, %edx
	shlq	$30, %rdx
	shrq	%r9
	orq	%rdx, %r9
	movq	%r9, 8(%rdi)
	movq	16(%rdi), %rcx
	movq	%rcx, %rdx
	shrq	%rdx
	shrl	$28, %ecx
	xorl	%edx, %ecx
	andl	$1, %ecx
	shlq	$28, %rcx
	orq	%rdx, %rcx
	movq	%rcx, 16(%rdi)
	andl	%r10d, %r9d
	notl	%r10d
	andl	%r10d, %ecx
	orl	%r9d, %ecx
	andl	$1, %ecx
	leaq	(%rcx,%rax,2), %rax
	addl	$1, %r8d
	cmpl	$31, %r8d
	jle	.LBB5_2
.LBB5_3:
	retq
.Lfunc_end5:
	.size	rndnum, .Lfunc_end5-rndnum
	.cfi_endproc
                                        # -- End function
	.globl	checkpoint_mill         # -- Begin function checkpoint_mill
	.p2align	4, 0x90
	.type	checkpoint_mill,@function
checkpoint_mill:                        # @checkpoint_mill
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	(%rdi), %rax
	movq	8(%rdi), %rsi
	movq	16(%rdi), %rdx
	movq	%rax, %rdi
	callq	init_mill
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	checkpoint_mill, .Lfunc_end6-checkpoint_mill
	.cfi_endproc
                                        # -- End function
	.globl	reset_mill              # -- Begin function reset_mill
	.p2align	4, 0x90
	.type	reset_mill,@function
reset_mill:                             # @reset_mill
	.cfi_startproc
# %bb.0:
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rdi)
	retq
.Lfunc_end7:
	.size	reset_mill, .Lfunc_end7-reset_mill
	.cfi_endproc
                                        # -- End function
	.type	next,@object            # @next
	.comm	next,8,8
	.type	buffer,@object          # @buffer
	.comm	buffer,8,8
	.type	pat,@object             # @pat
	.comm	pat,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage:\n\t%s <ref|train|test>\n"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ref"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"KMP with reference input set\n"
	.size	.L.str.2, 30

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"train"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"KMP with test input set\n"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"test"
	.size	.L.str.5, 5

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Invalid data set use ref or train or test\n"
	.size	.L.str.6, 43

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Not enough memory\n"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Benchmark begin...\n"
	.size	.L.str.8, 20

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%2d Pattern:"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%c"
	.size	.L.str.10, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	": found %d times\n"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Benchmark finish...\n"
	.size	.L.str.12, 21


	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
