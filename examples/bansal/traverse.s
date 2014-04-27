  .text
  .globl _Z8traverseP4Node
  .type _Z8traverseP4Node, @function
_Z8traverseP4Node:
	movq   %rdi, -0x8(%rsp)
	jmp .L_400732
.L_400717:
	movq   -0x8(%rsp), %r8
	sall   (%r8)
 	movq   0x8(%r8), %r8
	movq   %r8, -0x8(%rsp)
.L_400732:
	movq   -0x8(%rsp), %r8
  cmpq   $0x0,%r8
  jne    .L_400717
  retq   
  .size _Z8traverseP4Node, .-_Z8traverseP4Node
