





	.file	"sha1-586.s"
.text
.globl	sha1_block_data_order
.type	sha1_block_data_order,@function
.align	16
sha1_block_data_order:
	pushl	%ebp
	pushl	%ebx
	pushl	%esi
	pushl	%edi

	movl	20(%esp),	%ebp
	movl	24(%esp),	%esi
	movl	28(%esp),	%eax
	subl	$64,		%esp
	sall	$6,		%eax
	addl	%esi,		%eax
	movl	%eax,		92(%esp)
	movl	16(%ebp),	%edi
.align	16
.L000loop:
	movl	(%esi),		%eax
	movl	4(%esi),	%ebx
	movl	8(%esi),	%ecx
	movl	12(%esi),	%edx
.byte 15
.byte 200	
.byte 15
.byte 203	
.byte 15
.byte 201	
.byte 15
.byte 202	
	movl	%eax,		(%esp)
	movl	%ebx,		4(%esp)
	movl	%ecx,		8(%esp)
	movl	%edx,		12(%esp)
	movl	16(%esi),	%eax
	movl	20(%esi),	%ebx
	movl	24(%esi),	%ecx
	movl	28(%esi),	%edx
.byte 15
.byte 200	
.byte 15
.byte 203	
.byte 15
.byte 201	
.byte 15
.byte 202	
	movl	%eax,		16(%esp)
	movl	%ebx,		20(%esp)
	movl	%ecx,		24(%esp)
	movl	%edx,		28(%esp)
	movl	32(%esi),	%eax
	movl	36(%esi),	%ebx
	movl	40(%esi),	%ecx
	movl	44(%esi),	%edx
.byte 15
.byte 200	
.byte 15
.byte 203	
.byte 15
.byte 201	
.byte 15
.byte 202	
	movl	%eax,		32(%esp)
	movl	%ebx,		36(%esp)
	movl	%ecx,		40(%esp)
	movl	%edx,		44(%esp)
	movl	48(%esi),	%eax
	movl	52(%esi),	%ebx
	movl	56(%esi),	%ecx
	movl	60(%esi),	%edx
.byte 15
.byte 200	
.byte 15
.byte 203	
.byte 15
.byte 201	
.byte 15
.byte 202	
	movl	%eax,		48(%esp)
	movl	%ebx,		52(%esp)
	movl	%ecx,		56(%esp)
	movl	%edx,		60(%esp)
	movl	%esi,		88(%esp)
	movl	(%ebp),		%eax
	movl	4(%ebp),	%ebx
	movl	8(%ebp),	%ecx
	movl	12(%ebp),	%edx

	movl	%ecx,		%esi
	movl	%eax,		%ebp
	roll	$5,		%ebp
	xorl	%edx,		%esi
	addl	%edi,		%ebp
	andl	%ebx,		%esi
	movl	(%esp),		%edi
	xorl	%edx,		%esi
	rorl	$2,		%ebx
	leal	1518500249(%ebp,%edi),%ebp
	addl	%esi,		%ebp

	movl	%ebx,		%edi
	movl	%ebp,		%esi
	roll	$5,		%ebp
	xorl	%ecx,		%edi
	addl	%edx,		%ebp
	andl	%eax,		%edi
	movl	4(%esp),	%edx
	xorl	%ecx,		%edi
	rorl	$2,		%eax
	leal	1518500249(%ebp,%edx),%ebp
	addl	%edi,		%ebp

	movl	%eax,		%edx
	movl	%ebp,		%edi
	roll	$5,		%ebp
	xorl	%ebx,		%edx
	addl	%ecx,		%ebp
	andl	%esi,		%edx
	movl	8(%esp),	%ecx
	xorl	%ebx,		%edx
	rorl	$2,		%esi
	leal	1518500249(%ebp,%ecx),%ebp
	addl	%edx,		%ebp

	movl	%esi,		%ecx
	movl	%ebp,		%edx
	roll	$5,		%ebp
	xorl	%eax,		%ecx
	addl	%ebx,		%ebp
	andl	%edi,		%ecx
	movl	12(%esp),	%ebx
	xorl	%eax,		%ecx
	rorl	$2,		%edi
	leal	1518500249(%ebp,%ebx),%ebp
	addl	%ecx,		%ebp

	movl	%edi,		%ebx
	movl	%ebp,		%ecx
	roll	$5,		%ebp
	xorl	%esi,		%ebx
	addl	%eax,		%ebp
	andl	%edx,		%ebx
	movl	16(%esp),	%eax
	xorl	%esi,		%ebx
	rorl	$2,		%edx
	leal	1518500249(%ebp,%eax),%ebp
	addl	%ebx,		%ebp

	movl	%edx,		%eax
	movl	%ebp,		%ebx
	roll	$5,		%ebp
	xorl	%edi,		%eax
	addl	%esi,		%ebp
	andl	%ecx,		%eax
	movl	20(%esp),	%esi
	xorl	%edi,		%eax
	rorl	$2,		%ecx
	leal	1518500249(%ebp,%esi),%ebp
	addl	%eax,		%ebp

	movl	%ecx,		%esi
	movl	%ebp,		%eax
	roll	$5,		%ebp
	xorl	%edx,		%esi
	addl	%edi,		%ebp
	andl	%ebx,		%esi
	movl	24(%esp),	%edi
	xorl	%edx,		%esi
	rorl	$2,		%ebx
	leal	1518500249(%ebp,%edi),%ebp
	addl	%esi,		%ebp

	movl	%ebx,		%edi
	movl	%ebp,		%esi
	roll	$5,		%ebp
	xorl	%ecx,		%edi
	addl	%edx,		%ebp
	andl	%eax,		%edi
	movl	28(%esp),	%edx
	xorl	%ecx,		%edi
	rorl	$2,		%eax
	leal	1518500249(%ebp,%edx),%ebp
	addl	%edi,		%ebp

	movl	%eax,		%edx
	movl	%ebp,		%edi
	roll	$5,		%ebp
	xorl	%ebx,		%edx
	addl	%ecx,		%ebp
	andl	%esi,		%edx
	movl	32(%esp),	%ecx
	xorl	%ebx,		%edx
	rorl	$2,		%esi
	leal	1518500249(%ebp,%ecx),%ebp
	addl	%edx,		%ebp

	movl	%esi,		%ecx
	movl	%ebp,		%edx
	roll	$5,		%ebp
	xorl	%eax,		%ecx
	addl	%ebx,		%ebp
	andl	%edi,		%ecx
	movl	36(%esp),	%ebx
	xorl	%eax,		%ecx
	rorl	$2,		%edi
	leal	1518500249(%ebp,%ebx),%ebp
	addl	%ecx,		%ebp

	movl	%edi,		%ebx
	movl	%ebp,		%ecx
	roll	$5,		%ebp
	xorl	%esi,		%ebx
	addl	%eax,		%ebp
	andl	%edx,		%ebx
	movl	40(%esp),	%eax
	xorl	%esi,		%ebx
	rorl	$2,		%edx
	leal	1518500249(%ebp,%eax),%ebp
	addl	%ebx,		%ebp

	movl	%edx,		%eax
	movl	%ebp,		%ebx
	roll	$5,		%ebp
	xorl	%edi,		%eax
	addl	%esi,		%ebp
	andl	%ecx,		%eax
	movl	44(%esp),	%esi
	xorl	%edi,		%eax
	rorl	$2,		%ecx
	leal	1518500249(%ebp,%esi),%ebp
	addl	%eax,		%ebp

	movl	%ecx,		%esi
	movl	%ebp,		%eax
	roll	$5,		%ebp
	xorl	%edx,		%esi
	addl	%edi,		%ebp
	andl	%ebx,		%esi
	movl	48(%esp),	%edi
	xorl	%edx,		%esi
	rorl	$2,		%ebx
	leal	1518500249(%ebp,%edi),%ebp
	addl	%esi,		%ebp

	movl	%ebx,		%edi
	movl	%ebp,		%esi
	roll	$5,		%ebp
	xorl	%ecx,		%edi
	addl	%edx,		%ebp
	andl	%eax,		%edi
	movl	52(%esp),	%edx
	xorl	%ecx,		%edi
	rorl	$2,		%eax
	leal	1518500249(%ebp,%edx),%ebp
	addl	%edi,		%ebp

	movl	%eax,		%edx
	movl	%ebp,		%edi
	roll	$5,		%ebp
	xorl	%ebx,		%edx
	addl	%ecx,		%ebp
	andl	%esi,		%edx
	movl	56(%esp),	%ecx
	xorl	%ebx,		%edx
	rorl	$2,		%esi
	leal	1518500249(%ebp,%ecx),%ebp
	addl	%edx,		%ebp

	movl	%esi,		%ecx
	movl	%ebp,		%edx
	roll	$5,		%ebp
	xorl	%eax,		%ecx
	addl	%ebx,		%ebp
	andl	%edi,		%ecx
	movl	60(%esp),	%ebx
	xorl	%eax,		%ecx
	rorl	$2,		%edi
	leal	1518500249(%ebp,%ebx),%ebp
	addl	%ebp,		%ecx

	movl	(%esp),		%ebx
	movl	%edi,		%ebp
	xorl	8(%esp),	%ebx
	xorl	%esi,		%ebp
	xorl	32(%esp),	%ebx
	andl	%edx,		%ebp
	rorl	$2,		%edx
	xorl	52(%esp),	%ebx
