	.text
	.file	"llvm-link"
	.globl	pat_insert              # -- Begin function pat_insert
	.p2align	4, 0x90
	.type	pat_insert,@function
pat_insert:                             # @pat_insert
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
	xorl	%ebx, %ebx
	testq	%rsi, %rsi
	je	.LBB0_31
# %bb.1:
	movq	%rdi, %r14
	testq	%rdi, %rdi
	je	.LBB0_31
# %bb.2:
	cmpq	$0, 8(%r14)
	je	.LBB0_3
# %bb.4:
	movq	%rsi, %r15
	movq	8(%r14), %rax
	movq	(%rax), %rax
	andq	%rax, (%r14)
	movq	%rsi, %rbx
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	movq	24(%rbx), %rbx
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movsbl	17(%rbx), %eax
	cmpl	%eax, %ebp
	jge	.LBB0_9
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movsbl	17(%rbx), %ebp
	movq	(%r14), %rsi
	movl	%ebp, %edi
	callq	bit
	testq	%rax, %rax
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	32(%rbx), %rbx
	jmp	.LBB0_8
.LBB0_9:
	movq	(%r14), %rax
	cmpq	(%rbx), %rax
	jne	.LBB0_10
# %bb.14:                               # %.preheader
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movzbl	16(%rbx), %edx
	cmpl	%edx, %ecx
	jge	.LBB0_19
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=1
	movq	8(%r14), %rdx
	movq	(%rdx), %rdx
	movq	8(%rbx), %rsi
	cmpq	(%rsi,%rax), %rdx
	je	.LBB0_17
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=1
	addl	$1, %ecx
	addq	$16, %rax
	jmp	.LBB0_15
.LBB0_3:
	xorl	%ebx, %ebx
	jmp	.LBB0_31
.LBB0_10:                               # %.preheader1
	movl	$1, %ebp
	cmpl	$31, %ebp
	jg	.LBB0_27
	.p2align	4, 0x90
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rsi
	movl	%ebp, %edi
	callq	bit
	movq	%rax, %r12
	movq	(%rbx), %rsi
	movl	%ebp, %edi
	callq	bit
	cmpq	%rax, %r12
	jne	.LBB0_27
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	addl	$1, %ebp
	cmpl	$31, %ebp
	jle	.LBB0_12
.LBB0_27:                               # %.critedge
	movsbl	17(%r15), %edi
	movq	(%r14), %rsi
	callq	bit
	testq	%rax, %rax
	je	.LBB0_29
# %bb.28:
	movq	32(%r15), %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movq	%r15, %rcx
	callq	insertR
	movq	%rax, 32(%r15)
	jmp	.LBB0_30
.LBB0_19:
	movzbl	16(%rbx), %edi
	shlq	$4, %rdi
	addq	$16, %rdi
	callq	malloc
	movq	%rax, %r12
	movl	$4294967295, %r13d      # imm = 0xFFFFFFFF
	xorl	%ebp, %ebp
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB0_20
	.p2align	4, 0x90
.LBB0_22:                               #   in Loop: Header=BB0_20 Depth=1
	addq	8(%rbx), %rdi
	movl	$16, %edx
	movq	%r12, %rsi
	xorl	%eax, %eax
	callq	bcopy
	addl	$1, %ebp
	addq	$16, %r12
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movzbl	16(%rbx), %eax
	cmpl	%eax, %ebp
	jge	.LBB0_24
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movq	8(%r14), %rax
	movq	(%rax), %rax
	movq	8(%rbx), %rcx
	movslq	%ebp, %rdi
	shlq	$4, %rdi
	cmpq	(%rcx,%rdi), %rax
	ja	.LBB0_22
# %bb.23:                               #   in Loop: Header=BB0_20 Depth=1
	movq	8(%r14), %rdi
	movl	$16, %edx
	movq	%r12, %rsi
	xorl	%eax, %eax
	callq	bcopy
	movq	8(%r14), %rax
	movq	%r13, (%rax)
	movl	$1, %r15d
	addq	$16, %r12
	jmp	.LBB0_20
