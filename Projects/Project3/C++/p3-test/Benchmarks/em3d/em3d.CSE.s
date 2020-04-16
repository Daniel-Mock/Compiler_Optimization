	.text
	.file	"llvm-link"
	.globl	compute_nodes           # -- Begin function compute_nodes
	.p2align	4, 0x90
	.type	compute_nodes,@function
compute_nodes:                          # @compute_nodes
	.cfi_startproc
# %bb.0:
	movq	%rdi, -16(%rsp)
	cmpq	$0, -16(%rsp)
	jne	.LBB0_2
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-40(%rsp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rsp)
	mulsd	-48(%rsp), %xmm0
	movsd	-56(%rsp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rsp)
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	movsd	-56(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rsp), %rax
	movq	(%rax), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rsp)
	cmpq	$0, -16(%rsp)
	je	.LBB0_14
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movq	-16(%rsp), %rax
	movq	%rax, -32(%rsp)
	movq	(%rax), %rcx
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rsp)
	movl	40(%rax), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rsp)
	movl	$0, -60(%rsp)
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-40(%rsp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rsp)
	mulsd	-48(%rsp), %xmm0
	movsd	-56(%rsp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rsp)
	addl	$2, -60(%rsp)
.LBB0_3:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-60(%rsp), %eax
	cmpl	-20(%rsp), %eax
	jge	.LBB0_9
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-32(%rsp), %rax
	movq	24(%rax), %rcx
	movslq	-60(%rsp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	%rcx, -40(%rsp)
	movq	32(%rax), %rax
	movsd	(%rax,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rsp)
	testq	%rcx, %rcx
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	addl	$1, nonlocals(%rip)
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	movq	-40(%rsp), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rsp)
	mulsd	-48(%rsp), %xmm0
	movsd	-56(%rsp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -56(%rsp)
	movq	-32(%rsp), %rax
	movq	24(%rax), %rcx
	movslq	-60(%rsp), %rdx
	movq	8(%rcx,%rdx,8), %rcx
	movq	%rcx, -40(%rsp)
	movq	32(%rax), %rax
	movsd	(%rax,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rsp)
	testq	%rcx, %rcx
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=2
	addl	$1, nonlocals(%rip)
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-60(%rsp), %eax
	cmpl	-20(%rsp), %eax
	jne	.LBB0_13
# %bb.10:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-32(%rsp), %rax
	movq	24(%rax), %rcx
	movslq	-60(%rsp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	%rcx, -40(%rsp)
	movq	32(%rax), %rax
	movsd	(%rax,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rsp)
	testq	%rcx, %rcx
	jne	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_2 Depth=1
	addl	$1, nonlocals(%rip)
	jmp	.LBB0_12
.LBB0_14:
	retq
.Lfunc_end0:
	.size	compute_nodes, .Lfunc_end0-compute_nodes
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	$0, 28(%rsp)
	movl	%edi, 24(%rsp)
	movq	%rsi, 32(%rsp)
	xorl	%eax, %eax
	callq	dealwithargs
	movl	n_nodes(%rip), %esi
	movl	d_nodes(%rip), %edx
	movl	local_p(%rip), %ecx
	movl	__NumNodes(%rip), %r8d
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	callq	initialize_graph
	movq	%rax, 16(%rsp)
	cmpl	$0, DebugFlag(%rip)
	je	.LBB1_4
# %bb.1:
	movl	$0, 12(%rsp)
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %eax
	cmpl	__NumNodes(%rip), %eax
	jge	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	addl	$1, 12(%rsp)
	jmp	.LBB1_2
.LBB1_4:
	movq	16(%rsp), %rax
	movq	(%rax), %rdi
	xorl	%eax, %eax
	callq	compute_nodes
	movq	16(%rsp), %rax
	movq	512(%rax), %rdi
	xorl	%eax, %eax
	callq	compute_nodes
	movl	nonlocals(%rip), %esi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	callq	printstats
	xorl	%eax, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.globl	ATOMICINC               # -- Begin function ATOMICINC
	.p2align	4, 0x90
	.type	ATOMICINC,@function
ATOMICINC:                              # @ATOMICINC
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movl	(%rdi), %eax
	leal	1(%rax), %ecx
	movl	%ecx, (%rdi)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end2:
	.size	ATOMICINC, .Lfunc_end2-ATOMICINC
	.cfi_endproc
                                        # -- End function
	.globl	make_table              # -- Begin function make_table
	.p2align	4, 0x90
	.type	make_table,@function
make_table:                             # @make_table
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%rsp)
	movl	%esi, 16(%rsp)
	movslq	%edi, %rdi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	jne	.LBB3_2
# %bb.1:
	movl	$.L.str.7, %edi
	movl	$.L.str.1.8, %esi
	movl	$51, %edx
	xorl	%ecx, %ecx
	callq	__assert_fail
.LBB3_2:
	movq	8(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	make_table, .Lfunc_end3-make_table
	.cfi_endproc
                                        # -- End function
	.globl	fill_table              # -- Begin function fill_table
	.p2align	4, 0x90
	.type	fill_table,@function
fill_table:                             # @fill_table
	.cfi_startproc
# %bb.0:
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 40(%rsp)
	movq	%rsi, 8(%rsp)
	movl	%edx, 36(%rsp)
	movl	%ecx, 52(%rsp)
	movl	$48, %edi
	callq	malloc
	movq	%rax, 16(%rsp)
	movq	40(%rsp), %rcx
	movq	%rax, (%rcx)
	xorl	%eax, %eax
	callq	gen_uniform_double
	movq	8(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	8(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	16(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	16(%rsp), %rax
	movl	$0, 40(%rax)
	movl	$1, 4(%rsp)
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movl	4(%rsp), %eax
	cmpl	36(%rsp), %eax
	jge	.LBB4_3
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movl	$48, %edi
	callq	malloc
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	callq	gen_uniform_double
	movq	8(%rsp), %rax
	movsd	%xmm0, (%rax)
	movq	8(%rsp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movq	24(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	24(%rsp), %rax
	movl	$0, 40(%rax)
	movq	24(%rsp), %rax
	movq	40(%rsp), %rcx
	movslq	4(%rsp), %rdx
	movq	%rax, (%rcx,%rdx,8)
	movq	24(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	24(%rsp), %rax
	movq	%rax, 16(%rsp)
	addl	$1, 4(%rsp)
	jmp	.LBB4_1
.LBB4_3:
	movq	16(%rsp), %rax
	movq	$0, 8(%rax)
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	fill_table, .Lfunc_end4-fill_table
	.cfi_endproc
                                        # -- End function
	.globl	make_neighbors          # -- Begin function make_neighbors
	.p2align	4, 0x90
	.type	make_neighbors,@function
make_neighbors:                         # @make_neighbors
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$96, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -16
	movq	%rdi, 88(%rsp)
	movq	%rsi, 64(%rsp)
	movl	%edx, 60(%rsp)
	movl	%ecx, 48(%rsp)
	movl	%r8d, 56(%rsp)
	movl	%r9d, 52(%rsp)
	movl	__MyNodeId(%rip), %eax
	andl	IDMASK(%rip), %eax
	movl	%eax, 76(%rsp)
	movq	%rdi, 16(%rsp)
	cmpq	$0, 16(%rsp)
	jne	.LBB5_2
	jmp	.LBB5_21
	.p2align	4, 0x90
.LBB5_20:                               #   in Loop: Header=BB5_2 Depth=1
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	cmpq	$0, 16(%rsp)
	je	.LBB5_21
.LBB5_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_4 Depth 2
                                        #       Child Loop BB5_5 Depth 3
                                        #         Child Loop BB5_9 Depth 4
	movslq	48(%rsp), %rdi
	shlq	$3, %rdi
	callq	malloc
	movq	16(%rsp), %rcx
	movq	%rax, 16(%rcx)
	movq	16(%rsp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB5_22
# %bb.3:                                #   in Loop: Header=BB5_2 Depth=1
	movl	$0, 12(%rsp)
	jmp	.LBB5_4
	.p2align	4, 0x90
.LBB5_19:                               #   in Loop: Header=BB5_4 Depth=2
	movq	32(%rsp), %rdi
	addq	$40, %rdi
	callq	ATOMICINC
	addl	$1, 12(%rsp)
.LBB5_4:                                #   Parent Loop BB5_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_5 Depth 3
                                        #         Child Loop BB5_9 Depth 4
	movl	12(%rsp), %eax
	cmpl	48(%rsp), %eax
	jl	.LBB5_5
	jmp	.LBB5_20
	.p2align	4, 0x90
.LBB5_14:                               #   in Loop: Header=BB5_5 Depth=3
	movl	28(%rsp), %eax
	cmpl	12(%rsp), %eax
	jge	.LBB5_15
.LBB5_5:                                #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB5_9 Depth 4
	movl	60(%rsp), %edi
	callq	gen_number
	movl	%eax, 40(%rsp)
	movl	56(%rsp), %edi
	callq	check_percent
	movl	52(%rsp), %ebx
	testl	%eax, %eax
	jne	.LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=3
	movl	$1, %edi
	callq	gen_signed_number
                                        # kill: def $eax killed $eax def $rax
	leal	(%rbx,%rax,4), %ecx
	leal	(%rbx,%rax,4), %ebx
	addl	$64, %ebx
	movl	%ebx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	leal	(%rax,%rcx), %eax
	addl	$64, %eax
	andl	$-64, %eax
	subl	%eax, %ebx
.LBB5_7:                                #   in Loop: Header=BB5_5 Depth=3
	movl	%ebx, 44(%rsp)
	movq	64(%rsp), %rax
	movslq	%ebx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 80(%rsp)
	movslq	40(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 32(%rsp)
	testq	%rax, %rax
	je	.LBB5_23
# %bb.8:                                #   in Loop: Header=BB5_5 Depth=3
	movl	$0, 28(%rsp)
	.p2align	4, 0x90
.LBB5_9:                                #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_4 Depth=2
                                        #       Parent Loop BB5_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	28(%rsp), %eax
	cmpl	12(%rsp), %eax
	jge	.LBB5_12
# %bb.10:                               #   in Loop: Header=BB5_9 Depth=4
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	16(%rcx), %rcx
	movslq	28(%rsp), %rdx
	cmpq	(%rcx,%rdx,8), %rax
	je	.LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_9 Depth=4
	addl	$1, 28(%rsp)
	jmp	.LBB5_9
	.p2align	4, 0x90
.LBB5_12:                               #   in Loop: Header=BB5_5 Depth=3
	movl	32(%rsp), %eax
	shrl	$7, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	ja	.LBB5_14
# %bb.13:                               #   in Loop: Header=BB5_5 Depth=3
	movl	32(%rsp), %esi
	movl	40(%rsp), %edx
	movl	44(%rsp), %ecx
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB5_14
	.p2align	4, 0x90
.LBB5_15:                               #   in Loop: Header=BB5_4 Depth=2
	cmpq	$0, 16(%rsp)
	je	.LBB5_24
# %bb.16:                               #   in Loop: Header=BB5_4 Depth=2
	movq	16(%rsp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB5_24
# %bb.17:                               #   in Loop: Header=BB5_4 Depth=2
	movq	32(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	16(%rcx), %rcx
	movslq	12(%rsp), %rdx
	movq	%rax, (%rcx,%rdx,8)
	movl	32(%rsp), %eax
	shrl	$7, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	ja	.LBB5_19
# %bb.18:                               #   in Loop: Header=BB5_4 Depth=2
	movl	32(%rsp), %esi
	movl	$.L.str.6, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB5_19
.LBB5_21:
	addq	$96, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB5_23:
	.cfi_def_cfa_offset 112
	movl	40(%rsp), %esi
	movl	44(%rsp), %edx
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB5_24:
	movl	16(%rsp), %esi
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB5_22:
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end5:
	.size	make_neighbors, .Lfunc_end5-make_neighbors
	.cfi_endproc
                                        # -- End function
	.globl	update_from_coeffs      # -- Begin function update_from_coeffs
	.p2align	4, 0x90
	.type	update_from_coeffs,@function
update_from_coeffs:                     # @update_from_coeffs
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 24(%rsp)
	movl	__MyNodeId(%rip), %eax
	andl	IDMASK(%rip), %eax
	movl	%eax, 20(%rsp)
	movq	%rdi, 8(%rsp)
	cmpq	$0, 8(%rsp)
	jne	.LBB6_2
	jmp	.LBB6_5
	.p2align	4, 0x90
.LBB6_4:                                #   in Loop: Header=BB6_2 Depth=1
	movslq	16(%rsp), %rdi
	shlq	$3, %rdi
	callq	malloc
	movq	8(%rsp), %rcx
	movq	%rax, 24(%rcx)
	movslq	16(%rsp), %rdi
	shlq	$3, %rdi
	callq	malloc
	movq	8(%rsp), %rcx
	movq	%rax, 32(%rcx)
	movq	8(%rsp), %rax
	movl	$0, 44(%rax)
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	cmpq	$0, 8(%rsp)
	je	.LBB6_5
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	movl	40(%rax), %eax
	movl	%eax, 16(%rsp)
	testl	%eax, %eax
	jg	.LBB6_4
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	movl	$.L.str.7.9, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB6_4
.LBB6_5:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	update_from_coeffs, .Lfunc_end6-update_from_coeffs
	.cfi_endproc
                                        # -- End function
	.globl	fill_from_fields        # -- Begin function fill_from_fields
	.p2align	4, 0x90
	.type	fill_from_fields,@function
fill_from_fields:                       # @fill_from_fields
	.cfi_startproc
# %bb.0:
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdi, 64(%rsp)
	movl	%esi, 52(%rsp)
	movq	%rdi, 32(%rsp)
	cmpq	$0, 32(%rsp)
	jne	.LBB7_2
	jmp	.LBB7_10
	.p2align	4, 0x90
.LBB7_9:                                #   in Loop: Header=BB7_2 Depth=1
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)
	cmpq	$0, 32(%rsp)
	je	.LBB7_10
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movl	$0, 12(%rsp)
	jmp	.LBB7_3
	.p2align	4, 0x90
.LBB7_8:                                #   in Loop: Header=BB7_3 Depth=2
	movq	56(%rsp), %rax
	movq	40(%rsp), %rcx
	movslq	28(%rsp), %rdx
	movq	%rax, (%rcx,%rdx,8)
	xorl	%eax, %eax
	callq	gen_uniform_double
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	movslq	28(%rsp), %rcx
	movsd	%xmm0, (%rax,%rcx,8)
	addl	$1, 12(%rsp)
.LBB7_3:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	12(%rsp), %eax
	cmpl	52(%rsp), %eax
	jge	.LBB7_9
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=2
	movq	32(%rsp), %rax
	movq	16(%rax), %rcx
	movslq	12(%rsp), %rdx
	movq	(%rcx,%rdx,8), %rcx
	movq	%rcx, 16(%rsp)
	movq	(%rax), %rax
	movq	%rax, 56(%rsp)
	testq	%rcx, %rcx
	jne	.LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_3 Depth=2
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=2
	movq	16(%rsp), %rdi
	addq	$44, %rdi
	callq	ATOMICINC
	movl	%eax, 28(%rsp)
	movq	16(%rsp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, 40(%rsp)
	movl	40(%rax), %eax
	movl	%eax, 48(%rsp)
	testq	%rcx, %rcx
	jne	.LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_3 Depth=2
	movl	16(%rsp), %esi
	movl	40(%rsp), %edx
	movl	48(%rsp), %ecx
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	callq	printf
	movq	16(%rsp), %rax
	movq	24(%rax), %rax
	movq	%rax, 40(%rsp)
	jmp	.LBB7_8
.LBB7_10:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end7:
	.size	fill_from_fields, .Lfunc_end7-fill_from_fields
	.cfi_endproc
                                        # -- End function
	.globl	localize_local          # -- Begin function localize_local
	.p2align	4, 0x90
	.type	localize_local,@function
localize_local:                         # @localize_local
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rdi, -40(%rsp)
	cmpq	$0, -40(%rsp)
	je	.LBB8_3
	.p2align	4, 0x90
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rsp), %rax
	movq	32(%rax), %rcx
	movq	%rcx, -16(%rsp)
	movq	%rcx, 32(%rax)
	movq	-40(%rsp), %rax
	movq	24(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movq	%rcx, 24(%rax)
	movq	-40(%rsp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -24(%rsp)
	movq	%rcx, (%rax)
	movq	-40(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rsp)
	cmpq	$0, -40(%rsp)
	jne	.LBB8_2
.LBB8_3:
	retq
.Lfunc_end8:
	.size	localize_local, .Lfunc_end8-localize_local
	.cfi_endproc
                                        # -- End function
	.globl	make_tables             # -- Begin function make_tables
	.p2align	4, 0x90
	.type	make_tables,@function
make_tables:                            # @make_tables
	.cfi_startproc
# %bb.0:
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movl	__MyNodeId(%rip), %eax
	andl	IDMASK(%rip), %eax
	movl	%eax, 8(%rsp)
	imull	$793, %esi, %edi        # imm = 0x319
	callq	init_random
	movl	n_nodes(%rip), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$26, %ecx
	addl	%eax, %ecx
	sarl	$6, %ecx
	movslq	%ecx, %rdi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, 32(%rsp)
	movl	n_nodes(%rip), %eax
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$26, %edi
	addl	%eax, %edi
	sarl	$6, %edi
	movl	8(%rsp), %esi
	callq	make_table
	movq	%rax, 48(%rsp)
	movq	32(%rsp), %rsi
	movl	n_nodes(%rip), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$26, %edx
	addl	%ecx, %edx
	sarl	$6, %edx
	movl	8(%rsp), %ecx
	movq	%rax, %rdi
	callq	fill_table
	movl	n_nodes(%rip), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$26, %ecx
	addl	%eax, %ecx
	sarl	$6, %ecx
	movslq	%ecx, %rdi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, 24(%rsp)
	movl	n_nodes(%rip), %eax
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$26, %edi
	addl	%eax, %edi
	sarl	$6, %edi
	movl	8(%rsp), %esi
	callq	make_table
	movq	%rax, 40(%rsp)
	movq	24(%rsp), %rsi
	movl	n_nodes(%rip), %ecx
	movl	%ecx, %edx
	sarl	$31, %edx
	shrl	$26, %edx
	addl	%ecx, %edx
	sarl	$6, %edx
	movl	8(%rsp), %ecx
	movq	%rax, %rdi
	callq	fill_table
	movq	40(%rsp), %rax
	movq	16(%rsp), %rcx
	movslq	12(%rsp), %rdx
	movq	%rax, (%rcx,%rdx,8)
	movq	48(%rsp), %rax
	movq	16(%rsp), %rcx
	movslq	12(%rsp), %rdx
	movq	%rax, 512(%rcx,%rdx,8)
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	make_tables, .Lfunc_end9-make_tables
	.cfi_endproc
                                        # -- End function
	.globl	make_all_neighbors      # -- Begin function make_all_neighbors
	.p2align	4, 0x90
	.type	make_all_neighbors,@function
make_all_neighbors:                     # @make_all_neighbors
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movl	%esi, 4(%rsp)
	imull	$39, %esi, %edi
	callq	init_random
	movq	8(%rsp), %rsi
	movslq	4(%rsp), %r9
	movq	512(%rsi,%r9,8), %rax
	movq	%rax, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	(%rax), %rdi
	movq	%rdi, 32(%rsp)
	movl	n_nodes(%rip), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$26, %edx
	addl	%eax, %edx
	sarl	$6, %edx
	movl	d_nodes(%rip), %ecx
	movl	local_p(%rip), %r8d
                                        # kill: def $r9d killed $r9d killed $r9
	callq	make_neighbors
	movq	8(%rsp), %rsi
	movslq	4(%rsp), %r9
	movq	(%rsi,%r9,8), %rax
	movq	%rax, 24(%rsp)
	addq	$512, %rsi              # imm = 0x200
	movq	%rsi, 16(%rsp)
	movq	(%rax), %rdi
	movq	%rdi, 32(%rsp)
	movl	n_nodes(%rip), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$26, %edx
	addl	%eax, %edx
	sarl	$6, %edx
	movl	d_nodes(%rip), %ecx
	movl	local_p(%rip), %r8d
                                        # kill: def $r9d killed $r9d killed $r9
	callq	make_neighbors
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	make_all_neighbors, .Lfunc_end10-make_all_neighbors
	.cfi_endproc
                                        # -- End function
	.globl	update_all_from_coeffs  # -- Begin function update_all_from_coeffs
	.p2align	4, 0x90
	.type	update_all_from_coeffs,@function
update_all_from_coeffs:                 # @update_all_from_coeffs
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movl	%esi, 12(%rsp)
	movslq	%esi, %rax
	movq	512(%rdi,%rax,8), %rax
	movq	%rax, 24(%rsp)
	movq	(%rax), %rdi
	movq	%rdi, 16(%rsp)
	callq	update_from_coeffs
	movq	32(%rsp), %rax
	movslq	12(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 24(%rsp)
	movq	(%rax), %rdi
	movq	%rdi, 16(%rsp)
	callq	update_from_coeffs
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	update_all_from_coeffs, .Lfunc_end11-update_all_from_coeffs
	.cfi_endproc
                                        # -- End function
	.globl	fill_all_from_fields    # -- Begin function fill_all_from_fields
	.p2align	4, 0x90
	.type	fill_all_from_fields,@function
fill_all_from_fields:                   # @fill_all_from_fields
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
                                        # kill: def $esi killed $esi def $rsi
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movl	%esi, %eax
	shll	$4, %eax
	leal	(%rax,%rsi), %edi
	callq	init_random
	movq	16(%rsp), %rax
	movslq	12(%rsp), %rcx
	movq	512(%rax,%rcx,8), %rax
	movq	%rax, 32(%rsp)
	movq	(%rax), %rdi
	movq	%rdi, 24(%rsp)
	movl	d_nodes(%rip), %esi
	callq	fill_from_fields
	movq	16(%rsp), %rax
	movslq	12(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 32(%rsp)
	movq	(%rax), %rdi
	movq	%rdi, 24(%rsp)
	movl	d_nodes(%rip), %esi
	callq	fill_from_fields
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	fill_all_from_fields, .Lfunc_end12-fill_all_from_fields
	.cfi_endproc
                                        # -- End function
	.globl	localize                # -- Begin function localize
	.p2align	4, 0x90
	.type	localize,@function
localize:                               # @localize
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movl	%esi, 12(%rsp)
	movslq	%esi, %rax
	movq	512(%rdi,%rax,8), %rax
	movq	%rax, 24(%rsp)
	movq	(%rax), %rdi
	movq	%rdi, 16(%rsp)
	callq	localize_local
	movq	32(%rsp), %rax
	movslq	12(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 24(%rsp)
	movq	(%rax), %rdi
	movq	%rdi, 16(%rsp)
	callq	localize_local
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	localize, .Lfunc_end13-localize
	.cfi_endproc
                                        # -- End function
	.globl	do_all                  # -- Begin function do_all
	.p2align	4, 0x90
	.type	do_all,@function
do_all:                                 # @do_all
	.cfi_startproc
# %bb.0:
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	%edx, %r9d
	movl	%esi, %eax
	movq	%rdi, 24(%rsp)
	movl	%esi, 4(%rsp)
	movl	%edx, 12(%rsp)
	movq	%rcx, 16(%rsp)
	movl	%r8d, 8(%rsp)
	cltd
	idivl	%r8d
	movl	%eax, 36(%rsp)
	cmpl	$2, %r9d
	jl	.LBB14_2
# %bb.1:
	movq	24(%rsp), %rdi
	movl	12(%rsp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	movl	4(%rsp), %esi
	addl	%edx, %esi
	movq	16(%rsp), %rcx
	movl	8(%rsp), %r8d
	callq	do_all
	movq	24(%rsp), %rdi
	movl	4(%rsp), %esi
	movl	12(%rsp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%eax, %edx
	sarl	%edx
	movq	16(%rsp), %rcx
	movl	8(%rsp), %r8d
	callq	do_all
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB14_2:
	.cfi_def_cfa_offset 48
	movq	24(%rsp), %rdi
	movl	4(%rsp), %esi
	callq	*16(%rsp)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	do_all, .Lfunc_end14-do_all
	.cfi_endproc
                                        # -- End function
	.globl	initialize_graph        # -- Begin function initialize_graph
	.p2align	4, 0x90
	.type	initialize_graph,@function
initialize_graph:                       # @initialize_graph
	.cfi_startproc
# %bb.0:
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movq	%rax, 24(%rsp)
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movq	%rax, 56(%rsp)
	movl	$64, %eax
	xorl	%edx, %edx
	idivl	__NumNodes(%rip)
	movl	%eax, 16(%rsp)
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	movq	24(%rsp), %rdi
	movl	16(%rsp), %r8d
	movl	$make_tables, %ecx
	xorl	%esi, %esi
	movl	$64, %edx
	callq	do_all
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf
	movq	24(%rsp), %rdi
	movl	16(%rsp), %r8d
	movl	$make_all_neighbors, %ecx
	xorl	%esi, %esi
	movl	$64, %edx
	callq	do_all
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	callq	printf
	movq	24(%rsp), %rdi
	movl	16(%rsp), %r8d
	movl	$update_all_from_coeffs, %ecx
	xorl	%esi, %esi
	movl	$64, %edx
	callq	do_all
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	printf
	movq	24(%rsp), %rdi
	movl	16(%rsp), %r8d
	movl	$fill_all_from_fields, %ecx
	xorl	%esi, %esi
	movl	$64, %edx
	callq	do_all
	movl	$.L.str.14, %edi
	xorl	%eax, %eax
	callq	printf
	movq	24(%rsp), %rdi
	movl	16(%rsp), %r8d
	movl	$localize, %ecx
	xorl	%esi, %esi
	movl	$64, %edx
	callq	do_all
	movl	$64, %eax
	xorl	%edx, %edx
	idivl	__NumNodes(%rip)
	movl	%eax, 20(%rsp)
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$0, 12(%rsp)
	jmp	.LBB15_1
	.p2align	4, 0x90
.LBB15_5:                               #   in Loop: Header=BB15_1 Depth=1
	addl	$1, 12(%rsp)
.LBB15_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_3 Depth 2
	movl	12(%rsp), %eax
	cmpl	__NumNodes(%rip), %eax
	jge	.LBB15_6
# %bb.2:                                #   in Loop: Header=BB15_1 Depth=1
	movq	24(%rsp), %rax
	movslq	20(%rsp), %rcx
	movslq	12(%rsp), %rdx
	imulq	%rdx, %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 40(%rsp)
	movq	(%rax), %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rcx
	movq	%rax, (%rcx,%rdx,8)
	movq	24(%rsp), %rax
	movslq	20(%rsp), %rcx
	movslq	12(%rsp), %rdx
	imulq	%rdx, %rcx
	movq	512(%rax,%rcx,8), %rax
	movq	%rax, 40(%rsp)
	movq	(%rax), %rax
	movq	%rax, 48(%rsp)
	movq	56(%rsp), %rcx
	movq	%rax, 512(%rcx,%rdx,8)
	movl	$1, 36(%rsp)
	.p2align	4, 0x90
.LBB15_3:                               #   Parent Loop BB15_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	36(%rsp), %eax
	cmpl	20(%rsp), %eax
	jge	.LBB15_5
# %bb.4:                                #   in Loop: Header=BB15_3 Depth=2
	movq	24(%rsp), %rax
	movslq	12(%rsp), %rcx
	movslq	20(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	36(%rsp), %rcx
	addq	%rdx, %rcx
	movq	-8(%rax,%rcx,8), %rdx
	movq	%rdx, 40(%rsp)
	movl	n_nodes(%rip), %esi
	movl	%esi, %edi
	sarl	$31, %edi
	shrl	$26, %edi
	addl	%esi, %edi
	sarl	$6, %edi
	addl	$-1, %edi
	movslq	%edi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movq	%rdx, 64(%rsp)
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 40(%rsp)
	movq	(%rax), %rax
	movq	%rax, 48(%rsp)
	movq	%rax, 8(%rdx)
	movq	24(%rsp), %rax
	movslq	12(%rsp), %rcx
	movslq	20(%rsp), %rdx
	imulq	%rcx, %rdx
	movslq	36(%rsp), %rcx
	addq	%rdx, %rcx
	movq	504(%rax,%rcx,8), %rdx
	movq	%rdx, 40(%rsp)
	movl	n_nodes(%rip), %esi
	movl	%esi, %edi
	sarl	$31, %edi
	shrl	$26, %edi
	addl	%esi, %edi
	sarl	$6, %edi
	addl	$-1, %edi
	movslq	%edi, %rsi
	movq	(%rdx,%rsi,8), %rdx
	movq	%rdx, 64(%rsp)
	movq	512(%rax,%rcx,8), %rax
	movq	%rax, 40(%rsp)
	movq	(%rax), %rax
	movq	%rax, 48(%rsp)
	movq	%rax, 8(%rdx)
	addl	$1, 36(%rsp)
	jmp	.LBB15_3
.LBB15_6:
	movq	56(%rsp), %rax
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	initialize_graph, .Lfunc_end15-initialize_graph
	.cfi_endproc
                                        # -- End function
	.globl	init_random             # -- Begin function init_random
	.p2align	4, 0x90
	.type	init_random,@function
init_random:                            # @init_random
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	xorl	%eax, %eax
	callq	srand48
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end16:
	.size	init_random, .Lfunc_end16-init_random
	.cfi_endproc
                                        # -- End function
	.globl	gen_number              # -- Begin function gen_number
	.p2align	4, 0x90
	.type	gen_number,@function
gen_number:                             # @gen_number
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	xorl	%eax, %eax
	callq	lrand48
	movslq	4(%rsp), %rcx
	cqto
	idivq	%rcx
	movq	%rdx, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	gen_number, .Lfunc_end17-gen_number
	.cfi_endproc
                                        # -- End function
	.globl	gen_signed_number       # -- Begin function gen_signed_number
	.p2align	4, 0x90
	.type	gen_signed_number,@function
gen_signed_number:                      # @gen_signed_number
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	xorl	%eax, %eax
	callq	lrand48
	movslq	4(%rsp), %rcx
	addq	%rcx, %rcx
	cqto
	idivq	%rcx
	movl	%edx, (%rsp)
	testl	%edx, %edx
	js	.LBB18_2
# %bb.1:
	addl	$1, (%rsp)
.LBB18_2:
	movl	(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	gen_signed_number, .Lfunc_end18-gen_signed_number
	.cfi_endproc
                                        # -- End function
	.globl	gen_uniform_double      # -- Begin function gen_uniform_double
	.p2align	4, 0x90
	.type	gen_uniform_double,@function
gen_uniform_double:                     # @gen_uniform_double
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	callq	drand48
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end19:
	.size	gen_uniform_double, .Lfunc_end19-gen_uniform_double
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function check_percent
.LCPI20_0:
	.quad	4636737291354636288     # double 100
	.text
	.globl	check_percent
	.p2align	4, 0x90
	.type	check_percent,@function
check_percent:                          # @check_percent
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	%edi, 4(%rsp)
	xorl	%eax, %eax
	callq	drand48
	cvtsi2sdl	4(%rsp), %xmm1
	divsd	.LCPI20_0(%rip), %xmm1
	addl	$1, percentcheck(%rip)
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm1
	seta	%al
	movl	%eax, (%rsp)
	jbe	.LBB20_2
# %bb.1:
	addl	$1, numlocal(%rip)
.LBB20_2:
	movl	(%rsp), %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end20:
	.size	check_percent, .Lfunc_end20-check_percent
	.cfi_endproc
                                        # -- End function
	.globl	printstats              # -- Begin function printstats
	.p2align	4, 0x90
	.type	printstats,@function
printstats:                             # @printstats
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	percentcheck(%rip), %esi
	movl	numlocal(%rip), %edx
	movl	$.L.str.24, %edi
	xorl	%eax, %eax
	callq	printf
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end21:
	.size	printstats, .Lfunc_end21-printstats
	.cfi_endproc
                                        # -- End function
	.globl	dealwithargs            # -- Begin function dealwithargs
	.p2align	4, 0x90
	.type	dealwithargs,@function
dealwithargs:                           # @dealwithargs
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 12(%rsp)
	movq	%rsi, 16(%rsp)
	cmpl	$6, %edi
	jl	.LBB22_2
# %bb.1:
	movq	16(%rsp), %rax
	movq	40(%rax), %rdi
	callq	atoi
	movl	%eax, DebugFlag(%rip)
	cmpl	$5, 12(%rsp)
	jge	.LBB22_4
.LBB22_5:
	movl	$4, __NumNodes(%rip)
	cmpl	$2, 12(%rsp)
	jge	.LBB22_7
.LBB22_8:
	movl	$64, n_nodes(%rip)
	cmpl	$3, 12(%rsp)
	jge	.LBB22_10
.LBB22_11:
	movl	$3, d_nodes(%rip)
	cmpl	$4, 12(%rsp)
	jge	.LBB22_13
.LBB22_14:
	movl	$75, local_p(%rip)
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB22_2:
	.cfi_def_cfa_offset 32
	movl	$0, DebugFlag(%rip)
	cmpl	$5, 12(%rsp)
	jl	.LBB22_5
.LBB22_4:
	movq	16(%rsp), %rax
	movq	32(%rax), %rdi
	callq	atoi
	movl	%eax, __NumNodes(%rip)
	cmpl	$2, 12(%rsp)
	jl	.LBB22_8
.LBB22_7:
	movq	16(%rsp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, n_nodes(%rip)
	cmpl	$3, 12(%rsp)
	jl	.LBB22_11
.LBB22_10:
	movq	16(%rsp), %rax
	movq	16(%rax), %rdi
	callq	atoi
	movl	%eax, d_nodes(%rip)
	cmpl	$4, 12(%rsp)
	jl	.LBB22_14
.LBB22_13:
	movq	16(%rsp), %rax
	movq	24(%rax), %rdi
	callq	atoi
	movl	%eax, local_p(%rip)
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end22:
	.size	dealwithargs, .Lfunc_end22-dealwithargs
	.cfi_endproc
                                        # -- End function
	.type	nonlocals,@object       # @nonlocals
	.bss
	.globl	nonlocals
	.p2align	2
nonlocals:
	.long	0                       # 0x0
	.size	nonlocals, 4

	.type	__NumNodes,@object      # @__NumNodes
	.comm	__NumNodes,4,4
	.type	DebugFlag,@object       # @DebugFlag
	.comm	DebugFlag,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Hello world--Doing em3d with args %d %d %d %d\n"
	.size	.L.str, 47

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"nonlocals = %d\n"
	.size	.L.str.1, 16

	.type	__MyNodeId,@object      # @__MyNodeId
	.comm	__MyNodeId,4,4
	.type	IDMASK,@object          # @IDMASK
	.comm	IDMASK,4,4
	.type	n_nodes,@object         # @n_nodes
	.comm	n_nodes,4,4
	.type	d_nodes,@object         # @d_nodes
	.comm	d_nodes,4,4
	.type	local_p,@object         # @local_p
	.comm	local_p,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"retval"
	.size	.L.str.7, 7

	.type	.L.str.1.8,@object      # @.str.1.8
.L.str.1.8:
	.asciz	"/afs/eos.ncsu.edu/lockers/workspace/ece/ece466/001/djmock/HW/Projects/Project3/C++/p3-test/../wolfbench/Benchmarks/em3d/make_graph.c"
	.size	.L.str.1.8, 133

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Uncaught malloc error\n"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Error! on dest %d @ %d\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"pre other_node = 0x%x,number = %d,dest = %d\n"
	.size	.L.str.4, 45

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Error! no to_nodes filed on 0x%x\n"
	.size	.L.str.5, 34

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"post other_node = 0x%x\n"
	.size	.L.str.6, 24

	.type	.L.str.7.9,@object      # @.str.7.9
.L.str.7.9:
	.asciz	"Help! no from count\n"
	.size	.L.str.7.9, 21

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Help!!\n"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"node 0x%x list 0x%x count %d\n"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"making tables \n"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"making neighbors\n"
	.size	.L.str.11, 18

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"updating from and coeffs\n"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"filling from fields\n"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"localizing coeffs, from_nodes\n"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"cleanup for return now\n"
	.size	.L.str.15, 24

	.type	percentcheck,@object    # @percentcheck
	.local	percentcheck
	.comm	percentcheck,4,4
	.type	numlocal,@object        # @numlocal
	.local	numlocal
	.comm	numlocal,4,4
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"percentcheck=%d,numlocal=%d\n"
	.size	.L.str.24, 29


	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