.byte 209
.byte 195	
	xorl	%esi,		%ebp
	movl	%ebx,		(%esp)
	leal	1518500249(%ebx,%eax),%ebx
	movl	%ecx,		%eax
	roll	$5,		%eax
	addl	%ebp,		%ebx
	addl	%eax,		%ebx

	movl	4(%esp),	%eax
	movl	%edx,		%ebp
	xorl	12(%esp),	%eax
	xorl	%edi,		%ebp
	xorl	36(%esp),	%eax
	andl	%ecx,		%ebp
	rorl	$2,		%ecx
	xorl	56(%esp),	%eax
.byte 209
.byte 192	
	xorl	%edi,		%ebp
	movl	%eax,		4(%esp)
	leal	1518500249(%eax,%esi),%eax
	movl	%ebx,		%esi
	roll	$5,		%esi
	addl	%ebp,		%eax
	addl	%esi,		%eax

	movl	8(%esp),	%esi
	movl	%ecx,		%ebp
	xorl	16(%esp),	%esi
	xorl	%edx,		%ebp
	xorl	40(%esp),	%esi
	andl	%ebx,		%ebp
	rorl	$2,		%ebx
	xorl	60(%esp),	%esi
.byte 209
.byte 198	
	xorl	%edx,		%ebp
	movl	%esi,		8(%esp)
	leal	1518500249(%esi,%edi),%esi
	movl	%eax,		%edi
	roll	$5,		%edi
	addl	%ebp,		%esi
	addl	%edi,		%esi

	movl	12(%esp),	%edi
	movl	%ebx,		%ebp
	xorl	20(%esp),	%edi
	xorl	%ecx,		%ebp
	xorl	44(%esp),	%edi
	andl	%eax,		%ebp
	rorl	$2,		%eax
	xorl	(%esp),		%edi
.byte 209
.byte 199	
	xorl	%ecx,		%ebp
	movl	%edi,		12(%esp)
	leal	1518500249(%edi,%edx),%edi
	movl	%esi,		%edx
	roll	$5,		%edx
	addl	%ebp,		%edi
	addl	%edx,		%edi

	movl	%esi,		%ebp
	movl	16(%esp),	%edx
	rorl	$2,		%esi
	xorl	24(%esp),	%edx
	xorl	%eax,		%ebp
	xorl	48(%esp),	%edx
	xorl	%ebx,		%ebp
	xorl	4(%esp),	%edx
.byte 209
.byte 194	
	addl	%ecx,		%ebp
	movl	%edx,		16(%esp)
	movl	%edi,		%ecx
	roll	$5,		%ecx
	leal	1859775393(%edx,%ebp),%edx
	addl	%ecx,		%edx

	movl	%edi,		%ebp
	movl	20(%esp),	%ecx
	rorl	$2,		%edi
	xorl	28(%esp),	%ecx
	xorl	%esi,		%ebp
	xorl	52(%esp),	%ecx
	xorl	%eax,		%ebp
	xorl	8(%esp),	%ecx
.byte 209
.byte 193	
	addl	%ebx,		%ebp
	movl	%ecx,		20(%esp)
	movl	%edx,		%ebx
	roll	$5,		%ebx
	leal	1859775393(%ecx,%ebp),%ecx
	addl	%ebx,		%ecx

	movl	%edx,		%ebp
	movl	24(%esp),	%ebx
	rorl	$2,		%edx
	xorl	32(%esp),	%ebx
	xorl	%edi,		%ebp
	xorl	56(%esp),	%ebx
	xorl	%esi,		%ebp
	xorl	12(%esp),	%ebx