.LBB0_24:
	testl	%r15d, %r15d
	jne	.LBB0_26
# %bb.25:
	movq	8(%r14), %rdi
	movl	$16, %edx
	movq	%r12, %rsi
	xorl	%eax, %eax
	callq	bcopy
.LBB0_26:
	movq	8(%r14), %rdi
	callq	free
	movq	%r14, %rdi
	callq	free
	addb	$1, 16(%rbx)
	movq	8(%rbx), %rdi
	callq	free
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, 8(%rbx)
	jmp	.LBB0_31
.LBB0_17:
	movq	8(%r14), %rcx
	movq	8(%rcx), %rcx
	movq	8(%rbx), %rdx
	movq	%rcx, 8(%rdx,%rax)
	movq	8(%r14), %rdi
	callq	free
	movq	%r14, %rdi
	callq	free
	jmp	.LBB0_31
.LBB0_29:
	movq	24(%r15), %rdi
	movq	%r14, %rsi
	movl	%ebp, %edx
	movq	%r15, %rcx
	callq	insertR
	movq	%rax, 24(%r15)
.LBB0_30:
	movq	%r14, %rbx
.LBB0_31:
	movq	%rbx, %rax
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
.Lfunc_end0:
	.size	pat_insert, .Lfunc_end0-pat_insert
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bit
	.type	bit,@function
bit:                                    # @bit
	.cfi_startproc
# %bb.0:
	movb	$31, %cl
	subb	%dil, %cl
	movl	$1, %eax
	shll	%cl, %eax
	cltq
	andq	%rsi, %rax
	retq
.Lfunc_end1:
	.size	bit, .Lfunc_end1-bit
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function insertR
	.type	insertR,@function
insertR:                                # @insertR
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
	movl	%edx, %ebp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movsbl	17(%rdi), %eax
	cmpl	%edx, %eax
	jge	.LBB2_2
# %bb.1:
	movsbl	17(%r14), %eax
	movsbl	17(%rcx), %ecx
	cmpl	%ecx, %eax
	jg	.LBB2_3
.LBB2_2:
	movb	%bpl, 17(%rbx)
	movq	(%rbx), %rsi
	movl	%ebp, %edi
	callq	bit
	testq	%rax, %rax
	movq	%rbx, %rax
	cmovneq	%r14, %rax
	movq	%rax, 24(%rbx)
	movq	(%rbx), %rsi
	movl	%ebp, %edi
	callq	bit
	testq	%rax, %rax
	cmovneq	%rbx, %r14
	movq	%r14, 32(%rbx)
	jmp	.LBB2_7
.LBB2_3:
	movsbl	17(%r14), %edi
	movq	(%rbx), %rsi
	callq	bit
	testq	%rax, %rax
	je	.LBB2_5
# %bb.4:
	movq	32(%r14), %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	movq	%r14, %rcx
	callq	insertR
	movq	%rax, 32(%r14)
	jmp	.LBB2_6
.LBB2_5:
	movq	24(%r14), %rdi
	movq	%rbx, %rsi
	movl	%ebp, %edx
	movq	%r14, %rcx
	callq	insertR
	movq	%rax, 24(%r14)
.LBB2_6:
	movq	%r14, %rbx
.LBB2_7:
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	insertR, .Lfunc_end2-insertR
	.cfi_endproc
                                        # -- End function
	.globl	pat_remove              # -- Begin function pat_remove
	.p2align	4, 0x90
	.type	pat_remove,@function
pat_remove:                             # @pat_remove
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
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB3_45
# %bb.1:
	movq	%rdi, %r14
	cmpq	$0, 8(%rdi)
	je	.LBB3_45
# %bb.2:
	xorl	%ecx, %ecx
	testb	%cl, %cl
	jne	.LBB3_45
# %bb.3:                                # %.preheader2
	movq	%rsi, %r15
	movq	%rsi, %rbx
	jmp	.LBB3_4
	.p2align	4, 0x90
