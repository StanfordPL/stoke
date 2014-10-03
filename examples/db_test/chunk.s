  .text
  .globl main
  .type main, @function
main:
  movq -0x48(%rbp),   %rax
  leaq -0x1(%rax),    %rdx
  movq -0x38(%rbp),   %rax
  movq (%rax,%rdx,8), %rdx
  movq -0x48(%rbp),   %rax
  leaq -0x2(%rax),    %rcx
  movq -0x38(%rbp),   %rax
  movq (%rax,%rcx,8), %rax
  leaq (%rdx,%rax,1), %rcx
  movq -0x38(%rbp),   %rax
  movq -0x48(%rbp),   %rdx
  movq %rcx, (%rax,%rdx,8)
  addq $0x1, -0x48(%rbp)
