	.text
	.file	"llvm-link"
	.globl	bit_count               # -- Begin function bit_count
	.p2align	4, 0x90
	.type	bit_count,@function
bit_count:                              # @bit_count
	.cfi_startproc
# %bb.0:
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB0_2
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	addl	$1, %eax
	leaq	-1(%rdi), %rcx
	andq	%rcx, %rdi
	jne	.LBB0_1
.LBB0_2:
	retq
.Lfunc_end0:
	.size	bit_count, .Lfunc_end0-bit_count
	.cfi_endproc
                                        # -- End function
	.globl	bitcount                # -- Begin function bitcount
	.p2align	4, 0x90
	.type	bitcount,@function
bitcount:                               # @bitcount
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	shrq	%rax
	andl	$1431655765, %eax       # imm = 0x55555555
	andl	$1431655765, %edi       # imm = 0x55555555
	addq	%rax, %rdi
	movq	%rdi, %rax
	shrq	$2, %rax
	andl	$858993459, %eax        # imm = 0x33333333
	andl	$858993459, %edi        # imm = 0x33333333
	addq	%rax, %rdi
	movl	%edi, %eax
	andl	$1886417008, %eax       # imm = 0x70707070
	shrq	$4, %rax
	andl	$117901063, %edi        # imm = 0x7070707
	addq	%rax, %rdi
	movl	%edi, %eax
	andl	$251662080, %eax        # imm = 0xF000F00
	shrq	$8, %rax
	andl	$983055, %edi           # imm = 0xF000F
	addq	%rax, %rdi
	movzwl	%di, %ecx
	movq	%rdi, %rax
	shrq	$16, %rax
	addl	%ecx, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end1:
	.size	bitcount, .Lfunc_end1-bitcount
	.cfi_endproc
                                        # -- End function
	.globl	ntbl_bitcount           # -- Begin function ntbl_bitcount
	.p2align	4, 0x90
	.type	ntbl_bitcount,@function
ntbl_bitcount:                          # @ntbl_bitcount
	.cfi_startproc
# %bb.0:
	movl	%edi, %eax
	andl	$15, %eax
	movsbl	bits(%rax), %eax
	movzbl	%dil, %ecx
	shrq	$4, %rcx
	movsbl	bits(%rcx), %ecx
	addl	%eax, %ecx
	movl	%edi, %eax
	shrl	$8, %eax
	andl	$15, %eax
	movsbl	bits(%rax), %eax
	addl	%ecx, %eax
	movzwl	%di, %ecx
	shrq	$12, %rcx
	movsbl	bits(%rcx), %ecx
	addl	%eax, %ecx
	movl	%edi, %eax
	shrl	$16, %eax
	andl	$15, %eax
	movsbl	bits(%rax), %eax
	addl	%ecx, %eax
	movl	%edi, %ecx
	shrl	$20, %ecx
	andl	$15, %ecx
	movsbl	bits(%rcx), %ecx
	addl	%eax, %ecx
	movl	%edi, %eax
	shrl	$24, %edi
	andl	$15, %edi
	movsbl	bits(%rdi), %edx
	addl	%ecx, %edx
	shrq	$28, %rax
	movsbl	bits(%rax), %eax
	addl	%edx, %eax
	retq
.Lfunc_end2:
	.size	ntbl_bitcount, .Lfunc_end2-ntbl_bitcount
	.cfi_endproc
                                        # -- End function
	.globl	BW_btbl_bitcount        # -- Begin function BW_btbl_bitcount
	.p2align	4, 0x90
	.type	BW_btbl_bitcount,@function
BW_btbl_bitcount:                       # @BW_btbl_bitcount
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movzbl	%dil, %eax
	movsbl	bits(%rax), %eax
	movzbl	-7(%rsp), %ecx
	movsbl	bits(%rcx), %ecx
	addl	%eax, %ecx
	movzbl	-5(%rsp), %eax
	movsbl	bits(%rax), %edx
	addl	%ecx, %edx
	movzbl	-6(%rsp), %eax
	movsbl	bits(%rax), %eax
	addl	%edx, %eax
	retq