.byte 209
.byte 195	
	addl	%eax,		%ebp
	movl	%ebx,		24(%esp)
	movl	%ecx,		%eax
	roll	$5,		%eax
	leal	1859775393(%ebx,%ebp),%ebx
	addl	%eax,		%ebx

	movl	%ecx,		%ebp
	movl	28(%esp),	%eax
	rorl	$2,		%ecx
	xorl	36(%esp),	%eax
	xorl	%edx,		%ebp
	xorl	60(%esp),	%eax
	xorl	%edi,		%ebp
	xorl	16(%esp),	%eax
.byte 209
.byte 192	
	addl	%esi,		%ebp
	movl	%eax,		28(%esp)
	movl	%ebx,		%esi
	roll	$5,		%esi
	leal	1859775393(%eax,%ebp),%eax
	addl	%esi,		%eax

	movl	%ebx,		%ebp
	movl	32(%esp),	%esi
	rorl	$2,		%ebx
	xorl	40(%esp),	%esi
	xorl	%ecx,		%ebp
	xorl	(%esp),		%esi
	xorl	%edx,		%ebp
	xorl	20(%esp),	%esi
.byte 209
.byte 198	
	addl	%edi,		%ebp
	movl	%esi,		32(%esp)
	movl	%eax,		%edi
	roll	$5,		%edi
	leal	1859775393(%esi,%ebp),%esi
	addl	%edi,		%esi

	movl	%eax,		%ebp
	movl	36(%esp),	%edi
	rorl	$2,		%eax
	xorl	44(%esp),	%edi
	xorl	%ebx,		%ebp
	xorl	4(%esp),	%edi
	xorl	%ecx,		%ebp
	xorl	24(%esp),	%edi
.byte 209
.byte 199	
	addl	%edx,		%ebp
	movl	%edi,		36(%esp)
	movl	%esi,		%edx
	roll	$5,		%edx
	leal	1859775393(%edi,%ebp),%edi
	addl	%edx,		%edi

	movl	%esi,		%ebp
	movl	40(%esp),	%edx
	rorl	$2,		%esi
	xorl	48(%esp),	%edx
	xorl	%eax,		%ebp
	xorl	8(%esp),	%edx
	xorl	%ebx,		%ebp
	xorl	28(%esp),	%edx
.byte 209
.byte 194	
	addl	%ecx,		%ebp
	movl	%edx,		40(%esp)
	movl	%edi,		%ecx
	roll	$5,		%ecx
	leal	1859775393(%edx,%ebp),%edx
	addl	%ecx,		%edx

	movl	%edi,		%ebp
	movl	44(%esp),	%ecx
	rorl	$2,		%edi
	xorl	52(%esp),	%ecx
	xorl	%esi,		%ebp
	xorl	12(%esp),	%ecx
	xorl	%eax,		%ebp
	xorl	32(%esp),	%ecx
.byte 209
.byte 193	
	addl	%ebx,		%ebp
	movl	%ecx,		44(%esp)
	movl	%edx,		%ebx
	roll	$5,		%ebx
	leal	1859775393(%ecx,%ebp),%ecx
	addl	%ebx,		%ecx

	movl	%edx,		%ebp
	movl	48(%esp),	%ebx
	rorl	$2,		%edx
	xorl	56(%esp),	%ebx
	xorl	%edi,		%ebp
	xorl	16(%esp),	%ebx
	xorl	%esi,		%ebp
	xorl	36(%esp),	%ebx
.byte 209
.byte 195	
	addl	%eax,		%ebp
	movl	%ebx,		48(%esp)
	movl	%ecx,		%eax
	roll	$5,		%eax
	leal	1859775393(%ebx,%ebp),%ebx
	addl	%eax,		%ebx

	movl	%ecx,		%ebp
	movl	52(%esp),	%eax
	rorl	$2,		%ecx
	xorl	60(%esp),	%eax
	xorl	%edx,		%ebp
	xorl	20(%esp),	%eax
	xorl	%edi,		%ebp
	xorl	40(%esp),	%eax
.byte 209
.byte 192	
	addl	%esi,		%ebp
	movl	%eax,		52(%esp)
	movl	%ebx,		%esi
	roll	$5,		%esi
	leal	1859775393(%eax,%ebp),%eax
	addl	%esi,		%eax

	movl	%ebx,		%ebp
	movl	56(%esp),	%esi
	rorl	$2,		%ebx
	xorl	(%esp),		%esi
	xorl	%ecx,		%ebp
	xorl	24(%esp),	%esi
	xorl	%edx,		%ebp
	xorl	44(%esp),	%esi
.byte 209
.byte 198	
	addl	%edi,		%ebp
	movl	%esi,		56(%esp)
	movl	%eax,		%edi
	roll	$5,		%edi
	leal	1859775393(%esi,%ebp),%esi
	addl	%edi,		%esi

	movl	%eax,		%ebp
	movl	60(%esp),	%edi
	rorl	$2,		%eax
	xorl	4(%esp),	%edi
	xorl	%ebx,		%ebp
	xorl	28(%esp),	%edi
	xorl	%ecx,		%ebp
	xorl	48(%esp),	%edi
.byte 209
.byte 199	
	addl	%edx,		%ebp
	movl	%edi,		60(%esp)
	movl	%esi,		%edx
	roll	$5,		%edx
	leal	1859775393(%edi,%ebp),%edi
	addl	%edx,		%edi

	movl	%esi,		%ebp
	movl	(%esp),		%edx
	rorl	$2,		%esi
	xorl	8(%esp),	%edx
	xorl	%eax,		%ebp
	xorl	32(%esp),	%edx
	xorl	%ebx,		%ebp
	xorl	52(%esp),	%edx
.byte 209
.byte 194	
	addl	%ecx,		%ebp
	movl	%edx,		(%esp)
	movl	%edi,		%ecx
	roll	$5,		%ecx
	leal	1859775393(%edx,%ebp),%edx
	addl	%ecx,		%edx

	movl	%edi,		%ebp
	movl	4(%esp),	%ecx
	rorl	$2,		%edi
	xorl	12(%esp),	%ecx
	xorl	%esi,		%ebp
	xorl	36(%esp),	%ecx
	xorl	%eax,		%ebp
	xorl	56(%esp),	%ecx
