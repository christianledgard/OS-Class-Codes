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
	movl	$0, -4(%rbp)
	movl	$20, -8(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$200, -8(%rbp)
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_3
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	LBB0_1
LBB0_4:
	movq	_j@GOTPCREL(%rip), %rax
	movl	$20, (%rax)
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movq	_j@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	cmpl	$300, %ecx              ## imm = 0x12C
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_5 Depth=1
	movq	_j@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB0_5
LBB0_8:
	movq	_k@GOTPCREL(%rip), %rax
	movl	$20, (%rax)
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	movq	_k@GOTPCREL(%rip), %rax
	cmpl	$200, (%rax)
	jge	LBB0_12
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_9 Depth=1
	movq	_k@GOTPCREL(%rip), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB0_9
LBB0_12:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.comm	_j,4,2                  ## @j
	.comm	_k,4,2                  ## @k
.subsections_via_symbols
