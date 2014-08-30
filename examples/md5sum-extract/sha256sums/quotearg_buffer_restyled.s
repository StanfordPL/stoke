  .text
  .globl quotearg_buffer_restyled
  .type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
.L_405e10:
  pushq  %r15
  movq   %rcx,%r15
  pushq  %r14
  movl   %r8d,%r14d
  pushq  %r13
  movq   %rdx,%r13
  pushq  %r12
  pushq  %rbp
  pushq  %rbx
  movl   %r9d,%ebx
  subq   $0xc8,%rsp
  movq   0x100(%rsp),%rax
  movq   %rdi,0x28(%rsp)
  movq   %rsi,0x20(%rsp)
  movl   %r8d,0x34(%rsp)
  movl   %r9d,0x90(%rsp)
  movq   %rax,0x58(%rsp)
  movq   0x108(%rsp),%rax
  movq   %rax,0x70(%rsp)
  movq   0x110(%rsp),%rax
  movq   %rax,0x68(%rsp)
  movq   %fs:0x28,%rax
  movq   %rax,0xb8(%rsp)
  xorl   %eax,%eax
  callq  .L_4014d0
  movq   %rax,0x78(%rsp)
  movl   %ebx,%eax
  shrl $0x1,  %eax
  andl   $0x1,%eax
  cmpl   $0x8,%r14d
  movb   %al,0x33(%rsp)
  ja     .L_4067f0
  movl   %r14d,%eax
  movq   0x20(%rsp),%r11
  jmpq   *0x408e80(,%rax,8)
  nop
  movb   $0x0,0x33(%rsp)
  movb   $0x0,0x20(%rsp)
  xorl   %r14d,%r14d
  movq   $0x0,0x60(%rsp)
  xorl   %ebx,%ebx
  nop
.L_405ed0:
  movzbl 0x33(%rsp),%eax
  movq   %r14,%r9
  xorl   %ebp,%ebp
  movq   %r11,%r14
  movq   %r13,%r8
  xorl   $0x1,%eax
  movb   %al,0x38(%rsp)
  movzbl 0x20(%rsp),%eax
  xorl   $0x1,%eax
  movb   %al,0x95(%rsp)
.L_405ef6:
  cmpq   %r15,%rbp
  setne  %al
  cmpq   $0xffffffffffffffff,%r15
  je     .L_4060e6
  nop
.L_405f10:
  testb  %al,%al
  je     .L_4060f6
.L_405f18:
  testq  %r9,%r9
  setne  %cl
  je     .L_406610
  cmpb   $0x0,0x20(%rsp)
  je     .L_406610
  leaq   0x0(%rbp,%r9,1),%rax
  cmpq   %rax,%r15
  jb     .L_406610
  leaq   (%r8,%rbp,1),%r13
  movq   0x60(%rsp),%rsi
  movq   %r9,%rdx
  movl   %ecx,0x50(%rsp)
  movq   %r8,0x48(%rsp)
  movq   %r13,%rdi
  movq   %r9,0x40(%rsp)
  callq  .L_4015b0
  testl  %eax,%eax
  movq   0x40(%rsp),%r9
  movq   0x48(%rsp),%r8
  movl   0x50(%rsp),%ecx
  jne    .L_406620
  cmpb   $0x0,0x33(%rsp)
  jne    .L_4061b0
  movl   $0x1,%r11d
  nop
.L_405f90:
  movzbl 0x0(%r13),%r12d
  cmpb   $0x7e,%r12b
  ja     .L_406388
  movzbl %r12b,%eax
  jmpq   *0x408ec8(,%rax,8)
  nop
  movl   0x34(%rsp),%eax
  cmpl   $0x2,%eax
  je     .L_4061a0
  cmpl   $0x3,%eax
  jne    .L_406068
  testb  $0x4,0x90(%rsp)
  je     .L_406068
  leaq   0x2(%rbp),%rax
  cmpq   %rax,%r15
  jbe    .L_406068
  cmpb   $0x3f,0x1(%r8,%rbp,1)
  jne    .L_406068
  movzbl (%r8,%rax,1),%esi
  leal   -0x21(%rsi),%ecx
  cmpb   $0x1d,%cl
  ja     .L_406068
  movl   $0x1,%edx
  shlq   %cl,%rdx
  testl  $0x380051c1,%edx
  je     .L_406068
  cmpb   $0x0,0x33(%rsp)
  jne    .L_4061b0
  cmpq   %r14,%rbx
  jae    .L_40601f
  movq   0x28(%rsp),%rdi
  movb   $0x3f,(%rdi,%rbx,1)
