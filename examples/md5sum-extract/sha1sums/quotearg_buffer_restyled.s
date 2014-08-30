  .text
  .globl quotearg_buffer_restyled
  .type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
.L_404680:
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
  ja     .L_405060
  movl   %r14d,%eax
  movq   0x20(%rsp),%r11
  jmpq   *0x407700(,%rax,8)
  nop
  movb   $0x0,0x33(%rsp)
  movb   $0x0,0x20(%rsp)
  xorl   %r14d,%r14d
  movq   $0x0,0x60(%rsp)
  xorl   %ebx,%ebx
  nop
.L_404740:
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
.L_404766:
  cmpq   %r15,%rbp
  setne  %al
  cmpq   $0xffffffffffffffff,%r15
  je     .L_404956
  nop
.L_404780:
  testb  %al,%al
  je     .L_404966
.L_404788:
  testq  %r9,%r9
  setne  %cl
  je     .L_404e80
  cmpb   $0x0,0x20(%rsp)
  je     .L_404e80
  leaq   0x0(%rbp,%r9,1),%rax
  cmpq   %rax,%r15
  jb     .L_404e80
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
  jne    .L_404e90
  cmpb   $0x0,0x33(%rsp)
  jne    .L_404a20
  movl   $0x1,%r11d
  nop
.L_404800:
  movzbl 0x0(%r13),%r12d
  cmpb   $0x7e,%r12b
  ja     .L_404bf8
  movzbl %r12b,%eax
  jmpq   *0x407748(,%rax,8)
  nop
  movl   0x34(%rsp),%eax
  cmpl   $0x2,%eax
  je     .L_404a10
  cmpl   $0x3,%eax
  jne    .L_4048d8
  testb  $0x4,0x90(%rsp)
  je     .L_4048d8
  leaq   0x2(%rbp),%rax
  cmpq   %rax,%r15
  jbe    .L_4048d8
  cmpb   $0x3f,0x1(%r8,%rbp,1)
  jne    .L_4048d8
  movzbl (%r8,%rax,1),%esi
  leal   -0x21(%rsi),%ecx
  cmpb   $0x1d,%cl
  ja     .L_4048d8
  movl   $0x1,%edx
  shlq   %cl,%rdx
  testl  $0x380051c1,%edx
  je     .L_4048d8
  cmpb   $0x0,0x33(%rsp)
  jne    .L_404a20
  cmpq   %r14,%rbx
  jae    .L_40488f
  movq   0x28(%rsp),%rdi
  movb   $0x3f,(%rdi,%rbx,1)
.L_40488f:
  leaq   0x1(%rbx),%rdx
  cmpq   %rdx,%r14
  jbe    .L_4048a2
  movq   0x28(%rsp),%rdi
  movb   $0x22,0x1(%rdi,%rbx,1)
.L_4048a2:
  leaq   0x2(%rbx),%rdx
  cmpq   %rdx,%r14
  jbe    .L_4048b5
  movq   0x28(%rsp),%rdi
  movb   $0x22,0x2(%rdi,%rbx,1)
.L_4048b5:
  leaq   0x3(%rbx),%rdx
  cmpq   %rdx,%r14
  jbe    .L_4048c8
  movq   0x28(%rsp),%rdi
  movb   $0x3f,0x3(%rdi,%rbx,1)
.L_4048c8:
  addq   $0x4,%rbx
  movl   %esi,%r12d
  movq   %rax,%rbp
  nop
.L_4048d8:
  cmpb   $0x0,0x38(%rsp)
  je     .L_4048e9
  cmpb   $0x0,0x95(%rsp)
  jne    .L_40490e
.L_4048e9:
  movq   0x58(%rsp),%rdi
  testq  %rdi,%rdi
  je     .L_40490e
  movl   %r12d,%edx
  movl   %r12d,%ecx
  movl   $0x1,%eax
  shrb   $0x5,%dl
  andl   $0x1f,%ecx
  movzbl %dl,%edx
  shll   %cl,%eax
  testl  %eax,(%rdi,%rdx,4)
  jne    .L_404913