.byte 209
.byte 193	
	addl	%ebx,		%ebp
	movl	%ecx,		4(%esp)
	movl	%edx,		%ebx
	roll	$5,		%ebx
	leal	1859775393(%ecx,%ebp),%ecx
	addl	%ebx,		%ecx

	movl	%edx,		%ebp
	movl	8(%esp),	%ebx
	rorl	$2,		%edx
	xorl	16(%esp),	%ebx
	xorl	%edi,		%ebp
	xorl	40(%esp),	%ebx
	xorl	%esi,		%ebp
	xorl	60(%esp),	%ebx
.byte 209
.byte 195	
	addl	%eax,		%ebp
	movl	%ebx,		8(%esp)
	movl	%ecx,		%eax
	roll	$5,		%eax
	leal	1859775393(%ebx,%ebp),%ebx
	addl	%eax,		%ebx

	movl	%ecx,		%ebp
	movl	12(%esp),	%eax
	rorl	$2,		%ecx
	xorl	20(%esp),	%eax
	xorl	%edx,		%ebp
	xorl	44(%esp),	%eax
	xorl	%edi,		%ebp
	xorl	(%esp),		%eax
.byte 209
.byte 192	
	addl	%esi,		%ebp
	movl	%eax,		12(%esp)
	movl	%ebx,		%esi
	roll	$5,		%esi
	leal	1859775393(%eax,%ebp),%eax
	addl	%esi,		%eax

	movl	%ebx,		%ebp
	movl	16(%esp),	%esi
	rorl	$2,		%ebx
	xorl	24(%esp),	%esi
	xorl	%ecx,		%ebp
	xorl	48(%esp),	%esi
	xorl	%edx,		%ebp
	xorl	4(%esp),	%esi
.byte 209
.byte 198	
	addl	%edi,		%ebp
	movl	%esi,		16(%esp)
	movl	%eax,		%edi
	roll	$5,		%edi
	leal	1859775393(%esi,%ebp),%esi
	addl	%edi,		%esi

	movl	%eax,		%ebp
	movl	20(%esp),	%edi
	rorl	$2,		%eax
	xorl	28(%esp),	%edi
	xorl	%ebx,		%ebp
	xorl	52(%esp),	%edi
	xorl	%ecx,		%ebp
	xorl	8(%esp),	%edi
.byte 209
.byte 199	
	addl	%edx,		%ebp
	movl	%edi,		20(%esp)
	movl	%esi,		%edx
	roll	$5,		%edx
	leal	1859775393(%edi,%ebp),%edi
	addl	%edx,		%edi

	movl	%esi,		%ebp
	movl	24(%esp),	%edx
	rorl	$2,		%esi
	xorl	32(%esp),	%edx
	xorl	%eax,		%ebp
	xorl	56(%esp),	%edx
	xorl	%ebx,		%ebp
	xorl	12(%esp),	%edx
.byte 209
.byte 194	
	addl	%ecx,		%ebp
	movl	%edx,		24(%esp)
	movl	%edi,		%ecx
	roll	$5,		%ecx
	leal	1859775393(%edx,%ebp),%edx
	addl	%ecx,		%edx

	movl	%edi,		%ebp
	movl	28(%esp),	%ecx
	rorl	$2,		%edi
	xorl	36(%esp),	%ecx
	xorl	%esi,		%ebp
	xorl	60(%esp),	%ecx
	xorl	%eax,		%ebp
	xorl	16(%esp),	%ecx
.byte 209
.byte 193	
	addl	%ebx,		%ebp
	movl	%ecx,		28(%esp)
	movl	%edx,		%ebx
	roll	$5,		%ebx
	leal	1859775393(%ecx,%ebp),%ecx
	addl	%ebx,		%ecx

	movl	32(%esp),	%ebx
	movl	40(%esp),	%ebp
	xorl	%ebp,		%ebx
	movl	(%esp),		%ebp
	xorl	%ebp,		%ebx
	movl	20(%esp),	%ebp
	xorl	%ebp,		%ebx
	movl	%edx,		%ebp
.byte 209
.byte 195	
	orl	%edi,		%ebp
	movl	%ebx,		32(%esp)
	andl	%esi,		%ebp
	leal	2400959708(%ebx,%eax),%ebx
	movl	%edx,		%eax
	rorl	$2,		%edx
	andl	%edi,		%eax
	orl	%eax,		%ebp
	movl	%ecx,		%eax
	roll	$5,		%eax
	addl	%ebp,		%ebx
	addl	%eax,		%ebx

	movl	36(%esp),	%eax
	movl	44(%esp),	%ebp
	xorl	%ebp,		%eax
	movl	4(%esp),	%ebp
	xorl	%ebp,		%eax
	movl	24(%esp),	%ebp
	xorl	%ebp,		%eax
	movl	%ecx,		%ebp
.byte 209
.byte 192	
	orl	%edx,		%ebp
	movl	%eax,		36(%esp)
	andl	%edi,		%ebp
	leal	2400959708(%eax,%esi),%eax
	movl	%ecx,		%esi
	rorl	$2,		%ecx
	andl	%edx,		%esi
	orl	%esi,		%ebp
	movl	%ebx,		%esi
	roll	$5,		%esi
	addl	%ebp,		%eax
	addl	%esi,		%eax

	movl	40(%esp),	%esi
	movl	48(%esp),	%ebp
	xorl	%ebp,		%esi
	movl	8(%esp),	%ebp
	xorl	%ebp,		%esi
	movl	28(%esp),	%ebp
	xorl	%ebp,		%esi
	movl	%ebx,		%ebp
.byte 209
.byte 198	
	orl	%ecx,		%ebp
	movl	%esi,		40(%esp)
	andl	%edx,		%ebp
	leal	2400959708(%esi,%edi),%esi
	movl	%ebx,		%edi
	rorl	$2,		%ebx
	andl	%ecx,		%edi
	orl	%edi,		%ebp
	movl	%eax,		%edi
	roll	$5,		%edi
	addl	%ebp,		%esi
	addl	%edi,		%esi

	movl	44(%esp),	%edi
	movl	52(%esp),	%ebp
	xorl	%ebp,		%edi
	movl	12(%esp),	%ebp
	xorl	%ebp,		%edi
	movl	32(%esp),	%ebp
	xorl	%ebp,		%edi
	movl	%eax,		%ebp