.L_40601f:
  leaq   0x1(%rbx),%rdx
  cmpq   %rdx,%r14
  jbe    .L_406032
  movq   0x28(%rsp),%rdi
  movb   $0x22,0x1(%rdi,%rbx,1)
.L_406032:
  leaq   0x2(%rbx),%rdx
  cmpq   %rdx,%r14
  jbe    .L_406045
  movq   0x28(%rsp),%rdi
  movb   $0x22,0x2(%rdi,%rbx,1)
.L_406045:
  leaq   0x3(%rbx),%rdx
  cmpq   %rdx,%r14
  jbe    .L_406058
  movq   0x28(%rsp),%rdi
  movb   $0x3f,0x3(%rdi,%rbx,1)
.L_406058:
  addq   $0x4,%rbx
  movl   %esi,%r12d
  movq   %rax,%rbp
  nop
.L_406068:
  cmpb   $0x0,0x38(%rsp)
  je     .L_406079
  cmpb   $0x0,0x95(%rsp)
  jne    .L_40609e
.L_406079:
  movq   0x58(%rsp),%rdi
  testq  %rdi,%rdi
  je     .L_40609e
  movl   %r12d,%edx
  movl   %r12d,%ecx
  movl   $0x1,%eax
  shrb   $0x5,%dl
  andl   $0x1f,%ecx
  movzbl %dl,%edx
  shll   %cl,%eax
  testl  %eax,(%rdi,%rdx,4)
  jne    .L_4060a3
.L_40609e:
  testb  %r11b,%r11b
  je     .L_4060c0
.L_4060a3:
  cmpb   $0x0,0x33(%rsp)
  jne    .L_4061b0
  cmpq   %r14,%rbx
  jae    .L_4060bc
  movq   0x28(%rsp),%rax
  movb   $0x5c,(%rax,%rbx,1)
.L_4060bc:
  addq   $0x1,%rbx
.L_4060c0:
  addq   $0x1,%rbp
.L_4060c4:
  cmpq   %r14,%rbx
  jae    .L_4060d2
  movq   0x28(%rsp),%rax
  movb   %r12b,(%rax,%rbx,1)
.L_4060d2:
  addq   $0x1,%rbx
  cmpq   %r15,%rbp
  setne  %al
  cmpq   $0xffffffffffffffff,%r15
  jne    .L_405f10
.L_4060e6:
  cmpb   $0x0,(%r8,%rbp,1)
  setne  %al
  testb  %al,%al
  jne    .L_405f18
.L_4060f6:
  testq  %rbx,%rbx
  movq   %r14,%r11
  movq   %r8,%r13
  jne    .L_406113
  cmpl   $0x2,0x34(%rsp)
  jne    .L_406113
  cmpb   $0x0,0x33(%rsp)
  jne    .L_4061b6
.L_406113:
  cmpb   $0x0,0x33(%rsp)
  jne    .L_406154
  cmpq   $0x0,0x60(%rsp)
  je     .L_406154
  movq   0x60(%rsp),%rdx
  movzbl (%rdx),%eax
  testb  %al,%al
  je     .L_406154
  movq   0x28(%rsp),%rcx
  subq   %rbx,%rdx
  nop
.L_406140:
  cmpq   %rbx,%r11
  jbe    .L_406148
  movb   %al,(%rcx,%rbx,1)
.L_406148:
  addq   $0x1,%rbx
  movzbl (%rdx,%rbx,1),%eax
  testb  %al,%al
  jne    .L_406140
.L_406154:
  cmpq   %r11,%rbx
  movq   %rbx,%rax
  jae    .L_4061f6
  movq   0x28(%rsp),%rsi
  movb   $0x0,(%rsi,%rbx,1)
  jmpq   .L_4061f6
  xchgw  %ax,%ax
  cmpq   $0x1,%r15
  setne  %al
  cmpq   $0xffffffffffffffff,%r15
  je     .L_4067e0