.L_40490e:
  testb  %r11b,%r11b
  je     .L_404930
.L_404913:
  cmpb   $0x0,0x33(%rsp)
  jne    .L_404a20
  cmpq   %r14,%rbx
  jae    .L_40492c
  movq   0x28(%rsp),%rax
  movb   $0x5c,(%rax,%rbx,1)
.L_40492c:
  addq   $0x1,%rbx
.L_404930:
  addq   $0x1,%rbp
.L_404934:
  cmpq   %r14,%rbx
  jae    .L_404942
  movq   0x28(%rsp),%rax
  movb   %r12b,(%rax,%rbx,1)
.L_404942:
  addq   $0x1,%rbx
  cmpq   %r15,%rbp
  setne  %al
  cmpq   $0xffffffffffffffff,%r15
  jne    .L_404780
.L_404956:
  cmpb   $0x0,(%r8,%rbp,1)
  setne  %al
  testb  %al,%al
  jne    .L_404788
.L_404966:
  testq  %rbx,%rbx
  movq   %r14,%r11
  movq   %r8,%r13
  jne    .L_404983
  cmpl   $0x2,0x34(%rsp)
  jne    .L_404983
  cmpb   $0x0,0x33(%rsp)
  jne    .L_404a26
.L_404983:
  cmpb   $0x0,0x33(%rsp)
  jne    .L_4049c4
  cmpq   $0x0,0x60(%rsp)
  je     .L_4049c4
  movq   0x60(%rsp),%rdx
  movzbl (%rdx),%eax
  testb  %al,%al
  je     .L_4049c4
  movq   0x28(%rsp),%rcx
  subq   %rbx,%rdx
  nop
.L_4049b0:
  cmpq   %rbx,%r11
  jbe    .L_4049b8
  movb   %al,(%rcx,%rbx,1)
.L_4049b8:
  addq   $0x1,%rbx
  movzbl (%rdx,%rbx,1),%eax
  testb  %al,%al
  jne    .L_4049b0
.L_4049c4:
  cmpq   %r11,%rbx
  movq   %rbx,%rax
  jae    .L_404a66
  movq   0x28(%rsp),%rsi
  movb   $0x0,(%rsi,%rbx,1)
  jmpq   .L_404a66
  xchgw  %ax,%ax
  cmpq   $0x1,%r15
  setne  %al
  cmpq   $0xffffffffffffffff,%r15
  je     .L_405050
.L_4049f1:
  testb  %al,%al
  jne    .L_4048d8
  testq  %rbp,%rbp
  jne    .L_4048d8
  cmpl   $0x2,0x34(%rsp)
  jne    .L_4048d8
  nop
.L_404a10:
  cmpb   $0x0,0x33(%rsp)
  je     .L_4048d8
  nop
.L_404a20:
  movq   %r14,%r11
  movq   %r8,%r13
.L_404a26:
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
  callq  .L_404680
.L_404a66:
  movq   0xb8(%rsp),%rsi
  xorq   %fs:0x28,%rsi
  jne    .L_405203
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
.L_404a95:
  cmpl   $0x2,0x34(%rsp)
  je     .L_4050cf
.L_404aa0:
  cmpb   $0x0,0x20(%rsp)
  je     .L_4048d8
  movl   %eax,%r12d
  jmpq   .L_404913
  nop
  movl   $0x62,%eax
  jmpq    .L_404aa0
  nop
  movl   $0x66,%eax
  jmpq    .L_404aa0
  nop
  movl   $0x76,%eax
  jmpq    .L_404aa0
  nop
  movl   $0x6e,%eax
  jmpq    .L_404a95
  nop
  movl   $0x74,%eax
  jmpq    .L_404a95
  nop
  cmpb   $0x0,0x20(%rsp)
  je     .L_405020
  cmpb   $0x0,0x33(%rsp)
  jne    .L_404a20
  cmpq   %r14,%rbx
  jae    .L_404b24
  movq   0x28(%rsp),%rax
  movb   $0x5c,(%rax,%rbx,1)
