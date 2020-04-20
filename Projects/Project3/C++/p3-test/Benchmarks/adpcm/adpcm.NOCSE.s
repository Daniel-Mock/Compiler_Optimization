	.text
	.file	"llvm-link"
	.globl	adpcm_coder             # -- Begin function adpcm_coder
	.p2align	4, 0x90
	.type	adpcm_coder,@function
adpcm_coder:                            # @adpcm_coder
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movl	%edx, -52(%rsp)
	movq	%rcx, -32(%rsp)
	movq	%rsi, -48(%rsp)
	movq	%rdi, -40(%rsp)
	movswl	(%rcx), %eax
	movl	%eax, -88(%rsp)
	movsbq	2(%rcx), %rax
	movl	%eax, -64(%rsp)
	movl	stepsizeTable(,%rax,4), %eax
	movl	%eax, -84(%rsp)
	movl	$1, -72(%rsp)
	cmpl	$0, -52(%rsp)
	jg	.LBB0_2
	jmp	.LBB0_25
	.p2align	4, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_2 Depth=1
	andl	$15, %eax
	orl	-60(%rsp), %eax
	movq	-48(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -48(%rsp)
	movb	%al, (%rcx)
.LBB0_24:                               #   in Loop: Header=BB0_2 Depth=1
	xorl	%eax, %eax
	cmpl	$0, -72(%rsp)
	sete	%al
	movl	%eax, -72(%rsp)
	addl	$-1, -52(%rsp)
	cmpl	$0, -52(%rsp)
	jle	.LBB0_25
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rsp), %rax
	leaq	2(%rax), %rcx
	movq	%rcx, -40(%rsp)
	movswl	(%rax), %eax
	movl	%eax, -20(%rsp)
	subl	-88(%rsp), %eax
	movl	%eax, -80(%rsp)
	shrl	$28, %eax
	andl	$8, %eax
	movl	%eax, -56(%rsp)
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	negl	-80(%rsp)
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$0, -76(%rsp)
	movl	-84(%rsp), %eax
	movl	%eax, %ecx
	sarl	$3, %ecx
	movl	%ecx, -68(%rsp)
	cmpl	%eax, -80(%rsp)
	jl	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-84(%rsp), %eax
	subl	%eax, -80(%rsp)
	movl	$4, -76(%rsp)
	addl	%eax, -68(%rsp)
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-84(%rsp), %eax
	sarl	%eax
	movl	%eax, -84(%rsp)
	cmpl	%eax, -80(%rsp)
	jl	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	orb	$2, -76(%rsp)
	movl	-84(%rsp), %eax
	subl	%eax, -80(%rsp)
	addl	%eax, -68(%rsp)
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	movl	-84(%rsp), %eax
	sarl	%eax
	movl	%eax, -84(%rsp)
	cmpl	%eax, -80(%rsp)
	jl	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	orb	$1, -76(%rsp)
	movl	-84(%rsp), %eax
	addl	%eax, -68(%rsp)
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, -56(%rsp)
	movl	-68(%rsp), %ecx
	movl	-88(%rsp), %eax
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_2 Depth=1
	subl	%ecx, %eax
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	addl	%ecx, %eax
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%eax, -88(%rsp)
	cmpl	$32768, -88(%rsp)       # imm = 0x8000
	jl	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$32767, -88(%rsp)       # imm = 0x7FFF
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	cmpl	$-32769, -88(%rsp)      # imm = 0xFFFF7FFF
	jg	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$-32768, -88(%rsp)      # imm = 0x8000
.LBB0_17:                               #   in Loop: Header=BB0_2 Depth=1
	movl	-76(%rsp), %eax
	orl	-56(%rsp), %eax
	movl	%eax, -76(%rsp)
	movslq	%eax, %rsi
	movl	-64(%rsp), %edx
	xorl	%ecx, %ecx
	addl	indexTable(,%rsi,4), %edx
	js	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%edx, %ecx
.LBB0_19:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$88, %edx
	cmpl	$88, %ecx
	jg	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%ecx, %edx
.LBB0_21:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%edx, -64(%rsp)
	movslq	%edx, %rcx
	movl	stepsizeTable(,%rcx,4), %ecx
	movl	%ecx, -84(%rsp)
	cmpl	$0, -72(%rsp)
	je	.LBB0_23
# %bb.22:                               #   in Loop: Header=BB0_2 Depth=1
	shll	$4, %eax
	movzbl	%al, %eax
	movl	%eax, -60(%rsp)
	jmp	.LBB0_24
.LBB0_25:
	cmpl	$0, -72(%rsp)
	jne	.LBB0_27
