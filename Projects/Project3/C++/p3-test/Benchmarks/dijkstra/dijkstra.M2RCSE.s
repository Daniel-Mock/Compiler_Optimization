	.text
	.file	"llvm-link"
	.globl	print_path              # -- Begin function print_path
	.p2align	4, 0x90
	.type	print_path,@function
print_path:                             # @print_path
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	movslq	%esi, %rax
	cmpl	$9999, 4(%rdi,%rax,8)   # imm = 0x270F
	je	.LBB0_2
# %bb.1:
	movl	4(%rdi,%rax,8), %esi
	callq	print_path
.LBB0_2:
	movl	$.L.str, %edi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf
	movq	stdout(%rip), %rdi
	callq	fflush
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	print_path, .Lfunc_end0-print_path
	.cfi_endproc
                                        # -- End function
	.globl	enqueue0                # -- Begin function enqueue0
	.p2align	4, 0x90
	.type	enqueue0,@function
enqueue0:                               # @enqueue0
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
	movl	%edx, %r14d
	movl	%esi, %ebp
	movl	%edi, %ebx
	movl	$24, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB1_7
# %bb.1:
	movq	qHead(%rip), %rcx
	movl	%ebx, (%rax)
	movl	%ebp, 4(%rax)
	movl	%r14d, 8(%rax)
	movq	$0, 16(%rax)
	testq	%rcx, %rcx
	je	.LBB1_2
	.p2align	4, 0x90
# %bb.3:
	cmpq	$0, 16(%rcx)
	je	.LBB1_5
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rcx), %rcx
	cmpq	$0, 16(%rcx)
	jne	.LBB1_4
.LBB1_5:
	movq	%rax, 16(%rcx)
	jmp	.LBB1_6
.LBB1_2:
	movq	%rax, qHead(%rip)
.LBB1_6:
	addl	$1, g_qCount(%rip)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_7:
	.cfi_def_cfa_offset 32
	movq	stderr(%rip), %rdi
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end1:
	.size	enqueue0, .Lfunc_end1-enqueue0
	.cfi_endproc
                                        # -- End function
	.globl	dequeue0                # -- Begin function dequeue0
	.p2align	4, 0x90
	.type	dequeue0,@function
