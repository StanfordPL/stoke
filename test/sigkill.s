  .text
  .globl _Z7sigkill
  .type _Z7sigkill, @function
_Z7sigkill:
	.loop:
	jmpq .loop
  retq
  .size _Z7sigkill, .-_Z7sigkill
