  .text
  .globl locale_charset
  .type locale_charset, @function
locale_charset:
  pushq  %r15
  movl   $0xe,%edi
  pushq  %r14
  pushq  %r13
  pushq  %r12
  pushq  %rbp
  pushq  %rbx
  subq   $0xa8,%rsp
  movq   %fs:0x28,%rax
  movq   %rax,0x98(%rsp)
  xorl   %eax,%eax
  callq  .L_401650
  movq   0x20372b(%rip),%r14        
  testq  %rax,%rax
  movq   %rax,%rbx
  movl   $0x409381,%eax
  cmoveq %rax,%rbx
  testq  %r14,%r14
  jne    .L_407d6a
  jmpq   .L_407dd4
  xchgw  %ax,%ax
.L_407d50:
  movq   %r14,%rdi
  callq  .L_4014e0
  leaq   0x1(%r14,%rax,1),%rbp
  movq   %rbp,%rdi
  callq  .L_4014e0
  leaq   0x1(%rbp,%rax,1),%r14
.L_407d6a:
  movzbl (%r14),%ebp
  testb  %bpl,%bpl
  je     .L_407d9c
  movq   %r14,%rsi
  movq   %rbx,%rdi
  callq  .L_4015f0
  testl  %eax,%eax
  je     .L_407d8f
  cmpb   $0x2a,%bpl
  jne    .L_407d50
  cmpb   $0x0,0x1(%r14)
  jne    .L_407d50
.L_407d8f:
  movq   %r14,%rdi
  callq  .L_4014e0
  leaq   0x1(%r14,%rax,1),%rbx
.L_407d9c:
  cmpb   $0x0,(%rbx)
  movl   $0x40964f,%eax
  cmoveq %rax,%rbx
  movq   0x98(%rsp),%rcx
  xorq   %fs:0x28,%rcx
  movq   %rbx,%rax
  jne    .L_4080fd
  addq   $0xa8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
.L_407dd4:
  movl   $0x409655,%edi
  callq  .L_4013f0
  testq  %rax,%rax
  movq   %rax,%r15
  je     .L_407def
  cmpb   $0x0,(%rax)
  jne    .L_408052
.L_407def:
  movl   $0xd,%eax
  movl   $0xe,%r12d
  movl   $0x409640,%r15d
.L_407e00:
  cmpb   $0x2f,(%r15,%rax,1)
  movl   $0x1,%r13d
  movl   $0x1,0x8(%rsp)
  je     .L_408042
.L_407e19:
  addq   %r12,%r13
  leaq   0xe(%r13),%rdi
  callq  .L_401630
  testq  %rax,%rax
  movq   %rax,%rbp
  je     .L_4080f2
  movq   %r12,%rdx
  movq   %r15,%rsi
  movq   %rax,%rdi
  callq  .L_401610
  movl   0x8(%rsp),%edx
  testl  %edx,%edx
  je     .L_407e4d
  movb   $0x2f,0x0(%rbp,%r12,1)
.L_407e4d:
  addq   %rbp,%r13
  movq $0x2e74657372616863,%rax
  movl   $0x20000,%esi
  movq   %rax,0x0(%r13)
  movl   $0x73,%eax
  movl   $0x61696c61,0x8(%r13)
  movw   %ax,0xc(%r13)
  movq   %rbp,%rdi
  xorl   %eax,%eax
  callq  .L_4016f0
  testl  %eax,%eax
  movl   %eax,%r12d
  js     .L_408028
  movl   $0x408272,%esi
  movl   %eax,%edi
  callq  .L_4016a0
  testq  %rax,%rax
  movq   %rax,%r15
  je     .L_408020
  leaq   0x20(%rsp),%r12
  movq   $0x0,0x8(%rsp)
.L_407eb0:
  movq   0x8(%r15),%rax
  cmpq   0x10(%r15),%rax
  jae    .L_408001
.L_407ebe:
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x8(%r15)
  movzbl (%rax),%edi
.L_407ec9:
  cmpl   $0x20,%edi
  je     .L_407eb0
  leal   -0x9(%rdi),%eax
  cmpl   $0x1,%eax
  jbe    .L_407eb0
  cmpl   $0x23,%edi
  je     .L_408075
  movq   %r15,%rsi
  callq  .L_401660
  leaq   0x60(%rsp),%rcx
  xorl   %eax,%eax
  movq   %r12,%rdx
  movl   $0x409665,%esi
  movq   %r15,%rdi
  callq  .L_401570
  cmpl   $0x1,%eax
  jle    .L_40809c
  movq   %r12,%rdx
