	.text
	.comm	x,	4,	4
	.comm	y,	4,	4
	.globl	main
main:
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
	subl	%ebx,	%eax
	movl	%eax,	%esi
	pushl	%esi
	call	write
	popl	%esi
	movl	x,	%eax
	movl	%eax,	%esi
	movl	y,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cltd
	idivl	%ebx
	movl	%eax,	%esi
	pushl	%esi
	call	write
	popl	%esi
	movl	x,	%eax
	movl	%eax,	%esi
	movl	y,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cltd
	idivl	%ebx
	movl	%edx,	%esi
	pushl	%esi
	call	write
	popl	%esi
	xorl	%eax,	%eax
	ret
