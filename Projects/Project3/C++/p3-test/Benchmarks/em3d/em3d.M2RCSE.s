	.text
	.file	"llvm-link"
	.globl	compute_nodes           # -- Begin function compute_nodes
	.p2align	4, 0x90
	.type	compute_nodes,@function
compute_nodes:                          # @compute_nodes
	.cfi_startproc
# %bb.0:
	testq	%rdi, %rdi
	jne	.LBB0_2
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	mulsd	(%rcx), %xmm1
	subsd	%xmm1, %xmm0
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	movq	(%rdi), %rax
	movsd	%xmm0, (%rax)
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB0_14
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movq	(%rdi), %rax
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movl	40(%rdi), %ecx
	addl	$-1, %ecx
	xorl	%eax, %eax
	cmpl	%ecx, %eax
	jl	.LBB0_4
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	cmpl	%eax, %ecx
	jne	.LBB0_13
# %bb.10:                               #   in Loop: Header=BB0_2 Depth=1
	movq	24(%rdi), %rcx
	movq	32(%rdi), %rdx
	movq	(%rcx,%rax,8), %rcx
	movsd	(%rdx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	testq	%rcx, %rcx
	jne	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_2 Depth=1
	addl	$1, nonlocals(%rip)
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=2
	mulsd	(%rdx), %xmm1
	subsd	%xmm1, %xmm0
	addq	$2, %rax
	cmpl	%ecx, %eax
	jge	.LBB0_9
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	24(%rdi), %rdx
	movq	32(%rdi), %rsi
	movq	(%rdx,%rax,8), %rdx
	movsd	(%rsi,%rax,8), %xmm1    # xmm1 = mem[0],zero
	testq	%rdx, %rdx
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	addl	$1, nonlocals(%rip)
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=2
	mulsd	(%rdx), %xmm1
	subsd	%xmm1, %xmm0
	movq	24(%rdi), %rdx
	movq	32(%rdi), %rsi
	movq	8(%rdx,%rax,8), %rdx
	movsd	(%rsi,%rax,8), %xmm1    # xmm1 = mem[0],zero
	testq	%rdx, %rdx
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=2
	addl	$1, nonlocals(%rip)
	jmp	.LBB0_8
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	xorl	%ebp, %ebp
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
	movq	%rax, %rbx
	cmpl	$0, DebugFlag(%rip)
	je	.LBB1_3
	.p2align	4, 0x90
# %bb.1:
	cmpl	__NumNodes(%rip), %ebp
	jge	.LBB1_3
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	addl	$1, %ebp
	cmpl	__NumNodes(%rip), %ebp
	jl	.LBB1_2
.LBB1_3:
	movq	(%rbx), %rdi
	xorl	%eax, %eax
	callq	compute_nodes
	movq	512(%rbx), %rdi
	xorl	%eax, %eax
	callq	compute_nodes
	movl	nonlocals(%rip), %esi
	movl	$.L.str.1, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	callq	printstats
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movslq	%edi, %rdi
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB3_2
# %bb.1:
	movl	$.L.str.7, %edi
	movl	$.L.str.1.8, %esi
	movl	$51, %edx
	xorl	%ecx, %ecx
	callq	__assert_fail
.LBB3_2:
	movq	%rbx, %rax
	popq	%rbx
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, %r13
	movq	%rdi, %r15
	movl	$48, %edi
	callq	malloc
	movq	%rax, %r12
	movq	%rax, (%r15)
	xorl	%eax, %eax
	callq	gen_uniform_double
	movsd	%xmm0, (%r13)
	movq	%r13, (%r12)
	addq	$8, %r13
	movl	$0, 40(%r12)
	movl	$1, %ebx
	cmpl	%r14d, %ebx
	jge	.LBB4_3
	.p2align	4, 0x90
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movl	$48, %edi
	callq	malloc
	movq	%rax, %rbp
	xorl	%eax, %eax
	callq	gen_uniform_double
	movsd	%xmm0, (%r13)
	movq	%r13, (%rbp)
	addq	$8, %r13
	movl	$0, 40(%rbp)
	movq	%rbp, (%r15,%rbx,8)
	movq	%rbp, 8(%r12)
	addq	$1, %rbx
	movq	%rbp, %r12
	cmpl	%r14d, %ebx
	jl	.LBB4_2
.LBB4_3:
	movq	$0, 8(%r12)
	addq	$8, %rsp
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
	movl	%r9d, %r14d
	movl	%r8d, 20(%rsp)          # 4-byte Spill
	movl	%edx, 16(%rsp)          # 4-byte Spill
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %rbx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movslq	%ecx, %rax
	shlq	$3, %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	testq	%rbx, %rbx
	jne	.LBB5_2
	jmp	.LBB5_21
	.p2align	4, 0x90
.LBB5_20:                               #   in Loop: Header=BB5_2 Depth=1
	movq	8(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB5_21
.LBB5_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
                                        #       Child Loop BB5_10 Depth 3
	movq	24(%rsp), %rdi          # 8-byte Reload
	callq	malloc
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.LBB5_22
# %bb.3:                                # %.preheader2
                                        #   in Loop: Header=BB5_2 Depth=1
	xorl	%r13d, %r13d
	cmpl	12(%rsp), %r13d         # 4-byte Folded Reload
	jl	.LBB5_5
	jmp	.LBB5_20
.LBB5_19:                               #   in Loop: Header=BB5_5 Depth=2
	addq	$40, %r12
	movq	%r12, %rdi
	callq	ATOMICINC
	addl	$1, %r13d
	cmpl	12(%rsp), %r13d         # 4-byte Folded Reload
	jl	.LBB5_5
	jmp	.LBB5_20
	.p2align	4, 0x90
.LBB5_14:                               #   in Loop: Header=BB5_5 Depth=2
	cmpl	%r13d, %ebp
	jge	.LBB5_15
.LBB5_5:                                #   Parent Loop BB5_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_10 Depth 3
	movl	16(%rsp), %edi          # 4-byte Reload
	callq	gen_number
	movl	%eax, %r15d
	movl	20(%rsp), %edi          # 4-byte Reload
	callq	check_percent
	movl	%r14d, %ecx
	testl	%eax, %eax
	jne	.LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=2
	movl	$1, %edi
	callq	gen_signed_number
                                        # kill: def $eax killed $eax def $rax
	leal	(%r14,%rax,4), %edx
	leal	(%r14,%rax,4), %ecx
	addl	$64, %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	leal	(%rax,%rdx), %eax
	addl	$64, %eax
	andl	$-64, %eax
	subl	%eax, %ecx
.LBB5_7:                                #   in Loop: Header=BB5_5 Depth=2
	movslq	%ecx, %rax
	movq	32(%rsp), %rdx          # 8-byte Reload
	movq	(%rdx,%rax,8), %rax
	movslq	%r15d, %rdx
	movq	(%rax,%rdx,8), %r12
	testq	%r12, %r12
	je	.LBB5_23
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB5_5 Depth=2
	xorl	%ebp, %ebp
	cmpl	%r13d, %ebp
	jge	.LBB5_12
	.p2align	4, 0x90
.LBB5_10:                               #   Parent Loop BB5_2 Depth=1
                                        #     Parent Loop BB5_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rbx), %rax
	cmpq	(%rax,%rbp,8), %r12
	je	.LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=3
	addq	$1, %rbp
	cmpl	%r13d, %ebp
	jl	.LBB5_10
.LBB5_12:                               #   in Loop: Header=BB5_5 Depth=2
	movl	%r12d, %eax
	shrl	$7, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	ja	.LBB5_14
# %bb.13:                               #   in Loop: Header=BB5_5 Depth=2
	movl	$.L.str.4, %edi
	movl	%r12d, %esi
	movl	%r15d, %edx
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB5_14
.LBB5_15:                               #   in Loop: Header=BB5_5 Depth=2
	testq	%rbx, %rbx
	je	.LBB5_24
# %bb.16:                               #   in Loop: Header=BB5_5 Depth=2
	cmpq	$0, 16(%rbx)
	je	.LBB5_24
# %bb.17:                               #   in Loop: Header=BB5_5 Depth=2
	movq	16(%rbx), %rax
	movslq	%r13d, %rcx
	movq	%r12, (%rax,%rcx,8)
	movl	%r12d, %eax
	shrl	$7, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	ja	.LBB5_19
# %bb.18:                               #   in Loop: Header=BB5_5 Depth=2
	movl	$.L.str.6, %edi
	movl	%r12d, %esi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB5_19
.LBB5_21:
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
.LBB5_23:
	.cfi_def_cfa_offset 96
	movl	$.L.str.3, %edi
	movl	%r15d, %esi
	movl	%ecx, %edx
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB5_24:
	movl	$.L.str.5, %edi
	movl	%ebx, %esi
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	testq	%r14, %r14
	jne	.LBB6_2
	jmp	.LBB6_5
	.p2align	4, 0x90
.LBB6_4:                                #   in Loop: Header=BB6_2 Depth=1
	shlq	$3, %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, 24(%r14)
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, 32(%r14)
	movl	$0, 44(%r14)
	movq	8(%r14), %r14
	testq	%r14, %r14
	je	.LBB6_5
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movslq	40(%r14), %rbx
	testq	%rbx, %rbx
	jg	.LBB6_4
# %bb.3:                                #   in Loop: Header=BB6_2 Depth=1
	movl	$.L.str.7.9, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB6_4
.LBB6_5:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movq	%rdi, %r15
	testq	%r15, %r15
	jne	.LBB7_2
	jmp	.LBB7_10
	.p2align	4, 0x90
.LBB7_9:                                #   in Loop: Header=BB7_2 Depth=1
	movq	8(%r15), %r15
	testq	%r15, %r15
	je	.LBB7_10
.LBB7_2:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	xorl	%r14d, %r14d
	cmpl	4(%rsp), %r14d          # 4-byte Folded Reload
	jl	.LBB7_4
	jmp	.LBB7_9
	.p2align	4, 0x90
.LBB7_8:                                #   in Loop: Header=BB7_4 Depth=2
	movslq	%r12d, %rbx
	movq	%r13, (%rdx,%rbx,8)
	xorl	%eax, %eax
	callq	gen_uniform_double
	movq	32(%rbp), %rax
	movsd	%xmm0, (%rax,%rbx,8)
	addq	$1, %r14
	cmpl	4(%rsp), %r14d          # 4-byte Folded Reload
	jge	.LBB7_9
.LBB7_4:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15), %r13
	movq	16(%r15), %rax
	movq	(%rax,%r14,8), %rbp
	testq	%rbp, %rbp
	jne	.LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=2
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf
.LBB7_6:                                #   in Loop: Header=BB7_4 Depth=2
	leaq	44(%rbp), %rdi
	callq	ATOMICINC
	movl	%eax, %r12d
	movq	24(%rbp), %rdx
	testq	%rdx, %rdx
	jne	.LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_4 Depth=2
	movl	40(%rbp), %ecx
	movl	$.L.str.9, %edi
	movl	%ebp, %esi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	printf
	movq	24(%rbp), %rdx
	jmp	.LBB7_8
.LBB7_10:
	addq	$8, %rsp
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
	.size	fill_from_fields, .Lfunc_end7-fill_from_fields
	.cfi_endproc
                                        # -- End function
	.globl	localize_local          # -- Begin function localize_local
	.p2align	4, 0x90
	.type	localize_local,@function
localize_local:                         # @localize_local
	.cfi_startproc
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB8_3
	.p2align	4, 0x90
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
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
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %r15d
	movq	%rdi, %r14
	movl	__MyNodeId(%rip), %ebx
	andl	IDMASK(%rip), %ebx
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
	movq	%rax, %rbp
	movl	n_nodes(%rip), %eax
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$26, %edi
	addl	%eax, %edi
	sarl	$6, %edi
	movl	%ebx, %esi
	callq	make_table
	movq	%rax, %r12
	movl	n_nodes(%rip), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$26, %edx
	addl	%eax, %edx
	sarl	$6, %edx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	movl	%ebx, %ecx
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
	movq	%rax, %r13
	movl	n_nodes(%rip), %eax
	movl	%eax, %edi
	sarl	$31, %edi
	shrl	$26, %edi
	addl	%eax, %edi
	sarl	$6, %edi
	movl	%ebx, %esi
	callq	make_table
	movq	%rax, %rbp
	movl	n_nodes(%rip), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$26, %edx
	addl	%eax, %edx
	sarl	$6, %edx
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movl	%ebx, %ecx
	callq	fill_table
	movslq	%r15d, %rax
	movq	%rbp, (%r14,%rax,8)
	movq	%r12, 512(%r14,%rax,8)
	addq	$8, %rsp
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
	.size	make_tables, .Lfunc_end9-make_tables
	.cfi_endproc
                                        # -- End function
	.globl	make_all_neighbors      # -- Begin function make_all_neighbors
	.p2align	4, 0x90
	.type	make_all_neighbors,@function
make_all_neighbors:                     # @make_all_neighbors
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
	movl	%esi, %ebx
	movq	%rdi, %r14
	imull	$39, %esi, %edi
	callq	init_random
	movslq	%ebx, %rbx
	movq	512(%r14,%rbx,8), %rax
	movq	(%rax), %rdi
	movl	n_nodes(%rip), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$26, %edx
	addl	%eax, %edx
	sarl	$6, %edx
	movl	d_nodes(%rip), %ecx
	movl	local_p(%rip), %r8d
	movq	%r14, %rsi
	movl	%ebx, %r9d
	callq	make_neighbors
	movq	(%r14,%rbx,8), %rax
	leaq	512(%r14), %rsi
	movq	(%rax), %rdi
	movl	n_nodes(%rip), %eax
	movl	%eax, %edx
	sarl	$31, %edx
	shrl	$26, %edx
	addl	%eax, %edx
	sarl	$6, %edx
	movl	d_nodes(%rip), %ecx
	movl	local_p(%rip), %r8d
	movl	%ebx, %r9d
	callq	make_neighbors
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movslq	%esi, %rbx
	movq	512(%rdi,%rbx,8), %rax
	movq	(%rax), %rdi
	callq	update_from_coeffs
	movq	(%r14,%rbx,8), %rax
	movq	(%rax), %rdi
	callq	update_from_coeffs
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movl	%esi, %ebx
	movq	%rdi, %r14
	movl	%esi, %eax
	shll	$4, %eax
	leal	(%rax,%rbx), %edi
	callq	init_random
	movslq	%ebx, %rbx
	movq	512(%r14,%rbx,8), %rax
	movq	(%rax), %rdi
	movl	d_nodes(%rip), %esi
	callq	fill_from_fields
	movq	(%r14,%rbx,8), %rax
	movq	(%rax), %rdi
	movl	d_nodes(%rip), %esi
	callq	fill_from_fields
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
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
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	movslq	%esi, %rbx
	movq	512(%rdi,%rbx,8), %rax
	movq	(%rax), %rdi
	callq	localize_local
	movq	(%r14,%rbx,8), %rax
	movq	(%rax), %rdi
	callq	localize_local
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
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
	movq	%rcx, %r15
	movl	%esi, %r12d
	movq	%rdi, %rbx
	cmpl	$2, %edx
	jl	.LBB14_2
# %bb.1:
	movl	%r8d, %r14d
	movl	%edx, %ebp
	shrl	$31, %ebp
	addl	%edx, %ebp
	sarl	%ebp
	leal	(%r12,%rbp), %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movq	%r15, %rcx
	callq	do_all
	movq	%rbx, %rdi
	movl	%r12d, %esi
	movl	%ebp, %edx
	movq	%r15, %rcx
	movl	%r14d, %r8d
	callq	do_all
	jmp	.LBB14_3
.LBB14_2:
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	*%r15
.LBB14_3:
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
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movq	%rax, %rbx
	movl	$1024, %edi             # imm = 0x400
	callq	malloc
	movq	%rax, %r14
	xorl	%r15d, %r15d
	movl	$64, %eax
	xorl	%edx, %edx
	idivl	__NumNodes(%rip)
	movl	%eax, %ebp
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$make_tables, %ecx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	movl	%ebp, %r8d
	callq	do_all
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$make_all_neighbors, %ecx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	movl	%ebp, %r8d
	callq	do_all
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$update_all_from_coeffs, %ecx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	movl	%ebp, %r8d
	callq	do_all
	movl	$.L.str.13, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$fill_all_from_fields, %ecx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	movl	%ebp, %r8d
	callq	do_all
	movl	$.L.str.14, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$localize, %ecx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$64, %edx
	movl	%ebp, %r8d
	callq	do_all
	movl	$64, %eax
	xorl	%edx, %edx
	idivl	__NumNodes(%rip)
	movl	%eax, %r12d
	movl	$.L.str.15, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %r8d
	cmpl	__NumNodes(%rip), %r15d
	jl	.LBB15_2
	jmp	.LBB15_6
	.p2align	4, 0x90
.LBB15_5:                               #   in Loop: Header=BB15_2 Depth=1
	addl	$1, %r15d
	addl	%r12d, %r8d
	cmpl	__NumNodes(%rip), %r15d
	jge	.LBB15_6
.LBB15_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_4 Depth 2
	movl	%r15d, %ecx
	imull	%r12d, %ecx
	movslq	%ecx, %rcx
	movq	(%rbx,%rcx,8), %rdx
	movq	(%rdx), %rdx
	movslq	%r15d, %rsi
	movq	%rdx, (%r14,%rsi,8)
	movq	512(%rbx,%rcx,8), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 512(%r14,%rsi,8)
	movl	$1, %ecx
	movl	%r8d, %edx
	cmpl	%r12d, %ecx
	jge	.LBB15_5
	.p2align	4, 0x90
.LBB15_4:                               #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leal	-1(%rdx), %esi
	movslq	%esi, %rsi
	movq	(%rbx,%rsi,8), %rdi
	movl	n_nodes(%rip), %ebp
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	addl	%ebp, %eax
	sarl	$6, %eax
	addl	$-1, %eax
	cltq
	movq	(%rdi,%rax,8), %rax
	movslq	%edx, %rdx
	movq	(%rbx,%rdx,8), %rdi
	movq	(%rdi), %rdi
	movq	%rdi, 8(%rax)
	movq	512(%rbx,%rsi,8), %rax
	movl	n_nodes(%rip), %esi
	movl	%esi, %edi
	sarl	$31, %edi
	shrl	$26, %edi
	addl	%esi, %edi
	sarl	$6, %edi
	addl	$-1, %edi
	movslq	%edi, %rsi
	movq	(%rax,%rsi,8), %rax
	movq	512(%rbx,%rdx,8), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, 8(%rax)
	addl	$1, %ecx
	addl	$1, %edx
	cmpl	%r12d, %ecx
	jl	.LBB15_4
	jmp	.LBB15_5
.LBB15_6:
	movq	%r14, %rax
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	xorl	%eax, %eax
	callq	lrand48
	movslq	%ebx, %rcx
	cqto
	idivq	%rcx
	movq	%rdx, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	xorl	%eax, %eax
	callq	lrand48
	leal	(%rbx,%rbx), %ecx
	movslq	%ecx, %rcx
	cqto
	idivq	%rcx
	subl	%ebx, %edx
	leal	1(%rdx), %eax
	testl	%edx, %edx
	cmovsl	%edx, %eax
	popq	%rbx
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	xorl	%eax, %eax
	callq	drand48
	cvtsi2sd	%ebx, %xmm1
	divsd	.LCPI20_0(%rip), %xmm1
	addl	$1, percentcheck(%rip)
	xorl	%eax, %eax
	ucomisd	%xmm0, %xmm1
	seta	%al
	jbe	.LBB20_2
# %bb.1:
	addl	$1, numlocal(%rip)
.LBB20_2:
	popq	%rbx
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
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	%edi, %ebp
	cmpl	$6, %edi
	jl	.LBB22_2
# %bb.1:
	movq	40(%rbx), %rdi
	callq	atoi
	movl	%eax, DebugFlag(%rip)
	cmpl	$5, %ebp
	jge	.LBB22_4
.LBB22_5:
	movl	$4, __NumNodes(%rip)
	cmpl	$2, %ebp
	jge	.LBB22_7
.LBB22_8:
	movl	$64, n_nodes(%rip)
	cmpl	$3, %ebp
	jge	.LBB22_10
.LBB22_11:
	movl	$3, d_nodes(%rip)
	cmpl	$4, %ebp
	jge	.LBB22_13
.LBB22_14:
	movl	$75, local_p(%rip)
	jmp	.LBB22_15
.LBB22_2:
	movl	$0, DebugFlag(%rip)
	cmpl	$5, %ebp
	jl	.LBB22_5
.LBB22_4:
	movq	32(%rbx), %rdi
	callq	atoi
	movl	%eax, __NumNodes(%rip)
	cmpl	$2, %ebp
	jl	.LBB22_8
.LBB22_7:
	movq	8(%rbx), %rdi
	callq	atoi
	movl	%eax, n_nodes(%rip)
	cmpl	$3, %ebp
	jl	.LBB22_11
.LBB22_10:
	movq	16(%rbx), %rdi
	callq	atoi
	movl	%eax, d_nodes(%rip)
	cmpl	$4, %ebp
	jl	.LBB22_14
.LBB22_13:
	movq	24(%rbx), %rdi
	callq	atoi
	movl	%eax, local_p(%rip)
.LBB22_15:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
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
