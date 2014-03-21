  .text
  .globl _Z5saxpyiPiS_i.constprop.1
  .type _Z5saxpyiPiS_i.constprop.1, @function
_Z5saxpyiPiS_i.constprop.1:
  movslq %edx,%rdx
  leaq   0x0(,%rdx,4),%rax
  leaq   (%rdi,%rax,1),%r8
  movl   (%r8),%ecx
  leal   (%rcx,%rcx,8),%r9d
  leal   (%rcx,%r9,2),%ecx
  addl   (%rsi,%rdx,4),%ecx
  movl   %ecx,(%r8)
  leaq   0x4(%rdi,%rax,1),%rcx
  movl   (%rcx),%edx
  leal   (%rdx,%rdx,8),%r8d
  leal   (%rdx,%r8,2),%edx
  addl   0x4(%rsi,%rax,1),%edx
  movl   %edx,(%rcx)
  leaq   0x8(%rdi,%rax,1),%rcx
  movl   (%rcx),%edx
  leal   (%rdx,%rdx,8),%r8d
  leal   (%rdx,%r8,2),%edx
  addl   0x8(%rsi,%rax,1),%edx
  movl   %edx,(%rcx)
  leaq   0xc(%rdi,%rax,1),%rcx
  movl   (%rcx),%edx
  leal   (%rdx,%rdx,8),%edi
  leal   (%rdx,%rdi,2),%edx
  addl   0xc(%rsi,%rax,1),%edx
  movl   %edx,(%rcx)
  retq   
  xchgw  %ax,%ax
  .size _Z5saxpyiPiS_i.constprop.1, .-_Z5saxpyiPiS_i.constprop.1