.L_404b24:
  leaq   0x1(%rbp),%rdx
  leaq   0x1(%rbx),%rax
  cmpq   %rdx,%r15
  jbe    .L_404b60
  movzbl 0x1(%r8,%rbp,1),%esi
  leal   -0x30(%rsi),%edx
  cmpb   $0x9,%dl
  ja     .L_404b60
  cmpq   %rax,%r14
  ja     .L_4050e0
.L_404b48:
  leaq   0x2(%rbx),%rax
  cmpq   %rax,%r14
  jbe    .L_404b5b
  movq   0x28(%rsp),%rax
  movb   $0x30,0x2(%rax,%rbx,1)
.L_404b5b:
  leaq   0x3(%rbx),%rax
  nop
.L_404b60:
  movq   %rax,%rbx
  movl   $0x30,%r12d
  jmpq   .L_4048e9
  xchgw  %ax,%ax
  movl   $0x61,%eax
  jmpq   .L_404aa0
  nop
  cmpb   $0x0,0x20(%rsp)
  je     .L_404b96
  cmpb   $0x0,0x33(%rsp)
  je     .L_404b96
  testb  %cl,%cl
  jne    .L_404930
.L_404b96:
  movl   %r12d,%eax
  jmpq   .L_404a95
  xchgw  %ax,%ax
  cmpl   $0x2,0x34(%rsp)
  jne    .L_4048d8
  cmpb   $0x0,0x33(%rsp)
  jne    .L_404a20
  cmpq   %r14,%rbx
  jae    .L_404bc4
  movq   0x28(%rsp),%rax
  movb   $0x27,(%rax,%rbx,1)
.L_404bc4:
  leaq   0x1(%rbx),%rax
  cmpq   %rax,%r14
  jbe    .L_404bd7
  movq   0x28(%rsp),%rax
  movb   $0x5c,0x1(%rax,%rbx,1)
.L_404bd7:
  leaq   0x2(%rbx),%rax
  cmpq   %rax,%r14
  jbe    .L_404bea
  movq   0x28(%rsp),%rax
  movb   $0x27,0x2(%rax,%rbx,1)
.L_404bea:
  addq   $0x3,%rbx
  jmpq   .L_4048d8
  nop
.L_404bf8:
  cmpq   $0x1,0x78(%rsp)
  jne    .L_404ea0
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
.L_404c41:
  andb   0x20(%rsp),%dl
  je     .L_4048d8
.L_404c4b:
  addq   %rbp,%rax
  movzbl 0x33(%rsp),%edi
  movq   0x28(%rsp),%rcx
  jmpq    .L_404cd0
  nop
.L_404c60:
  testb  %dil,%dil
  jne    .L_404a20
  cmpq   %r14,%rbx
  jae    .L_404c72
  movb   $0x5c,(%rcx,%rbx,1)
.L_404c72:
  leaq   0x1(%rbx),%rsi
  cmpq   %rsi,%r14
  jbe    .L_404c8a
  movl   %r12d,%esi
  shrb   $0x6,%sil
  addl   $0x30,%esi
  movb   %sil,0x1(%rcx,%rbx,1)
.L_404c8a:
  leaq   0x2(%rbx),%rsi
  cmpq   %rsi,%r14
  jbe    .L_404ca5
  movl   %r12d,%esi
  shrb   $0x3,%sil
  andl   $0x7,%esi
  addl   $0x30,%esi
  movb   %sil,0x2(%rcx,%rbx,1)
.L_404ca5:
  andl   $0x7,%r12d
  addq   $0x3,%rbx
  addl   $0x30,%r12d
.L_404cb1:
  addq   $0x1,%rbp
  cmpq   %rbp,%rax
  jbe    .L_404934
  cmpq   %r14,%rbx
  jae    .L_404cc7
  movb   %r12b,(%rcx,%rbx,1)