.L_406181:
  testb  %al,%al
  jne    .L_406068
  testq  %rbp,%rbp
  jne    .L_406068
  cmpl   $0x2,0x34(%rsp)
  jne    .L_406068
  nop
.L_4061a0:
  cmpb   $0x0,0x33(%rsp)
  je     .L_406068
  nop
.L_4061b0:
  movq   %r14,%r11
  movq   %r8,%r13
.L_4061b6:
  movq   0x68(%rsp),%rax
  movl   0x90(%rsp),%r9d
  movq   %r15,%rcx
  movl   0x34(%rsp),%r8d
  movq   0x28(%rsp),%rdi
  movq   %r13,%rdx
  movq   $0x0,(%rsp)
  movq   %r11,%rsi
  movq   %rax,0x10(%rsp)
  movq   0x70(%rsp),%rax
  andl   $0xfffffffd,%r9d
  movq   %rax,0x8(%rsp)
  callq  .L_405e10
.L_4061f6:
  movq   0xb8(%rsp),%rsi
  xorq   %fs:0x28,%rsi
  jne    .L_406993
  addq   $0xc8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
  movl   $0x72,%eax
.L_406225:
  cmpl   $0x2,0x34(%rsp)
  je     .L_40685f
.L_406230:
  cmpb   $0x0,0x20(%rsp)
  je     .L_406068
  movl   %eax,%r12d
  jmpq   .L_4060a3
  nop
  movl   $0x62,%eax
  jmpq    .L_406230
  nop
  movl   $0x66,%eax
  jmpq    .L_406230
  nop
  movl   $0x76,%eax
  jmpq    .L_406230
  nop
  movl   $0x6e,%eax
  jmpq    .L_406225
  nop
  movl   $0x74,%eax
  jmpq    .L_406225
  nop
  cmpb   $0x0,0x20(%rsp)
  je     .L_4067b0
  cmpb   $0x0,0x33(%rsp)
  jne    .L_4061b0
  cmpq   %r14,%rbx
  jae    .L_4062b4
  movq   0x28(%rsp),%rax
  movb   $0x5c,(%rax,%rbx,1)
.L_4062b4:
  leaq   0x1(%rbp),%rdx
  leaq   0x1(%rbx),%rax
  cmpq   %rdx,%r15
  jbe    .L_4062f0
  movzbl 0x1(%r8,%rbp,1),%esi
  leal   -0x30(%rsi),%edx
  cmpb   $0x9,%dl
  ja     .L_4062f0
  cmpq   %rax,%r14
  ja     .L_406870
.L_4062d8:
  leaq   0x2(%rbx),%rax
  cmpq   %rax,%r14
  jbe    .L_4062eb
  movq   0x28(%rsp),%rax
  movb   $0x30,0x2(%rax,%rbx,1)
.L_4062eb:
  leaq   0x3(%rbx),%rax
  nop
.L_4062f0:
  movq   %rax,%rbx
  movl   $0x30,%r12d
  jmpq   .L_406079
  xchgw  %ax,%ax
  movl   $0x61,%eax
  jmpq   .L_406230
  nop
  cmpb   $0x0,0x20(%rsp)
  je     .L_406326
  cmpb   $0x0,0x33(%rsp)
  je     .L_406326
  testb  %cl,%cl
  jne    .L_4060c0
.L_406326:
  movl   %r12d,%eax
  jmpq   .L_406225
  xchgw  %ax,%ax
  cmpl   $0x2,0x34(%rsp)
  jne    .L_406068
  cmpb   $0x0,0x33(%rsp)
  jne    .L_4061b0
  cmpq   %r14,%rbx
  jae    .L_406354
  movq   0x28(%rsp),%rax
  movb   $0x27,(%rax,%rbx,1)
.L_406354:
  leaq   0x1(%rbx),%rax
  cmpq   %rax,%r14
  jbe    .L_406367
  movq   0x28(%rsp),%rax
  movb   $0x5c,0x1(%rax,%rbx,1)
.L_406367:
  leaq   0x2(%rbx),%rax
  cmpq   %rax,%r14
  jbe    .L_40637a
  movq   0x28(%rsp),%rax
  movb   $0x27,0x2(%rax,%rbx,1)
.L_40637a:
  addq   $0x3,%rbx
  jmpq   .L_406068
  nop
