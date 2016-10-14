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
	cltd
	idivl	%ebx
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
	movl	$5,	%esi
	movl	%esi,	%eax
	movl	%eax,	x
	movl	$0,	%esi
	movl	%esi,	%eax
	movl	%eax,	y
	movl	x,	%eax
	movl	%eax,	%esi
	movl	y,	%eax
	movl	%eax,	%edi
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
	pushl	%esi
	call	write
	popl	%esi
	movl	x,	%eax
	movl	%eax,	%esi
	movl	y,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
	pushl	%esi
	call	write
	popl	%esi
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
