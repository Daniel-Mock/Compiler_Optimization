	.text
	.file	"llvm-link"
	.globl	pat_insert              # -- Begin function pat_insert
	.p2align	4, 0x90
	.type	pat_insert,@function
pat_insert:                             # @pat_insert
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -16
	movq	%rdi, 16(%rsp)
	movq	%rsi, 32(%rsp)
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.1:
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.2:
	movq	16(%rsp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB0_3
# %bb.4:
	movq	16(%rsp), %rax
	movq	8(%rax), %rcx
	movq	(%rcx), %rcx
	andq	%rcx, (%rax)
	movq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	movq	24(%rcx), %rax
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, 24(%rsp)
	movsbl	17(%rax), %eax
	cmpl	%eax, 12(%rsp)
	jge	.LBB0_9
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax
	movsbl	17(%rax), %ecx
	movl	%ecx, 12(%rsp)
	movsbl	17(%rax), %edi
	movq	16(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	24(%rsp), %rcx
	testq	%rax, %rax
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	32(%rcx), %rax
	jmp	.LBB0_8
.LBB0_3:
	movq	$0, 64(%rsp)
	jmp	.LBB0_33
.LBB0_9:
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	24(%rsp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_24
# %bb.10:
	movl	$0, 12(%rsp)
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax
	movzbl	16(%rax), %eax
	cmpl	%eax, 12(%rsp)
	jge	.LBB0_16
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	24(%rsp), %rcx
	movq	8(%rcx), %rcx
	movslq	12(%rsp), %rdx
	shlq	$4, %rdx
	cmpq	(%rcx,%rdx), %rax
	je	.LBB0_13
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=1
	addl	$1, 12(%rsp)
	jmp	.LBB0_11
.LBB0_24:
	movl	$1, 12(%rsp)
	cmpl	$31, 12(%rsp)
	jg	.LBB0_28
	.p2align	4, 0x90
.LBB0_26:                               # =>This Inner Loop Header: Depth=1
	movl	12(%rsp), %edi
	movq	16(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movl	12(%rsp), %edi
	movq	24(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	%rax, %rbx
	jne	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=1
	addl	$1, 12(%rsp)
	cmpl	$31, 12(%rsp)
	jle	.LBB0_26
.LBB0_28:                               # %.critedge
	movq	32(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	16(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	32(%rsp), %rcx
	testq	%rax, %rax
	je	.LBB0_30
# %bb.29:
	movq	32(%rcx), %rdi
	movq	16(%rsp), %rsi
	movl	12(%rsp), %edx
	movq	32(%rsp), %rcx
	callq	insertR
	movq	32(%rsp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB0_31
.LBB0_16:
	movq	24(%rsp), %rax
	movzbl	16(%rax), %edi
	shlq	$4, %rdi
	addq	$16, %rdi
	callq	malloc
	movq	%rax, 72(%rsp)
	movl	$0, 60(%rsp)
	movl	$0, 12(%rsp)
	movq	%rax, 48(%rsp)
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_17 Depth=1
	movq	24(%rsp), %rax
	movslq	12(%rsp), %rdi
	shlq	$4, %rdi
	addq	8(%rax), %rdi
	movq	48(%rsp), %rsi
	movl	$16, %edx
	xorl	%eax, %eax
	callq	bcopy
	addl	$1, 12(%rsp)
	addq	$16, 48(%rsp)
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rax
	movzbl	16(%rax), %eax
	cmpl	%eax, 12(%rsp)
	jge	.LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	24(%rsp), %rcx
	movq	8(%rcx), %rcx
	movslq	12(%rsp), %rdx
	shlq	$4, %rdx
	cmpq	(%rcx,%rdx), %rax
	ja	.LBB0_19
# %bb.20:                               #   in Loop: Header=BB0_17 Depth=1
	movq	16(%rsp), %rax
	movq	8(%rax), %rdi
	movq	48(%rsp), %rsi
	movl	$16, %edx
	xorl	%eax, %eax
	callq	bcopy
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rbx, (%rax)
	movl	$1, 60(%rsp)
	addq	$16, 48(%rsp)
	jmp	.LBB0_17
.LBB0_21:
	cmpl	$0, 60(%rsp)
	jne	.LBB0_23
# %bb.22:
	movq	16(%rsp), %rax
	movq	8(%rax), %rdi
	movq	48(%rsp), %rsi
	movl	$16, %edx
	xorl	%eax, %eax
	callq	bcopy
.LBB0_23:
	movq	16(%rsp), %rax
	movq	8(%rax), %rdi
	callq	free
	movq	16(%rsp), %rdi
	callq	free
	movq	$0, 16(%rsp)
	movq	24(%rsp), %rax
	addb	$1, 16(%rax)
	movq	24(%rsp), %rax
	movq	8(%rax), %rdi
	callq	free
	movq	72(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	24(%rsp), %rax
	jmp	.LBB0_32
.LBB0_13:
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	24(%rsp), %rcx
	movq	8(%rcx), %rcx
	movslq	12(%rsp), %rdx
	shlq	$4, %rdx
	movq	%rax, 8(%rcx,%rdx)
	movq	16(%rsp), %rax
	movq	8(%rax), %rdi
	callq	free
	movq	16(%rsp), %rdi
	callq	free
	movq	$0, 16(%rsp)
	movq	24(%rsp), %rax
	jmp	.LBB0_32
.LBB0_30:
	movq	24(%rcx), %rdi
	movq	16(%rsp), %rsi
	movl	12(%rsp), %edx
	movq	32(%rsp), %rcx
	callq	insertR
	movq	32(%rsp), %rcx
	movq	%rax, 24(%rcx)
.LBB0_31:
	movq	16(%rsp), %rax
.LBB0_32:
	movq	%rax, 64(%rsp)
.LBB0_33:
	movl	$1, 44(%rsp)
	movq	64(%rsp), %rax
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
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
	movl	%edi, -12(%rsp)
	movq	%rsi, -8(%rsp)
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movl	%edx, 4(%rsp)
	movq	%rcx, 32(%rsp)
	movsbl	17(%rdi), %eax
	cmpl	%edx, %eax
	jge	.LBB2_2
# %bb.1:
	movq	8(%rsp), %rax
	movsbl	17(%rax), %eax
	movq	32(%rsp), %rcx
	movsbl	17(%rcx), %ecx
	cmpl	%ecx, %eax
	jg	.LBB2_7
.LBB2_2:
	movb	4(%rsp), %al
	movq	16(%rsp), %rcx
	movb	%al, 17(%rcx)
	movl	4(%rsp), %edi
	movq	16(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	16(%rsp), %rcx
	movq	%rcx, %rdx
	testq	%rax, %rax
	je	.LBB2_4
# %bb.3:
	movq	8(%rsp), %rdx
.LBB2_4:
	movq	%rdx, 24(%rcx)
	movl	4(%rsp), %edi
	movq	16(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	16(%rsp), %rcx
	movq	%rcx, %rdx
	testq	%rax, %rax
	jne	.LBB2_6
# %bb.5:
	movq	8(%rsp), %rdx
.LBB2_6:
	movq	%rdx, 32(%rcx)
	movq	16(%rsp), %rax
	jmp	.LBB2_11
.LBB2_7:
	movq	8(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	16(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	8(%rsp), %rcx
	testq	%rax, %rax
	je	.LBB2_9
# %bb.8:
	movq	32(%rcx), %rdi
	movq	16(%rsp), %rsi
	movl	4(%rsp), %edx
	movq	8(%rsp), %rcx
	callq	insertR
	movq	8(%rsp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB2_10
.LBB2_9:
	movq	24(%rcx), %rdi
	movq	16(%rsp), %rsi
	movl	4(%rsp), %edx
	movq	8(%rsp), %rcx
	callq	insertR
	movq	8(%rsp), %rcx
	movq	%rax, 24(%rcx)
.LBB2_10:
	movq	8(%rsp), %rax
.LBB2_11:
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rax
	addq	$40, %rsp
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -16
	movq	%rdi, 40(%rsp)
	movq	%rsi, 72(%rsp)
	testq	%rdi, %rdi
	je	.LBB3_3
# %bb.1:
	movq	40(%rsp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_3
# %bb.2:
	cmpq	$0, 16(%rsp)
	je	.LBB3_3
# %bb.4:
	movq	72(%rsp), %rax
	movq	%rax, 16(%rsp)
	movq	%rax, 32(%rsp)
	movq	%rax, 64(%rsp)
	jmp	.LBB3_5
	.p2align	4, 0x90
.LBB3_7:                                #   in Loop: Header=BB3_5 Depth=1
	movq	24(%rcx), %rax
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	movq	%rax, 16(%rsp)
	movsbl	17(%rax), %eax
	cmpl	%eax, 12(%rsp)
	jge	.LBB3_9
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	movsbl	17(%rax), %ecx
	movl	%ecx, 12(%rsp)
	movq	32(%rsp), %rcx
	movq	%rcx, 64(%rsp)
	movq	%rax, 32(%rsp)
	movsbl	17(%rax), %edi
	movq	40(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	16(%rsp), %rcx
	testq	%rax, %rax
	je	.LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	movq	32(%rcx), %rax
	jmp	.LBB3_8
.LBB3_9:
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	40(%rsp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB3_3
# %bb.10:
	movq	16(%rsp), %rax
	cmpb	$1, 16(%rax)
	jne	.LBB3_35
# %bb.11:
	movq	16(%rsp), %rax
	cmpb	$0, 17(%rax)
	je	.LBB3_3
# %bb.12:
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	40(%rsp), %rcx
	movq	8(%rcx), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB3_3
# %bb.13:
	movq	32(%rsp), %rax
	movq	%rax, 56(%rsp)
	movq	%rax, 48(%rsp)
	jmp	.LBB3_14
	.p2align	4, 0x90
.LBB3_16:                               #   in Loop: Header=BB3_14 Depth=1
	movq	24(%rcx), %rax
.LBB3_17:                               #   in Loop: Header=BB3_14 Depth=1
	movq	%rax, 56(%rsp)
	movsbl	17(%rax), %eax
	cmpl	%eax, 12(%rsp)
	jge	.LBB3_18
.LBB3_14:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rax
	movsbl	17(%rax), %ecx
	movl	%ecx, 12(%rsp)
	movq	%rax, 48(%rsp)
	movsbl	17(%rax), %edi
	movq	32(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	56(%rsp), %rcx
	testq	%rax, %rax
	je	.LBB3_16
# %bb.15:                               #   in Loop: Header=BB3_14 Depth=1
	movq	32(%rcx), %rax
	jmp	.LBB3_17
.LBB3_35:
	movl	$0, 12(%rsp)
	.p2align	4, 0x90
.LBB3_36:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	movzbl	16(%rax), %eax
	cmpl	%eax, 12(%rsp)
	jge	.LBB3_39
# %bb.37:                               #   in Loop: Header=BB3_36 Depth=1
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	16(%rsp), %rcx
	movq	8(%rcx), %rcx
	movslq	12(%rsp), %rdx
	shlq	$4, %rdx
	cmpq	(%rcx,%rdx), %rax
	je	.LBB3_39
# %bb.38:                               #   in Loop: Header=BB3_36 Depth=1
	addl	$1, 12(%rsp)
	jmp	.LBB3_36
.LBB3_39:
	movq	16(%rsp), %rax
	movzbl	16(%rax), %eax
	cmpl	%eax, 12(%rsp)
	jl	.LBB3_40
.LBB3_3:
	movl	$0, 24(%rsp)
.LBB3_47:
	movl	$1, 28(%rsp)
	movl	24(%rsp), %eax
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB3_40:
	.cfi_def_cfa_offset 96
	movq	16(%rsp), %rax
	movzbl	16(%rax), %edi
	shlq	$4, %rdi
	addq	$-16, %rdi
	callq	malloc
	movq	%rax, 56(%rsp)
	movl	$0, 12(%rsp)
	movq	%rax, 48(%rsp)
	jmp	.LBB3_41
	.p2align	4, 0x90
.LBB3_44:                               #   in Loop: Header=BB3_41 Depth=1
	addl	$1, 12(%rsp)
.LBB3_41:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rsp), %rax
	movzbl	16(%rax), %eax
	cmpl	%eax, 12(%rsp)
	jge	.LBB3_45
# %bb.42:                               #   in Loop: Header=BB3_41 Depth=1
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	16(%rsp), %rcx
	movq	8(%rcx), %rcx
	movslq	12(%rsp), %rdx
	shlq	$4, %rdx
	cmpq	(%rcx,%rdx), %rax
	je	.LBB3_44
# %bb.43:                               #   in Loop: Header=BB3_41 Depth=1
	movq	16(%rsp), %rax
	movslq	12(%rsp), %rdi
	shlq	$4, %rdi
	addq	8(%rax), %rdi
	movq	48(%rsp), %rsi
	leaq	16(%rsi), %rax
	movq	%rax, 48(%rsp)
	movl	$16, %edx
	xorl	%eax, %eax
	callq	bcopy
	jmp	.LBB3_44
.LBB3_45:
	movq	16(%rsp), %rax
	addb	$-1, 16(%rax)
	movq	16(%rsp), %rax
	movq	8(%rax), %rdi
	callq	free
	movq	56(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB3_46
.LBB3_18:
	movq	48(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	32(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	16(%rsp), %rcx
	movq	48(%rsp), %rdx
	testq	%rax, %rax
	je	.LBB3_20
# %bb.19:
	movq	%rcx, 32(%rdx)
	jmp	.LBB3_21
.LBB3_20:
	movq	%rcx, 24(%rdx)
.LBB3_21:
	movq	64(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	40(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	%rax, %rbx
	movq	32(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	40(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	movq	32(%rsp), %rcx
	testq	%rbx, %rbx
	je	.LBB3_26
# %bb.22:
	testq	%rax, %rax
	je	.LBB3_24
# %bb.23:
	movq	24(%rcx), %rax
	jmp	.LBB3_25
.LBB3_26:
	testq	%rax, %rax
	je	.LBB3_28
# %bb.27:
	movq	24(%rcx), %rax
	jmp	.LBB3_29
.LBB3_24:
	movq	32(%rcx), %rax
.LBB3_25:
	movq	64(%rsp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB3_30
.LBB3_28:
	movq	32(%rcx), %rax
.LBB3_29:
	movq	64(%rsp), %rcx
	movq	%rax, 24(%rcx)
.LBB3_30:
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_32
# %bb.31:
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB3_32:
	movq	16(%rsp), %rax
	movq	8(%rax), %rdi
	callq	free
	movq	16(%rsp), %rax
	cmpq	32(%rsp), %rax
	je	.LBB3_34
# %bb.33:
	movq	32(%rsp), %rax
	movq	(%rax), %rax
	movq	16(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	movq	16(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	32(%rsp), %rax
	movb	16(%rax), %al
	movq	16(%rsp), %rcx
	movb	%al, 16(%rcx)
.LBB3_34:
	movq	32(%rsp), %rdi
	callq	free
.LBB3_46:
	movl	$1, 24(%rsp)
	jmp	.LBB3_47
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdi, 16(%rsp)
	movq	%rsi, 48(%rsp)
	movq	$0, 32(%rsp)
	movq	%rsi, 8(%rsp)
	testq	%rsi, %rsi
	jne	.LBB4_2
# %bb.1:
	movq	$0, 40(%rsp)
	jmp	.LBB4_11
	.p2align	4, 0x90
.LBB4_6:                                #   in Loop: Header=BB4_2 Depth=1
	movq	24(%rcx), %rax
.LBB4_7:                                #   in Loop: Header=BB4_2 Depth=1
	movq	%rax, 8(%rsp)
	movsbl	17(%rax), %eax
	cmpl	%eax, 28(%rsp)
	jge	.LBB4_8
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	8(%rax), %rdx
	andq	(%rdx), %rcx
	cmpq	%rcx, (%rax)
	jne	.LBB4_4
# %bb.3:                                #   in Loop: Header=BB4_2 Depth=1
	movq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
.LBB4_4:                                #   in Loop: Header=BB4_2 Depth=1
	movq	8(%rsp), %rax
	movsbl	17(%rax), %ecx
	movl	%ecx, 28(%rsp)
	movsbl	17(%rax), %edi
	movq	16(%rsp), %rsi
	callq	bit
	movq	8(%rsp), %rcx
	testq	%rax, %rax
	je	.LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_2 Depth=1
	movq	32(%rcx), %rax
	jmp	.LBB4_7
.LBB4_8:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	8(%rax), %rdx
	andq	(%rdx), %rcx
	cmpq	%rcx, (%rax)
	je	.LBB4_10
# %bb.9:
	movq	32(%rsp), %rax
.LBB4_10:
	movq	%rax, 40(%rsp)
.LBB4_11:
	movl	$1, 24(%rsp)
	movq	40(%rsp), %rax
	addq	$56, %rsp
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
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$256, %rsp              # imm = 0x100
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$0, 84(%rsp)
	movl	%edi, 80(%rsp)
	movq	%rsi, 64(%rsp)
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movq	%rax, 48(%rsp)
	cmpl	$1, %edi
	jle	.LBB5_20
# %bb.1:
	movq	8(%rsi), %rdi
	movl	$.L.str.1, %esi
	callq	fopen
	movq	%rax, 56(%rsp)
	testq	%rax, %rax
	je	.LBB5_21
# %bb.2:
	movl	$40, %edi
	callq	malloc
	movq	%rax, 16(%rsp)
	testq	%rax, %rax
	je	.LBB5_3
# %bb.5:
	movq	16(%rsp), %rdi
	movl	$40, %esi
	callq	bzero
	movl	$16, %edi
	callq	malloc
	movq	16(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	16(%rsp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_6
# %bb.7:
	movq	16(%rsp), %rax
	movq	8(%rax), %rdi
	movl	$16, %esi
	callq	bzero
	movq	16(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)
	movl	$16, %edi
	callq	malloc
	movq	32(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	32(%rsp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_8
# %bb.9:
	movq	32(%rsp), %rax
	movq	8(%rax), %rdi
	movl	$1, %esi
	callq	bzero
	movq	16(%rsp), %rax
	movb	$1, 16(%rax)
	movq	16(%rsp), %rax
	movq	%rax, 32(%rax)
	movq	16(%rsp), %rcx
	movq	%rax, 24(%rcx)
	leaq	96(%rsp), %rbx
	leaq	44(%rsp), %r14
	leaq	24(%rsp), %r15
	jmp	.LBB5_10
	.p2align	4, 0x90
.LBB5_16:                               #   in Loop: Header=BB5_10 Depth=1
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rsi
	callq	pat_insert
	movq	%rax, 8(%rsp)
	cmpq	$0, 8(%rsp)
	je	.LBB5_18
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	movq	56(%rsp), %rdx
	movq	%rbx, %rdi
	movl	$128, %esi
	callq	fgets
	testq	%rax, %rax
	je	.LBB5_19
# %bb.11:                               #   in Loop: Header=BB5_10 Depth=1
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	sscanf
	movl	$40, %edi
	callq	malloc
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	je	.LBB5_3
# %bb.12:                               #   in Loop: Header=BB5_10 Depth=1
	movq	8(%rsp), %rdi
	movl	$40, %esi
	callq	bzero
	movl	$16, %edi
	callq	malloc
	movq	8(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	8(%rsp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_6
# %bb.13:                               #   in Loop: Header=BB5_10 Depth=1
	movq	8(%rsp), %rax
	movq	8(%rax), %rdi
	movl	$16, %esi
	callq	bzero
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)
	movl	$16, %edi
	callq	malloc
	movq	32(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	32(%rsp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB5_8
# %bb.14:                               #   in Loop: Header=BB5_10 Depth=1
	movq	32(%rsp), %rax
	movq	8(%rax), %rdi
	movl	$1, %esi
	callq	bzero
	movl	24(%rsp), %eax
	movq	8(%rsp), %rcx
	movq	%rax, (%rcx)
	movl	48(%rsp), %eax
	bswapl	%eax
	movl	%eax, 76(%rsp)
	movq	8(%rsp), %rcx
	movq	8(%rcx), %rcx
	movq	%rax, (%rcx)
	movl	24(%rsp), %edi
	movq	16(%rsp), %rsi
	callq	pat_search
	movq	%rax, 88(%rsp)
	movl	24(%rsp), %ecx
	cmpq	%rcx, (%rax)
	jne	.LBB5_16
# %bb.15:                               #   in Loop: Header=BB5_10 Depth=1
	movss	44(%rsp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	24(%rsp), %esi
	movl	$.L.str.7, %edi
	movb	$1, %al
	callq	printf
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf
	cmpq	$0, 8(%rsp)
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
	movq	(%rsi), %rsi
	movl	$.L.str, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$-1, %edi
	callq	exit
.LBB5_21:
	movq	64(%rsp), %rax
	movq	8(%rax), %rsi
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