.L_404cc7:
  movzbl (%r8,%rbp,1),%r12d
  addq   $0x1,%rbx
.L_404cd0:
  testb  %dl,%dl
  jne    .L_404c60
  testb  %r11b,%r11b
  je     .L_404cb1
  cmpq   %r14,%rbx
  jae    .L_404ce2
  movb   $0x5c,(%rcx,%rbx,1)
.L_404ce2:
  addq   $0x1,%rbx
  xorl   %r11d,%r11d
  jmpq    .L_404cb1
  nop
  cmpb   $0x0,0x33(%rsp)
  jne    .L_4051e8
  testq  %r11,%r11
  je     .L_4050b1
  movq   0x28(%rsp),%rax
  movb   $0x0,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x4076ab,0x60(%rsp)
  movl   $0x1,%ebx
  movb   $0x27,(%rax)
  jmpq   .L_404740
  nop
  cmpb   $0x0,0x33(%rsp)
  jne    .L_405208
  testq  %r11,%r11
  je     .L_405093
  movq   0x28(%rsp),%rax
  movb   $0x1,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x4076ad,0x60(%rsp)
  movl   $0x1,%ebx
  movb   $0x22,(%rax)
  jmpq   .L_404740
  nop
  movb   $0x0,0x33(%rsp)
  movb   $0x1,0x20(%rsp)
  xorl   %r14d,%r14d
  movq   $0x0,0x60(%rsp)
  xorl   %ebx,%ebx
  jmpq   .L_404740
  nop
  movb   $0x1,0x33(%rsp)
  movb   $0x1,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x4076ad,0x60(%rsp)
  xorl   %ebx,%ebx
  movl   $0x3,0x34(%rsp)
  jmpq   .L_404740
  nop
  je     .L_404df2
  movl   0x34(%rsp),%ebx
  movl   $0x4076b7,%edi
  movq   %r11,0x20(%rsp)
  movl   %ebx,%esi
  callq  .L_404590
  movl   %ebx,%esi
  movl   $0x4076ab,%edi
  movq   %rax,0x70(%rsp)
  callq  .L_404590
  movq   0x20(%rsp),%r11
  movq   %rax,0x68(%rsp)
.L_404df2:
  xorl   %ebx,%ebx
  cmpb   $0x0,0x33(%rsp)
  jne    .L_404e24
  movq   0x70(%rsp),%rdx
  movzbl (%rdx),%eax
  testb  %al,%al
  je     .L_404e24
  movq   0x28(%rsp),%rcx
  nop
.L_404e10:
  cmpq   %r11,%rbx
  jae    .L_404e18
  movb   %al,(%rcx,%rbx,1)
.L_404e18:
  addq   $0x1,%rbx
  movzbl (%rdx,%rbx,1),%eax
  testb  %al,%al
  jne    .L_404e10
.L_404e24:
  movq   0x68(%rsp),%rbp
  movq   %r11,0x38(%rsp)
  movq   %rbp,%rdi
  callq  .L_4014e0
  movq   %rbp,0x60(%rsp)
  movq   %rax,%r14
  movb   $0x1,0x20(%rsp)
  movq   0x38(%rsp),%r11
  jmpq   .L_404740
  nop
  movb   $0x1,0x33(%rsp)
  movb   $0x0,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x4076ab,0x60(%rsp)
  xorl   %ebx,%ebx
  movl   $0x2,0x34(%rsp)
  jmpq   .L_404740
  nop
.L_404e80:
  leaq   (%r8,%rbp,1),%r13
  xorl   %r11d,%r11d
  jmpq   .L_404800
  nop
.L_404e90:
  xorl   %r11d,%r11d
  jmpq   .L_404800
  nop
.L_404ea0:
  cmpq   $0xffffffffffffffff,%r15
  movq   $0x0,0xb0(%rsp)
  je     .L_405065
