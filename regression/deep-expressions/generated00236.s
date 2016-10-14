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
	movl	$924,	%esi
	movl	x3,	%eax
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
	movl	x0,	%eax
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
	setl	%al
	movl	%eax,	%esi
	movl	$884,	%edi
	movl	$757,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
	movl	$230,	-0(%ebp)
	movl	$631,	-4(%ebp)
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
	sete	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
	movl	$258,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
	movl	$7,	-0(%ebp)
	movl	$992,	-4(%ebp)
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
	setl	%al
	movl	%eax,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	$952,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$520,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
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
	setg	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	%esi
	movl	x0,	%eax
	movl	%eax,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
	movl	$581,	-0(%ebp)
	movl	$615,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	$93,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
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
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	$577,	-0(%ebp)
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
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$855,	-8(%ebp)
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
	movl	$249,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$501,	-12(%ebp)
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
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%esi
	movl	x2,	%eax
	movl	%eax,	%edi
	movl	$78,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	%edi
	movl	x2,	%eax
	movl	%eax,	-0(%ebp)
	movl	$257,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	$292,	-4(%ebp)
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
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	$485,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	$243,	-4(%ebp)
	movl	$898,	-8(%ebp)
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
	movl	$968,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
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
	movl	$734,	-0(%ebp)
	movl	$246,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$717,	-4(%ebp)
	movl	x0,	%eax
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
	movl	$490,	-4(%ebp)
	movl	$885,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	$902,	-8(%ebp)
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
	movl	$308,	-4(%ebp)
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
	movl	$145,	-8(%ebp)
	movl	$413,	-12(%ebp)
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
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$363,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	$393,	-12(%ebp)
	movl	x1,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	imull	%ebx,	%eax
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
	movl	%esi,	%eax
	movl	%edi,	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%esi
	movl	x3,	%eax
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	%edi
	movl	x2,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
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
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	$939,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$99,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	$140,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$283,	-4(%ebp)
	movl	$915,	-8(%ebp)
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
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$20,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
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
	addl	%ebx,	%eax
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
	setle	%al
	movl	%eax,	%edi
	movl	$342,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$747,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
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
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$227,	-8(%ebp)
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
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$618,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$724,	-12(%ebp)
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
	movl	$79,	-8(%ebp)
	movl	$182,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	x0,	%eax
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
	sete	%al
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
	movl	x2,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	$628,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
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
	movl	$476,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$602,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
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
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$122,	-8(%ebp)
	movl	$64,	-12(%ebp)
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
	movl	$130,	-8(%ebp)
	movl	$344,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	$28,	-16(%ebp)
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
	setl	%al
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
	movl	$344,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$987,	-12(%ebp)
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
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$39,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	$328,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$419,	-12(%ebp)
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
	movl	$756,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-8(%ebp)
	movl	$857,	-12(%ebp)
	movl	$607,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	x1,	%eax
	movl	%eax,	-20(%ebp)
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
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
	movl	$710,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	$249,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	x2,	%eax
	movl	%eax,	-0(%ebp)
	movl	$141,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$564,	-4(%ebp)
	movl	$189,	-8(%ebp)
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
	movl	$615,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	$316,	-4(%ebp)
	movl	$499,	-8(%ebp)
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
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
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
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	x1,	%eax
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
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$488,	-8(%ebp)
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
	movl	$538,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	$369,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$223,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$19,	-12(%ebp)
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
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	$168,	-16(%ebp)
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
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%edi
	movl	$388,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	$303,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$614,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$477,	-8(%ebp)
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
	movl	$324,	-8(%ebp)
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
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$511,	-8(%ebp)
	movl	$478,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	$699,	-12(%ebp)
	movl	$375,	-16(%ebp)
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
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	$316,	-4(%ebp)
	movl	$526,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	$615,	-8(%ebp)
	movl	$50,	-12(%ebp)
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
	movl	$824,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	$197,	-12(%ebp)
	movl	x2,	%eax
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$989,	-12(%ebp)
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
	movl	$592,	-12(%ebp)
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
	movl	$295,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-12(%ebp)
	movl	$628,	-16(%ebp)
	movl	x0,	%eax
	movl	%eax,	-20(%ebp)
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
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	$748,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$488,	-8(%ebp)
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
	movl	$313,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	$122,	-8(%ebp)
	movl	x3,	%eax
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
	setl	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$540,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
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
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	$241,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	x0,	%eax
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
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	$954,	-4(%ebp)
	movl	$857,	-8(%ebp)
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
	movl	$728,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	$916,	-8(%ebp)
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
	addl	%ebx,	%eax
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
	movl	$778,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-8(%ebp)
	movl	$694,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	x2,	%eax
	movl	%eax,	-20(%ebp)
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
	setne	%al
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
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	$795,	-8(%ebp)
	movl	$890,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$654,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	$156,	-12(%ebp)
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
	setge	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	$531,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	$342,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	$195,	-20(%ebp)
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
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	$827,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	$720,	-16(%ebp)
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
	movl	$69,	-12(%ebp)
	movl	$341,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	$855,	-16(%ebp)
	movl	x3,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	$359,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	x1,	%eax
	movl	%eax,	-20(%ebp)
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
	setge	%al
	movl	%eax,	-12(%ebp)
	movl	$786,	-16(%ebp)
	movl	$997,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-16(%ebp)
	movl	$208,	-20(%ebp)
	movl	x0,	%eax
	movl	%eax,	-24(%ebp)
	movl	-20(%ebp),	%eax
	movl	-24(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-20(%ebp)
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
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
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
