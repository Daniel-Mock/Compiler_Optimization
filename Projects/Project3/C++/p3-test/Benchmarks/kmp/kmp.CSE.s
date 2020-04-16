	.text
	.file	"llvm-link"
	.globl	preprocpat              # -- Begin function preprocpat
	.p2align	4, 0x90
	.type	preprocpat,@function
preprocpat:                             # @preprocpat
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movl	$0, -20(%rsp)
	movl	$-1, (%rsi)
	movl	$-1, -24(%rsp)
	cmpl	$-1, -24(%rsp)
	jne	.LBB0_2
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_5:
	movl	-24(%rsp), %eax
.LBB0_6:
	movq	-16(%rsp), %rcx
	movslq	-20(%rsp), %rdx
	movl	%eax, (%rcx,%rdx,4)
.LBB0_8:
	movq	-8(%rsp), %rax
	movslq	-20(%rsp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	.LBB0_9
# %bb.1:
	cmpl	$-1, -24(%rsp)
	je	.LBB0_3
.LBB0_2:
	movq	-8(%rsp), %rax
	movslq	-20(%rsp), %rcx
	movsbl	(%rax,%rcx), %ecx
	movslq	-24(%rsp), %rdx
	movsbl	(%rax,%rdx), %eax
	cmpl	%eax, %ecx
	jne	.LBB0_7
.LBB0_3:
	movslq	-20(%rsp), %rax
	leal	1(%rax), %ecx
	movl	%ecx, -20(%rsp)
	movslq	-24(%rsp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -24(%rsp)
	movq	-8(%rsp), %rdx
	movsbl	1(%rcx,%rdx), %ecx
	movsbl	1(%rax,%rdx), %eax
	cmpl	%eax, %ecx
	jne	.LBB0_5
# %bb.4:
	movq	-16(%rsp), %rax
	movslq	-24(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_7:
	movq	-16(%rsp), %rax
	movslq	-24(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -24(%rsp)
	jmp	.LBB0_8
.LBB0_9:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movq	%rsi, 8(%rsp)
	cmpb	$0, (%rdi)
	je	.LBB1_7
# %bb.1:
	movq	24(%rsp), %rdi
	movq	next(%rip), %rsi
	callq	preprocpat
	movl	$0, 4(%rsp)
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	addq	$1, 8(%rsp)
	movslq	4(%rsp), %rax
	leal	1(%rax), %ecx
	movl	%ecx, 4(%rsp)
	movq	24(%rsp), %rcx
	cmpb	$0, 1(%rax,%rcx)
	je	.LBB1_9
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	cmpb	$0, (%rax)
	je	.LBB1_8
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	cmpl	$-1, 4(%rsp)
	je	.LBB1_2
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	movq	24(%rsp), %rax
	movslq	4(%rsp), %rcx
	movsbl	(%rax,%rcx), %eax
	movq	8(%rsp), %rcx
	movsbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB1_2
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	movq	next(%rip), %rax
	movslq	4(%rsp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, 4(%rsp)
	jmp	.LBB1_3
.LBB1_7:
	movq	8(%rsp), %rax
	jmp	.LBB1_10
.LBB1_8:
	movq	$0, 32(%rsp)
	jmp	.LBB1_11
.LBB1_9:
	movq	8(%rsp), %rax
	movslq	4(%rsp), %rcx
	subq	%rcx, %rax
.LBB1_10:
	movq	%rax, 32(%rsp)
.LBB1_11:
	movl	$1, 20(%rsp)
	movq	32(%rsp), %rax
	addq	$40, %rsp
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -16
	movl	$0, 60(%rsp)
	movl	%edi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	cmpl	$1, %edi
	jle	.LBB2_27
# %bb.1:
	movq	8(%rsi), %rdi
	movl	$.L.str.1, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_2
# %bb.3:
	movq	48(%rsp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.3, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB2_4
# %bb.9:
	movq	48(%rsp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.5, %esi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB2_11
# %bb.10:
	movl	$32785, 12(%rsp)        # imm = 0x8011
	movl	$4, 20(%rsp)
	jmp	.LBB2_5
.LBB2_2:
	movl	$524305, 12(%rsp)       # imm = 0x80011
	movl	$6, 20(%rsp)
	movl	$.L.str.2, %edi
	jmp	.LBB2_6
.LBB2_4:
	movl	$98321, 12(%rsp)        # imm = 0x18011
	movl	$5, 20(%rsp)
.LBB2_5:
	movl	$.L.str.4, %edi
.LBB2_6:
	xorl	%eax, %eax
	callq	printf
	movslq	12(%rsp), %rdi
	callq	malloc
	movq	%rax, buffer(%rip)
	testq	%rax, %rax
	je	.LBB2_7
# %bb.12:
	movl	$63009, %edi            # imm = 0xF621
	movl	$12584, %esi            # imm = 0x3128
	movl	$33363, %edx            # imm = 0x8253
	callq	init_mill
	movq	%rax, 40(%rsp)
	movslq	20(%rsp), %rdi
	addq	$1, %rdi
	callq	malloc
	movq	%rax, pat(%rip)
	movslq	20(%rsp), %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, next(%rip)
	cmpq	$0, pat(%rip)
	movq	stderr(%rip), %rdi
	je	.LBB2_8
# %bb.13:
	testq	%rax, %rax
	je	.LBB2_8
# %bb.14:
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$0, 16(%rsp)
	movabsq	$2635249153387078803, %rbx # imm = 0x2492492492492493
	.p2align	4, 0x90
.LBB2_15:                               # =>This Inner Loop Header: Depth=1
	movl	16(%rsp), %eax
	cmpl	12(%rsp), %eax
	jge	.LBB2_17
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=1
	movq	40(%rsp), %rdi
	callq	rndnum
	movq	%rax, %rcx
	mulq	%rbx
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
	movslq	16(%rsp), %rdx
	movb	%al, (%rcx,%rdx)
	addl	$1, 16(%rsp)
	jmp	.LBB2_15
.LBB2_17:
	movq	buffer(%rip), %rax
	movslq	12(%rsp), %rcx
	movb	$0, -1(%rcx,%rax)
	movl	$0, 24(%rsp)
	cmpl	$22, 24(%rsp)
	jle	.LBB2_19
	jmp	.LBB2_26
	.p2align	4, 0x90
.LBB2_25:                               #   in Loop: Header=BB2_19 Depth=1
	movl	28(%rsp), %esi
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf
	movq	buffer(%rip), %rcx
	movl	12(%rsp), %eax
	leal	(%rax,%rax,2), %eax
	movslq	24(%rsp), %rsi
	imulq	$1431655766, %rsi, %rdx # imm = 0x55555556
	movq	%rdx, %rdi
	shrq	$63, %rdi
	shrq	$32, %rdx
	addl	%edi, %edx
	leal	(%rdx,%rdx,2), %edx
	subl	%edx, %esi
	addl	$3, %esi
	cltd
	idivl	%esi
	cltq
	movb	$97, -1(%rax,%rcx)
	addl	$1, 24(%rsp)
	cmpl	$22, 24(%rsp)
	jg	.LBB2_26
.LBB2_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_20 Depth 2
                                        #     Child Loop BB2_23 Depth 2
	movl	24(%rsp), %esi
	addl	$1, %esi
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 16(%rsp)
	.p2align	4, 0x90
.LBB2_20:                               #   Parent Loop BB2_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	16(%rsp), %eax
	cmpl	20(%rsp), %eax
	jge	.LBB2_22
# %bb.21:                               #   in Loop: Header=BB2_20 Depth=2
	movq	40(%rsp), %rdi
	callq	rndnum
	movq	%rax, %rcx
	mulq	%rbx
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
	movslq	16(%rsp), %rdx
	movb	%al, (%rcx,%rdx)
	movq	pat(%rip), %rax
	movslq	16(%rsp), %rcx
	movsbl	(%rax,%rcx), %esi
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	addl	$1, 16(%rsp)
	jmp	.LBB2_20
	.p2align	4, 0x90
.LBB2_22:                               #   in Loop: Header=BB2_19 Depth=1
	movq	pat(%rip), %rax
	movslq	20(%rsp), %rcx
	movb	$0, (%rax,%rcx)
	movq	buffer(%rip), %rcx
	movl	12(%rsp), %eax
	leal	(%rax,%rax,2), %eax
	movslq	24(%rsp), %rsi
	imulq	$1431655766, %rsi, %rdx # imm = 0x55555556
	movq	%rdx, %rdi
	shrq	$63, %rdi
	shrq	$32, %rdx
	addl	%edi, %edx
	leal	(%rdx,%rdx,2), %edx
	subl	%edx, %esi
	addl	$3, %esi
	cltd
	idivl	%esi
	cltq
	movb	$0, -1(%rax,%rcx)
	movl	$0, 28(%rsp)
	movl	12(%rsp), %eax
	leal	(%rax,%rax,2), %eax
	movslq	24(%rsp), %rcx
	imulq	$1431655766, %rcx, %rdx # imm = 0x55555556
	movq	%rdx, %rsi
	shrq	$63, %rsi
	shrq	$32, %rdx
	addl	%esi, %edx
	leal	(%rdx,%rdx,2), %edx
	subl	%edx, %ecx
	addl	$3, %ecx
	cltd
	idivl	%ecx
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, %ecx
	addl	$-1, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	leal	(%rax,%rcx), %eax
	addl	$-1, %eax
	sarl	$2, %eax
	cltq
	addq	buffer(%rip), %rax
	movq	%rax, 32(%rsp)
	.p2align	4, 0x90
.LBB2_23:                               #   Parent Loop BB2_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	pat(%rip), %rdi
	movq	32(%rsp), %rsi
	callq	search
	movq	%rax, 32(%rsp)
	testq	%rax, %rax
	je	.LBB2_25
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=2
	addq	$1, 32(%rsp)
	addl	$1, 28(%rsp)
	jmp	.LBB2_23
.LBB2_26:
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	callq	printf
	movq	40(%rsp), %rdi
	callq	nuke_mill
	xorl	%eax, %eax
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB2_27:
	.cfi_def_cfa_offset 80
	movq	(%rsi), %rsi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB2_7:
	movq	stderr(%rip), %rdi
.LBB2_8:
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB2_11:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movl	$24, %edi
	callq	malloc
	movq	%rax, 8(%rsp)
	movq	32(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	24(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	%rax, 16(%rcx)
	movq	8(%rsp), %rax
	addq	$40, %rsp
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
	movq	%rdi, (%rsp)
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
	movq	%rdi, -24(%rsp)
	movq	$0, -16(%rsp)
	movl	$0, -28(%rsp)
	cmpl	$31, -28(%rsp)
	jg	.LBB5_3
	.p2align	4, 0x90
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdx
	shrq	$31, %rdx
	movq	%rcx, %rsi
	shrq	$6, %rsi
	xorl	%esi, %edx
	movl	%ecx, %esi
	shrl	$4, %esi
	movl	%ecx, %edi
	shrl	$2, %edi
	xorl	%esi, %edi
	xorl	%edx, %edi
	xorl	%ecx, %edi
	andl	$1, %edi
	shlq	$31, %rdi
	shrq	%rcx
	orq	%rdi, %rcx
	movq	%rcx, (%rax)
	movq	-24(%rsp), %rax
	movq	8(%rax), %rcx
	movl	%ecx, %edx
	shrl	$2, %edx
	movl	%ecx, %esi
	shrl	$30, %esi
	xorl	%edx, %esi
	andl	$1, %esi
	shlq	$30, %rsi
	shrq	%rcx
	orq	%rsi, %rcx
	movq	%rcx, 8(%rax)
	movq	-24(%rsp), %rax
	movq	16(%rax), %rcx
	movq	%rcx, %rdx
	shrq	%rdx
	shrl	$28, %ecx
	xorl	%edx, %ecx
	andl	$1, %ecx
	shlq	$28, %rcx
	orq	%rdx, %rcx
	movq	%rcx, 16(%rax)
	movq	-24(%rsp), %rax
	movl	(%rax), %ecx
	movl	8(%rax), %edx
	andl	%ecx, %edx
	notl	%ecx
	andl	16(%rax), %ecx
	orl	%edx, %ecx
	andl	$1, %ecx
	movq	%rcx, -8(%rsp)
	movq	-16(%rsp), %rax
	leaq	(%rcx,%rax,2), %rax
	movq	%rax, -16(%rsp)
	addl	$1, -28(%rsp)
	cmpl	$31, -28(%rsp)
	jle	.LBB5_2
.LBB5_3:
	movq	-16(%rsp), %rax
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
	movq	%rdi, (%rsp)
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
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	-16(%rsp), %rax
	movq	8(%rax), %rax
	movq	-8(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rsp), %rax
	movq	16(%rax), %rax
	movq	-8(%rsp), %rcx
	movq	%rax, 16(%rcx)
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
