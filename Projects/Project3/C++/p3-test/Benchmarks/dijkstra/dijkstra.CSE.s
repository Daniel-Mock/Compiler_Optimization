	.text
	.file	"llvm-link"
	.globl	print_path              # -- Begin function print_path
	.p2align	4, 0x90
	.type	print_path,@function
print_path:                             # @print_path
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movslq	%esi, %rax
	cmpl	$9999, 4(%rdi,%rax,8)   # imm = 0x270F
	je	.LBB0_2
# %bb.1:
	movq	16(%rsp), %rdi
	movslq	12(%rsp), %rax
	movl	4(%rdi,%rax,8), %esi
	callq	print_path
.LBB0_2:
	movl	12(%rsp), %esi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movq	stdout(%rip), %rdi
	callq	fflush
	addq	$24, %rsp
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	%edi, 36(%rsp)
	movl	%esi, 32(%rsp)
	movl	%edx, 28(%rsp)
	movl	$24, %edi
	callq	malloc
	movq	%rax, 8(%rsp)
	movq	qHead(%rip), %rcx
	movq	%rcx, 16(%rsp)
	testq	%rax, %rax
	je	.LBB1_7
# %bb.1:
	movl	36(%rsp), %eax
	movq	8(%rsp), %rcx
	movl	%eax, (%rcx)
	movl	32(%rsp), %eax
	movq	8(%rsp), %rcx
	movl	%eax, 4(%rcx)
	movl	28(%rsp), %eax
	movq	8(%rsp), %rcx
	movl	%eax, 8(%rcx)
	movq	8(%rsp), %rax
	movq	$0, 16(%rax)
	cmpq	$0, 16(%rsp)
	je	.LBB1_2
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	movq	16(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB1_3
.LBB1_5:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rax, 16(%rcx)
	jmp	.LBB1_6
.LBB1_2:
	movq	8(%rsp), %rax
	movq	%rax, qHead(%rip)
.LBB1_6:
	addl	$1, g_qCount(%rip)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB1_7:
	.cfi_def_cfa_offset 48
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	qHead(%rip), %rax
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	je	.LBB2_2
# %bb.1:
	movq	qHead(%rip), %rax
	movl	(%rax), %eax
	movq	32(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	qHead(%rip), %rax
	movl	4(%rax), %eax
	movq	24(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	qHead(%rip), %rax
	movl	8(%rax), %eax
	movq	16(%rsp), %rcx
	movl	%eax, (%rcx)
	movq	qHead(%rip), %rax
	movq	16(%rax), %rax
	movq	%rax, qHead(%rip)
	movq	8(%rsp), %rdi
	callq	free
	addl	$-1, g_qCount(%rip)
.LBB2_2:
	addq	$40, %rsp
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	movl	%esi, (%rsp)
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
	movl	4(%rsp), %eax
	cmpl	(%rsp), %eax
	jne	.LBB4_5
# %bb.4:
	movl	$.L.str.2, %edi
	jmp	.LBB4_15
.LBB4_5:
	movslq	4(%rsp), %rdi
	movl	$0, rgnNodes(,%rdi,8)
	movl	$9999, rgnNodes+4(,%rdi,8) # imm = 0x270F
                                        # kill: def $edi killed $edi killed $rdi
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
	movslq	(%rsp), %rax
	movl	rgnNodes(,%rax,8), %esi
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	movl	(%rsp), %esi
	movl	$rgnNodes, %edi
	callq	print_path
	movl	$.L.str.5, %edi
.LBB4_15:
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	popq	%rcx
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -16
	movl	$0, 44(%rsp)
	movl	%edi, 40(%rsp)
	movq	%rsi, 32(%rsp)
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
	movq	32(%rsp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.8, %esi
	callq	fopen
	movq	%rax, 24(%rsp)
	movl	$0, 16(%rsp)
	leaq	20(%rsp), %rbx
	cmpl	$99, 16(%rsp)
	jle	.LBB5_4
	jmp	.LBB5_8
	.p2align	4, 0x90
.LBB5_7:                                #   in Loop: Header=BB5_4 Depth=1
	addl	$1, 16(%rsp)
	cmpl	$99, 16(%rsp)
	jg	.LBB5_8
.LBB5_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_6 Depth 2
	movl	$0, 12(%rsp)
	cmpl	$99, 12(%rsp)
	jg	.LBB5_7
	.p2align	4, 0x90
.LBB5_6:                                #   Parent Loop BB5_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rsp), %rdi
	movl	$.L.str.9, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	fscanf
	movl	20(%rsp), %eax
	movslq	16(%rsp), %rcx
	imulq	$400, %rcx, %rcx        # imm = 0x190
	movslq	12(%rsp), %rdx
	movl	%eax, AdjMatrix(%rcx,%rdx,4)
	addl	$1, 12(%rsp)
	cmpl	$99, 12(%rsp)
	jle	.LBB5_6
	jmp	.LBB5_7
.LBB5_8:
	movl	$0, 16(%rsp)
	movl	$50, 12(%rsp)
	cmpl	$99, 16(%rsp)
	jg	.LBB5_11
	.p2align	4, 0x90
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	movslq	12(%rsp), %rsi
	imulq	$1374389535, %rsi, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$37, %rax
	addl	%ecx, %eax
	imull	$100, %eax, %eax
	subl	%eax, %esi
	movl	%esi, 12(%rsp)
	movl	16(%rsp), %edi
                                        # kill: def $esi killed $esi killed $rsi
	callq	dijkstra
	addl	$1, 16(%rsp)
	addl	$1, 12(%rsp)
	cmpl	$99, 16(%rsp)
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