# %bb.26:
	movb	-60(%rsp), %al
	movq	-48(%rsp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -48(%rsp)
	movb	%al, (%rcx)
.LBB0_27:
	movzwl	-88(%rsp), %eax
	movq	-32(%rsp), %rcx
	movw	%ax, (%rcx)
	movb	-64(%rsp), %al
	movq	-32(%rsp), %rcx
	movb	%al, 2(%rcx)
	retq
.Lfunc_end0:
	.size	adpcm_coder, .Lfunc_end0-adpcm_coder
	.cfi_endproc
                                        # -- End function
	.globl	adpcm_decoder           # -- Begin function adpcm_decoder
	.p2align	4, 0x90
	.type	adpcm_decoder,@function
adpcm_decoder:                          # @adpcm_decoder
	.cfi_startproc
# %bb.0:
	movq	%rdi, -8(%rsp)
	movq	%rsi, -16(%rsp)
	movl	%edx, -52(%rsp)
	movq	%rcx, -24(%rsp)
	movq	%rsi, -40(%rsp)
	movq	%rdi, -32(%rsp)
	movswl	(%rcx), %eax
	movl	%eax, -76(%rsp)
	movsbq	2(%rcx), %rax
	movl	%eax, -64(%rsp)
	movl	stepsizeTable(,%rax,4), %eax
	movl	%eax, -68(%rsp)
	movl	$0, -56(%rsp)
	cmpl	$0, -52(%rsp)
	jg	.LBB1_2
	jmp	.LBB1_23
	.p2align	4, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$32767, -76(%rsp)       # imm = 0x7FFF
.LBB1_22:                               #   in Loop: Header=BB1_2 Depth=1
	movslq	-64(%rsp), %rax
	movl	stepsizeTable(,%rax,4), %eax
	movl	%eax, -68(%rsp)
	movzwl	-76(%rsp), %eax
	movq	-40(%rsp), %rcx
	leaq	2(%rcx), %rdx
	movq	%rdx, -40(%rsp)
	movw	%ax, (%rcx)
	addl	$-1, -52(%rsp)
	cmpl	$0, -52(%rsp)
	jle	.LBB1_23
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -56(%rsp)
	je	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movl	-48(%rsp), %eax
	jmp	.LBB1_5
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	movq	-32(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rsp)
	movsbl	(%rax), %eax
	movl	%eax, -48(%rsp)
	shrl	$4, %eax
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	andl	$15, %eax
	movl	%eax, -72(%rsp)
	xorl	%eax, %eax
	cmpl	$0, -56(%rsp)
	sete	%al
	movl	%eax, -56(%rsp)
	movslq	-72(%rsp), %rdx
	movl	-64(%rsp), %ecx
	xorl	%eax, %eax
	addl	indexTable(,%rdx,4), %ecx
	js	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	movl	%ecx, %eax
.LBB1_7:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$88, %ecx
	cmpl	$88, %eax
	jg	.LBB1_9
# %bb.8:                                #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, %ecx
.LBB1_9:                                #   in Loop: Header=BB1_2 Depth=1
	movl	%ecx, -64(%rsp)
	movl	-72(%rsp), %eax
	movl	%eax, %ecx
	andl	$8, %ecx
	movl	%ecx, -44(%rsp)
	andl	$7, %eax
	movl	%eax, -72(%rsp)
	movl	-68(%rsp), %ecx
	sarl	$3, %ecx
	movl	%ecx, -60(%rsp)
	testb	$4, %al
	jne	.LBB1_10
# %bb.11:                               #   in Loop: Header=BB1_2 Depth=1
	testb	$2, -72(%rsp)
	jne	.LBB1_12
.LBB1_13:                               #   in Loop: Header=BB1_2 Depth=1
	testb	$1, -72(%rsp)
	je	.LBB1_15
.LBB1_14:                               #   in Loop: Header=BB1_2 Depth=1
	movl	-68(%rsp), %eax
	sarl	$2, %eax
	addl	%eax, -60(%rsp)
.LBB1_15:                               #   in Loop: Header=BB1_2 Depth=1
	cmpl	$0, -44(%rsp)
	movl	-60(%rsp), %ecx
	movl	-76(%rsp), %eax
	je	.LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_2 Depth=1
	subl	%ecx, %eax
	jmp	.LBB1_18
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_2 Depth=1
	movl	-68(%rsp), %eax
	addl	%eax, -60(%rsp)
	testb	$2, -72(%rsp)
	je	.LBB1_13
.LBB1_12:                               #   in Loop: Header=BB1_2 Depth=1
	movl	-68(%rsp), %eax
	sarl	%eax
	addl	%eax, -60(%rsp)
	testb	$1, -72(%rsp)
	jne	.LBB1_14
	jmp	.LBB1_15
	.p2align	4, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_2 Depth=1
	addl	%ecx, %eax
.LBB1_18:                               #   in Loop: Header=BB1_2 Depth=1
	movl	%eax, -76(%rsp)
	cmpl	$32768, -76(%rsp)       # imm = 0x8000
	jge	.LBB1_19
# %bb.20:                               #   in Loop: Header=BB1_2 Depth=1
	cmpl	$-32769, -76(%rsp)      # imm = 0xFFFF7FFF
	jg	.LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$-32768, -76(%rsp)      # imm = 0x8000
	jmp	.LBB1_22
.LBB1_23:
	movzwl	-76(%rsp), %eax
	movq	-24(%rsp), %rcx
	movw	%ax, (%rcx)
	movb	-64(%rsp), %al
	movq	-24(%rsp), %rcx
	movb	%al, 2(%rcx)
	retq
.Lfunc_end1:
	.size	adpcm_decoder, .Lfunc_end1-adpcm_decoder
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$0, 4(%rsp)
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	$abuf, %esi
	xorl	%edi, %edi
	movl	$500, %edx              # imm = 0x1F4
	xorl	%eax, %eax
	callq	read
	movl	%eax, (%rsp)
	testl	%eax, %eax
	js	.LBB2_5
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, (%rsp)
	je	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movl	(%rsp), %edx
	addl	%edx, %edx
	movl	$abuf, %edi
	movl	$sbuf, %esi
	movl	$state, %ecx
	callq	adpcm_decoder
	movl	(%rsp), %edx
	shll	$2, %edx
	movl	$sbuf, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	write
	jmp	.LBB2_1
.LBB2_5:
	movl	$.L.str, %edi
	callq	perror
	movl	$1, %edi
	callq	exit
.LBB2_4:
	movq	stderr(%rip), %rdi
	movswl	state(%rip), %edx
	movsbl	state+2(%rip), %ecx
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
                                        # -- End function
	.type	stepsizeTable,@object   # @stepsizeTable
	.data
	.p2align	4
stepsizeTable:
	.long	7                       # 0x7
	.long	8                       # 0x8
	.long	9                       # 0x9
	.long	10                      # 0xa
	.long	11                      # 0xb
	.long	12                      # 0xc
	.long	13                      # 0xd
	.long	14                      # 0xe
	.long	16                      # 0x10
	.long	17                      # 0x11
	.long	19                      # 0x13
	.long	21                      # 0x15
	.long	23                      # 0x17
	.long	25                      # 0x19
	.long	28                      # 0x1c
	.long	31                      # 0x1f
	.long	34                      # 0x22
	.long	37                      # 0x25
	.long	41                      # 0x29
	.long	45                      # 0x2d
	.long	50                      # 0x32
	.long	55                      # 0x37
	.long	60                      # 0x3c
	.long	66                      # 0x42
	.long	73                      # 0x49
	.long	80                      # 0x50
	.long	88                      # 0x58
	.long	97                      # 0x61
	.long	107                     # 0x6b
	.long	118                     # 0x76
	.long	130                     # 0x82
	.long	143                     # 0x8f
	.long	157                     # 0x9d
	.long	173                     # 0xad
	.long	190                     # 0xbe
	.long	209                     # 0xd1
	.long	230                     # 0xe6
	.long	253                     # 0xfd
	.long	279                     # 0x117
	.long	307                     # 0x133
	.long	337                     # 0x151
	.long	371                     # 0x173
	.long	408                     # 0x198
	.long	449                     # 0x1c1
	.long	494                     # 0x1ee
	.long	544                     # 0x220
	.long	598                     # 0x256
	.long	658                     # 0x292
	.long	724                     # 0x2d4
	.long	796                     # 0x31c
	.long	876                     # 0x36c
	.long	963                     # 0x3c3
	.long	1060                    # 0x424
	.long	1166                    # 0x48e
	.long	1282                    # 0x502
	.long	1411                    # 0x583
	.long	1552                    # 0x610
	.long	1707                    # 0x6ab
	.long	1878                    # 0x756
	.long	2066                    # 0x812
	.long	2272                    # 0x8e0
	.long	2499                    # 0x9c3
	.long	2749                    # 0xabd
	.long	3024                    # 0xbd0
	.long	3327                    # 0xcff
	.long	3660                    # 0xe4c
	.long	4026                    # 0xfba
	.long	4428                    # 0x114c
	.long	4871                    # 0x1307
	.long	5358                    # 0x14ee
	.long	5894                    # 0x1706
	.long	6484                    # 0x1954
	.long	7132                    # 0x1bdc
	.long	7845                    # 0x1ea5
	.long	8630                    # 0x21b6
	.long	9493                    # 0x2515
	.long	10442                   # 0x28ca
	.long	11487                   # 0x2cdf
	.long	12635                   # 0x315b
	.long	13899                   # 0x364b
	.long	15289                   # 0x3bb9
	.long	16818                   # 0x41b2
	.long	18500                   # 0x4844
	.long	20350                   # 0x4f7e
	.long	22385                   # 0x5771
	.long	24623                   # 0x602f
	.long	27086                   # 0x69ce
	.long	29794                   # 0x7462
	.long	32767                   # 0x7fff
	.size	stepsizeTable, 356

	.type	indexTable,@object      # @indexTable
	.p2align	4
indexTable:
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	8                       # 0x8
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.long	2                       # 0x2
	.long	4                       # 0x4
	.long	6                       # 0x6
	.long	8                       # 0x8
	.size	indexTable, 64

	.type	abuf,@object            # @abuf
	.comm	abuf,500,16
	.type	sbuf,@object            # @sbuf
	.comm	sbuf,2000,16
	.type	state,@object           # @state
	.comm	state,4,2
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"input file"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Final valprev=%d, index=%d\n"
	.size	.L.str.1, 28


	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
