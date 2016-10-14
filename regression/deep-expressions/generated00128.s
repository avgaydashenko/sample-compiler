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
	movl	x1,	%eax
	movl	%eax,	%esi
	movl	x0,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	addl	%ebx,	%eax
	movl	%eax,	%esi
	movl	x3,	%eax
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
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
	movl	$76,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	$577,	-4(%ebp)
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
	movl	%esi,	%eax
	movl	%edi,	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	%esi
	movl	x2,	%eax
	movl	%eax,	%edi
	movl	x0,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	x0,	%eax
	movl	%eax,	-0(%ebp)
	movl	$578,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	$851,	-4(%ebp)
	movl	$902,	-8(%ebp)
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
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
	movl	x1,	%eax
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%edi
	movl	x2,	%eax
	movl	%eax,	-0(%ebp)
	movl	$375,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
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
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
	movl	x0,	%eax
	movl	%eax,	-0(%ebp)
	movl	$352,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$979,	-4(%ebp)
	movl	$733,	-8(%ebp)
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
	movl	$869,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$975,	-12(%ebp)
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%esi
	movl	$289,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	$413,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
	movl	$829,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$712,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	$349,	-4(%ebp)
	movl	x1,	%eax
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
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$833,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
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
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	$270,	-4(%ebp)
	movl	$854,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$451,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$4,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
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
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
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
	movl	$644,	-8(%ebp)
	movl	$943,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$562,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	$717,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-12(%ebp)
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
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%esi
	movl	$733,	%edi
	movl	$892,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
	movl	$253,	-0(%ebp)
	movl	x0,	%eax
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
	setle	%al
	movl	%eax,	%edi
	movl	$359,	-0(%ebp)
	movl	$266,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	$146,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
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
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	$909,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
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
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
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
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
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
	sete	%al
	movl	%eax,	%edi
	movl	$259,	-0(%ebp)
	movl	$591,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
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
	movl	$934,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
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
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$971,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$207,	-8(%ebp)
	movl	$869,	-12(%ebp)
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
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$998,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	x3,	%eax
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
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	%edi
	movl	$474,	-0(%ebp)
	movl	$632,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$984,	-4(%ebp)
	movl	x1,	%eax
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
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	$805,	-4(%ebp)
	movl	$6,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$42,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	$128,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	$489,	-8(%ebp)
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
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$653,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	$44,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-12(%ebp)
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
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	$573,	-8(%ebp)
	movl	$186,	-12(%ebp)
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
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$15,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	$503,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	$931,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-8(%ebp)
	movl	$982,	-12(%ebp)
	movl	$875,	-16(%ebp)
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
	setge	%al
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	x1,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	x1,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
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
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	addl	%ebx,	%eax
	movl	%eax,	%esi
	movl	x2,	%eax
	movl	%eax,	%edi
	movl	$178,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$962,	-0(%ebp)
	movl	x0,	%eax
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
	setne	%al
	movl	%eax,	%edi
	movl	$439,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	$788,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$989,	-4(%ebp)
	movl	$4,	-8(%ebp)
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
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$765,	-12(%ebp)
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	%edi
	movl	$115,	-0(%ebp)
	movl	$691,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	$650,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$650,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	$646,	-8(%ebp)
	movl	$95,	-12(%ebp)
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
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	$462,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
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
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
	movl	x0,	%eax
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$690,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	$457,	-4(%ebp)
	movl	x0,	%eax
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
	movl	$957,	-8(%ebp)
	movl	x1,	%eax
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$873,	-8(%ebp)
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
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
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
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$795,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-8(%ebp)
	movl	$523,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
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
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$983,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	$683,	-8(%ebp)
	movl	$784,	-12(%ebp)
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
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	$123,	-8(%ebp)
	movl	$107,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-8(%ebp)
	movl	$677,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$571,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	$232,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	$767,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-12(%ebp)
	movl	$791,	-16(%ebp)
	movl	$12,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
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
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	$744,	-4(%ebp)
	movl	$168,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$195,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$691,	-12(%ebp)
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
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	$486,	-4(%ebp)
	movl	$3,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$400,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$452,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	$716,	-12(%ebp)
	movl	x1,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
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
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$488,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$624,	-12(%ebp)
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
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$523,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-8(%ebp)
	movl	$382,	-12(%ebp)
	movl	x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-12(%ebp)
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
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$230,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	$588,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	$850,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	$255,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$338,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
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
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	$396,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
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
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	$185,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-12(%ebp)
	movl	x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	x2,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
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
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-8(%ebp)
	movl	$787,	-12(%ebp)
	movl	$235,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	$974,	-16(%ebp)
	movl	x1,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	$368,	-12(%ebp)
	movl	x1,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	$530,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	$125,	-16(%ebp)
	movl	$497,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-16(%ebp)
	movl	x0,	%eax
	movl	%eax,	-20(%ebp)
	movl	x2,	%eax
	movl	%eax,	-24(%ebp)
	movl	-20(%ebp),	%eax
	movl	-24(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-16(%ebp)
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
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
