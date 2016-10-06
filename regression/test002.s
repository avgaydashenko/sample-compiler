	.text
	.comm	x,	4,	4
	.comm	y,	4,	4
	.comm	z,	4,	4
	.globl	main
main:
	call	read
	movl	%eax,	%eax
	movl	%eax,	x
	call	read
	movl	%eax,	%eax
	movl	%eax,	y
	movl	y,	%eax
	movl	%eax,	%esi
	movl	y,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%esi
	movl	%esi,	%eax
	movl	%eax,	z
	movl	x,	%eax
	movl	%eax,	%esi
	movl	z,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	addl	%ebx,	%eax
	movl	%eax,	%esi
	pushl	%esi
	call	write
	popl	%esi
	xorl	%eax,	%eax
	ret
