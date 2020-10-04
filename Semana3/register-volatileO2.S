	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15, 6
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_j@GOTPCREL(%rip), %rax
	movl	$20, (%rax)
	movl	(%rax), %ecx
	cmpl	$299, %ecx              ## imm = 0x12B
	jg	LBB0_2
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	incl	(%rax)
	movl	(%rax), %ecx
	cmpl	$300, %ecx              ## imm = 0x12C
	jl	LBB0_1
LBB0_2:
	movq	_k@GOTPCREL(%rip), %rax
	movl	$200, (%rax)
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.comm	_j,4,2                  ## @j
	.comm	_k,4,2                  ## @k
.subsections_via_symbols