.LBB3_6:                                #   in Loop: Header=BB3_4 Depth=1
	movq	24(%rbx), %r15
.LBB3_7:                                #   in Loop: Header=BB3_4 Depth=1
	movsbl	17(%r15), %eax
	cmpl	%eax, %ebp
	jge	.LBB3_8
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %r12
	movq	%r15, %rbx
	movsbl	17(%r15), %ebp
	movq	(%r14), %rsi
	movl	%ebp, %edi
	callq	bit
	testq	%rax, %rax
	je	.LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=1
	movq	32(%rbx), %r15
	jmp	.LBB3_7
.LBB3_8:
	movq	(%r15), %rcx
	xorl	%eax, %eax
	cmpq	(%r14), %rcx
	jne	.LBB3_45
# %bb.9:
	cmpb	$1, 16(%r15)
	jne	.LBB3_10
# %bb.14:
	cmpb	$0, 17(%r15)
	je	.LBB3_45
# %bb.15:
	movq	8(%r15), %rcx
	movq	(%rcx), %rcx
	movq	8(%r14), %rdx
	cmpq	(%rdx), %rcx
	jne	.LBB3_45
# %bb.16:                               # %.preheader
	movq	%rbx, %rax
	jmp	.LBB3_17
	.p2align	4, 0x90
.LBB3_19:                               #   in Loop: Header=BB3_17 Depth=1
	movq	24(%r13), %rax
.LBB3_20:                               #   in Loop: Header=BB3_17 Depth=1
	movsbl	17(%rax), %ecx
	cmpl	%ecx, %ebp
	jge	.LBB3_21
.LBB3_17:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %r13
	movsbl	17(%rax), %ebp
	movq	(%rbx), %rsi
	movl	%ebp, %edi
	callq	bit
	testq	%rax, %rax
	je	.LBB3_19
# %bb.18:                               #   in Loop: Header=BB3_17 Depth=1
	movq	32(%r13), %rax
	jmp	.LBB3_20
.LBB3_10:                               # %.preheader1
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_11:                               # =>This Inner Loop Header: Depth=1
	movzbl	16(%r15), %edx
	cmpl	%edx, %ecx
	jge	.LBB3_37
# %bb.12:                               #   in Loop: Header=BB3_11 Depth=1
	movq	8(%r14), %rdx
	movq	(%rdx), %rdx
	movq	8(%r15), %rsi
	cmpq	(%rsi,%rax), %rdx
	je	.LBB3_37
# %bb.13:                               #   in Loop: Header=BB3_11 Depth=1
	addl	$1, %ecx
	addq	$16, %rax
	jmp	.LBB3_11
.LBB3_37:
	movzbl	16(%r15), %edx
	xorl	%eax, %eax
	cmpl	%edx, %ecx
	jge	.LBB3_45
# %bb.38:
	movzbl	16(%r15), %edi
	shlq	$4, %rdi
	addq	$-16, %rdi
	callq	malloc
	movq	%rax, %r12
	xorl	%ebp, %ebp
	movq	%rax, %r13
	xorl	%ebx, %ebx
	jmp	.LBB3_39
	.p2align	4, 0x90
.LBB3_42:                               #   in Loop: Header=BB3_39 Depth=1
	addl	$1, %ebx
	addq	$16, %rbp
.LBB3_39:                               # =>This Inner Loop Header: Depth=1
	movzbl	16(%r15), %eax
	cmpl	%eax, %ebx
	jge	.LBB3_43
# %bb.40:                               #   in Loop: Header=BB3_39 Depth=1
	movq	8(%r14), %rax
	movq	(%rax), %rax
	movq	8(%r15), %rcx
	cmpq	(%rcx,%rbp), %rax
	je	.LBB3_42
# %bb.41:                               #   in Loop: Header=BB3_39 Depth=1
	movq	8(%r15), %rdi
	addq	%rbp, %rdi
	movq	%r13, %rsi
	addq	$16, %r13
	movl	$16, %edx
	xorl	%eax, %eax
	callq	bcopy
	jmp	.LBB3_42