.Lfunc_end3:
	.size	BW_btbl_bitcount, .Lfunc_end3-BW_btbl_bitcount
	.cfi_endproc
                                        # -- End function
	.globl	AR_btbl_bitcount        # -- Begin function AR_btbl_bitcount
	.p2align	4, 0x90
	.type	AR_btbl_bitcount,@function
AR_btbl_bitcount:                       # @AR_btbl_bitcount
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movzbl	%dil, %eax
	movsbl	bits(%rax), %eax
	movzbl	-7(%rsp), %ecx
	movsbl	bits(%rcx), %ecx
	addl	%eax, %ecx
	movzbl	-6(%rsp), %eax
	movsbl	bits(%rax), %edx
	addl	%ecx, %edx
	movzbl	-5(%rsp), %eax
	movsbl	bits(%rax), %eax
	addl	%edx, %eax
	retq
.Lfunc_end4:
	.size	AR_btbl_bitcount, .Lfunc_end4-AR_btbl_bitcount
	.cfi_endproc
                                        # -- End function
	.globl	ntbl_bitcnt             # -- Begin function ntbl_bitcnt
	.p2align	4, 0x90
	.type	ntbl_bitcnt,@function
ntbl_bitcnt:                            # @ntbl_bitcnt
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %eax
	andl	$15, %eax
	movsbl	bits.1(%rax), %ebx
	sarq	$4, %rdi
	je	.LBB5_2
# %bb.1:
	callq	ntbl_bitcnt
	addl	%eax, %ebx
.LBB5_2:
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	ntbl_bitcnt, .Lfunc_end5-ntbl_bitcnt
	.cfi_endproc
                                        # -- End function
	.globl	btbl_bitcnt             # -- Begin function btbl_bitcnt
	.p2align	4, 0x90
	.type	btbl_bitcnt,@function
btbl_bitcnt:                            # @btbl_bitcnt
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movzbl	%dil, %eax
	movsbl	bits.1(%rax), %ebx
	sarq	$8, %rdi
	movq	%rdi, 8(%rsp)
	je	.LBB6_2
# %bb.1:
	movq	8(%rsp), %rdi
	callq	btbl_bitcnt
	addl	%eax, %ebx
.LBB6_2:
	movl	%ebx, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	btbl_bitcnt, .Lfunc_end6-btbl_bitcnt
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI7_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI7_1:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	main
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
	cmpl	$1, %edi
	jle	.LBB7_8
