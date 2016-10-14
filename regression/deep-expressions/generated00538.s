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
	movl	$18,	%esi
	movl	$843,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%esi
	movl	x2,	%eax
	movl	%eax,	%edi
	movl	$331,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%esi
	movl	x1,	%eax
	movl	%eax,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	$505,	-0(%ebp)
	movl	$901,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
	movl	$400,	%edi
	movl	x0,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	x0,	%eax
	movl	%eax,	-0(%ebp)
	movl	$945,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
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
	movl	$390,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	$508,	-4(%ebp)
	movl	$827,	-8(%ebp)
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
	setg	%al
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
	setle	%al
	movl	%eax,	%esi
	movl	x3,	%eax
	movl	%eax,	%edi
	movl	$121,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%edi
	movl	$668,	-0(%ebp)
	movl	x2,	%eax
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
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
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
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	%edi
	movl	$964,	-0(%ebp)
	movl	$79,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$363,	-8(%ebp)
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
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
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
	sete	%al
	movl	%eax,	%esi
	movl	$908,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
	movl	$948,	-0(%ebp)
	movl	$892,	-4(%ebp)
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
	setne	%al
	movl	%eax,	%edi
	movl	$353,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$714,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
	movl	$797,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$242,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$708,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$385,	-12(%ebp)
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
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$479,	-4(%ebp)
	movl	$257,	-8(%ebp)
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
	movl	$440,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$410,	-12(%ebp)
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
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
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
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$598,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
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
	setle	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%esi
	movl	$425,	%edi
	movl	$146,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
	movl	$727,	-0(%ebp)
	movl	$380,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
	movl	$844,	-0(%ebp)
	movl	$497,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$306,	-8(%ebp)
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
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	%edi
	movl	$111,	-0(%ebp)
	movl	$404,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$252,	-8(%ebp)
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
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$687,	-4(%ebp)
	movl	$994,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	$258,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%edi
	movl	$487,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
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
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$334,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$316,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$231,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$470,	-8(%ebp)
	movl	$195,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
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
	subl	%ebx,	%eax
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
	movl	$428,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$285,	-8(%ebp)
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
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$317,	-8(%ebp)
	movl	$127,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$801,	-4(%ebp)
	movl	$389,	-8(%ebp)
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
	movl	$744,	-8(%ebp)
	movl	x3,	%eax
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
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	$854,	-16(%ebp)
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
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
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
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	$739,	-8(%ebp)
	movl	$839,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	$569,	-16(%ebp)
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
	setge	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$451,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	$913,	-16(%ebp)
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
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	$739,	-12(%ebp)
	movl	$437,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-12(%ebp)
	movl	$963,	-16(%ebp)
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
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
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
	movl	x0,	%eax
	movl	%eax,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
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
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$292,	-8(%ebp)
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
	movl	$916,	-0(%ebp)
	movl	x2,	%eax
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
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$12,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
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
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$522,	-8(%ebp)
	movl	$276,	-12(%ebp)
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
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	$830,	-0(%ebp)
	movl	$89,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	$558,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
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
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	$758,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$861,	-8(%ebp)
	movl	$658,	-12(%ebp)
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
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	$533,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$464,	-8(%ebp)
	movl	x2,	%eax
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
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-8(%ebp)
	movl	$839,	-12(%ebp)
	movl	$752,	-16(%ebp)
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
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	$228,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	$880,	-4(%ebp)
	movl	$224,	-8(%ebp)
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
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$903,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
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
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	$478,	-8(%ebp)
	movl	$314,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$825,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	$883,	-12(%ebp)
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
	setl	%al
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
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$254,	-8(%ebp)
	movl	$547,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	$29,	-12(%ebp)
	movl	$24,	-16(%ebp)
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
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	$747,	-16(%ebp)
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
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	$162,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-12(%ebp)
	movl	$493,	-16(%ebp)
	movl	$438,	-20(%ebp)
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
	setne	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	$968,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	$832,	-4(%ebp)
	movl	x3,	%eax
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
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	$599,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	$101,	-8(%ebp)
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
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$161,	-8(%ebp)
	movl	$239,	-12(%ebp)
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
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	$151,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	$80,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
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
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	$474,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	$294,	-8(%ebp)
	movl	$100,	-12(%ebp)
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
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-8(%ebp)
	movl	$307,	-12(%ebp)
	movl	x1,	%eax
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
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	$94,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	$686,	-12(%ebp)
	movl	x1,	%eax
	movl	%eax,	-16(%ebp)
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
	movl	$9,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	$647,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
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
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	$80,	-4(%ebp)
	movl	$263,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
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
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	$941,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	$671,	-12(%ebp)
	movl	$109,	-16(%ebp)
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
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	$754,	-8(%ebp)
	movl	$499,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	$422,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	$715,	-12(%ebp)
	movl	x0,	%eax
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
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	$44,	-20(%ebp)
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
	setle	%al
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
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	$212,	-12(%ebp)
	movl	x3,	%eax
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
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	$376,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	x2,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-12(%ebp)
	movl	$427,	-16(%ebp)
	movl	$540,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-12(%ebp)
	movl	$669,	-16(%ebp)
	movl	$910,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-16(%ebp)
	movl	x3,	%eax
	movl	%eax,	-20(%ebp)
	movl	$742,	-24(%ebp)
	movl	-20(%ebp),	%eax
	movl	-24(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
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
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
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