.byte 209
.byte 199	
	orl	%ebx,		%ebp
	movl	%edi,		44(%esp)
	andl	%ecx,		%ebp
	leal	2400959708(%edi,%edx),%edi
	movl	%eax,		%edx
	rorl	$2,		%eax
	andl	%ebx,		%edx
	orl	%edx,		%ebp
	movl	%esi,		%edx
	roll	$5,		%edx
	addl	%ebp,		%edi
	addl	%edx,		%edi

	movl	48(%esp),	%edx
	movl	56(%esp),	%ebp
	xorl	%ebp,		%edx
	movl	16(%esp),	%ebp
	xorl	%ebp,		%edx
	movl	36(%esp),	%ebp
	xorl	%ebp,		%edx
	movl	%esi,		%ebp
.byte 209
.byte 194	
	orl	%eax,		%ebp
	movl	%edx,		48(%esp)
	andl	%ebx,		%ebp
	leal	2400959708(%edx,%ecx),%edx
	movl	%esi,		%ecx
	rorl	$2,		%esi
	andl	%eax,		%ecx
	orl	%ecx,		%ebp
	movl	%edi,		%ecx
	roll	$5,		%ecx
	addl	%ebp,		%edx
	addl	%ecx,		%edx

	movl	52(%esp),	%ecx
	movl	60(%esp),	%ebp
	xorl	%ebp,		%ecx
	movl	20(%esp),	%ebp
	xorl	%ebp,		%ecx
	movl	40(%esp),	%ebp
	xorl	%ebp,		%ecx
	movl	%edi,		%ebp
.byte 209
.byte 193	
	orl	%esi,		%ebp
	movl	%ecx,		52(%esp)
	andl	%eax,		%ebp
	leal	2400959708(%ecx,%ebx),%ecx
	movl	%edi,		%ebx
	rorl	$2,		%edi
	andl	%esi,		%ebx
	orl	%ebx,		%ebp
	movl	%edx,		%ebx
	roll	$5,		%ebx
	addl	%ebp,		%ecx
	addl	%ebx,		%ecx

	movl	56(%esp),	%ebx
	movl	(%esp),		%ebp
	xorl	%ebp,		%ebx
	movl	24(%esp),	%ebp
	xorl	%ebp,		%ebx
	movl	44(%esp),	%ebp
	xorl	%ebp,		%ebx
	movl	%edx,		%ebp
.byte 209
.byte 195	
	orl	%edi,		%ebp
	movl	%ebx,		56(%esp)
	andl	%esi,		%ebp
	leal	2400959708(%ebx,%eax),%ebx
	movl	%edx,		%eax
	rorl	$2,		%edx
	andl	%edi,		%eax
	orl	%eax,		%ebp
	movl	%ecx,		%eax
	roll	$5,		%eax
	addl	%ebp,		%ebx
	addl	%eax,		%ebx

	movl	60(%esp),	%eax
	movl	4(%esp),	%ebp
	xorl	%ebp,		%eax
	movl	28(%esp),	%ebp
	xorl	%ebp,		%eax
	movl	48(%esp),	%ebp
	xorl	%ebp,		%eax
	movl	%ecx,		%ebp
.byte 209
.byte 192	
	orl	%edx,		%ebp
	movl	%eax,		60(%esp)
	andl	%edi,		%ebp
	leal	2400959708(%eax,%esi),%eax
	movl	%ecx,		%esi
	rorl	$2,		%ecx
	andl	%edx,		%esi
	orl	%esi,		%ebp
	movl	%ebx,		%esi
	roll	$5,		%esi
	addl	%ebp,		%eax
	addl	%esi,		%eax

	movl	(%esp),		%esi
	movl	8(%esp),	%ebp
	xorl	%ebp,		%esi
	movl	32(%esp),	%ebp
	xorl	%ebp,		%esi
	movl	52(%esp),	%ebp
	xorl	%ebp,		%esi
	movl	%ebx,		%ebp
.byte 209
.byte 198	
	orl	%ecx,		%ebp
	movl	%esi,		(%esp)
	andl	%edx,		%ebp
	leal	2400959708(%esi,%edi),%esi
	movl	%ebx,		%edi
	rorl	$2,		%ebx
	andl	%ecx,		%edi
	orl	%edi,		%ebp
	movl	%eax,		%edi
	roll	$5,		%edi
	addl	%ebp,		%esi
	addl	%edi,		%esi

	movl	4(%esp),	%edi
	movl	12(%esp),	%ebp
	xorl	%ebp,		%edi
	movl	36(%esp),	%ebp
	xorl	%ebp,		%edi
	movl	56(%esp),	%ebp
	xorl	%ebp,		%edi
	movl	%eax,		%ebp
.byte 209
.byte 199	
	orl	%ebx,		%ebp
	movl	%edi,		4(%esp)
	andl	%ecx,		%ebp
	leal	2400959708(%edi,%edx),%edi
	movl	%eax,		%edx
	rorl	$2,		%eax
	andl	%ebx,		%edx
	orl	%edx,		%ebp
	movl	%esi,		%edx
	roll	$5,		%edx
	addl	%ebp,		%edi
	addl	%edx,		%edi

	movl	8(%esp),	%edx
	movl	16(%esp),	%ebp
	xorl	%ebp,		%edx
	movl	40(%esp),	%ebp
	xorl	%ebp,		%edx
	movl	60(%esp),	%ebp
	xorl	%ebp,		%edx
	movl	%esi,		%ebp
.byte 209
.byte 194	
	orl	%eax,		%ebp
	movl	%edx,		8(%esp)
	andl	%ebx,		%ebp
	leal	2400959708(%edx,%ecx),%edx
	movl	%esi,		%ecx
	rorl	$2,		%esi
	andl	%eax,		%ecx
	orl	%ecx,		%ebp
	movl	%edi,		%ecx
	roll	$5,		%ecx
	addl	%ebp,		%edx
	addl	%ecx,		%edx

	movl	12(%esp),	%ecx
	movl	20(%esp),	%ebp
	xorl	%ebp,		%ecx
	movl	44(%esp),	%ebp
	xorl	%ebp,		%ecx
	movl	(%esp),		%ebp
	xorl	%ebp,		%ecx
	movl	%edi,		%ebp
