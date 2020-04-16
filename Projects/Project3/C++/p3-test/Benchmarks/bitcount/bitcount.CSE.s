	.text
	.file	"llvm-link"
	.globl	bit_count               # -- Begin function bit_count
	.p2align	4, 0x90
	.type	bit_count,@function
bit_count:                              # @bit_count
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movl	$0, -12(%rsp)
	testq	%rdi, %rdi
	je	.LBB0_2
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	addl	$1, -12(%rsp)
	movq	-8(%rsp), %rax
	leaq	-1(%rax), %rcx
	andq	%rax, %rcx
	movq	%rcx, -8(%rsp)
	jne	.LBB0_1
.LBB0_2:
	movl	-12(%rsp), %eax
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
	movq	%rdi, %rcx
	shrq	$2, %rcx
	andl	$858993459, %ecx        # imm = 0x33333333
	andl	$858993459, %eax        # imm = 0x33333333
	addq	%rcx, %rax
	movl	%eax, %ecx
	andl	$1996519168, %ecx       # imm = 0x77007700
	shrq	$8, %rcx
	andl	$7798903, %eax          # imm = 0x770077
	addq	%rcx, %rax
	movq	%rax, -8(%rsp)
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
	movq	%rdi, -8(%rsp)
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
	movq	%rdi, -16(%rsp)
	movzbl	%dil, %eax
	movsbl	bits(%rax), %eax
	movzbl	-15(%rsp), %ecx
	movsbl	bits(%rcx), %ecx
	addl	%eax, %ecx
	movzbl	-13(%rsp), %eax
	movsbl	bits(%rax), %edx
	addl	%ecx, %edx
	movzbl	-14(%rsp), %eax
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
	movq	%rdi, -24(%rsp)
	leaq	-24(%rsp), %rax
	movq	%rax, -16(%rsp)
	movzbl	%dil, %eax
	movsbl	bits(%rax), %eax
	movzbl	-23(%rsp), %ecx
	movsbl	bits(%rcx), %ecx
	addl	%eax, %ecx
	movl	%ecx, -4(%rsp)
	leaq	-21(%rsp), %rax
	movq	%rax, -16(%rsp)
	movzbl	-22(%rsp), %eax
	movsbl	bits(%rax), %eax
	addl	%ecx, %eax
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movl	%edi, %eax
	andl	$15, %eax
	movsbl	bits.1(%rax), %eax
	movl	%eax, 12(%rsp)
	sarq	$4, %rdi
	movq	%rdi, 16(%rsp)
	je	.LBB5_2
# %bb.1:
	movq	16(%rsp), %rdi
	callq	ntbl_bitcnt
	addl	%eax, 12(%rsp)
.LBB5_2:
	movl	12(%rsp), %eax
	addq	$24, %rsp
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 16(%rsp)
	movzbl	%dil, %eax
	movsbl	bits.1(%rax), %eax
	movl	%eax, 12(%rsp)
	sarq	$8, %rdi
	movq	%rdi, 16(%rsp)
	je	.LBB6_2
# %bb.1:
	movq	16(%rsp), %rdi
	callq	btbl_bitcnt
	addl	%eax, 12(%rsp)
.LBB6_2:
	movl	12(%rsp), %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	btbl_bitcnt, .Lfunc_end6-btbl_bitcnt
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI7_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	subq	$104, %rsp
	.cfi_def_cfa_offset 112
	movl	$0, 92(%rsp)
	movl	%edi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movabsq	$9218868437227405311, %rax # imm = 0x7FEFFFFFFFFFFFFF
	movq	%rax, 64(%rsp)
	movq	$0, 56(%rsp)
	cmpl	$1, %edi
	jle	.LBB7_12