.L_406388:
  cmpq   $0x1,0x78(%rsp)
  jne    .L_406630
  movq   %r8,0x50(%rsp)
  movq   %r9,0x48(%rsp)
  movl   %r11d,0x40(%rsp)
  callq  .L_4017a0
  movq   (%rax),%rax
  movzbl %r12b,%edx
  movl   0x40(%rsp),%r11d
  movq   0x48(%rsp),%r9
  movq   0x50(%rsp),%r8
  movzwl (%rax,%rdx,2),%edx
  movl   $0x1,%eax
  shrw   $0xe,%dx
  xorl   $0x1,%edx
  andl   $0x1,%edx
.L_4063d1:
  andb   0x20(%rsp),%dl
  je     .L_406068
.L_4063db:
  addq   %rbp,%rax
  movzbl 0x33(%rsp),%edi
  movq   0x28(%rsp),%rcx
  jmpq    .L_406460
  nop
.L_4063f0:
  testb  %dil,%dil
  jne    .L_4061b0
  cmpq   %r14,%rbx
  jae    .L_406402
  movb   $0x5c,(%rcx,%rbx,1)
.L_406402:
  leaq   0x1(%rbx),%rsi
  cmpq   %rsi,%r14
  jbe    .L_40641a
  movl   %r12d,%esi
  shrb   $0x6,%sil
  addl   $0x30,%esi
  movb   %sil,0x1(%rcx,%rbx,1)
.L_40641a:
  leaq   0x2(%rbx),%rsi
  cmpq   %rsi,%r14
  jbe    .L_406435
  movl   %r12d,%esi
  shrb   $0x3,%sil
  andl   $0x7,%esi
  addl   $0x30,%esi
  movb   %sil,0x2(%rcx,%rbx,1)
.L_406435:
  andl   $0x7,%r12d
  addq   $0x3,%rbx
  addl   $0x30,%r12d
.L_406441:
  addq   $0x1,%rbp
  cmpq   %rbp,%rax
  jbe    .L_4060c4
  cmpq   %r14,%rbx
  jae    .L_406457
  movb   %r12b,(%rcx,%rbx,1)
.L_406457:
  movzbl (%r8,%rbp,1),%r12d
  addq   $0x1,%rbx
.L_406460:
  testb  %dl,%dl
  jne    .L_4063f0
  testb  %r11b,%r11b
  je     .L_406441
  cmpq   %r14,%rbx
  jae    .L_406472
  movb   $0x5c,(%rcx,%rbx,1)
.L_406472:
  addq   $0x1,%rbx
  xorl   %r11d,%r11d
  jmpq    .L_406441
  nop
  cmpb   $0x0,0x33(%rsp)
  jne    .L_406978
  testq  %r11,%r11
  je     .L_406841
  movq   0x28(%rsp),%rax
  movb   $0x0,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x408e2b,0x60(%rsp)
  movl   $0x1,%ebx
  movb   $0x27,(%rax)
  jmpq   .L_405ed0
  nop
  cmpb   $0x0,0x33(%rsp)
  jne    .L_406998
  testq  %r11,%r11
  je     .L_406823
  movq   0x28(%rsp),%rax
  movb   $0x1,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x408e2d,0x60(%rsp)
  movl   $0x1,%ebx
  movb   $0x22,(%rax)
  jmpq   .L_405ed0
  nop
  movb   $0x0,0x33(%rsp)
  movb   $0x1,0x20(%rsp)
  xorl   %r14d,%r14d
  movq   $0x0,0x60(%rsp)
  xorl   %ebx,%ebx
  jmpq   .L_405ed0
  nop
  movb   $0x1,0x33(%rsp)
  movb   $0x1,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x408e2d,0x60(%rsp)
  xorl   %ebx,%ebx
  movl   $0x3,0x34(%rsp)
  jmpq   .L_405ed0
  nop
  je     .L_406582
  movl   0x34(%rsp),%ebx
  movl   $0x408e37,%edi
  movq   %r11,0x20(%rsp)
  movl   %ebx,%esi
  callq  .L_405d20
  movl   %ebx,%esi
  movl   $0x408e2b,%edi
  movq   %rax,0x70(%rsp)
  callq  .L_405d20
  movq   0x20(%rsp),%r11
  movq   %rax,0x68(%rsp)
