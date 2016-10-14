	.text
	.comm	x0,	4,	4
	.comm	x1,	4,	4
	.comm	x2,	4,	4
	.comm	x3,	4,	4
	.comm	y,	4,	4
	.globl	main
main:
	pushl	%ebp
	movl	%esp,	%ebp
	subl	$28,	%esp
	call	read
	movl	%eax,	%eax
	movl	%eax,	x0
	call	read
	movl	%eax,	%eax
	movl	%eax,	x1
	call	read
	movl	%eax,	%eax
	movl	%eax,	x2
	call	read
	movl	%eax,	%eax
	movl	%eax,	x3
	movl	$380,	%esi
	movl	x2,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%esi
	movl	$70,	%edi
	movl	$104,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%esi
	movl	x3,	%eax
	movl	%eax,	%edi
	movl	$825,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	%edi
	movl	$671,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%esi
	movl	$881,	%edi
	movl	x2,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
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
	movl	%eax,	%edi
	movl	$206,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
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
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
	movl	x0,	%eax
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$228,	-4(%ebp)
	movl	$844,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%esi
	movl	x1,	%eax
	movl	%eax,	%edi
	movl	x0,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	%edi
	movl	$893,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
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
	movl	%eax,	%edi
	movl	x2,	%eax
	movl	%eax,	-0(%ebp)
	movl	$780,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$510,	-4(%ebp)
	movl	$583,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	$962,	-4(%ebp)
	movl	$391,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$554,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%esi
	movl	x0,	%eax
	movl	%eax,	%edi
	movl	$647,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
	movl	$900,	-0(%ebp)
	movl	$681,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%edi
	movl	$137,	-0(%ebp)
	movl	$582,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
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
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$914,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
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
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	$643,	-0(%ebp)
	movl	$149,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$60,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
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
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
	movl	$358,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
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
	movl	%eax,	-0(%ebp)
	movl	$4,	-4(%ebp)
	movl	$594,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	$339,	-8(%ebp)
	movl	$275,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	$729,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$474,	-8(%ebp)
	movl	$835,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	$942,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	$16,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
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
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%esi
	movl	$848,	%edi
	movl	$246,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
	movl	x0,	%eax
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
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
	movl	%eax,	%edi
	movl	x0,	%eax
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
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
	movl	%eax,	%edi
	movl	x0,	%eax
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	$728,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$254,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
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
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	x2,	%eax
	movl	%eax,	-0(%ebp)
	movl	$46,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
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
	movl	%eax,	-0(%ebp)
	movl	$965,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$127,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
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
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	$770,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	$817,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
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
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%edi
	movl	$568,	-0(%ebp)
	movl	$574,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	$833,	-4(%ebp)
	movl	$415,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	$889,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$33,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	$674,	-4(%ebp)
	movl	$639,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	$788,	-8(%ebp)
	movl	$101,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$296,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	$27,	-12(%ebp)
	movl	x1,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$758,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	$789,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	$443,	-12(%ebp)
	movl	x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$162,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	$847,	-12(%ebp)
	movl	$835,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	$272,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-12(%ebp)
	movl	$585,	-16(%ebp)
	movl	x0,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
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
	movl	x3,	%eax
	movl	%eax,	%edi
	movl	$782,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	$615,	-0(%ebp)
	movl	$286,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	$321,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	$69,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	$390,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$76,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	$595,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	$476,	-4(%ebp)
	movl	$451,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$5,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
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
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	$616,	-4(%ebp)
	movl	$606,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$32,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$872,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
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
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	$281,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
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
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$569,	-0(%ebp)
	movl	$904,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$103,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	$71,	-4(%ebp)
	movl	$654,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$193,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	$696,	-4(%ebp)
	movl	$816,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$258,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	$527,	-8(%ebp)
	movl	$624,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	$807,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$838,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$459,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
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
	movl	%eax,	-8(%ebp)
	movl	$150,	-12(%ebp)
	movl	$922,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
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
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	$576,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-12(%ebp)
	movl	x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	x3,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
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
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
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
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	x0,	%eax
	movl	%eax,	-0(%ebp)
	movl	$605,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$924,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$159,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	$152,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
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
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$875,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$97,	-8(%ebp)
	movl	$559,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
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
	movl	%eax,	-8(%ebp)
	movl	$16,	-12(%ebp)
	movl	$370,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$84,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
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
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	$207,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	$503,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$641,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$49,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-8(%ebp)
	movl	$284,	-12(%ebp)
	movl	$903,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	$823,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	$412,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	$857,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	$447,	-16(%ebp)
	movl	x0,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$520,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	$742,	-12(%ebp)
	movl	$864,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-12(%ebp)
	movl	x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	x3,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
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
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-8(%ebp)
	movl	$882,	-12(%ebp)
	movl	x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	$426,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-12(%ebp)
	movl	x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	x3,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-16(%ebp)
	movl	x1,	%eax
	movl	%eax,	-20(%ebp)
	movl	$800,	-24(%ebp)
	movl	-20(%ebp),	%eax
	movl	-24(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%esi
	movl	%esi,	%eax
	movl	%eax,	y
	movl	y,	%eax
	movl	%eax,	%esi
	pushl	%esi
	call	write
	popl	%esi
	movl	%ebp,	%esp
	popl	%ebp
	xorl	%eax,	%eax
	ret