.LBB3_43:
	addb	$-1, 16(%r15)
	movq	8(%r15), %rdi
	callq	free
	movq	%r12, 8(%r15)
	jmp	.LBB3_44
.LBB3_21:
	movsbl	17(%r13), %edi
	movq	(%rbx), %rsi
	callq	bit
	testq	%rax, %rax
	je	.LBB3_23
# %bb.22:
	movq	%r15, 32(%r13)
	jmp	.LBB3_24
.LBB3_23:
	movq	%r15, 24(%r13)
.LBB3_24:
	movsbl	17(%r12), %edi
	movq	(%r14), %rsi
	callq	bit
	movq	%rax, %rbp
	movsbl	17(%rbx), %edi
	movq	(%r14), %rsi
	callq	bit
	testq	%rbp, %rbp
	je	.LBB3_28
# %bb.25:
	testq	%rax, %rax
	je	.LBB3_27
# %bb.26:
	movq	24(%rbx), %rax
	movq	%rax, 32(%r12)
	jmp	.LBB3_32
.LBB3_28:
	testq	%rax, %rax
	je	.LBB3_30
# %bb.29:
	movq	24(%rbx), %rax
	jmp	.LBB3_31
.LBB3_27:
	movq	32(%rbx), %rax
	movq	%rax, 32(%r12)
	jmp	.LBB3_32
.LBB3_30:
	movq	32(%rbx), %rax
.LBB3_31:
	movq	%rax, 24(%r12)
.LBB3_32:
	movq	8(%r15), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_34
# %bb.33:
	movq	8(%r15), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB3_34:
	movq	8(%r15), %rdi
	callq	free
	cmpq	%rbx, %r15
	je	.LBB3_36
# %bb.35:
	movq	(%rbx), %rax
	movq	%rax, (%r15)
	movq	8(%rbx), %rax
	movq	%rax, 8(%r15)
	movb	16(%rbx), %al
	movb	%al, 16(%r15)
.LBB3_36:
	movq	%rbx, %rdi
	callq	free
.LBB3_44:
	movl	$1, %eax
.LBB3_45:
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
.Lfunc_end3:
	.size	pat_remove, .Lfunc_end3-pat_remove
	.cfi_endproc
                                        # -- End function
	.globl	pat_search              # -- Begin function pat_search
	.p2align	4, 0x90
	.type	pat_search,@function
pat_search:                             # @pat_search
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
	testq	%rsi, %rsi
	je	.LBB4_1
# %bb.2:                                # %.preheader
	movq	%rsi, %rbx
	movq	%rdi, %r15
	xorl	%r14d, %r14d
	jmp	.LBB4_3
	.p2align	4, 0x90
.LBB4_5:                                #   in Loop: Header=BB4_3 Depth=1
	movq	24(%rbx), %rbx
.LBB4_6:                                #   in Loop: Header=BB4_3 Depth=1
	movsbl	17(%rbx), %eax
	cmpl	%eax, %ebp
	jge	.LBB4_7
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rbx), %rax
	movq	(%rax), %rax
	andq	%r15, %rax
	cmpq	%rax, (%rbx)
	cmoveq	%rbx, %r14
	movsbl	17(%rbx), %ebp
	movl	%ebp, %edi
	movq	%r15, %rsi
	callq	bit
	testq	%rax, %rax
	je	.LBB4_5
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	movq	32(%rbx), %rbx
	jmp	.LBB4_6
.LBB4_7:
	movq	8(%rbx), %rax
	andq	(%rax), %r15
	cmpq	%r15, (%rbx)
	cmoveq	%rbx, %r14
	jmp	.LBB4_8
.LBB4_1:
	xorl	%r14d, %r14d
.LBB4_8:
	movq	%r14, %rax
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
.Lfunc_end4:
	.size	pat_search, .Lfunc_end4-pat_search
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
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	cmpl	$1, %edi
	jle	.LBB5_20