.L_406582:
  xorl   %ebx,%ebx
  cmpb   $0x0,0x33(%rsp)
  jne    .L_4065b4
  movq   0x70(%rsp),%rdx
  movzbl (%rdx),%eax
  testb  %al,%al
  je     .L_4065b4
  movq   0x28(%rsp),%rcx
  nop
.L_4065a0:
  cmpq   %r11,%rbx
  jae    .L_4065a8
  movb   %al,(%rcx,%rbx,1)
.L_4065a8:
  addq   $0x1,%rbx
  movzbl (%rdx,%rbx,1),%eax
  testb  %al,%al
  jne    .L_4065a0
.L_4065b4:
  movq   0x68(%rsp),%rbp
  movq   %r11,0x38(%rsp)
  movq   %rbp,%rdi
  callq  .L_4014e0
  movq   %rbp,0x60(%rsp)
  movq   %rax,%r14
  movb   $0x1,0x20(%rsp)
  movq   0x38(%rsp),%r11
  jmpq   .L_405ed0
  nop
  movb   $0x1,0x33(%rsp)
  movb   $0x0,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x408e2b,0x60(%rsp)
  xorl   %ebx,%ebx
  movl   $0x2,0x34(%rsp)
  jmpq   .L_405ed0
  nop
.L_406610:
  leaq   (%r8,%rbp,1),%r13
  xorl   %r11d,%r11d
  jmpq   .L_405f90
  nop
.L_406620:
  xorl   %r11d,%r11d
  jmpq   .L_405f90
  nop
.L_406630:
  cmpq   $0xffffffffffffffff,%r15
  movq   $0x0,0xb0(%rsp)
  je     .L_4067f5
.L_406646:
  movl   $0x1,%esi
  xorl   %eax,%eax
  movq   %rbx,0x80(%rsp)
  movb   %r12b,0x96(%rsp)
  movq   %r13,0x98(%rsp)
  movq   %rax,%rbx
  movq   %rbp,0x48(%rsp)
  movq   %r9,0x88(%rsp)
  movl   %esi,%r12d
  movb   %r11b,0x97(%rsp)
  movq   %r14,0x50(%rsp)
  movq   %r8,%r13
  movq   %r15,0x40(%rsp)
.L_40668d:
  movq   0x48(%rsp),%rax
  movq   0x40(%rsp),%rdx
  leaq   0xb0(%rsp),%rcx
  leaq   0xac(%rsp),%rdi
  leaq   (%rbx,%rax,1),%r14
  leaq   0x0(%r13,%r14,1),%r15
  subq   %r14,%rdx
  movq   %r15,%rsi
  callq  .L_401510
  testq  %rax,%rax
  movq   %rax,%rbp
  je     .L_40687e
  cmpq   $0xffffffffffffffff,%rax
  je     .L_4068c0
  cmpq   $0xfffffffffffffffe,%rax
  je     .L_406901
  cmpb   $0x0,0x33(%rsp)
  je     .L_40672f
  cmpl   $0x2,0x34(%rsp)
  jne    .L_40672f
  cmpq   $0x1,%rax
  je     .L_40672f
  movl   $0x1,%edx
  movl   $0x1,%eax
  nop
.L_406700:
  movzbl (%r15,%rdx,1),%edi
  leal   -0x5b(%rdi),%ecx
  cmpb   $0x21,%cl
  ja     .L_406726
  movq   %rax,%rsi
  movq $0x20000002b,%rdi
  shlq   %cl,%rsi
  testq  %rdi,%rsi
  jne    .L_4067d0
.L_406726:
  addq   $0x1,%rdx
  cmpq   %rbp,%rdx
  jne    .L_406700
.L_40672f:
  movl   0xac(%rsp),%edi
  callq  .L_401780
  leaq   0xb0(%rsp),%rdi
  testl  %eax,%eax
  movl   $0x0,%eax
  cmovel %eax,%r12d
  addq   %rbp,%rbx
  callq  .L_401770
  testl  %eax,%eax
  je     .L_40668d
  movl   %r12d,%esi
  movzbl 0x97(%rsp),%r11d
  movzbl 0x96(%rsp),%r12d
  movq   %rbx,%rax
  movq   0x48(%rsp),%rbp
  movq   0x88(%rsp),%r9
  movq   0x80(%rsp),%rbx
  movq   0x50(%rsp),%r14
  movl   %esi,%edx
  movq   0x40(%rsp),%r15
  movq   %r13,%r8
  xorl   $0x1,%edx
