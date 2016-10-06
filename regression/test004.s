	.text
	.comm	x,	4,	4
	.comm	y,	4,	4
	.comm	z,	4,	4
	.globl	main
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$8,	%esp
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
	addl	%ebx,	%eax
	movl	%eax,	%esi
	movl	x,	%eax
	movl	%eax,	%edi
	movl	y,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	addl	%ebx,	%eax
	movl	%eax,	%esi
	movl	x,	%eax
	movl	%eax,	%edi
	movl	y,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	x,	%eax
	movl	%eax,	-0(%ebp)
	movl	y,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	addl	%ebx,	%eax
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