.byte 209
.byte 193	
	orl	%esi,		%ebp
	movl	%ecx,		12(%esp)
	andl	%eax,		%ebp
	leal	2400959708(%ecx,%ebx),%ecx
	movl	%edi,		%ebx
	rorl	$2,		%edi
	andl	%esi,		%ebx
	orl	%ebx,		%ebp
	movl	%edx,		%ebx
	roll	$5,		%ebx
	addl	%ebp,		%ecx
	addl	%ebx,		%ecx

	movl	16(%esp),	%ebx
	movl	24(%esp),	%ebp
	xorl	%ebp,		%ebx
	movl	48(%esp),	%ebp
	xorl	%ebp,		%ebx
	movl	4(%esp),	%ebp
	xorl	%ebp,		%ebx
	movl	%edx,		%ebp
.byte 209
.byte 195	
	orl	%edi,		%ebp
	movl	%ebx,		16(%esp)
	andl	%esi,		%ebp
	leal	2400959708(%ebx,%eax),%ebx
	movl	%edx,		%eax
	rorl	$2,		%edx
	andl	%edi,		%eax
	orl	%eax,		%ebp
	movl	%ecx,		%eax
	roll	$5,		%eax
	addl	%ebp,		%ebx
	addl	%eax,		%ebx

	movl	20(%esp),	%eax
	movl	28(%esp),	%ebp
	xorl	%ebp,		%eax
	movl	52(%esp),	%ebp
	xorl	%ebp,		%eax
	movl	8(%esp),	%ebp
	xorl	%ebp,		%eax
	movl	%ecx,		%ebp
.byte 209
.byte 192	
	orl	%edx,		%ebp
	movl	%eax,		20(%esp)
	andl	%edi,		%ebp
	leal	2400959708(%eax,%esi),%eax
	movl	%ecx,		%esi
	rorl	$2,		%ecx
	andl	%edx,		%esi
	orl	%esi,		%ebp
	movl	%ebx,		%esi
	roll	$5,		%esi
	addl	%ebp,		%eax
	addl	%esi,		%eax

	movl	24(%esp),	%esi
	movl	32(%esp),	%ebp
	xorl	%ebp,		%esi
	movl	56(%esp),	%ebp
	xorl	%ebp,		%esi
	movl	12(%esp),	%ebp
	xorl	%ebp,		%esi
	movl	%ebx,		%ebp
.byte 209
.byte 198	
	orl	%ecx,		%ebp
	movl	%esi,		24(%esp)
	andl	%edx,		%ebp
	leal	2400959708(%esi,%edi),%esi
	movl	%ebx,		%edi
	rorl	$2,		%ebx
	andl	%ecx,		%edi
	orl	%edi,		%ebp
	movl	%eax,		%edi
	roll	$5,		%edi
	addl	%ebp,		%esi
	addl	%edi,		%esi

	movl	28(%esp),	%edi
	movl	36(%esp),	%ebp
	xorl	%ebp,		%edi
	movl	60(%esp),	%ebp
	xorl	%ebp,		%edi
	movl	16(%esp),	%ebp
	xorl	%ebp,		%edi
	movl	%eax,		%ebp
.byte 209
.byte 199	
	orl	%ebx,		%ebp
	movl	%edi,		28(%esp)
	andl	%ecx,		%ebp
	leal	2400959708(%edi,%edx),%edi
	movl	%eax,		%edx
	rorl	$2,		%eax
	andl	%ebx,		%edx
	orl	%edx,		%ebp
	movl	%esi,		%edx
	roll	$5,		%edx
	addl	%ebp,		%edi
	addl	%edx,		%edi

	movl	32(%esp),	%edx
	movl	40(%esp),	%ebp
	xorl	%ebp,		%edx
	movl	(%esp),		%ebp
	xorl	%ebp,		%edx
	movl	20(%esp),	%ebp
	xorl	%ebp,		%edx
	movl	%esi,		%ebp
.byte 209
.byte 194	
	orl	%eax,		%ebp
	movl	%edx,		32(%esp)
	andl	%ebx,		%ebp
	leal	2400959708(%edx,%ecx),%edx
	movl	%esi,		%ecx
	rorl	$2,		%esi
	andl	%eax,		%ecx
	orl	%ecx,		%ebp
	movl	%edi,		%ecx
	roll	$5,		%ecx
	addl	%ebp,		%edx
	addl	%ecx,		%edx

	movl	36(%esp),	%ecx
	movl	44(%esp),	%ebp
	xorl	%ebp,		%ecx
	movl	4(%esp),	%ebp
	xorl	%ebp,		%ecx
	movl	24(%esp),	%ebp
	xorl	%ebp,		%ecx
	movl	%edi,		%ebp
.byte 209
.byte 193	
	orl	%esi,		%ebp
	movl	%ecx,		36(%esp)
	andl	%eax,		%ebp
	leal	2400959708(%ecx,%ebx),%ecx
	movl	%edi,		%ebx
	rorl	$2,		%edi
	andl	%esi,		%ebx
	orl	%ebx,		%ebp
	movl	%edx,		%ebx
	roll	$5,		%ebx
	addl	%ebp,		%ecx
	addl	%ebx,		%ecx

	movl	40(%esp),	%ebx
	movl	48(%esp),	%ebp
	xorl	%ebp,		%ebx
	movl	8(%esp),	%ebp
	xorl	%ebp,		%ebx
	movl	28(%esp),	%ebp
	xorl	%ebp,		%ebx
	movl	%edx,		%ebp
.byte 209
.byte 195	
	orl	%edi,		%ebp
	movl	%ebx,		40(%esp)
	andl	%esi,		%ebp
	leal	2400959708(%ebx,%eax),%ebx
	movl	%edx,		%eax
	rorl	$2,		%edx
	andl	%edi,		%eax
	orl	%eax,		%ebp
	movl	%ecx,		%eax
	roll	$5,		%eax
	addl	%ebp,		%ebx
	addl	%eax,		%ebx

	movl	44(%esp),	%eax
	movl	52(%esp),	%ebp
	xorl	%ebp,		%eax
	movl	12(%esp),	%ebp
	xorl	%ebp,		%eax
	movl	32(%esp),	%ebp
	xorl	%ebp,		%eax
	movl	%ecx,		%ebp
