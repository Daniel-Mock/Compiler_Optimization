	.text
	.file	"llvm-link"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4709811074654797824     # double 7.5E+6
.LCPI0_1:
	.quad	4741671816366391296     # double 1.0E+9
.LCPI0_2:
	.quad	4696837146684686336     # double 1.0E+6
.LCPI0_3:
	.quad	4736832672419020800     # double 4.8E+8
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	movl	$a+8, %eax
	xorl	%ecx, %ecx
	cmpq	$159999, %rcx           # imm = 0x270FF
	jg	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, a(,%rcx,8)
	addq	$1, %rcx
	addq	$8, %rax
	cmpq	$159999, %rcx           # imm = 0x270FF
	jle	.LBB0_2
.LBB0_3:
	xorl	%r14d, %r14d
	xorl	%eax, %eax
	callq	second
	movsd	%xmm0, (%rsp)           # 8-byte Spill
                                        # implicit-def: $rbx
	cmpq	$1499, %r14             # imm = 0x5DB
	jle	.LBB0_5
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	addq	$1, %r14
	cmpq	$1499, %r14             # imm = 0x5DB
	jg	.LBB0_9
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	movq	a+56(%rip), %rbx
	xorl	%eax, %eax
	cmpq	$4999, %rax             # imm = 0x1387
	jg	.LBB0_8
	.p2align	4, 0x90
.LBB0_7:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	64(%rbx), %rbx
	addq	$1, %rax
	cmpq	$4999, %rax             # imm = 0x1387
	jle	.LBB0_7
	jmp	.LBB0_8
.LBB0_9:
	xorl	%eax, %eax
	callq	second
	subsd	(%rsp), %xmm0           # 8-byte Folded Reload
	movsd	%xmm0, (%rsp)           # 8-byte Spill
	movq	stderr(%rip), %rdi
	movl	$.L.str, %esi
	movb	$1, %al
	callq	fprintf
	movq	stderr(%rip), %rdi
	movsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	.LCPI0_0(%rip), %xmm0
	mulsd	.LCPI0_1(%rip), %xmm0
	movl	$.L.str.1, %esi
	movb	$1, %al
	callq	fprintf
	movq	stderr(%rip), %rdi
	movsd	(%rsp), %xmm1           # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	.LCPI0_2(%rip), %xmm1
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	$.L.str.2, %esi
	movb	$1, %al
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.3, %esi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	fprintf
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function second
.LCPI1_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	second
	.p2align	4, 0x90
	.type	second,@function
second:                                 # @second
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	cvtsi2sdq	16(%rsp), %xmm1
	divsd	.LCPI1_0(%rip), %xmm1
	cvtsi2sdq	8(%rsp), %xmm0
	addsd	%xmm1, %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	second, .Lfunc_end1-second
	.cfi_endproc
                                        # -- End function
	.type	a,@object               # @a
	.comm	a,1280000,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Time is %g\n"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"L2 Latency (ns) is %g\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"L2 BW is %f MB/sec\n"
	.size	.L.str.2, 20

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"b is %ld\n"
	.size	.L.str.3, 10


	.ident	"clang version 9.0.1 "
	.ident	"clang version 9.0.1 "
	.section	".note.GNU-stack","",@progbits