dequeue0:                               # @dequeue0
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	movq	qHead(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB2_2
# %bb.1:
	movq	qHead(%rip), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, (%rax)
	movq	qHead(%rip), %rax
	movl	4(%rax), %eax
	movl	%eax, (%rsi)
	movq	qHead(%rip), %rax
	movl	8(%rax), %eax
	movl	%eax, (%rdx)
	movq	qHead(%rip), %rax
	movq	16(%rax), %rax
	movq	%rax, qHead(%rip)
	callq	free
	addl	$-1, g_qCount(%rip)
.LBB2_2:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	dequeue0, .Lfunc_end2-dequeue0
	.cfi_endproc
                                        # -- End function
	.globl	qcount                  # -- Begin function qcount
	.p2align	4, 0x90
	.type	qcount,@function
qcount:                                 # @qcount
	.cfi_startproc
# %bb.0:
	movl	g_qCount(%rip), %eax
	retq
.Lfunc_end3:
	.size	qcount, .Lfunc_end3-qcount
	.cfi_endproc
                                        # -- End function
	.globl	dijkstra                # -- Begin function dijkstra
	.p2align	4, 0x90
	.type	dijkstra,@function
dijkstra:                               # @dijkstra
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%esi, %ebx
	movl	$0, ch(%rip)
	cmpl	$99, ch(%rip)
	jg	.LBB4_3
	.p2align	4, 0x90
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movslq	ch(%rip), %rax
	movl	$9999, rgnNodes(,%rax,8) # imm = 0x270F
	movslq	ch(%rip), %rax
	movl	$9999, rgnNodes+4(,%rax,8) # imm = 0x270F
	addl	$1, ch(%rip)
	cmpl	$99, ch(%rip)
	jle	.LBB4_2
.LBB4_3:
	cmpl	%ebx, %edi
	jne	.LBB4_5
# %bb.4:
	movl	$.L.str.2, %edi
	jmp	.LBB4_15
.LBB4_5:
	movslq	%edi, %rax
	movabsq	$42945377992704, %rcx   # imm = 0x270F00000000
	movq	%rcx, rgnNodes(,%rax,8)
	xorl	%esi, %esi
	movl	$9999, %edx             # imm = 0x270F
	callq	enqueue0
	.p2align	4, 0x90
.LBB4_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
	callq	qcount
	testl	%eax, %eax
	jle	.LBB4_14
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=1
	movl	$iNode, %edi
	movl	$iDist, %esi
	movl	$iPrev, %edx
	callq	dequeue0
	movl	$0, i(%rip)
	cmpl	$99, i(%rip)
	jle	.LBB4_9
	jmp	.LBB4_6
	.p2align	4, 0x90
.LBB4_12:                               #   in Loop: Header=BB4_9 Depth=2
	movl	iDist(%rip), %eax
	addl	iCost(%rip), %eax
	movslq	i(%rip), %rcx
	movl	%eax, rgnNodes(,%rcx,8)
	movl	iNode(%rip), %eax
	movslq	i(%rip), %rcx
	movl	%eax, rgnNodes+4(,%rcx,8)
	movl	i(%rip), %edi
	movl	iDist(%rip), %esi
	addl	iCost(%rip), %esi
	movl	iNode(%rip), %edx
	callq	enqueue0
.LBB4_13:                               #   in Loop: Header=BB4_9 Depth=2
	addl	$1, i(%rip)
	cmpl	$99, i(%rip)
	jg	.LBB4_6
.LBB4_9:                                #   Parent Loop BB4_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	iNode(%rip), %rax
	imulq	$400, %rax, %rax        # imm = 0x190
	movslq	i(%rip), %rcx
	movl	AdjMatrix(%rax,%rcx,4), %eax
	movl	%eax, iCost(%rip)
	cmpl	$9999, %eax             # imm = 0x270F
	je	.LBB4_13
# %bb.10:                               #   in Loop: Header=BB4_9 Depth=2
	movslq	i(%rip), %rax
	cmpl	$9999, rgnNodes(,%rax,8) # imm = 0x270F
	je	.LBB4_12
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=2
	movslq	i(%rip), %rax
	movl	iCost(%rip), %ecx
	addl	iDist(%rip), %ecx
	cmpl	%ecx, rgnNodes(,%rax,8)
	jg	.LBB4_12
	jmp	.LBB4_13
.LBB4_14:
	movslq	%ebx, %rax
	movl	rgnNodes(,%rax,8), %esi
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$rgnNodes, %edi
	movl	%ebx, %esi
	callq	print_path
	movl	$.L.str.5, %edi
.LBB4_15:
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	dijkstra, .Lfunc_end4-dijkstra
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
	movq	%rsi, %rbx
	cmpl	$1, %edi
	jg	.LBB5_2
# %bb.1:
	movq	stderr(%rip), %rdi
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB5_2:
	movq	8(%rbx), %rdi
	movl	$.L.str.8, %esi
	callq	fopen
	movq	%rax, %r15
	movl	$AdjMatrix, %ebx
	leaq	12(%rsp), %r14
	xorl	%r12d, %r12d
	cmpl	$99, %r12d
	jle	.LBB5_4
	jmp	.LBB5_8
	.p2align	4, 0x90
.LBB5_7:                                #   in Loop: Header=BB5_4 Depth=1
	addl	$1, %r12d
	addq	$400, %rbx              # imm = 0x190
	cmpl	$99, %r12d
	jg	.LBB5_8
.LBB5_4:                                # %.preheader1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
	xorl	%ebp, %ebp
	cmpl	$99, %ebp
	jg	.LBB5_7
	.p2align	4, 0x90
.LBB5_6:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.9, %esi
	movq	%r15, %rdi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	fscanf
	movl	12(%rsp), %eax
	movl	%eax, (%rbx,%rbp,4)
	addq	$1, %rbp
	cmpl	$99, %ebp
	jle	.LBB5_6
	jmp	.LBB5_7
.LBB5_8:                                # %.preheader
	movl	$50, %eax
	xorl	%r14d, %r14d
	cmpl	$99, %r14d
	jg	.LBB5_11
	.p2align	4, 0x90
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	movslq	%eax, %rbp
	imulq	$1374389535, %rbp, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	imull	$100, %eax, %ebx
	movl	%ebp, %esi
	subl	%ebx, %esi
	movl	%r14d, %edi
	callq	dijkstra
	addl	$1, %r14d
	negl	%ebx
	leal	(%rbx,%rbp), %eax
	addl	$1, %eax
	cmpl	$99, %r14d
	jle	.LBB5_10
.LBB5_11:
	xorl	%edi, %edi
	callq	exit
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.type	qHead,@object           # @qHead
	.bss
	.globl	qHead
	.p2align	3
qHead:
	.quad	0
	.size	qHead, 8

	.type	g_qCount,@object        # @g_qCount
	.globl	g_qCount
	.p2align	2
g_qCount:
	.long	0                       # 0x0
	.size	g_qCount, 4

	.type	ch,@object              # @ch
	.comm	ch,4,4
	.type	rgnNodes,@object        # @rgnNodes
	.comm	rgnNodes,800,16
	.type	iNode,@object           # @iNode
	.comm	iNode,4,4
	.type	iDist,@object           # @iDist
	.comm	iDist,4,4
	.type	iPrev,@object           # @iPrev
	.comm	iPrev,4,4
	.type	i,@object               # @i
	.comm	i,4,4
	.type	AdjMatrix,@object       # @AdjMatrix
	.comm	AdjMatrix,40000,16
	.type	iCost,@object           # @iCost
	.comm	iCost,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %d"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Out of memory.\n"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Shortest path is 0 in cost. Just stay where you are.\n"
	.size	.L.str.2, 54

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Shortest path is %d in cost. "
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Path is: "
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\n"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Usage: dijkstra <filename>\n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Only supports matrix size is #define'd.\n"
	.size	.L.str.7, 41

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"r"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%d"
	.size	.L.str.9, 3


	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