# %bb.1:
	movq	80(%rsp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, 20(%rsp)
	movl	$.L.str.8, %edi
	callq	puts
	movl	$0, 4(%rsp)
	cmpl	$6, 4(%rsp)
	jle	.LBB7_3
	jmp	.LBB7_11
	.p2align	4, 0x90
.LBB7_10:                               #   in Loop: Header=BB7_3 Depth=1
	movslq	4(%rsp), %rax
	movq	main.text(,%rax,8), %rsi
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movq	40(%rsp), %rdx
	movl	$.L.str.9, %edi
	movb	$1, %al
	callq	printf
	addl	$1, 4(%rsp)
	cmpl	$6, 4(%rsp)
	jg	.LBB7_11
.LBB7_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	callq	clock
	movq	%rax, 72(%rsp)
	movq	$0, 40(%rsp)
	movq	$0, 48(%rsp)
	callq	rand
	cltq
	movq	%rax, 32(%rsp)
	.p2align	4, 0x90
.LBB7_4:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	20(%rsp), %rax
	cmpq	%rax, 48(%rsp)
	jge	.LBB7_6
# %bb.5:                                #   in Loop: Header=BB7_4 Depth=2
	movslq	4(%rsp), %rax
	movq	32(%rsp), %rdi
	callq	*main.pBitCntFunc(,%rax,8)
	cltq
	addq	%rax, 40(%rsp)
	addq	$1, 48(%rsp)
	addq	$13, 32(%rsp)
	jmp	.LBB7_4
	.p2align	4, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=1
	callq	clock
	movq	%rax, 96(%rsp)
	subq	72(%rsp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%rax, %xmm0
	divsd	.LCPI7_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	movsd	64(%rsp), %xmm1         # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_3 Depth=1
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 64(%rsp)
	movl	4(%rsp), %eax
	movl	%eax, 28(%rsp)
.LBB7_8:                                #   in Loop: Header=BB7_3 Depth=1
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	ucomisd	56(%rsp), %xmm0
	jbe	.LBB7_10
# %bb.9:                                #   in Loop: Header=BB7_3 Depth=1
	movsd	8(%rsp), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, 56(%rsp)
	movl	4(%rsp), %eax
	movl	%eax, 24(%rsp)
	jmp	.LBB7_10
.LBB7_11:
	movslq	28(%rsp), %rax
	movq	main.text(,%rax,8), %rsi
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	movslq	24(%rsp), %rax
	movq	main.text(,%rax,8), %rsi
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf
	xorl	%eax, %eax
	addq	$104, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB7_12:
	.cfi_def_cfa_offset 112
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
	movq	%rdi, -8(%rsp)
	movl	$0, -16(%rsp)
	movl	$0, -12(%rsp)
	cmpq	$0, -8(%rsp)
	je	.LBB8_4
	.p2align	4, 0x90
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movslq	-12(%rsp), %rax
	cmpq	$63, %rax
	ja	.LBB8_4
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	movq	-8(%rsp), %rax
	movl	%eax, %ecx
	andl	$1, %ecx
	addl	%ecx, -16(%rsp)
	addl	$1, -12(%rsp)
	sarq	%rax
	movq	%rax, -8(%rsp)
	cmpq	$0, -8(%rsp)
	jne	.LBB8_2
.LBB8_4:                                # %.critedge
	movl	-16(%rsp), %eax
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movl	$16, %edi
	callq	malloc
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	je	.LBB9_5
# %bb.1:
	movq	32(%rsp), %rdi
	movq	24(%rsp), %rsi
	callq	fopen
	movq	8(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	8(%rsp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB9_4
# %bb.2:
	movb	$0, 9(%rdi)
	movq	8(%rsp), %rax
	movb	$0, 11(%rax)
	movq	8(%rsp), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB9_6
.LBB9_4:
	callq	free
.LBB9_5:
	movq	$0, 16(%rsp)
.LBB9_6:
	movl	$1, 4(%rsp)
	movq	16(%rsp), %rax
	addq	$40, %rsp
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	cmpb	$0, 9(%rdi)
	jne	.LBB10_2
# %bb.1:
	movq	(%rsp), %rax
	movq	(%rax), %rdi
	callq	fgetc
	movq	(%rsp), %rcx
	movb	%al, 8(%rcx)
	movq	(%rsp), %rax
	movb	$8, 9(%rax)
.LBB10_2:
	movq	(%rsp), %rax
	addb	$-1, 9(%rax)
	movq	(%rsp), %rax
	movsbl	8(%rax), %ecx
	movzbl	9(%rax), %edx
	xorl	%eax, %eax
	btl	%edx, %ecx
	setb	%al
	popq	%rcx
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movl	%edi, 20(%rsp)
	movq	%rsi, 8(%rsp)
	cmpb	$8, 11(%rsi)
	jne	.LBB11_2
# %bb.1:
	movq	8(%rsp), %rax
	movsbl	10(%rax), %edi
	movq	(%rax), %rsi
	callq	fputc
	movq	8(%rsp), %rax
	movb	$0, 11(%rax)
.LBB11_2:
	movq	8(%rsp), %rax
	addb	$1, 11(%rax)
	movq	8(%rsp), %rax
	shlb	10(%rax)
	movl	20(%rsp), %eax
	andl	$1, %eax
	movq	8(%rsp), %rcx
	movzbl	10(%rcx), %edx
	orl	%eax, %edx
	movb	%dl, 10(%rcx)
	addq	$24, %rsp
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
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, (%rsp)
	movq	(%rdi), %rdi
	callq	fclose
	movq	(%rsp), %rdi
	callq	free
	popq	%rax
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
	movq	%rdi, -40(%rsp)
	movq	%rsi, -16(%rsp)
	movl	%edx, -28(%rsp)
	movl	%ecx, -4(%rsp)
	movl	%edx, %eax
	sarl	$2, %eax
	addl	%edx, %eax
	movl	%edx, %esi
	sarl	$31, %esi
	shrl	$30, %esi
	addl	%edx, %esi
	andl	$-4, %esi
	xorl	%edi, %edi
	cmpl	%esi, %edx
	sete	%dil
	subl	%eax, %edi
	addl	%ecx, %edi
	movl	%edi, -20(%rsp)
	movl	$0, -24(%rsp)
	.p2align	4, 0x90
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	movl	-24(%rsp), %eax
	cmpl	-20(%rsp), %eax
	jge	.LBB13_3
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movb	$32, (%rax)
	addl	$1, -24(%rsp)
	jmp	.LBB13_1
	.p2align	4, 0x90
.LBB13_4:                               #   in Loop: Header=BB13_3 Depth=1
	movq	-16(%rsp), %rax
	movzbl	-28(%rsp), %ecx
	shrq	%cl, %rax
	andb	$1, %al
	orb	$48, %al
	movq	-40(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -40(%rsp)
	movb	%al, (%rcx)
	movl	-28(%rsp), %eax
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	addl	%eax, %ecx
	andl	$-4, %ecx
	cmpl	%ecx, %eax
	jne	.LBB13_3
# %bb.5:                                #   in Loop: Header=BB13_3 Depth=1
	testl	%eax, %eax
	je	.LBB13_3
# %bb.6:                                #   in Loop: Header=BB13_3 Depth=1
	movq	-40(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movb	$32, (%rax)
.LBB13_3:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, -28(%rsp)
	jns	.LBB13_4
# %bb.7:
	movq	-40(%rsp), %rax
	movb	$0, (%rax)
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movl	$0, 16(%rsp)
	cmpq	$0, 8(%rsp)
	je	.LBB14_5
	.p2align	4, 0x90
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	movq	8(%rsp), %rax
	cmpb	$0, (%rax)
	je	.LBB14_5
# %bb.3:                                #   in Loop: Header=BB14_2 Depth=1
	movq	8(%rsp), %rax
	movsbl	(%rax), %esi
	movl	$.L.str.12, %edi
	callq	strchr
	testq	%rax, %rax
	je	.LBB14_5
# %bb.4:                                #   in Loop: Header=BB14_2 Depth=1
	movq	8(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movsbl	(%rax), %eax
	addl	$-48, %eax
	movl	%eax, 20(%rsp)
	shll	16(%rsp)
	cmpq	$0, 8(%rsp)
	jne	.LBB14_2
.LBB14_5:                               # %.critedge
	movl	16(%rsp), %eax
	addq	$24, %rsp
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