# %bb.1:
	movq	8(%rbx), %rdi
	movl	$.L.str.1, %esi
	callq	fopen
	testq	%rax, %rax
	je	.LBB5_21
# %bb.2:
	movq	%rax, %r14
	movl	$40, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB5_3
# %bb.5:
	movq	%rax, %rbx
	movl	$40, %esi
	movq	%rax, %rdi
	callq	bzero
	movl	$16, %edi
	callq	malloc
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB5_6
# %bb.7:
	movq	8(%rbx), %rdi
	movl	$16, %esi
	callq	bzero
	movq	8(%rbx), %rbp
	movl	$16, %edi
	callq	malloc
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.LBB5_8
# %bb.9:
	movq	8(%rbp), %rdi
	movl	$1, %esi
	callq	bzero
	movb	$1, 16(%rbx)
	movq	%rbx, 32(%rbx)
	movq	%rbx, 24(%rbx)
	leaq	16(%rsp), %r15
	movl	$4294967295, %r12d      # imm = 0xFFFFFFFF
	jmp	.LBB5_10
	.p2align	4, 0x90
.LBB5_16:                               #   in Loop: Header=BB5_10 Depth=1
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	pat_insert
	movq	%rax, %rbp
	testq	%rbp, %rbp
	je	.LBB5_18
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movl	$128, %esi
	movq	%r14, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB5_19
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=1
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	leaq	12(%rsp), %rdx
	leaq	8(%rsp), %rcx
	xorl	%eax, %eax
	callq	sscanf
	movl	$40, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB5_3
# %bb.12:                               #   in Loop: Header=BB5_10 Depth=1
	movq	%rax, %rbp
	movl	$40, %esi
	movq	%rax, %rdi
	callq	bzero
	movl	$16, %edi
	callq	malloc
	movq	%rax, 8(%rbp)
	testq	%rax, %rax
	je	.LBB5_6
# %bb.13:                               #   in Loop: Header=BB5_10 Depth=1
	movq	8(%rbp), %rdi
	movl	$16, %esi
	callq	bzero
	movq	8(%rbp), %r13
	movl	$16, %edi
	callq	malloc
	movq	%rax, 8(%r13)
	testq	%rax, %rax
	je	.LBB5_8
# %bb.14:                               #   in Loop: Header=BB5_10 Depth=1
	movq	8(%r13), %rdi
	movl	$1, %esi
	callq	bzero
	movl	8(%rsp), %eax
	movq	%rax, (%rbp)
	movq	8(%rbp), %rax
	movq	%r12, (%rax)
	movl	8(%rsp), %edi
	movq	%rbx, %rsi
	callq	pat_search
	movl	8(%rsp), %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB5_16
# %bb.15:                               #   in Loop: Header=BB5_10 Depth=1
	movss	12(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	8(%rsp), %esi
	movl	$.L.str.7, %edi
	movb	$1, %al
	callq	printf
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf
	testq	%rbp, %rbp
	jne	.LBB5_10
.LBB5_18:
	movq	stderr(%rip), %rdi
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.LBB5_6:
	movl	$.L.str.4, %edi
	jmp	.LBB5_4
.LBB5_3:
	movl	$.L.str.3, %edi
	jmp	.LBB5_4
.LBB5_8:
	movl	$.L.str.5, %edi
.LBB5_4:
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB5_19:
	xorl	%edi, %edi
	callq	exit
.LBB5_20:
	movq	(%rbx), %rsi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$-1, %edi
	callq	exit
.LBB5_21:
	movq	8(%rbx), %rsi
	movl	$.L.str.2, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$1, %edi
	callq	exit
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: %s <TCP stream>\n"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"File %s doesn't seem to exist\n"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Allocating p-trie node"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Allocating p-trie mask data"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Allocating p-trie mask's node data"
	.size	.L.str.5, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%f %d"
	.size	.L.str.6, 6

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%f %08x: "
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Found.\n"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Failed on pat_insert\n"
	.size	.L.str.9, 22


	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
