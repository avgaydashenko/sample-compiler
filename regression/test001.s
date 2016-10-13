	.text
	.comm	x,	4,	4
	.comm	y,	4,	4
	.comm	z,	4,	4
	.globl	main
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$4,	%esp
	call	read
	movl	%eax,	%eax
	movl	%eax,	x
	call	read
	movl	%eax,	%eax
	movl	%eax,	y
	movl	x,	%eax
	movl	%eax,	%esi
	movl	y,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
	movl	$2,	%edi
	movl	$3,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	addl	%ebx,	%eax
	movl	%eax,	%esi
	movl	$5,	%edi
	movl	$5,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%esi
	movl	%esi,	%eax
	movl	%eax,	z
	movl	z,	%eax
	movl	%eax,	%esi
	pushl	%esi
	call	write
	popl	%esi
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
