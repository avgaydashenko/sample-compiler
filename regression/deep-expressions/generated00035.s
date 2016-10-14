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
	movl	$717,	%esi
	movl	x1,	%eax
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%esi
	movl	x3,	%eax
	movl	%eax,	%edi
	movl	$954,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%esi
	movl	$635,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
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
	movl	x3,	%eax
	movl	%eax,	%edi
	movl	x1,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	%edi
	movl	x2,	%eax
	movl	%eax,	-0(%ebp)
	movl	$603,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	$296,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$104,	-8(%ebp)
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
	movl	x1,	%eax
	movl	%eax,	%edi
	movl	$861,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	x2,	%eax
	movl	%eax,	-0(%ebp)
	movl	$261,	-4(%ebp)
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
	movl	$936,	-0(%ebp)
	movl	$290,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$724,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
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
	movl	$793,	-0(%ebp)
	movl	$520,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$370,	-4(%ebp)
	movl	$260,	-8(%ebp)
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
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$342,	-8(%ebp)
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
	movl	$28,	-8(%ebp)
	movl	$475,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
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
	movl	%esi,	%eax
	movl	%edi,	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	%esi
	movl	$97,	%edi
	movl	$691,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	%edi
	movl	$765,	-0(%ebp)
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
	movl	$346,	-4(%ebp)
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
	movl	x3,	%eax
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
	movl	$45,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	$542,	-4(%ebp)
	movl	x2,	%eax
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
	movl	$835,	-4(%ebp)
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
	movl	$734,	-8(%ebp)
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
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	%edi
	movl	$631,	-0(%ebp)
	movl	$434,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$884,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$816,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
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
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$384,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$296,	-8(%ebp)
	movl	$691,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	x2,	%eax
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
	subl	%ebx,	%eax
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
	setl	%al
	movl	%eax,	%esi
	movl	$305,	%edi
	movl	$602,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
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
	movl	$21,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$824,	-8(%ebp)
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
	addl	%ebx,	%eax
	movl	%eax,	%edi
	movl	$5,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	x0,	%eax
	movl	%eax,	-4(%ebp)
	movl	$666,	-8(%ebp)
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
	movl	$794,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$787,	-8(%ebp)
	movl	$988,	-12(%ebp)
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
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	%edi
	movl	$206,	-0(%ebp)
	movl	$488,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	$207,	-8(%ebp)
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
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
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
	movl	$826,	-8(%ebp)
	movl	$316,	-12(%ebp)
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
	sete	%al
	movl	%eax,	-0(%ebp)
	movl	$647,	-4(%ebp)
	movl	$440,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
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
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	$589,	-16(%ebp)
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
	addl	%ebx,	%eax
	movl	%eax,	%edi
	movl	$30,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
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
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$251,	-4(%ebp)
	movl	$416,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	-4(%ebp)
	movl	$575,	-8(%ebp)
	movl	$203,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
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
	movl	$928,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$204,	-12(%ebp)
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
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$464,	-12(%ebp)
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
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	$780,	-16(%ebp)
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
	setne	%al
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
	movl	$679,	-4(%ebp)
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
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$798,	-12(%ebp)
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
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$159,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
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
	setg	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
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
	movl	$112,	-12(%ebp)
	movl	$911,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	x1,	%eax
	movl	%eax,	-16(%ebp)
	movl	$12,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	imull	%ebx,	%eax
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
	movl	%esi,	%eax
	movl	%edi,	%ebx
	imull	%ebx,	%eax
	movl	%eax,	%esi
	movl	x1,	%eax
	movl	%eax,	%edi
	movl	$663,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	%edi
	movl	x2,	%eax
	movl	%eax,	-0(%ebp)
	movl	$513,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	%edi
	movl	$991,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-0(%ebp)
	movl	$549,	-4(%ebp)
	movl	x0,	%eax
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
	movl	$68,	-0(%ebp)
	movl	$781,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$447,	-4(%ebp)
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
	imull	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$98,	-8(%ebp)
	movl	x2,	%eax
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
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
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
	movl	$456,	-4(%ebp)
	movl	$810,	-8(%ebp)
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
	movl	$919,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
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
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	x1,	%eax
	movl	%eax,	-4(%ebp)
	movl	$270,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$914,	-8(%ebp)
	movl	$572,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$174,	-8(%ebp)
	movl	$394,	-12(%ebp)
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
	movl	x1,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
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
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	%edi,	%eax
	movl	-0(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
	movl	%eax,	%edi
	movl	x3,	%eax
	movl	%eax,	-0(%ebp)
	movl	$714,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$784,	-4(%ebp)
	movl	$829,	-8(%ebp)
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
	setg	%al
	movl	%eax,	-0(%ebp)
	movl	$682,	-4(%ebp)
	movl	$962,	-8(%ebp)
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
	setle	%al
	movl	%eax,	-0(%ebp)
	movl	$584,	-4(%ebp)
	movl	x1,	%eax
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
	sete	%al
	movl	%eax,	-8(%ebp)
	movl	$586,	-12(%ebp)
	movl	$606,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	imull	%ebx,	%eax
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
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-0(%ebp)
	movl	x2,	%eax
	movl	%eax,	-4(%ebp)
	movl	x3,	%eax
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	$987,	-8(%ebp)
	movl	x2,	%eax
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
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	x1,	%eax
	movl	%eax,	-8(%ebp)
	movl	$959,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	$197,	-12(%ebp)
	movl	x3,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	$991,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
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
	movl	$688,	-12(%ebp)
	movl	$654,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-12(%ebp)
	movl	$968,	-16(%ebp)
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
	imull	%ebx,	%eax
	movl	%eax,	%edi
	movl	$824,	-0(%ebp)
	movl	$30,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
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
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$125,	-4(%ebp)
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
	movl	$842,	-8(%ebp)
	movl	$269,	-12(%ebp)
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
	setge	%al
	movl	%eax,	-4(%ebp)
	movl	-0(%ebp),	%eax
	movl	-4(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-0(%ebp)
	movl	$904,	-4(%ebp)
	movl	$463,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$479,	-8(%ebp)
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
	imull	%ebx,	%eax
	movl	%eax,	-4(%ebp)
	movl	$87,	-8(%ebp)
	movl	x2,	%eax
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
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
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
	movl	$568,	-4(%ebp)
	movl	$705,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	$379,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	$529,	-8(%ebp)
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
	movl	x0,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	imull	%ebx,	%eax
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
	setne	%al
	movl	%eax,	-4(%ebp)
	movl	x2,	%eax
	movl	%eax,	-8(%ebp)
	movl	$503,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	x1,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	$537,	-12(%ebp)
	movl	$34,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	subl	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	$352,	-16(%ebp)
	movl	x2,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
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
	movl	x3,	%eax
	movl	%eax,	-4(%ebp)
	movl	$75,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	imull	%ebx,	%eax
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
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	sete	%al
	movl	%eax,	-4(%ebp)
	movl	$938,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	x1,	%eax
	movl	%eax,	-12(%ebp)
	movl	$340,	-16(%ebp)
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
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	-4(%ebp),	%eax
	movl	-8(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-4(%ebp)
	movl	x0,	%eax
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	addl	%ebx,	%eax
	movl	%eax,	-8(%ebp)
	movl	x3,	%eax
	movl	%eax,	-12(%ebp)
	movl	$447,	-16(%ebp)
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
	setl	%al
	movl	%eax,	-8(%ebp)
	movl	$756,	-12(%ebp)
	movl	$714,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-12(%ebp)
	movl	$873,	-16(%ebp)
	movl	$593,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	addl	%ebx,	%eax
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
	movl	$817,	-8(%ebp)
	movl	$931,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-8(%ebp)
	movl	$180,	-12(%ebp)
	movl	$632,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setne	%al
	movl	%eax,	-12(%ebp)
	movl	-8(%ebp),	%eax
	movl	-12(%ebp),	%ebx
	orl	%ebx,	%eax
	movl	$0,	%eax
	setnz	%al
	movl	%eax,	-8(%ebp)
	movl	x0,	%eax
	movl	%eax,	-12(%ebp)
	movl	x1,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setl	%al
	movl	%eax,	-12(%ebp)
	movl	$293,	-16(%ebp)
	movl	x2,	%eax
	movl	%eax,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setg	%al
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
	setle	%al
	movl	%eax,	-8(%ebp)
	movl	x2,	%eax
	movl	%eax,	-12(%ebp)
	movl	$615,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setle	%al
	movl	%eax,	-12(%ebp)
	movl	$338,	-16(%ebp)
	movl	$961,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-16(%ebp)
	movl	-12(%ebp),	%eax
	movl	-16(%ebp),	%ebx
	imull	%ebx,	%eax
	movl	%eax,	-12(%ebp)
	movl	$511,	-16(%ebp)
	movl	$242,	-20(%ebp)
	movl	-16(%ebp),	%eax
	movl	-20(%ebp),	%ebx
	cmpl	%ebx,	%eax
	movl	$0,	%eax
	setge	%al
	movl	%eax,	-16(%ebp)
	movl	$488,	-20(%ebp)
	movl	$975,	-24(%ebp)
	movl	-20(%ebp),	%eax
	movl	-24(%ebp),	%ebx
	subl	%ebx,	%eax
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
	setne	%al
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
	setle	%al
	movl	%eax,	%edi
	movl	%esi,	%eax
	movl	%edi,	%ebx
	orl	%ebx,	%eax
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