# %bb.1:
	movq	8(%rsi), %rdi
	callq	atoi
	movl	%eax, %ebx
	movl	$.L.str.8, %edi
	callq	puts
	xorl	%ebp, %ebp
	movsd	.LCPI7_0(%rip), %xmm1   # xmm1 = mem[0],zero
	xorps	%xmm0, %xmm0
	movslq	%ebx, %r13
                                        # implicit-def: $ebx
                                        # implicit-def: $r12d
	cmpl	$6, %ebp
	jle	.LBB7_3
	jmp	.LBB7_7
	.p2align	4, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=1
	callq	clock
	subq	24(%rsp), %rax          # 8-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	.LCPI7_1(%rip), %xmm0
	movsd	32(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movapd	%xmm0, %xmm2
	movl	8(%rsp), %ebx           # 4-byte Reload
	cmoval	%ebp, %ebx
	minsd	%xmm1, %xmm2
	movsd	%xmm2, 8(%rsp)          # 8-byte Spill
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	movapd	%xmm0, %xmm2
	maxsd	%xmm1, %xmm2
	movsd	%xmm2, (%rsp)           # 8-byte Spill
	movl	20(%rsp), %r12d         # 4-byte Reload
	cmoval	%ebp, %r12d
	movq	main.text(,%r14,8), %rsi
	movl	$.L.str.9, %edi
	movq	%r15, %rdx
	movb	$1, %al
	callq	printf
	addl	$1, %ebp
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	cmpl	$6, %ebp
	jg	.LBB7_7
.LBB7_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	movsd	%xmm1, 32(%rsp)         # 8-byte Spill
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movl	%ebx, 8(%rsp)           # 4-byte Spill
	movl	%r12d, 20(%rsp)         # 4-byte Spill
	callq	clock
	movq	%rax, 24(%rsp)          # 8-byte Spill
	callq	rand
	movslq	%eax, %rbx
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB7_4:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%ebp, %r14
	cmpq	%r13, %r12
	jge	.LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=2
	movq	%rbx, %rdi
	callq	*main.pBitCntFunc(,%r14,8)
	cltq
	addq	%rax, %r15
	addq	$1, %r12
	addq	$13, %rbx
	jmp	.LBB7_4
.LBB7_7:
	movslq	%ebx, %rax
	movq	main.text(,%rax,8), %rsi
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	movslq	%r12d, %rax
	movq	main.text(,%rax,8), %rsi
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf
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
.LBB7_8:
	.cfi_def_cfa_offset 96
	movq	stderr(%rip), %rdi
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$-1, %edi
	callq	exit
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function bit_shifter
	.type	bit_shifter,@function
bit_shifter:                            # @bit_shifter
	.cfi_startproc
# %bb.0:
	xorl	%esi, %esi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	testq	%rdi, %rdi
	setne	%dl
	cmpq	$64, %rsi
	setb	%cl
	andb	%dl, %cl
	cmpb	$1, %cl
	jne	.LBB8_3
# %bb.2:                                #   in Loop: Header=BB8_1 Depth=1
	movl	%edi, %ecx
	andl	$1, %ecx
	addl	%ecx, %eax
	sarq	%rdi
	addq	$1, %rsi
	jmp	.LBB8_1
.LBB8_3:
	retq
.Lfunc_end8:
	.size	bit_shifter, .Lfunc_end8-bit_shifter
	.cfi_endproc
                                        # -- End function
	.globl	bfopen                  # -- Begin function bfopen
	.p2align	4, 0x90
	.type	bfopen,@function
bfopen:                                 # @bfopen
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
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	$16, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB9_5
# %bb.1:
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	fopen
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB9_4
# %bb.2:
	movb	$0, 9(%rbx)
	movb	$0, 11(%rbx)
	jmp	.LBB9_6
.LBB9_4:
	movq	%rbx, %rdi
	callq	free
.LBB9_5:
	xorl	%ebx, %ebx
.LBB9_6:
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end9:
	.size	bfopen, .Lfunc_end9-bfopen
	.cfi_endproc
                                        # -- End function
	.globl	bfread                  # -- Begin function bfread
	.p2align	4, 0x90
	.type	bfread,@function
bfread:                                 # @bfread
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	cmpb	$0, 9(%rdi)
	jne	.LBB10_2
# %bb.1:
	movq	(%rbx), %rdi
	callq	fgetc
	movb	%al, 8(%rbx)
	movb	$8, 9(%rbx)
.LBB10_2:
	movb	9(%rbx), %al
	addb	$-1, %al
	movb	%al, 9(%rbx)
	movsbl	8(%rbx), %ecx
	movzbl	%al, %edx
	xorl	%eax, %eax
	btl	%edx, %ecx
	setb	%al
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end10:
	.size	bfread, .Lfunc_end10-bfread
	.cfi_endproc
                                        # -- End function
	.globl	bfwrite                 # -- Begin function bfwrite
	.p2align	4, 0x90
	.type	bfwrite,@function
bfwrite:                                # @bfwrite
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
	movl	%edi, %r14d
	cmpb	$8, 11(%rsi)
	jne	.LBB11_2
# %bb.1:
	movsbl	10(%rbx), %edi
	movq	(%rbx), %rsi
	callq	fputc
	movb	$0, 11(%rbx)
.LBB11_2:
	addb	$1, 11(%rbx)
	movzbl	10(%rbx), %eax
	andl	$1, %r14d
	leal	(%r14,%rax,2), %eax
	movb	%al, 10(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	bfwrite, .Lfunc_end11-bfwrite
	.cfi_endproc
                                        # -- End function
	.globl	bfclose                 # -- Begin function bfclose
	.p2align	4, 0x90
	.type	bfclose,@function
bfclose:                                # @bfclose
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	callq	fclose
	movq	%rbx, %rdi
	callq	free
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	bfclose, .Lfunc_end12-bfclose
	.cfi_endproc
                                        # -- End function
	.globl	bitstring               # -- Begin function bitstring
	.p2align	4, 0x90
	.type	bitstring,@function
bitstring:                              # @bitstring
	.cfi_startproc
# %bb.0:
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movl	%edx, %r9d
	sarl	$2, %r9d
	addl	%edx, %r9d
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%edx, %eax
	andl	$-4, %eax
	xorl	%edx, %edx
	cmpl	%eax, %ecx
	sete	%dl
	subl	%r9d, %edx
	addl	%r8d, %edx
	xorl	%eax, %eax
	cmpl	%edx, %eax
	jge	.LBB13_2
	.p2align	4, 0x90
.LBB13_9:                               # =>This Inner Loop Header: Depth=1
	movb	$32, (%rdi,%rax)
	addq	$1, %rax
	cmpl	%edx, %eax
	jl	.LBB13_9
.LBB13_2:                               # %.preheader
	addl	$-1, %ecx
	addq	%rax, %rdi
	testl	%ecx, %ecx
	jns	.LBB13_4
	jmp	.LBB13_8
	.p2align	4, 0x90
.LBB13_7:                               #   in Loop: Header=BB13_4 Depth=1
	addl	$-1, %ecx
	testl	%ecx, %ecx
	js	.LBB13_8
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rax
	shrq	%cl, %rax
	andb	$1, %al
	orb	$48, %al
	movb	%al, (%rdi)
	addq	$1, %rdi
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%ecx, %eax
	andl	$-4, %eax
	cmpl	%eax, %ecx
	jne	.LBB13_7
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	testl	%ecx, %ecx
	je	.LBB13_7
# %bb.6:                                #   in Loop: Header=BB13_4 Depth=1
	movb	$32, (%rdi)
	addq	$1, %rdi
	jmp	.LBB13_7
.LBB13_8:
	movb	$0, (%rdi)
	retq
.Lfunc_end13:
	.size	bitstring, .Lfunc_end13-bitstring
	.cfi_endproc
                                        # -- End function
	.globl	bstr_i                  # -- Begin function bstr_i
	.p2align	4, 0x90
	.type	bstr_i,@function
bstr_i:                                 # @bstr_i
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
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	testq	%rbx, %rbx
	je	.LBB14_5
	.p2align	4, 0x90
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%rbx)
	je	.LBB14_5
# %bb.3:                                #   in Loop: Header=BB14_2 Depth=1
	movsbl	(%rbx), %esi
	movl	$.L.str.12, %edi
	callq	strchr
	testq	%rax, %rax
	je	.LBB14_5
# %bb.4:                                #   in Loop: Header=BB14_2 Depth=1
	movzbl	(%rbx), %eax
	addq	$1, %rbx
	addl	$-48, %eax
	andl	$1, %eax
	leal	(%rax,%r14,2), %r14d
	testq	%rbx, %rbx
	jne	.LBB14_2
.LBB14_5:                               # %.critedge
	movl	%r14d, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	bstr_i, .Lfunc_end14-bstr_i
	.cfi_endproc
                                        # -- End function
	.type	bits,@object            # @bits
	.data
	.p2align	4
bits:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits, 256

	.type	bits.1,@object          # @bits.1
	.p2align	4
bits.1:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits.1, 256

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Usage: bitcnts <iterations>\n"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Bit counter algorithm benchmark\n"
	.size	.L.str.8, 33

	.type	main.pBitCntFunc,@object # @main.pBitCntFunc
	.data
	.p2align	4
main.pBitCntFunc:
	.quad	bit_count
	.quad	bitcount
	.quad	ntbl_bitcnt
	.quad	ntbl_bitcount
	.quad	BW_btbl_bitcount
	.quad	AR_btbl_bitcount
	.quad	bit_shifter
	.size	main.pBitCntFunc, 56

	.type	main.text,@object       # @main.text
	.p2align	4
main.text:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.size	main.text, 56

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"%-38s> Time: %7.3f sec.; Bits: %ld\n"
	.size	.L.str.9, 36

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\nBest  > %s\n"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Worst > %s\n"
	.size	.L.str.11, 12

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"Optimized 1 bit/loop counter"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Ratko's mystery algorithm"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Recursive bit count by nybbles"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Non-recursive bit count by nybbles"
	.size	.L.str.3, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Non-recursive bit count by bytes (BW)"
	.size	.L.str.4, 38

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Non-recursive bit count by bytes (AR)"
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Shift and count bits"
	.size	.L.str.6, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"01"
	.size	.L.str.12, 3


	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