.L_40679d:
  cmpq   $0x1,%rax
  jbe    .L_4063d1
  andb   0x20(%rsp),%dl
  jmpq   .L_4063db
.L_4067b0:
  testb  $0x1,0x90(%rsp)
  je     .L_406068
  addq   $0x1,%rbp
  jmpq   .L_405ef6
  nop
.L_4067d0:
  movq   0x50(%rsp),%r11
  movq   0x40(%rsp),%r15
  jmpq   .L_4061b6
  nop
.L_4067e0:
  cmpb   $0x0,0x1(%r8)
  setne  %al
  jmpq   .L_406181
  nop
.L_4067f0:
  callq  .L_401410
.L_4067f5:
  movq   %r8,%rdi
  movq   %r9,0x50(%rsp)
  movl   %r11d,0x48(%rsp)
  movq   %r8,0x40(%rsp)
  callq  .L_4014e0
  movq   0x50(%rsp),%r9
  movq   %rax,%r15
  movl   0x48(%rsp),%r11d
  movq   0x40(%rsp),%r8
  jmpq   .L_406646
.L_406823:
  movb   $0x1,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x408e2d,0x60(%rsp)
  movl   $0x1,%ebx
  jmpq   .L_405ed0
.L_406841:
  movb   $0x0,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x408e2b,0x60(%rsp)
  movl   $0x1,%ebx
  jmpq   .L_405ed0
.L_40685f:
  cmpb   $0x0,0x33(%rsp)
  je     .L_406230
  jmpq   .L_4061b0
  nop
.L_406870:
  movq   0x28(%rsp),%rsi
  movb   $0x30,(%rsi,%rax,1)
  jmpq   .L_4062d8
.L_40687e:
  movl   %r12d,%edx
  movq   %rbx,%rax
  movq   0x48(%rsp),%rbp
  movq   0x88(%rsp),%r9
  movzbl 0x97(%rsp),%r11d
  movq   %r13,%r8
  movq   0x80(%rsp),%rbx
  movzbl 0x96(%rsp),%r12d
  xorl   $0x1,%edx
  movq   0x50(%rsp),%r14
  movq   0x40(%rsp),%r15
  jmpq   .L_40679d
.L_4068c0:
  movq   %rbx,%rax
  movq   0x48(%rsp),%rbp
  movq   0x88(%rsp),%r9
  movzbl 0x96(%rsp),%r12d
  movzbl 0x97(%rsp),%r11d
  movq   %r13,%r8
  movq   0x80(%rsp),%rbx
  movq   0x50(%rsp),%r14
  movl   $0x1,%edx
  movq   0x40(%rsp),%r15
  jmpq   .L_40679d
.L_406901:
  movq   %r15,%r10
  movq   0x40(%rsp),%r15
  movq   %r14,%rsi
  movq   %rbx,%rax
  movq   %r13,%r8
  movq   0x48(%rsp),%rbp
  movq   0x88(%rsp),%r9
  movzbl 0x96(%rsp),%r12d
  cmpq   %rsi,%r15
  movzbl 0x97(%rsp),%r11d
  movq   0x80(%rsp),%rbx
  movq   0x50(%rsp),%r14
  movq   0x98(%rsp),%r13
  jbe    .L_40696e
  cmpb   $0x0,(%r10)
  jne    .L_406960
  jmpq    .L_40696e
  nop
.L_406958:
  cmpb   $0x0,0x0(%r13,%rax,1)
  je     .L_40696e
.L_406960:
  addq   $0x1,%rax
  leaq   0x0(%rbp,%rax,1),%rdx
  cmpq   %rdx,%r15
  ja     .L_406958
.L_40696e:
  movl   $0x1,%edx
  jmpq   .L_40679d
.L_406978:
  movb   $0x0,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x408e2b,0x60(%rsp)
  xorl   %ebx,%ebx
  jmpq   .L_405ed0
.L_406993:
  callq  .L_4014f0
.L_406998:
  movb   $0x1,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x408e2d,0x60(%rsp)
  xorl   %ebx,%ebx
  jmpq   .L_405ed0
  nop
  .size quotearg_buffer_restyled, .-quotearg_buffer_restyled
