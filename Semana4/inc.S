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
	xorl	%eax, %eax
	movq	_i@GOTPCREL(%rip), %rcx
	movl	$0, -4(%rbp)
	movl	(%rcx), %edx
	addl	$1, %edx
	movl	%edx, (%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.comm	_i,4,2                  ## @i
.subsections_via_symbols