.L_407f0a:
  movl   (%rdx),%ecx
  addq   $0x4,%rdx
  leal   -0x1010101(%rcx),%eax
  notl   %ecx
  andl   %ecx,%eax
  andl   $0x80808080,%eax
  je     .L_407f0a
  movl   %eax,%ecx
  leaq   0x60(%rsp),%r10
  shrl   $0x10,%ecx
  testl  $0x8080,%eax
  cmovel %ecx,%eax
  leaq   0x2(%rdx),%rcx
  cmoveq %rcx,%rdx
  addb   %al,%al
  sbbq   $0x3,%rdx
  subq   %r12,%rdx
.L_407f44:
  movl   (%r10),%ecx
  addq   $0x4,%r10
  leal   -0x1010101(%rcx),%eax
  notl   %ecx
  andl   %ecx,%eax
  andl   $0x80808080,%eax
  je     .L_407f44
  movl   %eax,%ecx
  shrl   $0x10,%ecx
  testl  $0x8080,%eax
  cmovel %ecx,%eax
  leaq   0x2(%r10),%rcx
  cmoveq %rcx,%r10
  addb   %al,%al
  leaq   0x60(%rsp),%rax
  sbbq   $0x3,%r10
  subq   %rax,%r10
  cmpq   $0x0,0x8(%rsp)
  leaq   (%r10,%rdx,1),%rax
  jne    .L_4080bc
  leaq   0x2(%rax),%rcx
  leaq   0x3(%rax),%rdi
  movq   %rdx,0x18(%rsp)
  movq   %r10,0x10(%rsp)
  movq   %rcx,0x8(%rsp)
  callq  .L_401630
  movq   0x10(%rsp),%r10
  movq   0x18(%rsp),%rdx
  movq   %rax,%r13
.L_407fb8:
  testq  %r13,%r13
  je     .L_408102
  movq   0x8(%rsp),%r14
  movq   $0xfffffffffffffffe,%rdi
  movq   %r12,%rsi
  subq   %rdx,%rdi
  subq   %r10,%r14
  addq   %r14,%rdi
  addq   %r13,%rdi
  callq  .L_401450
  leaq   -0x1(%r13,%r14,1),%rdi
  leaq   0x60(%rsp),%rsi
  movq   %r13,%r14
  callq  .L_401450
  movq   0x8(%r15),%rax
  cmpq   0x10(%r15),%rax
  jb     .L_407ebe
.L_408001:
  movq   %r15,%rdi
  callq  .L_4013e0
  cmpl   $0xffffffff,%eax
  movl   %eax,%edi
  je     .L_40809c
  jmpq   .L_407ec9
  nop
.L_408020:
  movl   %r12d,%edi
  callq  .L_401580
.L_408028:
  movl   $0x409381,%r14d
.L_40802e:
  movq   %rbp,%rdi
  callq  .L_401400
.L_408036:
  movq   %r14,0x203423(%rip)        
  jmpq   .L_407d6a
.L_408042:
  xorl   %r13d,%r13d
  movl   $0x0,0x8(%rsp)
  jmpq   .L_407e19
.L_408052:
  movq   %rax,%rdi
  callq  .L_4014e0
  testq  %rax,%rax
  movq   %rax,%r12
  je     .L_408042
  leaq   -0x1(%rax),%rax
  jmpq   .L_407e00
  nop
.L_408070:
  cmpl   $0xffffffff,%eax
  je     .L_408093
.L_408075:
  movq   0x8(%r15),%rax
  cmpq   0x10(%r15),%rax
  jae    .L_40811d
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x8(%r15)
  movzbl (%rax),%eax
.L_40808e:
  cmpl   $0xa,%eax
  jne    .L_408070
.L_408093:
  cmpl   $0xffffffff,%eax
  jne    .L_407eb0
.L_40809c:
  movq   %r15,%rdi
  callq  .L_407a10
  movq   0x8(%rsp),%rax
  testq  %rax,%rax
  je     .L_408028
  movb   $0x0,(%r14,%rax,1)
  jmpq   .L_40802e
.L_4080bc:
  addq   0x8(%rsp),%rax
  movq   %r14,%rdi
  movq   %r10,0x18(%rsp)
  movq   %rdx,0x10(%rsp)
  leaq   0x2(%rax),%rcx
  leaq   0x3(%rax),%rsi
  movq   %rcx,0x8(%rsp)
  callq  .L_401690
  movq   0x18(%rsp),%r10
  movq   %rax,%r13
  movq   0x10(%rsp),%rdx
  jmpq   .L_407fb8
.L_4080f2:
  movl   $0x409381,%r14d
  jmpq   .L_408036
.L_4080fd:
  callq  .L_4014f0
.L_408102:
  movq   %r14,%rdi
  movl   $0x409381,%r14d
  callq  .L_401400
  movq   %r15,%rdi
  callq  .L_407a10
  jmpq   .L_40802e
.L_40811d:
  movq   %r15,%rdi
  callq  .L_4013e0
  jmpq   .L_40808e
  nop
  .size locale_charset, .-locale_charset