.byte 209
.byte 192	
	orl	%edx,		%ebp
	movl	%eax,		44(%esp)
	andl	%edi,		%ebp
	leal	2400959708(%eax,%esi),%eax
	movl	%ecx,		%esi
	rorl	$2,		%ecx
	andl	%edx,		%esi
	orl	%esi,		%ebp
	movl	%ebx,		%esi
	roll	$5,		%esi
	addl	%ebp,		%eax
	addl	%esi,		%eax

	movl	%ebx,		%ebp
	movl	48(%esp),	%esi
	rorl	$2,		%ebx
	xorl	56(%esp),	%esi
	xorl	%ecx,		%ebp
	xorl	16(%esp),	%esi
	xorl	%edx,		%ebp
	xorl	36(%esp),	%esi
.byte 209
.byte 198	
	addl	%edi,		%ebp
	movl	%esi,		48(%esp)
	movl	%eax,		%edi
	roll	$5,		%edi
	leal	3395469782(%esi,%ebp),%esi
	addl	%edi,		%esi

	movl	%eax,		%ebp
	movl	52(%esp),	%edi
	rorl	$2,		%eax
	xorl	60(%esp),	%edi
	xorl	%ebx,		%ebp
	xorl	20(%esp),	%edi
	xorl	%ecx,		%ebp
	xorl	40(%esp),	%edi
.byte 209
.byte 199	
	addl	%edx,		%ebp
	movl	%edi,		52(%esp)
	movl	%esi,		%edx
	roll	$5,		%edx
	leal	3395469782(%edi,%ebp),%edi
	addl	%edx,		%edi

	movl	%esi,		%ebp
	movl	56(%esp),	%edx
	rorl	$2,		%esi
	xorl	(%esp),		%edx
	xorl	%eax,		%ebp
	xorl	24(%esp),	%edx
	xorl	%ebx,		%ebp
	xorl	44(%esp),	%edx
.byte 209
.byte 194	
	addl	%ecx,		%ebp
	movl	%edx,		56(%esp)
	movl	%edi,		%ecx
	roll	$5,		%ecx
	leal	3395469782(%edx,%ebp),%edx
	addl	%ecx,		%edx

	movl	%edi,		%ebp
	movl	60(%esp),	%ecx
	rorl	$2,		%edi
	xorl	4(%esp),	%ecx
	xorl	%esi,		%ebp
	xorl	28(%esp),	%ecx
	xorl	%eax,		%ebp
	xorl	48(%esp),	%ecx
.byte 209
.byte 193	
	addl	%ebx,		%ebp
	movl	%ecx,		60(%esp)
	movl	%edx,		%ebx
	roll	$5,		%ebx
	leal	3395469782(%ecx,%ebp),%ecx
	addl	%ebx,		%ecx

	movl	%edx,		%ebp
	movl	(%esp),		%ebx
	rorl	$2,		%edx
	xorl	8(%esp),	%ebx
	xorl	%edi,		%ebp
	xorl	32(%esp),	%ebx
	xorl	%esi,		%ebp
	xorl	52(%esp),	%ebx
.byte 209
.byte 195	
	addl	%eax,		%ebp
	movl	%ebx,		(%esp)
	movl	%ecx,		%eax
	roll	$5,		%eax
	leal	3395469782(%ebx,%ebp),%ebx
	addl	%eax,		%ebx

	movl	%ecx,		%ebp
	movl	4(%esp),	%eax
	rorl	$2,		%ecx
	xorl	12(%esp),	%eax
	xorl	%edx,		%ebp
	xorl	36(%esp),	%eax
	xorl	%edi,		%ebp
	xorl	56(%esp),	%eax
.byte 209
.byte 192	
	addl	%esi,		%ebp
	movl	%eax,		4(%esp)
	movl	%ebx,		%esi
	roll	$5,		%esi
	leal	3395469782(%eax,%ebp),%eax
	addl	%esi,		%eax

	movl	%ebx,		%ebp
	movl	8(%esp),	%esi
	rorl	$2,		%ebx
	xorl	16(%esp),	%esi
	xorl	%ecx,		%ebp
	xorl	40(%esp),	%esi
	xorl	%edx,		%ebp
	xorl	60(%esp),	%esi
.byte 209
.byte 198	
	addl	%edi,		%ebp
	movl	%esi,		8(%esp)
	movl	%eax,		%edi
	roll	$5,		%edi
	leal	3395469782(%esi,%ebp),%esi
	addl	%edi,		%esi

	movl	%eax,		%ebp
	movl	12(%esp),	%edi
	rorl	$2,		%eax
	xorl	20(%esp),	%edi
	xorl	%ebx,		%ebp
	xorl	44(%esp),	%edi
	xorl	%ecx,		%ebp
	xorl	(%esp),		%edi
.byte 209
.byte 199	
	addl	%edx,		%ebp
	movl	%edi,		12(%esp)
	movl	%esi,		%edx
	roll	$5,		%edx
	leal	3395469782(%edi,%ebp),%edi
	addl	%edx,		%edi

	movl	%esi,		%ebp
	movl	16(%esp),	%edx
	rorl	$2,		%esi
	xorl	24(%esp),	%edx
	xorl	%eax,		%ebp
	xorl	48(%esp),	%edx
	xorl	%ebx,		%ebp
	xorl	4(%esp),	%edx
.byte 209
.byte 194	
	addl	%ecx,		%ebp
	movl	%edx,		16(%esp)
	movl	%edi,		%ecx
	roll	$5,		%ecx
	leal	3395469782(%edx,%ebp),%edx
	addl	%ecx,		%edx

	movl	%edi,		%ebp
	movl	20(%esp),	%ecx
	rorl	$2,		%edi
	xorl	28(%esp),	%ecx
	xorl	%esi,		%ebp
	xorl	52(%esp),	%ecx
	xorl	%eax,		%ebp
	xorl	8(%esp),	%ecx
.byte 209
.byte 193	
	addl	%ebx,		%ebp
	movl	%ecx,		20(%esp)
	movl	%edx,		%ebx
	roll	$5,		%ebx
	leal	3395469782(%ecx,%ebp),%ecx
	addl	%ebx,		%ecx

	movl	%edx,		%ebp
	movl	24(%esp),	%ebx
	rorl	$2,		%edx
	xorl	32(%esp),	%ebx
	xorl	%edi,		%ebp
	xorl	56(%esp),	%ebx
	xorl	%esi,		%ebp
	xorl	12(%esp),	%ebx
