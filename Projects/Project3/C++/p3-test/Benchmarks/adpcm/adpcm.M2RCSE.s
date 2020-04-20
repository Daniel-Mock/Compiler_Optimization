	.text
	.file	"llvm-link"
	.globl	adpcm_coder             # -- Begin function adpcm_coder
	.p2align	4, 0x90
	.type	adpcm_coder,@function
adpcm_coder:                            # @adpcm_coder
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movswl	(%rcx), %r8d
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movsbl	2(%rcx), %r11d
	movslq	%r11d, %rax
	movl	stepsizeTable(,%rax,4), %r15d
	movl	$1, %r10d
                                        # implicit-def: $eax
                                        # kill: killed $eax
	testl	%edx, %edx
	jg	.LBB0_2
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_2 Depth=1
	orl	-12(%rsp), %ebx         # 4-byte Folded Reload
	movb	%bl, (%rsi)
	addq	$1, %rsi
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	addq	$2, %rdi
	xorl	%eax, %eax
	testl	%r10d, %r10d
	sete	%al
	addl	$-1, %edx
	movl	%eax, %r10d
	testl	%edx, %edx
	jle	.LBB0_17
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movswl	(%rdi), %r14d
	subl	%r8d, %r14d
	movl	%r14d, %ebp
	negl	%ebp
	cmovll	%r14d, %ebp
	movl	%r15d, %ecx
	sarl	$3, %ecx
	leal	(%rcx,%r15), %r12d
	xorl	%eax, %eax
	movl	%ebp, %ebx
	subl	%r15d, %ebx
	cmovll	%ebp, %ebx
	cmovll	%ecx, %r12d
	setge	%al
	shll	$2, %eax
	sarl	%r15d
	movl	%ebx, %r13d
	subl	%r15d, %r13d
	jl	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	orl	$2, %eax
	addl	%r15d, %r12d
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	%ebx, %r13d
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	movl	%r14d, %ebp
	shrl	$28, %ebp
	sarl	%r15d
	movl	%eax, %ebx
	orl	$1, %ebx
	leal	(%r12,%r15), %r9d
	cmpl	%r15d, %r13d
	cmovll	%eax, %ebx
	cmovll	%r12d, %r9d
	movl	%r8d, %eax
	subl	%r9d, %eax
	addl	%r8d, %r9d
	testl	%r14d, %r14d
	cmovsl	%eax, %r9d
	movl	$-32768, %eax           # imm = 0x8000
	cmpl	$-32768, %r9d           # imm = 0x8000
	jl	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_2 Depth=1
	movl	%r9d, %eax
.LBB0_7:                                #   in Loop: Header=BB0_2 Depth=1
	andl	$-8, %ebp
	movl	$32767, %r8d            # imm = 0x7FFF
	cmpl	$32767, %r9d            # imm = 0x7FFF
	jg	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	movl	%eax, %r8d
.LBB0_9:                                #   in Loop: Header=BB0_2 Depth=1
	orl	%ebp, %ebx
	xorl	%eax, %eax
	addl	indexTable(,%rbx,4), %r11d
	js	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%r11d, %eax
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$88, %r11d
	cmpl	$88, %eax
	jg	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%eax, %r11d
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	movslq	%r11d, %rax
	movl	stepsizeTable(,%rax,4), %r15d
	testl	%r10d, %r10d
	je	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_2 Depth=1
	shll	$4, %ebx
	movl	%ebx, %eax
	movl	%ebx, -12(%rsp)         # 4-byte Spill
	jmp	.LBB0_16
.LBB0_17:
	testl	%r10d, %r10d
	jne	.LBB0_19
# %bb.18:
	movl	-12(%rsp), %eax         # 4-byte Reload
	movb	%al, (%rsi)
.LBB0_19:
	movq	-8(%rsp), %rax          # 8-byte Reload
	movw	%r8w, (%rax)
	movb	%r11b, 2(%rax)
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
	.size	adpcm_coder, .Lfunc_end0-adpcm_coder
	.cfi_endproc
                                        # -- End function
	.globl	adpcm_decoder           # -- Begin function adpcm_decoder
	.p2align	4, 0x90
	.type	adpcm_decoder,@function
adpcm_decoder:                          # @adpcm_decoder
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
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movswl	(%rcx), %r9d
	movq	%rcx, -8(%rsp)          # 8-byte Spill
	movsbl	2(%rcx), %r8d
	movslq	%r8d, %rbp
	movl	stepsizeTable(,%rbp,4), %ebx
	movl	$88, %r10d
	movl	$-32768, %r11d          # imm = 0x8000
	movl	$32767, %r14d           # imm = 0x7FFF
                                        # implicit-def: $r15d
	xorl	%r13d, %r13d
	testl	%edx, %edx
	jg	.LBB1_2
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_2 Depth=1
	movsbl	(%rdi), %r15d
	addq	$1, %rdi
	movl	%r15d, %ebp
	shrl	$4, %ebp
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	andl	$15, %ebp
	xorl	%r12d, %r12d
	testl	%r13d, %r13d
	sete	%r12b
	movl	%ebp, %eax
	addl	indexTable(,%rax,4), %r8d
	movl	$0, %eax
	cmovsl	%eax, %r8d
	cmpl	$88, %r8d
	cmovgl	%r10d, %r8d
	movl	%ebx, %eax
	sarl	$3, %eax
	leal	(%rax,%rbx), %ecx
	testb	$4, %bpl
	cmovel	%eax, %ecx
	movl	%ebx, %eax
	sarl	%eax
	addl	%ecx, %eax
	testb	$2, %bpl
	cmovel	%ecx, %eax
	sarl	$2, %ebx
	addl	%eax, %ebx
	testb	$1, %bpl
	cmovel	%eax, %ebx
	movl	%r9d, %eax
	subl	%ebx, %eax
	addl	%r9d, %ebx
	testb	$8, %bpl
	cmovnel	%eax, %ebx
	cmpl	$-32768, %ebx           # imm = 0x8000
	movl	%ebx, %r9d
	cmovll	%r11d, %r9d
	cmpl	$32767, %ebx            # imm = 0x7FFF
	cmovgl	%r14d, %r9d
	movslq	%r8d, %rax
	movl	stepsizeTable(,%rax,4), %ebx
	movw	%r9w, (%rsi)
	addq	$2, %rsi
	addl	$-1, %edx
	movl	%r12d, %r13d
	testl	%edx, %edx
	jle	.LBB1_6
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	testl	%r13d, %r13d
	je	.LBB1_4
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	movl	%r15d, %ebp
	jmp	.LBB1_5
.LBB1_6:
	movq	-8(%rsp), %rax          # 8-byte Reload
	movw	%r9w, (%rax)
	movb	%r8b, 2(%rax)
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
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	$abuf, %esi
	xorl	%edi, %edi
	movl	$500, %edx              # imm = 0x1F4
	xorl	%eax, %eax
	callq	read
	testl	%eax, %eax
	js	.LBB2_5
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	je	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, %ebx
	leal	(%rbx,%rbx), %edx
	movl	$abuf, %edi
	movl	$sbuf, %esi
	movl	$state, %ecx
	callq	adpcm_decoder
	shll	$2, %ebx
	movl	$sbuf, %esi
	movl	$1, %edi
	movl	%ebx, %edx
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