.L_404eb6:
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
.L_404efd:
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
  je     .L_4050ee
  cmpq   $0xffffffffffffffff,%rax
  je     .L_405130
  cmpq   $0xfffffffffffffffe,%rax
  je     .L_405171
  cmpb   $0x0,0x33(%rsp)
  je     .L_404f9f
  cmpl   $0x2,0x34(%rsp)
  jne    .L_404f9f
  cmpq   $0x1,%rax
  je     .L_404f9f
  movl   $0x1,%edx
  movl   $0x1,%eax
  nop
.L_404f70:
  movzbl (%r15,%rdx,1),%edi
  leal   -0x5b(%rdi),%ecx
  cmpb   $0x21,%cl
  ja     .L_404f96
  movq   %rax,%rsi
  movq $0x20000002b,%rdi
  shlq   %cl,%rsi
  testq  %rdi,%rsi
  jne    .L_405040
.L_404f96:
  addq   $0x1,%rdx
  cmpq   %rbp,%rdx
  jne    .L_404f70
.L_404f9f:
  movl   0xac(%rsp),%edi
  callq  .L_401780
  leaq   0xb0(%rsp),%rdi
  testl  %eax,%eax
  movl   $0x0,%eax
  cmovel %eax,%r12d
  addq   %rbp,%rbx
  callq  .L_401770
  testl  %eax,%eax
  je     .L_404efd
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
.L_40500d:
  cmpq   $0x1,%rax
  jbe    .L_404c41
  andb   0x20(%rsp),%dl
  jmpq   .L_404c4b
.L_405020:
  testb  $0x1,0x90(%rsp)
  je     .L_4048d8
  addq   $0x1,%rbp
  jmpq   .L_404766
  nop
.L_405040:
  movq   0x50(%rsp),%r11
  movq   0x40(%rsp),%r15
  jmpq   .L_404a26
  nop
.L_405050:
  cmpb   $0x0,0x1(%r8)
  setne  %al
  jmpq   .L_4049f1
  nop
.L_405060:
  callq  .L_401410
.L_405065:
  movq   %r8,%rdi
  movq   %r9,0x50(%rsp)
  movl   %r11d,0x48(%rsp)
  movq   %r8,0x40(%rsp)
  callq  .L_4014e0
  movq   0x50(%rsp),%r9
  movq   %rax,%r15
  movl   0x48(%rsp),%r11d
  movq   0x40(%rsp),%r8
  jmpq   .L_404eb6
.L_405093:
  movb   $0x1,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x4076ad,0x60(%rsp)
  movl   $0x1,%ebx
  jmpq   .L_404740
.L_4050b1:
  movb   $0x0,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x4076ab,0x60(%rsp)
  movl   $0x1,%ebx
  jmpq   .L_404740
.L_4050cf:
  cmpb   $0x0,0x33(%rsp)
  je     .L_404aa0
  jmpq   .L_404a20
  nop
.L_4050e0:
  movq   0x28(%rsp),%rsi
  movb   $0x30,(%rsi,%rax,1)
  jmpq   .L_404b48
.L_4050ee:
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
  jmpq   .L_40500d
.L_405130:
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
  jmpq   .L_40500d
.L_405171:
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
  jbe    .L_4051de
  cmpb   $0x0,(%r10)
  jne    .L_4051d0
  jmpq    .L_4051de
  nop
.L_4051c8:
  cmpb   $0x0,0x0(%r13,%rax,1)
  je     .L_4051de
.L_4051d0:
  addq   $0x1,%rax
  leaq   0x0(%rbp,%rax,1),%rdx
  cmpq   %rdx,%r15
  ja     .L_4051c8
.L_4051de:
  movl   $0x1,%edx
  jmpq   .L_40500d
.L_4051e8:
  movb   $0x0,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x4076ab,0x60(%rsp)
  xorl   %ebx,%ebx
  jmpq   .L_404740
.L_405203:
  callq  .L_4014f0
.L_405208:
  movb   $0x1,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x4076ad,0x60(%rsp)
  xorl   %ebx,%ebx
  jmpq   .L_404740
  nop
  .size quotearg_buffer_restyled, .-quotearg_buffer_restyled