.byte 209
.byte 195	
	addl	%eax,		%ebp
	movl	%ebx,		24(%esp)
	movl	%ecx,		%eax
	roll	$5,		%eax
	leal	3395469782(%ebx,%ebp),%ebx
	addl	%eax,		%ebx

	movl	%ecx,		%ebp
	movl	28(%esp),	%eax
	rorl	$2,		%ecx
	xorl	36(%esp),	%eax
	xorl	%edx,		%ebp
	xorl	60(%esp),	%eax
	xorl	%edi,		%ebp
	xorl	16(%esp),	%eax
.byte 209
.byte 192	
	addl	%esi,		%ebp
	movl	%eax,		28(%esp)
	movl	%ebx,		%esi
	roll	$5,		%esi
	leal	3395469782(%eax,%ebp),%eax
	addl	%esi,		%eax

	movl	%ebx,		%ebp
	movl	32(%esp),	%esi
	rorl	$2,		%ebx
	xorl	40(%esp),	%esi
	xorl	%ecx,		%ebp
	xorl	(%esp),		%esi
	xorl	%edx,		%ebp
	xorl	20(%esp),	%esi
.byte 209
.byte 198	
	addl	%edi,		%ebp
	movl	%esi,		32(%esp)
	movl	%eax,		%edi
	roll	$5,		%edi
	leal	3395469782(%esi,%ebp),%esi
	addl	%edi,		%esi

	movl	%eax,		%ebp
	movl	36(%esp),	%edi
	rorl	$2,		%eax
	xorl	44(%esp),	%edi
	xorl	%ebx,		%ebp
	xorl	4(%esp),	%edi
	xorl	%ecx,		%ebp
	xorl	24(%esp),	%edi
.byte 209
.byte 199	
	addl	%edx,		%ebp
	movl	%edi,		36(%esp)
	movl	%esi,		%edx
	roll	$5,		%edx
	leal	3395469782(%edi,%ebp),%edi
	addl	%edx,		%edi

	movl	%esi,		%ebp
	movl	40(%esp),	%edx
	rorl	$2,		%esi
	xorl	48(%esp),	%edx
	xorl	%eax,		%ebp
	xorl	8(%esp),	%edx
	xorl	%ebx,		%ebp
	xorl	28(%esp),	%edx
.byte 209
.byte 194	
	addl	%ecx,		%ebp
	movl	%edx,		40(%esp)
	movl	%edi,		%ecx
	roll	$5,		%ecx
	leal	3395469782(%edx,%ebp),%edx
	addl	%ecx,		%edx

	movl	%edi,		%ebp
	movl	44(%esp),	%ecx
	rorl	$2,		%edi
	xorl	52(%esp),	%ecx
	xorl	%esi,		%ebp
	xorl	12(%esp),	%ecx
	xorl	%eax,		%ebp
	xorl	32(%esp),	%ecx
.byte 209
.byte 193	
	addl	%ebx,		%ebp
	movl	%ecx,		44(%esp)
	movl	%edx,		%ebx
	roll	$5,		%ebx
	leal	3395469782(%ecx,%ebp),%ecx
	addl	%ebx,		%ecx

	movl	%edx,		%ebp
	movl	48(%esp),	%ebx
	rorl	$2,		%edx
	xorl	56(%esp),	%ebx
	xorl	%edi,		%ebp
	xorl	16(%esp),	%ebx
	xorl	%esi,		%ebp
	xorl	36(%esp),	%ebx
.byte 209
.byte 195	
	addl	%eax,		%ebp
	movl	%ebx,		48(%esp)
	movl	%ecx,		%eax
	roll	$5,		%eax
	leal	3395469782(%ebx,%ebp),%ebx
	addl	%eax,		%ebx

	movl	%ecx,		%ebp
	movl	52(%esp),	%eax
	rorl	$2,		%ecx
	xorl	60(%esp),	%eax
	xorl	%edx,		%ebp
	xorl	20(%esp),	%eax
	xorl	%edi,		%ebp
	xorl	40(%esp),	%eax
.byte 209
.byte 192	
	addl	%esi,		%ebp
	movl	%eax,		52(%esp)
	movl	%ebx,		%esi
	roll	$5,		%esi
	leal	3395469782(%eax,%ebp),%eax
	addl	%esi,		%eax

	movl	%ebx,		%ebp
	movl	56(%esp),	%esi
	rorl	$2,		%ebx
	xorl	(%esp),		%esi
	xorl	%ecx,		%ebp
	xorl	24(%esp),	%esi
	xorl	%edx,		%ebp
	xorl	44(%esp),	%esi
.byte 209
.byte 198	
	addl	%edi,		%ebp
	movl	%esi,		56(%esp)
	movl	%eax,		%edi
	roll	$5,		%edi
	leal	3395469782(%esi,%ebp),%esi
	addl	%edi,		%esi

	movl	%eax,		%ebp
	movl	60(%esp),	%edi
	rorl	$2,		%eax
	xorl	4(%esp),	%edi
	xorl	%ebx,		%ebp
	xorl	28(%esp),	%edi
	xorl	%ecx,		%ebp
	xorl	48(%esp),	%edi
.byte 209
.byte 199	
	addl	%edx,		%ebp
	movl	%edi,		60(%esp)
	movl	%esi,		%edx
	roll	$5,		%edx
	leal	3395469782(%edi,%ebp),%edi
	addl	%edx,		%edi
	movl	84(%esp),	%ebp
	movl	88(%esp),	%edx
	addl	(%ebp),		%edi
	addl	4(%ebp),	%esi
	addl	8(%ebp),	%eax
	addl	12(%ebp),	%ebx
	addl	16(%ebp),	%ecx
	movl	%edi,		(%ebp)
	addl	$64,		%edx
	movl	%esi,		4(%ebp)
	cmpl	92(%esp),	%edx
	movl	%eax,		8(%ebp)
	movl	%ecx,		%edi
	movl	%ebx,		12(%ebp)
	movl	%edx,		%esi
	movl	%ecx,		16(%ebp)
	jb	.L000loop
	addl	$64,		%esp
	popl	%edi
	popl	%esi
	popl	%ebx
	popl	%ebp
	ret
.L_sha1_block_data_order_end:
.size	sha1_block_data_order,.L_sha1_block_data_order_end-sha1_block_data_order
.ident	"sha1_block_data_order"
