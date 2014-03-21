  .text
  .globl _Z5saxpyiPiS_i
  .type _Z5saxpyiPiS_i, @function
_Z5saxpyiPiS_i:
  movslq %ecx,%rcx
  leaq   0x0(,%rcx,4),%rax
  leaq   (%rsi,%rax,1),%r9
  movl   (%r9),%r8d
  imull  %edi,%r8d
  addl   (%rdx,%rcx,4),%r8d
  movl   %r8d,(%r9)
  leaq   0x4(%rsi,%rax,1),%r8
  movl   (%r8),%ecx
  imull  %edi,%ecx
  addl   0x4(%rdx,%rax,1),%ecx
  movl   %ecx,(%r8)
  leaq   0x8(%rsi,%rax,1),%r8
  movl   (%r8),%ecx
  imull  %edi,%ecx
  addl   0x8(%rdx,%rax,1),%ecx
  movl   %ecx,(%r8)
  leaq   0xc(%rsi,%rax,1),%rcx
  imull  (%rcx),%edi
  addl   0xc(%rdx,%rax,1),%edi
  movl   %edi,(%rcx)
  retq   
  .size _Z5saxpyiPiS_i, .-_Z5saxpyiPiS_i
