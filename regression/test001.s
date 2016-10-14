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
	movl	x,	%eax
	movl	%eax,	%esi
	movl	$184,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	andl	%eax,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	%ecx
	andl	%ebx,	%ebx
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	%ebx
	andl	%ebx,	%ecx
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	%esi
	movl	%esi,	%eax
	movl	%eax,	z
	movl	z,	%eax
	movl	%eax,	%esi
	pushl	%esi
	call	write
	popl	%esi
	xorl	%eax,	%eax
	ret
