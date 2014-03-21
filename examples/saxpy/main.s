	.file	"main.cc"
	.text
	.p2align 4,,15
	.type	_Z5saxpyiPiS_i.constprop.1, @function
_Z5saxpyiPiS_i.constprop.1:
.LFB1419:
	.cfi_startproc
	movslq	%edx, %rdx
	leaq	0(,%rdx,4), %rax
	leaq	(%rdi,%rax), %r8
	movl	(%r8), %ecx
	leal	(%rcx,%rcx,8), %r9d
	leal	(%rcx,%r9,2), %ecx
	addl	(%rsi,%rdx,4), %ecx
	movl	%ecx, (%r8)
	leaq	4(%rdi,%rax), %rcx
	movl	(%rcx), %edx
	leal	(%rdx,%rdx,8), %r8d
	leal	(%rdx,%r8,2), %edx
	addl	4(%rsi,%rax), %edx
	movl	%edx, (%rcx)
	leaq	8(%rdi,%rax), %rcx
	movl	(%rcx), %edx
	leal	(%rdx,%rdx,8), %r8d
	leal	(%rdx,%r8,2), %edx
	addl	8(%rsi,%rax), %edx
	movl	%edx, (%rcx)
	leaq	12(%rdi,%rax), %rcx
	movl	(%rcx), %edx
	leal	(%rdx,%rdx,8), %edi
	leal	(%rdx,%rdi,2), %edx
	addl	12(%rsi,%rax), %edx
	movl	%edx, (%rcx)
	ret
	.cfi_endproc
.LFE1419:
	.size	_Z5saxpyiPiS_i.constprop.1, .-_Z5saxpyiPiS_i.constprop.1
	.p2align 4,,15
	.globl	_Z5saxpyiPiS_i
	.type	_Z5saxpyiPiS_i, @function
_Z5saxpyiPiS_i:
.LFB1269:
	.cfi_startproc
	movslq	%ecx, %rcx
	leaq	0(,%rcx,4), %rax
	leaq	(%rsi,%rax), %r9
	movl	(%r9), %r8d
	imull	%edi, %r8d
	addl	(%rdx,%rcx,4), %r8d
	movl	%r8d, (%r9)
	leaq	4(%rsi,%rax), %r8
	movl	(%r8), %ecx
	imull	%edi, %ecx
	addl	4(%rdx,%rax), %ecx
	movl	%ecx, (%r8)
	leaq	8(%rsi,%rax), %r8
	movl	(%r8), %ecx
	imull	%edi, %ecx
	addl	8(%rdx,%rax), %ecx
	movl	%ecx, (%r8)
	leaq	12(%rsi,%rax), %rcx
	imull	(%rcx), %edi
	addl	12(%rdx,%rax), %edi
	movl	%edi, (%rcx)
	ret
	.cfi_endproc
.LFE1269:
	.size	_Z5saxpyiPiS_i, .-_Z5saxpyiPiS_i
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1270:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	next_ptr(%rip), %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	xorl	%ebx, %ebx
	leaq	8192(%rbp), %rax
	leaq	4096(%rbp), %r12
	movq	%rax, next_ptr(%rip)
	.p2align 4,,10
	.p2align 3
.L5:
	movl	%ebx, %edx
	movq	%r12, %rsi
	movq	%rbp, %rdi
	addq	$4, %rbx
	call	_Z5saxpyiPiS_i.constprop.1
	cmpq	$1024, %rbx
	jne	.L5
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1270:
	.size	main, .-main
	.p2align 4,,15
	.type	_GLOBAL__sub_I_pool, @function
_GLOBAL__sub_I_pool:
.LFB1418:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE1418:
	.size	_GLOBAL__sub_I_pool, .-_GLOBAL__sub_I_pool
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_pool
	.globl	next_ptr
	.data
	.align 16
	.type	next_ptr, @object
	.size	next_ptr, 8
next_ptr:
	.quad	pool
	.globl	pool
	.bss
	.align 32
	.type	pool, @object
	.size	pool, 1048576
pool:
	.zero	1048576
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu/Linaro 4.8.1-10ubuntu9) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
