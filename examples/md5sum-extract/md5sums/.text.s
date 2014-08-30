  .text
  .globl .text
  .type .text, @function
.text:
  pushq  %r15
  xorl   %r15d,%r15d
  pushq  %r14
  pushq  %r13
  movq   %rsi,%r13
  pushq  %r12
  pushq  %rbp
  movl   %edi,%ebp
  pushq  %rbx
  movl   $0xffffffff,%ebx
  subq   $0xc8,%rsp
  movq   (%rsi),%rdi
  movq   %fs:0x28,%rax
  movq   %rax,0xb8(%rsp)
  xorl   %eax,%eax
  callq  .L_403910
  movl   $0x407081,%esi
  movl   $0x6,%edi
  callq  .L_4016b0
  movl   $0x405f4a,%esi
  movl   $0x405f3c,%edi
  callq  .L_4014b0
  movl   $0x405f3c,%edi
  callq  .L_401490
  movl   $0x402ac0,%edi
  callq  .L_405eb0
  movq   0x207a8e(%rip),%rdi        
  xorl   %ecx,%ecx
  movl   $0x1,%edx
  xorl   %esi,%esi
  callq  .L_4016d0
  movb   $0x0,0x49(%rsp)
.L_401835:
  xorl   %r8d,%r8d
  movl   $0x406920,%ecx
  movl   $0x405f8c,%edx
  movq   %r13,%rsi
  movl   %ebp,%edi
  callq  .L_401500
  cmpl   $0xffffffff,%eax
  je     .L_40196f
  cmpl   $0x74,%eax
  je     .L_401a25
  xchgw  %ax,%ax
  jle    .L_4018a0
  cmpl   $0x81,%eax
  je     .L_401a04
  nop
  jg     .L_4018d0
  cmpl   $0x77,%eax
  je     .L_401907
  addl   $0xffffff80,%eax
  xchgw  %ax,%ax
  jne    .L_4019fa
  movb   $0x1,0x207a56(%rip)        
  movb   $0x0,0x207a4e(%rip)        
  movb   $0x0,0x207a46(%rip)        
  jmpq    .L_401835
  nop
.L_4018a0:
  cmpl   $0xffffff7e,%eax
  je     .L_401a1e
  jle    .L_401921
  cmpl   $0x62,%eax
  je     .L_4018fd
  cmpl   $0x63,%eax
  jne    .L_4019fa
  movl   $0x1,%r15d
  jmpq   .L_401835
  nop
.L_4018d0:
  cmpl   $0x82,%eax
  je     .L_4018f1
  cmpl   $0x83,%eax
  jne    .L_4019fa
  movb   $0x1,0x49(%rsp)
  movl   $0x1,%ebx
  jmpq   .L_401835
.L_4018f1:
  movb   $0x1,0x2079e8(%rip)        
  jmpq   .L_401835
.L_4018fd:
  movl   $0x1,%ebx
  jmpq   .L_401835
.L_401907:
  movb   $0x0,0x2079d5(%rip)        
  movb   $0x1,0x2079cd(%rip)        
  movb   $0x0,0x2079c5(%rip)        
  jmpq   .L_401835
.L_401921:
  cmpl   $0xffffff7d,%eax
  jne    .L_4019fa
  movq   0x20797d(%rip),%rdi        
  movq   0x2078de(%rip),%rcx        
  movl   $0x405f5c,%r9d
  movq   $0x0,0x8(%rsp)
  movq   $0x405f7f,(%rsp)
  movl   $0x405f69,%r8d
  movl   $0x405f38,%edx
  movl   $0x405f78,%esi
  xorl   %eax,%eax
  callq  .L_4053b0
  xorl   %edi,%edi
  callq  .L_401740
.L_40196f:
  testl  %ebx,%ebx
  movq   $0x22,0x207974(%rip)        
  movq   $0x20,0x207961(%rip)        
  je     .L_4021a8
.L_40198d:
  testb  %r15b,%r15b
  jne    .L_401a2c
.L_401996:
  movl   %ebx,%eax
  notl   %eax
  shrl   $0x1f,%eax
  testb  %al,%r15b
  jne    .L_4022be
  cmpb   $0x0,0x207936(%rip)        
  je     .L_401a43
  testb  %r15b,%r15b
  je     .L_40239c
  cmpb   $0x0,0x20791e(%rip)        
  jne    .L_401a59
.L_4019c9:
  testb  %r15b,%r15b
  jne    .L_401a59
  cmpb   $0x0,0x207907(%rip)        
  je     .L_401a59
  movl   $0x5,%edx
  movl   $0x406728,%esi
.L_4019e5:
  xorl   %edi,%edi
  callq  .L_4014c0
  xorl   %esi,%esi
  movq   %rax,%rdx
  xorl   %edi,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
.L_4019fa:
  movl   $0x1,%edi
  callq  .L_4027d0
.L_401a04:
  movb   $0x0,0x2078d8(%rip)        
  movb   $0x0,0x2078d0(%rip)        
  movb   $0x1,0x2078c8(%rip)        
  jmpq   .L_401835
.L_401a1e:
  xorl   %edi,%edi
  callq  .L_4027d0
.L_401a25:
  xorl   %ebx,%ebx
  jmpq   .L_401835
.L_401a2c:
  cmpb   $0x0,0x49(%rsp)
  je     .L_401996
  movl   $0x5,%edx
  movl   $0x4065d8,%esi
  jmpq    .L_4019e5
.L_401a43:
  cmpb   $0x0,0x207898(%rip)        
  je     .L_4021c2
  testb  %r15b,%r15b
  je     .L_402403
.L_401a59:
  cmpl   $0xffffffff,%ebx
  movl   $0x0,%eax
  cmovel %eax,%ebx
  movslq 0x207855(%rip),%rax        
  cmpl   %ebp,%eax
  je     .L_4023ef
.L_401a73:
  cmpl   $0x1,%ebx
  movb   $0x1,0x6e(%rsp)
  movb   %r15b,0x6d(%rsp)
  sbbl   %ebx,%ebx
  movl   %ebp,0x4c(%rsp)
  movq   %r13,0x50(%rsp)
  movl   %ebx,0x68(%rsp)
  andl   $0xfffffff6,0x68(%rsp)
  addl   $0x2a,0x68(%rsp)
  movzbl 0x68(%rsp),%ebx
  movb   %bl,0x6f(%rsp)
.L_401aa2:
  cmpl   %eax,0x4c(%rsp)
  jle    .L_402276
  movq   0x50(%rsp),%rbx
  cmpb   $0x0,0x6d(%rsp)
  movq   (%rbx,%rax,8),%rax
  movq   %rax,0x20(%rsp)
  je     .L_401e24
  cmpb   $0x2d,(%rax)
  jne    .L_40206b
  cmpb   $0x0,0x1(%rax)
  jne    .L_40206b
  movl   $0x5,%edx
  movl   $0x405f91,%esi
  xorl   %edi,%edi
  movb   $0x1,0x20780d(%rip)        
  callq  .L_4014c0
  movq   0x2077c1(%rip),%rbp        
  movq   %rax,0x20(%rsp)
  movb   $0x1,0x4b(%rsp)
.L_401b01:
  movq   $0x0,0x70(%rsp)
  movq   $0x0,0x78(%rsp)
  movl   $0x1,%ebx
  movq   $0x0,0x60(%rsp)
  movq   $0x0,0x58(%rsp)
  movq   $0x0,0x40(%rsp)
  movq   $0x0,0x30(%rsp)
  movq   $0x0,0x28(%rsp)
  nop
.L_401b48:
  leaq   0x78(%rsp),%rsi
  leaq   0x70(%rsp),%rdi
  movq   %rbp,%rcx
  movl   $0xa,%edx
  callq  .L_4015e0
  testq  %rax,%rax
  movq   %rax,%r14
  jle    .L_401f94
  movq   0x70(%rsp),%r15
  cmpb   $0x23,(%r15)
  je     .L_401cc0
  cmpb   $0xa,-0x1(%r15,%rax,1)
  je     .L_401dad
.L_401b86:
  movzbl (%r15),%edx
  xorl   %r13d,%r13d
  cmpb   $0x9,%dl
  jne    .L_401ba6
  nop
.L_401b98:
  addq   $0x1,%r13
  movzbl (%r15,%r13,1),%edx
  cmpb   $0x9,%dl
  je     .L_401b98
.L_401ba6:
  cmpb   $0x20,%dl
  je     .L_401b98
  cmpb   $0x5c,%dl
  movb   $0x0,0x4a(%rsp)
  je     .L_401dc0
.L_401bb9:
  leaq   (%r15,%r13,1),%r8
  movl   $0x3,%edx
  movl   $0x405eea,%esi
  movq   %r8,%rdi
  movq   %r8,0x18(%rsp)
  callq  .L_401430
  testl  %eax,%eax
  movq   0x18(%rsp),%r8
  jne    .L_401bff
  xorl   %eax,%eax
  cmpb   $0x20,0x3(%r15,%r13,1)
  sete   %al
  addq   %rax,%r13
  cmpb   $0x28,0x3(%r15,%r13,1)
  leaq   0x3(%r13),%rax
  leaq   (%r15,%r13,1),%r8
  je     .L_40215e
.L_401bff:
  movq   %r14,%rsi
  xorl   %eax,%eax
  movq   %r8,%rdx
  subq   %r13,%rsi
  cmpb   $0x5c,(%r8)
  sete   %al
  addq   0x2076d8(%rip),%rax        
  cmpq   %rax,%rsi
  jb     .L_401da2
  addq   0x2076c0(%rip),%r13        
  leaq   (%r15,%r13,1),%rax
  movzbl (%rax),%esi
  cmpb   $0x9,%sil
  jne    .L_401e18
.L_401c39:
  leaq   0x1(%r13),%rsi
  movb   $0x0,(%rax)
  movq   %r14,%rax
  subq   %rsi,%rax
  subq   $0x1,%rax
  je     .L_401e00
  movzbl 0x1(%r15,%r13,1),%eax
  cmpb   $0x2a,%al
  je     .L_401c62
  cmpb   $0x20,%al
  jne    .L_401e00
.L_401c62:
  cmpl   $0x1,0x2075a7(%rip)        
  je     .L_401c79
  leaq   0x2(%r13),%rsi
  movl   $0x0,0x207597(%rip)        
.L_401c79:
  cmpb   $0x0,0x4a(%rsp)
  leaq   (%r15,%rsi,1),%rax
  movq   %r8,%r12
  movq   %rax,0x38(%rsp)
  jne    .L_40204a
.L_401c90:
  cmpb   $0x0,0x4b(%rsp)
  je     .L_401d00
  movq   0x38(%rsp),%rax
  cmpb   $0x2d,(%rax)
  jne    .L_401d00
  cmpb   $0x0,0x1(%rax)
  jne    .L_401d00
.L_401ca7:
  addq   $0x1,0x28(%rsp)
  cmpb   $0x0,0x20762e(%rip)        
  jne    .L_401dce
.L_401cba:
  addq   $0x1,0x30(%rsp)
.L_401cc0:
  testb  $0x30,0x0(%rbp)
  jne    .L_401f94
  addq   $0x1,%rbx
  jne    .L_401b48
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x405fa0,%esi
  callq  .L_4014c0
  movq   0x20(%rsp),%rcx
  movq   %rax,%rdx
  xorl   %esi,%esi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
  jmpq   .L_401b48
.L_401d00:
  movq   0x2075e1(%rip),%r13        
  testq  %r13,%r13
  je     .L_4022cd
  callq  .L_4017a0
  movq   (%rax),%rcx
  movq   %r12,%rax
  nop
.L_401d20:
  movzbl (%rax),%edx
  testb  $0x10,0x1(%rcx,%rdx,2)
  je     .L_401ca7
  addq   $0x1,%rax
  movl   %eax,%edx
  subl   %r12d,%edx
  cmpq   %r13,%rdx
  jb     .L_401d20
.L_401d3c:
  cmpb   $0x0,(%rax)
  jne    .L_401ca7
  movq   0x38(%rsp),%rdi
  leaq   0xa0(%rsp),%rsi
  addq   $0x1,0x40(%rsp)
  callq  .L_4026e0
  testb  %al,%al
  jne    .L_4020b6
  addq   $0x1,0x58(%rsp)
  cmpb   $0x0,0x207571(%rip)        
  jne    .L_401cc0
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x405fbc,%esi
  callq  .L_4014c0
  movq   0x38(%rsp),%rdx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  jmpq   .L_401cc0
.L_401da2:
  movq   %r12,%rdx
.L_401da5:
  movq   %rdx,%r12
  jmpq   .L_401ca7
.L_401dad:
  subq   $0x1,%r14
  movb   $0x0,(%r15,%r14,1)
  movq   0x70(%rsp),%r15
  jmpq   .L_401b86
.L_401dc0:
  addq   $0x1,%r13
  movb   $0x1,0x4a(%rsp)
  jmpq   .L_401bb9
.L_401dce:
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x406768,%esi
  callq  .L_4014c0
  movq   0x20(%rsp),%rcx
  movq   %rax,%rdx
  movl   $0x405eea,%r9d
  movq   %rbx,%r8
  xorl   %esi,%esi
  xorl   %edi,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
  jmpq   .L_401cba
.L_401e00:
  cmpl   $0x0,0x207409(%rip)        
  je     .L_401da5
  movl   $0x1,0x2073fd(%rip)        
  jmpq   .L_401c79
.L_401e18:
  cmpb   $0x20,%sil
  je     .L_401c39
  jmpq    .L_401da5
.L_401e24:
  movq   0x20(%rsp),%rdi
  leaq   0x80(%rsp),%rsi
  callq  .L_4026e0
  testb  %al,%al
  je     .L_4020ac
  cmpb   $0x0,0x49(%rsp)
  movl   $0xa,%esi
  movq   0x20(%rsp),%rdi
  je     .L_4021fa
  callq  .L_401520
  testq  %rax,%rax
  je     .L_40242f
.L_401e61:
  movq   0x207448(%rip),%rdi        
  movq   0x28(%rdi),%rax
  cmpq   0x30(%rdi),%rax
  jae    .L_4024a7
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x28(%rdi)
  movb   $0x5c,(%rax)
.L_401e81:
  movq   0x207428(%rip),%rcx        
  movl   $0x3,%edx
  movl   $0x1,%esi
  movl   $0x405eea,%edi
  callq  .L_401680
  movq   0x20740d(%rip),%rcx        
  movl   $0x2,%edx
  movl   $0x1,%esi
  movl   $0x405ff6,%edi
  callq  .L_401680
  movq   0x20(%rsp),%rdi
  callq  .L_402640
  movq   0x2073e8(%rip),%rcx        
  movl   $0x4,%edx
  movl   $0x1,%esi
  movl   $0x405ff9,%edi
  callq  .L_401680
.L_401edc:
  xorl   %ebx,%ebx
  jmpq    .L_401efd
.L_401ee0:
  movzbl 0x80(%rsp,%rbx,1),%edx
  movl   $0x405ffe,%esi
  movl   $0x1,%edi
  xorl   %eax,%eax
  addq   $0x1,%rbx
  callq  .L_4016c0
.L_401efd:
  movq   0x2073e4(%rip),%rax        
  shrq $0x1,  %rax
  cmpq   %rax,%rbx
  jb     .L_401ee0
  cmpb   $0x0,0x49(%rsp)
  jne    .L_401f61
  movq   0x207396(%rip),%rdi        
  movq   0x28(%rdi),%rax
  cmpq   0x30(%rdi),%rax
  jae    .L_4024c5
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x28(%rdi)
  movb   $0x20,(%rax)
.L_401f33:
  movq   0x207376(%rip),%rdi        
  movq   0x28(%rdi),%rax
  cmpq   0x30(%rdi),%rax
  jae    .L_4024b6
  movzbl 0x6f(%rsp),%ebx
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x28(%rdi)
  movb   %bl,(%rax)
.L_401f57:
  movq   0x20(%rsp),%rdi
  callq  .L_402640
.L_401f61:
  movq   0x207348(%rip),%rdi        
  movq   0x28(%rdi),%rax
  cmpq   0x30(%rdi),%rax
  jae    .L_402498
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x28(%rdi)
  movb   $0xa,(%rax)
.L_401f81:
  addl   $0x1,0x207338(%rip)        
  movslq 0x207331(%rip),%rax        
  jmpq   .L_401aa2
.L_401f94:
  movq   0x70(%rsp),%rdi
  callq  .L_401400
  testb  $0x20,0x0(%rbp)
  jne    .L_402293
  cmpb   $0x0,0x4b(%rsp)
  je     .L_40222d
.L_401fb3:
  cmpq   $0x0,0x40(%rsp)
  je     .L_402245
  cmpb   $0x0,0x20731d(%rip)        
  jne    .L_4021e7
  cmpq   $0x0,0x28(%rsp)
  jne    .L_402332
.L_401fd8:
  cmpq   $0x0,0x58(%rsp)
  jne    .L_402367
.L_401fe4:
  cmpq   $0x0,0x60(%rsp)
  jne    .L_402016
.L_401fec:
  cmpq   $0x0,0x58(%rsp)
  jne    .L_402046
  cmpb   $0x0,0x2072e5(%rip)        
  movl   $0x1,%eax
  je     .L_40200a
  cmpq   $0x0,0x30(%rsp)
  jne    .L_402046
.L_40200a:
  andl   $0x1,%eax
.L_40200d:
  andb   %al,0x6e(%rsp)
  jmpq   .L_401f81
.L_402016:
  movq   0x60(%rsp),%rbx
  movl   $0x406890,%edx
  movl   $0x4068c0,%esi
  xorl   %edi,%edi
  movl   $0x5,%r8d
  movq   %rbx,%rcx
  callq  .L_401720
  movq   %rbx,%rcx
  movq   %rax,%rdx
  xorl   %esi,%esi
  xorl   %edi,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
.L_402046:
  xorl   %eax,%eax
  jmpq    .L_40200a
.L_40204a:
  subq   %rsi,%r14
  movq   %rax,%rdi
  movq   %r14,%rsi
  callq  .L_4025c0
  testq  %rax,%rax
  setne  %al
.L_40205e:
  testb  %al,%al
  jne    .L_401c90
  jmpq   .L_401ca7
.L_40206b:
  movq   0x20(%rsp),%rdi
  movl   $0x405f67,%esi
  callq  .L_403870
  testq  %rax,%rax
  movq   %rax,%rbp
  movb   $0x0,0x4b(%rsp)
  jne    .L_401b01
.L_40208b:
  callq  .L_401420
  movq   0x20(%rsp),%rcx
  movl   (%rax),%esi
  movl   $0x406a95,%edx
  xorl   %eax,%eax
  xorl   %edi,%edi
  callq  .L_4016e0
  xorl   %eax,%eax
  jmpq   .L_40200d
.L_4020ac:
  movb   $0x0,0x6e(%rsp)
  jmpq   .L_401f81
.L_4020b6:
  movq   0x20722b(%rip),%r14        
  xorl   %r13d,%r13d
  shrq $0x1,  %r14
  jmpq    .L_402110
.L_4020c5:
  callq  .L_401790
  movzbl 0xa0(%rsp,%r13,1),%edx
  movzbl (%r12,%r13,2),%esi
  movq   (%rax),%rax
  movl   %edx,%ecx
  shrb   $0x4,%cl
  andl   $0xf,%ecx
  movsbl 0x406900(%rcx),%ecx
  cmpl   %ecx,(%rax,%rsi,4)
  jne    .L_402476
  movzbl 0x1(%r12,%r13,2),%ecx
  andl   $0xf,%edx
  movsbl 0x406900(%rdx),%edx
  cmpl   %edx,(%rax,%rcx,4)
  jne    .L_402476
  addq   $0x1,%r13
.L_402110:
  cmpq   %r14,%r13
  jne    .L_4020c5
  cmpb   $0x0,0x2071c7(%rip)        
  jne    .L_401cc0
  cmpb   $0x0,0x2071b8(%rip)        
  jne    .L_401cc0
  movl   $0x5,%edx
  movl   $0x405fe4,%esi
.L_402139:
  xorl   %edi,%edi
  callq  .L_4014c0
  movq   0x38(%rsp),%rdx
  movq   %rax,%rcx
  movl   $0x405fdc,%esi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  jmpq   .L_401cc0
.L_40215e:
  movq   %r14,%rcx
  subq   %rax,%rcx
  cmpq   $0x1,%rcx
  je     .L_402197
  leaq   0x4(%r15,%r13,1),%r15
  leaq   -0x2(%rcx),%r13
  jmpq    .L_402188
.L_402175:
  cmpb   $0x29,(%r15,%r13,1)
  leaq   (%r15,%r13,1),%r14
  je     .L_4022d8
  subq   $0x1,%r13
.L_402188:
  testq  %r13,%r13
  jne    .L_402175
  cmpb   $0x29,(%r15)
  je     .L_4022d5
.L_402197:
  movq   0x38(%rsp),%r15
  xorl   %eax,%eax
.L_40219e:
  movq   %r15,0x38(%rsp)
  jmpq   .L_40205e
.L_4021a8:
  cmpb   $0x0,0x49(%rsp)
  je     .L_40198d
  movl   $0x5,%edx
  movl   $0x4065b0,%esi
  jmpq   .L_4019e5
.L_4021c2:
  cmpb   $0x0,0x207118(%rip)        
  je     .L_4019c9
  testb  %r15b,%r15b
  jne    .L_401a59
  movl   $0x5,%edx
  movl   $0x4066e8,%esi
  jmpq   .L_4019e5
.L_4021e7:
  cmpq   $0x0,0x60(%rsp)
  je     .L_401fec
  xorl   %eax,%eax
  jmpq   .L_40200a
.L_4021fa:
  callq  .L_401520
  testq  %rax,%rax
  je     .L_402412
.L_402208:
  movq   0x2070a1(%rip),%rdi        
  movq   0x28(%rdi),%rax
  cmpq   0x30(%rdi),%rax
  jae    .L_402467
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x28(%rdi)
  movb   $0x5c,(%rax)
  jmpq   .L_401edc
.L_40222d:
  movq   %rbp,%rdi
  callq  .L_405710
  testl  %eax,%eax
  je     .L_401fb3
  nop
  jmpq   .L_40208b
.L_402245:
  movl   $0x5,%edx
  movl   $0x406798,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movq   0x20(%rsp),%rcx
  movq   %rax,%rdx
  movl   $0x405eea,%r8d
  xorl   %eax,%eax
  xorl   %esi,%esi
  xorl   %edi,%edi
  callq  .L_4016e0
  xorl   %eax,%eax
  jmpq   .L_40200a
.L_402276:
  cmpb   $0x0,0x20707b(%rip)        
  jne    .L_4023ab
.L_402283:
  xorl   %edi,%edi
  cmpb   $0x0,0x6e(%rsp)
  sete   %dil
  callq  .L_401740
.L_402293:
  movl   $0x5,%edx
  movl   $0x405fe7,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movq   0x20(%rsp),%rcx
  movq   %rax,%rdx
  xorl   %esi,%esi
  xorl   %eax,%eax
  xorl   %edi,%edi
  callq  .L_4016e0
  xorl   %eax,%eax
  jmpq   .L_40200d
.L_4022be:
  movl   $0x5,%edx
  movl   $0x406618,%esi
  jmpq   .L_4019e5
.L_4022cd:
  movq   %r12,%rax
  jmpq   .L_401d3c
.L_4022d5:
  movq   %r15,%r14
.L_4022d8:
  cmpb   $0x0,0x4a(%rsp)
  jne    .L_40244c
.L_4022e3:
  addq   $0x1,%r13
  movb   $0x0,(%r14)
  jmpq    .L_4022f1
.L_4022ed:
  addq   $0x1,%r13
.L_4022f1:
  movzbl (%r15,%r13,1),%edx
  cmpb   $0x9,%dl
  sete   %cl
  cmpb   $0x20,%dl
  sete   %al
  orb    %cl,%al
  jne    .L_4022ed
  cmpb   $0x3d,%dl
  jne    .L_40219e
  leaq   0x1(%r15,%r13,1),%rax
.L_402314:
  movzbl (%rax),%edx
  movq   %rax,%r12
  leaq   0x1(%rax),%rax
  cmpb   $0x9,%dl
  je     .L_402314
  cmpb   $0x20,%dl
  je     .L_402314
  movl   $0x1,%eax
  jmpq   .L_40219e
.L_402332:
  movq   0x28(%rsp),%rbx
  xorl   %edi,%edi
  movl   $0x5,%r8d
  movl   $0x4067d0,%edx
  movl   $0x406800,%esi
  movq   %rbx,%rcx
  callq  .L_401720
  movq   %rbx,%rcx
  movq   %rax,%rdx
  xorl   %esi,%esi
  xorl   %edi,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
  jmpq   .L_401fd8
.L_402367:
  movq   0x58(%rsp),%rbx
  xorl   %edi,%edi
  movl   $0x5,%r8d
  movl   $0x406830,%edx
  movl   $0x406860,%esi
  movq   %rbx,%rcx
  callq  .L_401720
  movq   %rbx,%rcx
  movq   %rax,%rdx
  xorl   %esi,%esi
  xorl   %edi,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
  jmpq   .L_401fe4
.L_40239c:
  movl   $0x5,%edx
  movl   $0x406668,%esi
  jmpq   .L_4019e5
.L_4023ab:
  movq   0x206f06(%rip),%rdi        
  callq  .L_405710
  addl   $0x1,%eax
  jne    .L_402283
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x405f91,%esi
  callq  .L_4014c0
  movq   %rax,%rbx
  callq  .L_401420
  movl   (%rax),%esi
  movq   %rbx,%rdx
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
  jmpq   .L_402283
.L_4023ef:
  movslq %eax,%rdx
  addl   $0x1,%ebp
  movq   $0x406b22,0x0(%r13,%rdx,8)
  jmpq   .L_401a73
.L_402403:
  movl   $0x5,%edx
  movl   $0x4066a8,%esi
  jmpq   .L_4019e5
.L_402412:
  movq   0x20(%rsp),%rdi
  movl   $0x5c,%esi
  callq  .L_401520
  testq  %rax,%rax
  jne    .L_402208
  jmpq   .L_401edc
.L_40242f:
  movq   0x20(%rsp),%rdi
  movl   $0x5c,%esi
  callq  .L_401520
  testq  %rax,%rax
  jne    .L_401e61
  jmpq   .L_401e81
.L_40244c:
  movq   %r13,%rsi
  movq   %r15,%rdi
  callq  .L_4025c0
  testq  %rax,%rax
  jne    .L_4022e3
  xorl   %eax,%eax
  jmpq   .L_40219e
.L_402467:
  movl   $0x5c,%esi
  callq  .L_401530
  jmpq   .L_401edc
.L_402476:
  addq   $0x1,0x60(%rsp)
  cmpb   $0x0,0x206e60(%rip)        
  jne    .L_401cc0
  movl   $0x5,%edx
  movl   $0x405fd5,%esi
  jmpq   .L_402139
.L_402498:
  movl   $0xa,%esi
  callq  .L_401530
  jmpq   .L_401f81
.L_4024a7:
  movl   $0x5c,%esi
  callq  .L_401530
  jmpq   .L_401e81
.L_4024b6:
  movl   0x68(%rsp),%esi
  callq  .L_401530
  nop
  jmpq   .L_401f57
.L_4024c5:
  movl   $0x20,%esi
  callq  .L_401530
  nop
  jmpq   .L_401f33
  xorl   %ebp,%ebp
  movq   %rdx,%r9
  popq   %rsi
  movq   %rsp,%rdx
  andq   $0xfffffffffffffff0,%rsp
  pushq  %rax
  pushq  %rsp
  movq   $0x405ea0,%r8
  movq   $0x405e30,%rcx
  movq   $0x4017b0,%rdi
  callq  .L_4015a0
  retq
  nop
.L_402500:
  movl   $0x60929f,%eax
  pushq  %rbp
  subq   $0x609298,%rax
  cmpq   $0xe,%rax
  movq   %rsp,%rbp
  ja     .L_402517
.L_402515:
  popq   %rbp
  retq   
.L_402517:
  movl   $0x0,%eax
  testq  %rax,%rax
  je     .L_402515
  popq   %rbp
  movl   $0x609298,%edi
  jmpq   *%rax
  nop
.L_402530:
  movl   $0x609298,%eax
  pushq  %rbp
  subq   $0x609298,%rax
  sarq   $0x3,%rax
  movq   %rsp,%rbp
  movq   %rax,%rdx
  shrq   $0x3f,%rdx
  addq   %rdx,%rax
  sarq $0x1,  %rax
  jne    .L_402554
.L_402552:
  popq   %rbp
  retq   
.L_402554:
  movl   $0x0,%edx
  testq  %rdx,%rdx
  je     .L_402552
  popq   %rbp
  movq   %rax,%rsi
  movl   $0x609298,%edi
  jmpq   *%rdx
  nop
  cmpb   $0x0,0x206d61(%rip)        
  jne    .L_40258a
  pushq  %rbp
  movq   %rsp,%rbp
  callq  .L_402500
  popq   %rbp
  movb   $0x1,0x206d4e(%rip)        
.L_40258a:
  retq
  nop
  cmpq   $0x0,0x206888(%rip)        
  je     .L_4025b8
  movl   $0x0,%eax
  testq  %rax,%rax
  je     .L_4025b8
  pushq  %rbp
  movl   $0x608e20,%edi
  movq   %rsp,%rbp
  callq  *%rax
  popq   %rbp
  jmpq   .L_402530
  nop
.L_4025b8:
  jmpq   .L_402530
  nop
.L_4025c0:
  xorl   %edx,%edx
  testq  %rsi,%rsi
  leaq   0x1(%rdi),%r8
  leaq   -0x1(%rsi),%r9
  je     .L_402627
.L_4025cf:
  movzbl (%rdi,%rdx,1),%ecx
  testb  %cl,%cl
  je     .L_402600
  cmpb   $0x5c,%cl
  jne    .L_402608
  cmpq   %rdx,%r9
  je     .L_402600
  addq   $0x1,%rdx
  movzbl (%rdi,%rdx,1),%eax
  cmpb   $0x5c,%al
  je     .L_402630
  cmpb   $0x6e,%al
  jne    .L_402600
  movq   %r8,%rax
  movb   $0xa,-0x1(%r8)
  jmpq    .L_40260f
  nop
.L_402600:
  xorl   %eax,%eax
  retq   
  nop
.L_402608:
  movq   %r8,%rax
  movb   %cl,-0x1(%r8)
.L_40260f:
  addq   $0x1,%rdx
  addq   $0x1,%r8
  cmpq   %rdx,%rsi
  ja     .L_4025cf
  addq   %rdi,%rsi
  cmpq   %rsi,%rax
  jae    .L_402627
  movb   $0x0,(%rax)
.L_402627:
  movq   %rdi,%rax
  retq   
  nop
.L_402630:
  movq   %r8,%rax
  movb   $0x5c,-0x1(%r8)
  jmpq    .L_40260f
  nop
.L_402640:
  pushq  %rbx
  movzbl (%rdi),%eax
  movq   %rdi,%rbx
  testb  %al,%al
  jne    .L_402676
  jmpq    .L_4026a4
  nop
.L_402650:
  movq   0x206c59(%rip),%rcx        
  movl   $0x2,%edx
  movl   $0x1,%esi
  movl   $0x405ee7,%edi
  callq  .L_401680
.L_40266b:
  addq   $0x1,%rbx
  movzbl (%rbx),%eax
  testb  %al,%al
  je     .L_4026a4
.L_402676:
  cmpb   $0xa,%al
  je     .L_4026b0
  cmpb   $0x5c,%al
  je     .L_402650
  movq   0x206c2b(%rip),%rdi        
  movq   0x28(%rdi),%rdx
  cmpq   0x30(%rdi),%rdx
  jae    .L_4026cd
  leaq   0x1(%rdx),%rcx
  addq   $0x1,%rbx
  movq   %rcx,0x28(%rdi)
  movb   %al,(%rdx)
  movzbl (%rbx),%eax
  testb  %al,%al
  jne    .L_402676
.L_4026a4:
  popq   %rbx
  retq   
  nop
.L_4026b0:
  movq   0x206bf9(%rip),%rcx        
  movl   $0x2,%edx
  movl   $0x1,%esi
  movl   $0x405ee4,%edi
  callq  .L_401680
  jmpq    .L_40266b
.L_4026cd:
  movzbl %al,%esi
  callq  .L_401530
  jmpq    .L_40266b
  nop
.L_4026e0:
  pushq  %r12
  movq   %rsi,%r12
  pushq  %rbp
  movq   %rdi,%rbp
  pushq  %rbx
  cmpb   $0x2d,(%rdi)
  je     .L_402750
.L_4026ef:
  movl   $0x405f67,%esi
  movq   %rbp,%rdi
  callq  .L_403870
  testq  %rax,%rax
  movq   %rax,%rbx
  je     .L_40272c
  movq   %rax,%rdi
  movl   $0x2,%esi
  callq  .L_403840
  movq   %r12,%rsi
  movq   %rbx,%rdi
  callq  .L_403670
  testl  %eax,%eax
  jne    .L_402790
  movq   %rbx,%rdi
  callq  .L_405710
  testl  %eax,%eax
  je     .L_402780
.L_40272c:
  callq  .L_401420
  movl   (%rax),%esi
  movq   %rbp,%rcx
  xorl   %eax,%eax
  movl   $0x406a95,%edx
  xorl   %edi,%edi
  xorl   %ebp,%ebp
  callq  .L_4016e0
  popq   %rbx
  movl   %ebp,%eax
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_402750:
  cmpb   $0x0,0x1(%rdi)
  jne    .L_4026ef
  movq   0x206b5b(%rip),%rbx        
  movl   $0x2,%esi
  movb   $0x1,0x206b8f(%rip)        
  movq   %rbx,%rdi
  callq  .L_403840
  movq   %r12,%rsi
  movq   %rbx,%rdi
  callq  .L_403670
  testl  %eax,%eax
  jne    .L_402790
.L_402780:
  movl   $0x1,%ebp
.L_402785:
  popq   %rbx
  movl   %ebp,%eax
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_402790:
  callq  .L_401420
  movl   (%rax),%esi
  movq   %rbp,%rcx
  xorl   %edi,%edi
  xorl   %eax,%eax
  movl   $0x406a95,%edx
  xorl   %ebp,%ebp
  callq  .L_4016e0
  cmpq   0x206b07(%rip),%rbx        
  je     .L_402785
  movq   %rbx,%rdi
  callq  .L_405710
  popq   %rbx
  movl   %ebp,%eax
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_4027d0:
  pushq  %rbp
  movl   $0x5,%edx
  pushq  %rbx
  movl   %edi,%ebx
  subq   $0x8,%rsp
  testl  %edi,%edi
  movq   0x206b2a(%rip),%rbp        
  je     .L_402814
  movl   $0x406040,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movq   0x206ad5(%rip),%rdi        
  movq   %rax,%rdx
  movq   %rbp,%rcx
  movl   $0x1,%esi
  xorl   %eax,%eax
  callq  .L_401760
.L_40280d:
  movl   %ebx,%edi
  callq  .L_401740
.L_402814:
  xorl   %edi,%edi
  movl   $0x406068,%esi
  callq  .L_4014c0
  movl   $0x80,%r8d
  movl   $0x405eea,%ecx
  movq   %rbp,%rdx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movq   0x206a6c(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x4060e8,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x406118,%esi
  callq  .L_4014c0
  movl   $0x405eea,%edx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movq   0x206a24(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x406160,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  movq   0x206a01(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x406198,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  movq   0x2069de(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x4061d0,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  movq   0x2069bb(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x4062f8,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  movq   0x206998(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x406348,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  movq   0x206975(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x406378,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x4063b0,%esi
  callq  .L_4014c0
  movl   $0x405eee,%edx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movq   0x20698d(%rip),%rdi        
  callq  .L_403790
  xorl   %edi,%edi
  movq   %rax,%rbp
  movl   $0x5,%edx
  movl   $0x405ef7,%esi
  callq  .L_4014c0
  movl   $0x405f0e,%ecx
  movq   %rbp,%rdx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x405f24,%esi
  callq  .L_4014c0
  movl   $0x4064b8,%ecx
  movq   %rax,%rsi
  movl   $0x405f38,%edx
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movq   0x2068cc(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x4064e0,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  xorl   %esi,%esi
  movl   $0x5,%edi
  callq  .L_4016b0
  testq  %rax,%rax
  je     .L_402a27
  movl   $0x3,%edx
  movl   $0x405f46,%esi
  movq   %rax,%rdi
  callq  .L_401430
  testl  %eax,%eax
  jne    .L_402a5e
.L_402a27:
  movq   0x2068e2(%rip),%rdi        
  callq  .L_403790
  xorl   %edi,%edi
  movq   %rax,%rbp
  movl   $0x5,%edx
  movl   $0x406568,%esi
  callq  .L_4014c0
  movq   %rbp,%rdx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  jmpq   .L_40280d
.L_402a5e:
  movq   0x2068ab(%rip),%rdi        
  callq  .L_403790
  xorl   %edi,%edi
  movq   %rax,%rbp
  movl   $0x5,%edx
  movl   $0x406520,%esi
  callq  .L_4014c0
  movq   %rbp,%rdx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  jmpq    .L_402a27
  nop
  nop
  movq   %rdi,0x206861(%rip)        
  retq   
  nop
  movb   %dil,0x206849(%rip)        
  retq   
  nop
  pushq  %rbp
  pushq  %rbx
  subq   $0x8,%rsp
  movq   0x2067e3(%rip),%rdi        
  callq  .L_405980
  testl  %eax,%eax
  je     .L_402ae9
  cmpb   $0x0,0x206823(%rip)        
  je     .L_402b00
  callq  .L_401420
  cmpl   $0x20,(%rax)
  jne    .L_402b00
.L_402ae9:
  movq   0x2067e0(%rip),%rdi        
  callq  .L_405980
  testl  %eax,%eax
  jne    .L_402b43
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  retq   
.L_402b00:
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x406a85,%esi
  callq  .L_4014c0
  movq   0x2067f0(%rip),%rdi        
  movq   %rax,%rbx
  testq  %rdi,%rdi
  je     .L_402b4e
  callq  .L_404d20
  movq   %rax,%rbp
  callq  .L_401420
  movl   (%rax),%esi
  movq   %rbx,%r8
  movq   %rbp,%rcx
  movl   $0x406a91,%edx
  xorl   %edi,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
.L_402b43:
  movl   0x2066d7(%rip),%edi        
  callq  .L_401440
.L_402b4e:
  callq  .L_401420
  movl   (%rax),%esi
  movq   %rbx,%rcx
  movl   $0x406a95,%edx
  xorl   %edi,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
  jmpq    .L_402b43
  nop
  movl   $0x67452301,(%rdi)
  movl   $0xefcdab89,0x4(%rdi)
  movl   $0x98badcfe,0x8(%rdi)
  movl   $0x10325476,0xc(%rdi)
  movl   $0x0,0x14(%rdi)
  movl   $0x0,0x10(%rdi)
  movl   $0x0,0x18(%rdi)
  retq   
  nop
.L_402bb0:
  movl   (%rdi),%edx
  movq   %rsi,%rax
  movl   %edx,(%rsi)
  movl   0x4(%rdi),%edx
  movl   %edx,0x4(%rsi)
  movl   0x8(%rdi),%edx
  movl   %edx,0x8(%rsi)
  movl   0xc(%rdi),%edx
  movl   %edx,0xc(%rsi)
  retq   
  nop
.L_402bd0:
  pushq  %r15
  movq   %rsi,%rax
  movq   %rsi,%rcx
  andq   $0xfffffffffffffffc,%rax
  shrq   $0x20,%rcx
  pushq  %r14
  pushq  %r13
  pushq  %r12
  pushq  %rbp
  movq   %rdi,%rbp
  movq   %rdx,%rdi
  addq   %rbp,%rax
  pushq  %rbx
  movq   %rax,%r15
  movl   (%rdx),%ebx
  addl   0x14(%rdx),%ecx
  movq   %rax,-0x10(%rsp)
  movl   0x8(%rdx),%eax
  movq   %rdx,-0x8(%rsp)
  movl   %ebx,-0x20(%rsp)
  movl   0x4(%rdx),%ebx
  movl   %eax,-0x1c(%rsp)
  movl   0xc(%rdx),%eax
  movl   %eax,-0x18(%rsp)
  movl   0x10(%rdx),%eax
  addl   %esi,%eax
  movl   %eax,0x10(%rdx)
  xorl   %edx,%edx
  cmpl   %eax,%esi
  seta   %dl
  cmpq   %r15,%rbp
  leal   (%rcx,%rdx,1),%eax
  movl   %eax,0x14(%rdi)
  jae    .L_4033ee
  nop
.L_402c40:
  movl   0x0(%rbp),%r11d
  movl   -0x18(%rsp),%ecx
  movl   -0x20(%rsp),%eax
  movl   -0x1c(%rsp),%edi
  movl   0x4(%rbp),%esi
  movl   0x14(%rbp),%r10d
  movl   0x18(%rbp),%r9d
  leal   -0x28955b88(%r11,%rax,1),%edx
  movl   %ecx,%eax
  xorl   %edi,%eax
  movl   %esi,-0x3c(%rsp)
  movl   %r10d,-0x14(%rsp)
  andl   %ebx,%eax
  movl   %r9d,-0x2c(%rsp)
  xorl   %ecx,%eax
  leal   -0x173848aa(%rsi,%rcx,1),%ecx
  addl   %edx,%eax
  movl   %edi,%edx
  rorl   $0x19,%eax
  xorl   %ebx,%edx
  addl   %ebx,%eax
  andl   %eax,%edx
  xorl   %edi,%edx
  addl   %ecx,%edx
  movl   0x8(%rbp),%ecx
  rorl   $0x14,%edx
  addl   %eax,%edx
  leal   0x242070db(%rcx,%rdi,1),%esi
  movl   %eax,%edi
  movl   %ecx,-0x38(%rsp)
  xorl   %ebx,%edi
  movl   %edx,%r15d
  movl   %edi,%ecx
  movl   0xc(%rbp),%edi
  xorl   %eax,%r15d
  andl   %edx,%ecx
  xorl   %ebx,%ecx
  addl   %ecx,%esi
  movl   %r15d,%ecx
  movl   %edi,-0x34(%rsp)
  rorl   $0xf,%esi
  movl   0x10(%rbp),%r15d
  leal   -0x3e423112(%rdi,%rbx,1),%edi
  addl   %edx,%esi
  andl   %esi,%ecx
  xorl   %eax,%ecx
  movl   %r15d,-0x30(%rsp)
  addl   %edi,%ecx
  leal   -0xa83f051(%rax,%r15,1),%edi
  movl   %esi,%eax
  rorl   $0xa,%ecx
  xorl   %edx,%eax
  movl   0x24(%rbp),%r15d
  addl   %esi,%ecx
  andl   %ecx,%eax
  xorl   %edx,%eax
  addl   %edi,%eax
  leal   0x4787c62a(%rdx,%r10,1),%edi
  movl   %ecx,%edx
  rorl   $0x19,%eax
  xorl   %esi,%edx
  movl   0x1c(%rbp),%r10d
  addl   %ecx,%eax
  andl   %eax,%edx
  movl   %eax,%r12d
  xorl   %esi,%edx
  addl   %edi,%edx
  xorl   %ecx,%r12d
  leal   -0x57cfb9ed(%rsi,%r9,1),%edi
  rorl   $0x14,%edx
  movl   %r12d,%esi
  addl   %eax,%edx
  andl   %edx,%esi
  movl   %edx,%r12d
  xorl   %ecx,%esi
  xorl   %eax,%r12d
  addl   %edi,%esi
  leal   -0x2b96aff(%rcx,%r10,1),%edi
  movl   %r12d,%ecx
  rorl   $0xf,%esi
  movl   0x20(%rbp),%r12d
  addl   %edx,%esi
  andl   %esi,%ecx
  xorl   %eax,%ecx
  movl   %r12d,-0x28(%rsp)
  addl   %edi,%ecx
  leal   0x698098d8(%rax,%r12,1),%edi
  movl   %esi,%eax
  rorl   $0xa,%ecx
  xorl   %edx,%eax
  addl   %esi,%ecx
  andl   %ecx,%eax
  xorl   %edx,%eax
  addl   %edi,%eax
  leal   -0x74bb0851(%rdx,%r15,1),%edi
  movl   %ecx,%edx
  rorl   $0x19,%eax
  xorl   %esi,%edx
  addl   %ecx,%eax
  andl   %eax,%edx
  movl   %eax,%r13d
  xorl   %esi,%edx
  xorl   %ecx,%r13d
  addl   %edi,%edx
  movl   0x28(%rbp),%edi
  rorl   $0x14,%edx
  addl   %eax,%edx
  leal   -0xa44f(%rsi,%rdi,1),%r8d
  movl   %r13d,%esi
  movl   0x2c(%rbp),%r13d
  andl   %edx,%esi
  movl   %edi,-0x40(%rsp)
  movl   0x30(%rbp),%edi
  xorl   %ecx,%esi
  addl   %r8d,%esi
  movl   %r13d,-0x24(%rsp)
  leal   -0x76a32842(%rcx,%r13,1),%r13d
  rorl   $0xf,%esi
  movl   %edx,%ecx
  movl   -0x2c(%rsp),%r8d
  addl   %edx,%esi
  xorl   %eax,%ecx
  addq   $0x40,%rbp
  andl   %esi,%ecx
  xorl   %eax,%ecx
  addl   %ecx,%r13d
  leal   0x6b901122(%rax,%rdi,1),%ecx
  movl   %esi,%eax
  rorl   $0xa,%r13d
  xorl   %edx,%eax
  addl   %esi,%r13d
  andl   %r13d,%eax
  xorl   %edx,%eax
  addl   %ecx,%eax
  movl   -0xc(%rbp),%ecx
  rorl   $0x19,%eax
  addl   %r13d,%eax
  leal   -0x2678e6d(%rdx,%rcx,1),%r9d
  movl   %r13d,%edx
  xorl   %esi,%edx
  andl   %eax,%edx
  xorl   %esi,%edx
  addl   %r9d,%edx
  movl   -0x8(%rbp),%r9d
  rorl   $0x14,%edx
  addl   %eax,%edx
  leal   -0x5986bc72(%rsi,%r9,1),%r12d
  movl   %eax,%esi
  xorl   %r13d,%esi
  andl   %edx,%esi
  xorl   %r13d,%esi
  addl   %esi,%r12d
  movl   -0x4(%rbp),%esi
  rorl   $0xf,%r12d
  addl   %edx,%r12d
  leal   0x49b40821(%r13,%rsi,1),%r14d
  movl   %edx,%r13d
  xorl   %eax,%r13d
  andl   %r12d,%r13d
  xorl   %eax,%r13d
  addl   %r14d,%r13d
  movl   -0x3c(%rsp),%r14d
  rorl   $0xa,%r13d
  addl   %r12d,%r13d
  leal   -0x9e1da9e(%r14,%rax,1),%r14d
  movl   %r13d,%eax
  xorl   %r12d,%eax
  andl   %edx,%eax
  xorl   %r12d,%eax
  addl   %r14d,%eax
  leal   -0x3fbf4cc0(%r8,%rdx,1),%r14d
  movl   -0x24(%rsp),%r8d
  rorl   $0x1b,%eax
  addl   %r13d,%eax
  movl   %eax,%edx
  xorl   %r13d,%edx
  andl   %r12d,%edx
  xorl   %r13d,%edx
  addl   %r14d,%edx
  leal   0x265e5a51(%r8,%r12,1),%r14d
  movl   -0x14(%rsp),%r8d
  rorl   $0x17,%edx
  addl   %eax,%edx
  movl   %edx,%r12d
  xorl   %eax,%r12d
  andl   %r13d,%r12d
  xorl   %eax,%r12d
  addl   %r14d,%r12d
  leal   -0x16493856(%r11,%r13,1),%r14d
  rorl   $0x12,%r12d
  addl   %edx,%r12d
  movl   %r12d,%r13d
  xorl   %edx,%r13d
  andl   %eax,%r13d
  xorl   %edx,%r13d
  addl   %r14d,%r13d
  leal   -0x29d0efa3(%r8,%rax,1),%r14d
  rorl   $0xc,%r13d
  addl   %r12d,%r13d
  movl   %r13d,%eax
  xorl   %r12d,%eax
  andl   %edx,%eax
  xorl   %r12d,%eax
  addl   %r14d,%eax
  movl   -0x40(%rsp),%r14d
  rorl   $0x1b,%eax
  addl   %r13d,%eax
  leal   0x2441453(%r14,%rdx,1),%r14d
  movl   %eax,%edx
  xorl   %r13d,%edx
  andl   %r12d,%edx
  xorl   %r13d,%edx
  addl   %r14d,%edx
  leal   -0x275e197f(%rsi,%r12,1),%r14d
  rorl   $0x17,%edx
  addl   %eax,%edx
  movl   %edx,%r12d
  xorl   %eax,%r12d
  andl   %r13d,%r12d
  xorl   %eax,%r12d
  addl   %r14d,%r12d
  movl   -0x30(%rsp),%r14d
  rorl   $0x12,%r12d
  addl   %edx,%r12d
  leal   -0x182c0438(%r14,%r13,1),%r14d
  movl   %r12d,%r13d
  xorl   %edx,%r13d
  andl   %eax,%r13d
  xorl   %edx,%r13d
  addl   %r14d,%r13d
  leal   0x21e1cde6(%r15,%rax,1),%r14d
  rorl   $0xc,%r13d
  addl   %r12d,%r13d
  movl   %r13d,%eax
  xorl   %r12d,%eax
  andl   %edx,%eax
  xorl   %r12d,%eax
  addl   %r14d,%eax
  leal   -0x3cc8f82a(%r9,%rdx,1),%r14d
  rorl   $0x1b,%eax
  addl   %r13d,%eax
  movl   %eax,%edx
  xorl   %r13d,%edx
  andl   %r12d,%edx
  xorl   %r13d,%edx
  addl   %r14d,%edx
  movl   -0x34(%rsp),%r14d
  rorl   $0x17,%edx
  addl   %eax,%edx
  leal   -0xb2af279(%r14,%r12,1),%r14d
  movl   %edx,%r12d
  xorl   %eax,%r12d
  andl   %r13d,%r12d
  xorl   %eax,%r12d
  addl   %r14d,%r12d
  movl   -0x28(%rsp),%r14d
  rorl   $0x12,%r12d
  addl   %edx,%r12d
  leal   0x455a14ed(%r14,%r13,1),%r14d
  movl   %r12d,%r13d
  xorl   %edx,%r13d
  andl   %eax,%r13d
  xorl   %edx,%r13d
  addl   %r14d,%r13d
  leal   -0x561c16fb(%rcx,%rax,1),%r14d
  rorl   $0xc,%r13d
  addl   %r12d,%r13d
  movl   %r13d,%eax
  xorl   %r12d,%eax
  andl   %edx,%eax
  xorl   %r12d,%eax
  addl   %r14d,%eax
  movl   -0x38(%rsp),%r14d
  rorl   $0x1b,%eax
  addl   %r13d,%eax
  leal   -0x3105c08(%r14,%rdx,1),%r14d
  movl   %eax,%edx
  xorl   %r13d,%edx
  andl   %r12d,%edx
  xorl   %r13d,%edx
  addl   %r14d,%edx
  leal   0x676f02d9(%r10,%r12,1),%r14d
  rorl   $0x17,%edx
  addl   %eax,%edx
  movl   %edx,%r12d
  xorl   %eax,%r12d
  andl   %r13d,%r12d
  leal   -0x72d5b376(%rdi,%r13,1),%r13d
  xorl   %eax,%r12d
  addl   %r14d,%r12d
  movl   %r13d,-0x14(%rsp)
  rorl   $0x12,%r12d
  addl   %edx,%r12d
  movl   %r12d,%r14d
  xorl   %edx,%r14d
  movl   %r14d,%r13d
  andl   %eax,%r13d
  leal   -0x5c6be(%r8,%rax,1),%eax
  xorl   %edx,%r13d
  addl   -0x14(%rsp),%r13d
  rorl   $0xc,%r13d
  addl   %r12d,%r13d
  xorl   %r13d,%r14d
  addl   %eax,%r14d
  movl   -0x28(%rsp),%eax
  rorl   $0x1c,%r14d
  addl   %r13d,%r14d
  leal   -0x788e097f(%rax,%rdx,1),%edx
  movl   %r13d,%eax
  xorl   %r12d,%eax
  xorl   %r14d,%eax
  addl   %eax,%edx
  movl   -0x24(%rsp),%eax
  rorl   $0x15,%edx
  addl   %r14d,%edx
  leal   0x6d9d6122(%rax,%r12,1),%r12d
  movl   %r14d,%eax
  xorl   %r13d,%eax
  leal   -0x21ac7f4(%r9,%r13,1),%r13d
  xorl   %edx,%eax
  addl   %r12d,%eax
  movl   %edx,%r12d
  rorl   $0x10,%eax
  xorl   %r14d,%r12d
  addl   %edx,%eax
  xorl   %eax,%r12d
  addl   %r13d,%r12d
  movl   -0x3c(%rsp),%r13d
  rorl   $0x9,%r12d
  addl   %eax,%r12d
  leal   -0x5b4115bc(%r13,%r14,1),%r14d
  movl   %eax,%r13d
  xorl   %edx,%r13d
  xorl   %r12d,%r13d
  addl   %r14d,%r13d
  movl   -0x30(%rsp),%r14d
  rorl   $0x1c,%r13d
  addl   %r12d,%r13d
  leal   0x4bdecfa9(%r14,%rdx,1),%r14d
  movl   %r12d,%edx
  xorl   %eax,%edx
  xorl   %r13d,%edx
  addl   %r14d,%edx
  leal   -0x944b4a0(%r10,%rax,1),%r14d
  movl   %r13d,%eax
  rorl   $0x15,%edx
  xorl   %r12d,%eax
  addl   %r13d,%edx
  xorl   %edx,%eax
  addl   %eax,%r14d
  movl   -0x40(%rsp),%eax
  rorl   $0x10,%r14d
  addl   %edx,%r14d
  leal   -0x41404390(%rax,%r12,1),%r12d
  movl   %edx,%eax
  xorl   %r13d,%eax
  leal   0x289b7ec6(%rcx,%r13,1),%r13d
  xorl   %r14d,%eax
  addl   %eax,%r12d
  movl   %r14d,%eax
  rorl   $0x9,%r12d
  addl   %r14d,%r12d
  xorl   %edx,%eax
  xorl   %r12d,%eax
  addl   %r13d,%eax
  leal   -0x155ed806(%r11,%rdx,1),%r13d
  movl   %r12d,%edx
  rorl   $0x1c,%eax
  xorl   %r14d,%edx
  addl   %r12d,%eax
  xorl   %eax,%edx
  addl   %edx,%r13d
  movl   -0x34(%rsp),%edx
  rorl   $0x15,%r13d
  addl   %eax,%r13d
  leal   -0x2b10cf7b(%rdx,%r14,1),%r14d
  movl   %eax,%edx
  xorl   %r12d,%edx
  xorl   %r13d,%edx
  addl   %edx,%r14d
  movl   -0x2c(%rsp),%edx
  rorl   $0x10,%r14d
  addl   %r13d,%r14d
  leal   0x4881d05(%rdx,%r12,1),%r12d
  movl   %r13d,%edx
  xorl   %eax,%edx
  xorl   %r14d,%edx
  addl   %r12d,%edx
  leal   -0x262b2fc7(%r15,%rax,1),%r12d
  movl   %r14d,%eax
  rorl   $0x9,%edx
  xorl   %r13d,%eax
  leal   -0x1924661b(%rdi,%r13,1),%r13d
  addl   %r14d,%edx
  xorl   %edx,%eax
  addl   %eax,%r12d
  movl   %edx,%eax
  rorl   $0x1c,%r12d
  xorl   %r14d,%eax
  leal   0x1fa27cf8(%rsi,%r14,1),%r14d
  addl   %edx,%r12d
  xorl   %r12d,%eax
  addl   %eax,%r13d
  movl   %r12d,%eax
  rorl   $0x15,%r13d
  xorl   %edx,%eax
  addl   %r12d,%r13d
  xorl   %r13d,%eax
  addl   %r14d,%eax
  movl   -0x38(%rsp),%r14d
  rorl   $0x10,%eax
  addl   %r13d,%eax
  leal   -0x3b53a99b(%r14,%rdx,1),%r14d
  movl   %r13d,%edx
  leal   -0x546bdc59(%r9,%rax,1),%r9d
  xorl   %r12d,%edx
  leal   -0xbd6ddbc(%r11,%r12,1),%r12d
  movl   %r13d,%r11d
  xorl   %eax,%edx
  notl   %r11d
  addl   %r14d,%edx
  movl   -0x38(%rsp),%r14d
  rorl   $0x9,%edx
  addl   %eax,%edx
  orl    %edx,%r11d
  xorl   %eax,%r11d
  addl   %r12d,%r11d
  leal   0x432aff97(%r10,%r13,1),%r12d
  movl   %eax,%r10d
  rorl   $0x1a,%r11d
  notl   %r10d
  movl   -0x3c(%rsp),%r13d
  addl   %edx,%r11d
  orl    %r11d,%r10d
  xorl   %edx,%r10d
  addl   %r12d,%r10d
  movl   %edx,%r12d
  rorl   $0x16,%r10d
  notl   %r12d
  addl   %r11d,%r10d
  movl   %r12d,%eax
  movl   %r11d,%r12d
  orl    %r10d,%eax
  notl   %r12d
  xorl   %r11d,%eax
  addl   %r9d,%eax
  leal   -0x36c5fc7(%r8,%rdx,1),%r9d
  movl   %r12d,%edx
  rorl   $0x11,%eax
  movl   %r10d,%r12d
  addl   %r10d,%eax
  notl   %r12d
  orl    %eax,%edx
  movl   %r12d,%r8d
  xorl   %r10d,%edx
  addl   %r9d,%edx
  leal   0x655b59c3(%rdi,%r11,1),%r9d
  movl   -0x34(%rsp),%r11d
  rorl   $0xb,%edx
  movl   -0x40(%rsp),%edi
  addl   %eax,%edx
  orl    %edx,%r8d
  leal   -0x70f3336e(%r11,%r10,1),%r10d
  movl   %edx,%r11d
  xorl   %eax,%r8d
  notl   %r11d
  leal   -0x100b83(%rdi,%rax,1),%edi
  addl   %r9d,%r8d
  movl   %eax,%r9d
  movl   %r11d,%eax
  rorl   $0x1a,%r8d
  notl   %r9d
  addl   %edx,%r8d
  orl    %r8d,%r9d
  movl   %r8d,%r11d
  xorl   %edx,%r9d
  notl   %r11d
  addl   %r10d,%r9d
  rorl   $0x16,%r9d
  addl   %r8d,%r9d
  orl    %r9d,%eax
  xorl   %r8d,%eax
  addl   %edi,%eax
  leal   -0x7a7ba22f(%r13,%rdx,1),%edi
  movl   %r11d,%edx
  rorl   $0x11,%eax
  addl   %r9d,%eax
  orl    %eax,%edx
  xorl   %r9d,%edx
  addl   %edi,%edx
  movl   -0x28(%rsp),%edi
  rorl   $0xb,%edx
  addl   %eax,%edx
  leal   0x6fa87e4f(%rdi,%r8,1),%r8d
  movl   %r9d,%edi
  leal   0x4e0811a1(%rcx,%rdx,1),%ecx
  notl   %edi
  orl    %edx,%edi
  xorl   %eax,%edi
  addl   %r8d,%edi
  leal   -0x1d31920(%rsi,%r9,1),%r8d
  movl   %eax,%esi
  rorl   $0x1a,%edi
  notl   %esi
  addl   %edx,%edi
  orl    %edi,%esi
  xorl   %edx,%esi
  addl   %r8d,%esi
  movl   -0x2c(%rsp),%r8d
  rorl   $0x16,%esi
  addl   %edi,%esi
  leal   -0x5cfebcec(%r8,%rax,1),%r8d
  movl   %edx,%eax
  movl   %edi,%edx
  notl   %eax
  notl   %edx
  orl    %esi,%eax
  xorl   %edi,%eax
  addl   %r8d,%eax
  movl   -0x24(%rsp),%r8d
  rorl   $0x11,%eax
  addl   %esi,%eax
  orl    %eax,%edx
  xorl   %esi,%edx
  addl   %edx,%ecx
  movl   -0x30(%rsp),%edx
  rorl   $0xb,%ecx
  addl   %eax,%ecx
  leal   -0x8ac817e(%rdx,%rdi,1),%edi
  movl   %esi,%edx
  notl   %edx
  orl    %ecx,%edx
  xorl   %eax,%edx
  addl   %edi,%edx
  leal   -0x42c50dcb(%r8,%rsi,1),%edi
  movl   %eax,%esi
  rorl   $0x1a,%edx
  notl   %esi
  addl   %ecx,%edx
  addl   %edx,-0x20(%rsp)
  orl    %edx,%esi
  xorl   %ecx,%esi
  addl   %edi,%esi
  leal   0x2ad7d2bb(%r14,%rax,1),%edi
  movl   %ecx,%eax
  rorl   $0x16,%esi
  notl   %eax
  leal   -0x14792c6f(%r15,%rcx,1),%ecx
  addl   %edx,%esi
  addl   %esi,-0x18(%rsp)
  orl    %esi,%eax
  xorl   %edx,%eax
  addl   %edi,%eax
  rorl   $0x11,%eax
  leal   (%rax,%rsi,1),%edi
  movl   %edx,%eax
  addl   %edi,-0x1c(%rsp)
  notl   %eax
  orl    %edi,%eax
  xorl   %esi,%eax
  addl   %ecx,%eax
  rorl   $0xb,%eax
  addl   %edi,%eax
  addl   %eax,%ebx
  cmpq   %rbp,-0x10(%rsp)
  ja     .L_402c40
.L_4033ee:
  movq   -0x8(%rsp),%rax
  movl   -0x20(%rsp),%edi
  movl   %ebx,0x4(%rax)
  movl   -0x1c(%rsp),%ebx
  movl   %edi,(%rax)
  movl   %ebx,0x8(%rax)
  movl   -0x18(%rsp),%ebx
  movl   %ebx,0xc(%rax)
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_403420:
  pushq  %r13
  pushq  %r12
  movq   %rsi,%r12
  pushq  %rbp
  pushq  %rbx
  movq   %rdi,%rbx
  subq   $0x8,%rsp
  movl   0x18(%rdi),%eax
  movl   0x10(%rdi),%esi
  cmpl   $0x38,%eax
  sbbq   %rbp,%rbp
  andq   $0xffffffffffffffc0,%rbp
  subq   $0xffffffffffffff80,%rbp
  cmpl   $0x38,%eax
  sbbq   %rdx,%rdx
  andq   $0xfffffffffffffff0,%rdx
  addq   $0x1f,%rdx
  cmpl   $0x38,%eax
  sbbq   %rcx,%rcx
  addl   %eax,%esi
  andq   $0xfffffffffffffff0,%rcx
  movl   %esi,0x10(%rdi)
  movl   0x14(%rdi),%edi
  addq   $0x1e,%rcx
  cmpl   %esi,%eax
  jbe    .L_403472
  addl   $0x1,%edi
  movl   %edi,0x14(%rbx)
.L_403472:
  leal   0x0(,%rsi,8),%r8d
  shrl   $0x1d,%esi
  leaq   0x1c(%rbx),%r13
  movl   %r8d,0x1c(%rbx,%rcx,4)
  leal   0x0(,%rdi,8),%ecx
  leaq   0x0(%r13,%rax,1),%rdi
  orl    %esi,%ecx
  movl   $0x406aa0,%esi
  movl   %ecx,0x1c(%rbx,%rdx,4)
  movq   %rbp,%rcx
  subq   %rax,%rcx
  leaq   -0x8(%rcx),%rdx
  callq  .L_401610
  movq   %rbp,%rsi
  movq   %r13,%rdi
  movq   %rbx,%rdx
  callq  .L_402bd0
  addq   $0x8,%rsp
  movq   %rbx,%rdi
  movq   %r12,%rsi
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  jmpq   .L_402bb0
  nop
.L_4034d0:
  pushq  %r15
  pushq  %r14
  pushq  %r13
  pushq  %r12
  movq   %rdi,%r12
  pushq  %rbp
  movq   %rdx,%rbp
  pushq  %rbx
  movq   %rsi,%rbx
  subq   $0x8,%rsp
  movl   0x18(%rdx),%eax
  testl  %eax,%eax
  jne    .L_403570
.L_4034f2:
  cmpq   $0x3f,%rbx
  ja     .L_403550
.L_4034f8:
  testq  %rbx,%rbx
  jne    .L_403510
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_403510:
  movl   0x18(%rbp),%r13d
  leaq   0x1c(%rbp),%r14
  movq   %rbx,%rdx
  movq   %r12,%rsi
  leaq   (%r14,%r13,1),%rdi
  addq   %r13,%rbx
  callq  .L_401610
  cmpq   $0x3f,%rbx
  ja     .L_4035b0
.L_403534:
  movl   %ebx,0x18(%rbp)
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_403550:
  movq   %rbx,%r13
  movq   %r12,%rdi
  movq   %rbp,%rdx
  andq   $0xffffffffffffffc0,%r13
  andl   $0x3f,%ebx
  movq   %r13,%rsi
  addq   %r13,%r12
  callq  .L_402bd0
  jmpq    .L_4034f8
  nop
.L_403570:
  movl   %eax,%r14d
  movl   $0x80,%r13d
  leaq   0x1c(%rdx),%r15
  subq   %r14,%r13
  cmpq   %rsi,%r13
  leaq   (%r15,%r14,1),%rdi
  cmovaq %rsi,%r13
  movq   %r12,%rsi
  movq   %r13,%rdx
  callq  .L_401610
  movl   0x18(%rbp),%esi
  addl   %r13d,%esi
  cmpl   $0x40,%esi
  movl   %esi,0x18(%rbp)
  ja     .L_4035e0
.L_4035a4:
  addq   %r13,%r12
  subq   %r13,%rbx
  jmpq   .L_4034f2
  nop
.L_4035b0:
  movq   %rbp,%rdx
  movq   %r14,%rdi
  movl   $0x40,%esi
  callq  .L_402bd0
  subq   $0x40,%rbx
  leaq   0x5c(%rbp),%rsi
  movq   %r14,%rdi
  movq   %rbx,%rdx
  callq  .L_401610
  jmpq   .L_403534
  nop
.L_4035e0:
  andl   $0xffffffc0,%esi
  movq   %rbp,%rdx
  movq   %r15,%rdi
  callq  .L_402bd0
  movl   0x18(%rbp),%edx
  addq   %r13,%r14
  movq   %r15,%rdi
  andq   $0xffffffffffffffc0,%r14
  leaq   (%r15,%r14,1),%rsi
  andl   $0x3f,%edx
  movl   %edx,0x18(%rbp)
  callq  .L_401610
  jmpq    .L_4035a4
  nop
  pushq  %rbx
  movq   %rdx,%rbx
  subq   $0xa0,%rsp
  movq   %rsp,%rdx
  movl   $0x67452301,(%rsp)
  movl   $0xefcdab89,0x4(%rsp)
  movl   $0x98badcfe,0x8(%rsp)
  movl   $0x10325476,0xc(%rsp)
  movl   $0x0,0x14(%rsp)
  movl   $0x0,0x10(%rsp)
  movl   $0x0,0x18(%rsp)
  callq  .L_4034d0
  movq   %rbx,%rsi
  movq   %rsp,%rdi
  callq  .L_403420
  addq   $0xa0,%rsp
  popq   %rbx
  retq   
  xchgw  %ax,%ax
.L_403670:
  pushq  %r13
  movq   %rsi,%r13
  pushq  %r12
  pushq  %rbp
  movq   %rdi,%rbp
  movl   $0x8048,%edi
  pushq  %rbx
  subq   $0xa8,%rsp
  callq  .L_401630
  testq  %rax,%rax
  movq   %rax,%r12
  je     .L_403770
  movl   $0x67452301,(%rsp)
  movl   $0xefcdab89,0x4(%rsp)
  xorl   %ebx,%ebx
  movl   $0x98badcfe,0x8(%rsp)
  movl   $0x10325476,0xc(%rsp)
  movl   $0x0,0x14(%rsp)
  movl   $0x0,0x10(%rsp)
  movl   $0x0,0x18(%rsp)
  nop
.L_4036d8:
  leaq   (%r12,%rbx,1),%rdi
  movl   $0x8000,%edx
  movq   %rbp,%rcx
  subq   %rbx,%rdx
  movl   $0x1,%esi
  callq  .L_401480
  addq   %rax,%rbx
  cmpq   $0x8000,%rbx
  je     .L_403730
  testq  %rax,%rax
  je     .L_403748
  testb  $0x10,0x0(%rbp)
  je     .L_4036d8
.L_403708:
  testq  %rbx,%rbx
  jne    .L_403760
.L_40370d:
  movq   %r13,%rsi
  movq   %rsp,%rdi
  callq  .L_403420
  movq   %r12,%rdi
  callq  .L_401400
  xorl   %eax,%eax
.L_403722:
  addq   $0xa8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
.L_403730:
  movq   %rsp,%rdx
  movl   $0x8000,%esi
  movq   %r12,%rdi
  callq  .L_402bd0
  xorl   %ebx,%ebx
  jmpq    .L_4036d8
  nop
.L_403748:
  testb  $0x20,0x0(%rbp)
  je     .L_403708
  movq   %r12,%rdi
  callq  .L_401400
  movl   $0x1,%eax
  jmpq    .L_403722
  nop
.L_403760:
  movq   %rsp,%rdx
  movq   %rbx,%rsi
  movq   %r12,%rdi
  callq  .L_4034d0
  jmpq    .L_40370d
.L_403770:
  addq   $0xa8,%rsp
  movl   $0x1,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
  nop
.L_403790:
  movzbl (%rdi),%edx
  movq   %rdi,%rax
  cmpb   $0x2f,%dl
  jne    .L_4037ac
  nop
.L_4037a0:
  addq   $0x1,%rax
  movzbl (%rax),%edx
  cmpb   $0x2f,%dl
  je     .L_4037a0
.L_4037ac:
  movl   %edx,%ecx
  xorl   %esi,%esi
  movq   %rax,%rdx
  testb  %cl,%cl
  je     .L_4037f7
  nop
.L_4037c0:
  addq   $0x1,%rdx
  movzbl (%rdx),%ecx
  testb  %cl,%cl
  je     .L_4037e5
.L_4037cb:
  cmpb   $0x2f,%cl
  je     .L_4037f0
  testb  %sil,%sil
  je     .L_4037c0
  movq   %rdx,%rax
  addq   $0x1,%rdx
  movzbl (%rdx),%ecx
  xorl   %esi,%esi
  testb  %cl,%cl
  jne    .L_4037cb
.L_4037e5:
  retq
  nop
.L_4037f0:
  movl   $0x1,%esi
  jmpq    .L_4037c0
.L_4037f7:
  retq
  nop
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_4014e0
  cmpq   $0x1,%rax
  jbe    .L_40381a
.L_40380f:
  cmpb   $0x2f,-0x1(%rbx,%rax,1)
  leaq   -0x1(%rax),%rdx
  je     .L_403820
.L_40381a:
  popq   %rbx
  retq   
  nop
.L_403820:
  cmpq   $0x1,%rdx
  movq   %rdx,%rax
  jne    .L_40380f
  popq   %rbx
  retq   
  nop
  jmpq   .L_401590
  nop
.L_403840:
  testq  %rdi,%rdi
  je     .L_403860
  pushq  %rbx
  movl   %esi,%ebx
  callq  .L_401620
  movl   %ebx,%ecx
  xorl   %edx,%edx
  xorl   %esi,%esi
  popq   %rbx
  movl   %eax,%edi
  jmpq   .L_401590
  nop
.L_403860:
  retq
  nop
  nop
.L_403870:
  pushq  %r12
  movq   %rsi,%r12
  pushq  %rbp
  xorl   %ebp,%ebp
  pushq  %rbx
  callq  .L_401710
  testq  %rax,%rax
  movq   %rax,%rbx
  je     .L_403896
  movq   %rax,%rdi
  movq   %rbx,%rbp
  callq  .L_401620
  cmpl   $0x2,%eax
  jbe    .L_4038a0
.L_403896:
  popq   %rbx
  movq   %rbp,%rax
  popq   %rbp
  popq   %r12
  retq   
  xchgw  %ax,%ax
.L_4038a0:
  movl   %eax,%edi
  callq  .L_404ea0
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_4038d3
  movq   %rbp,%rdi
  callq  .L_405710
  testl  %eax,%eax
  jne    .L_4038f0
  movq   %r12,%rsi
  movl   %ebx,%edi
  callq  .L_4016a0
  testq  %rax,%rax
  je     .L_4038f0
  movq   %rax,%rbp
  popq   %rbx
  movq   %rbp,%rax
  popq   %rbp
  popq   %r12
  retq   
.L_4038d3:
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbx
  movq   %rbp,%rdi
  callq  .L_405710
  xorl   %ebp,%ebp
  movl   %r12d,(%rbx)
  jmpq    .L_403896
  nop
.L_4038f0:
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbp
  movl   %ebx,%edi
  callq  .L_401580
  movl   %r12d,0x0(%rbp)
  xorl   %ebp,%ebp
  jmpq    .L_403896
  nop
.L_403910:
  testq  %rdi,%rdi
  pushq  %rbx
  movq   %rdi,%rbx
  je     .L_403983
  movl   $0x2f,%esi
  callq  .L_401540
  testq  %rax,%rax
  je     .L_403973
  leaq   0x1(%rax),%rdx
  movq   %rdx,%rcx
  subq   %rbx,%rcx
  cmpq   $0x6,%rcx
  jle    .L_403973
  leaq   -0x6(%rax),%rsi
  movl   $0x406b18,%edi
  movl   $0x7,%ecx
  repz cmpsb %es:(%rdi),%ds:(%rsi)
  jne    .L_403973
  movl   $0x3,%ecx
  movq   %rdx,%rsi
  movl   $0x406b20,%edi
  repz cmpsb %es:(%rdi),%ds:(%rsi)
  movq   %rdx,%rbx
  seta   %sil
  setb   %cl
  cmpb   %cl,%sil
  jne    .L_403973
  leaq   0x4(%rax),%rbx
  movq   %rbx,0x20592d(%rip)        
.L_403973:
  movq   %rbx,0x205996(%rip)        
  movq   %rbx,0x205947(%rip)        
  popq   %rbx
  retq   
.L_403983:
  movq   0x205946(%rip),%rcx        
  movl   $0x37,%edx
  movl   $0x1,%esi
  movl   $0x406ae0,%edi
  callq  .L_401750
  callq  .L_401410
  nop
  nop
.L_4039b0:
  subq   $0x48,%rsp
  xorl   %eax,%eax
  movq   %rdi,%rdx
  movl   $0x7,%ecx
  movq   %rsp,%rdi
  cmpl   $0x8,%esi
  rep stosq %es:(%rdi)
  je     .L_403a11
  movl   %esi,(%rsp)
  movq   (%rsp),%rax
  movq   %rax,(%rdx)
  movq   0x8(%rsp),%rax
  movq   %rax,0x8(%rdx)
  movq   0x10(%rsp),%rax
  movq   %rax,0x10(%rdx)
  movq   0x18(%rsp),%rax
  movq   %rax,0x18(%rdx)
  movq   0x20(%rsp),%rax
  movq   %rax,0x20(%rdx)
  movq   0x28(%rsp),%rax
  movq   %rax,0x28(%rdx)
  movq   0x30(%rsp),%rax
  movq   %rax,0x30(%rdx)
  movq   %rdx,%rax
  addq   $0x48,%rsp
  retq   
.L_403a11:
  callq  .L_401410
  nop
.L_403a20:
  pushq  %r13
  movl   $0x5,%edx
  pushq  %r12
  movl   %esi,%r12d
  movq   %rdi,%rsi
  pushq  %rbp
  movq   %rdi,%rbp
  xorl   %edi,%edi
  pushq  %rbx
  subq   $0x8,%rsp
  callq  .L_4014c0
  cmpq   %rbp,%rax
  movq   %rax,%rbx
  je     .L_403a58
.L_403a47:
  addq   $0x8,%rsp
  movq   %rbx,%rax
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
.L_403a58:
  callq  .L_405a00
  movzbl (%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x55,%dl
  jne    .L_403ac0
  movzbl 0x1(%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x54,%dl
  jne    .L_403aa8
  movzbl 0x2(%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x46,%dl
  jne    .L_403aa8
  cmpb   $0x2d,0x3(%rax)
  jne    .L_403aa8
  cmpb   $0x38,0x4(%rax)
  jne    .L_403aa8
  cmpb   $0x0,0x5(%rax)
  jne    .L_403aa8
  cmpb   $0x60,(%rbx)
  movl   $0x406b33,%eax
  movl   $0x406b24,%ebx
  cmoveq %rax,%rbx
  jmpq    .L_403a47
  nop
.L_403aa8:
  movl   $0x406b2d,%ebx
  cmpl   $0x7,%r12d
  movl   $0x406b2b,%eax
  cmovneq %rax,%rbx
  jmpq    .L_403a47
  nop
.L_403ac0:
  cmpb   $0x47,%dl
  jne    .L_403aa8
  movzbl 0x1(%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x42,%dl
  jne    .L_403aa8
  cmpb   $0x31,0x2(%rax)
  jne    .L_403aa8
  cmpb   $0x38,0x3(%rax)
  jne    .L_403aa8
  cmpb   $0x30,0x4(%rax)
  jne    .L_403aa8
  cmpb   $0x33,0x5(%rax)
  jne    .L_403aa8
  cmpb   $0x30,0x6(%rax)
  jne    .L_403aa8
  cmpb   $0x0,0x7(%rax)
  jne    .L_403aa8
  movq   %rbx,%r13
  movl   $0x406b28,%eax
  movl   $0x406b2f,%ebx
  cmpb   $0x60,0x0(%r13)
  cmovneq %rax,%rbx
  jmpq   .L_403a47
.L_403b10:
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
  ja     .L_4044f0
  movl   %r14d,%eax
  movq   0x20(%rsp),%r11
  jmpq   *0x406b80(,%rax,8)
  nop
  movb   $0x0,0x33(%rsp)
  movb   $0x0,0x20(%rsp)
  xorl   %r14d,%r14d
  movq   $0x0,0x60(%rsp)
  xorl   %ebx,%ebx
  nop
.L_403bd0:
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
.L_403bf6:
  cmpq   %r15,%rbp
  setne  %al
  cmpq   $0xffffffffffffffff,%r15
  je     .L_403de6
  nop
.L_403c10:
  testb  %al,%al
  je     .L_403df6
.L_403c18:
  testq  %r9,%r9
  setne  %cl
  je     .L_404310
  cmpb   $0x0,0x20(%rsp)
  je     .L_404310
  leaq   0x0(%rbp,%r9,1),%rax
  cmpq   %rax,%r15
  jb     .L_404310
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
  jne    .L_404320
  cmpb   $0x0,0x33(%rsp)
  jne    .L_403eb0
  movl   $0x1,%r11d
  nop
.L_403c90:
  movzbl 0x0(%r13),%r12d
  cmpb   $0x7e,%r12b
  ja     .L_404088
  movzbl %r12b,%eax
  jmpq   *0x406bc8(,%rax,8)
  nop
  movl   0x34(%rsp),%eax
  cmpl   $0x2,%eax
  je     .L_403ea0
  cmpl   $0x3,%eax
  jne    .L_403d68
  testb  $0x4,0x90(%rsp)
  je     .L_403d68
  leaq   0x2(%rbp),%rax
  cmpq   %rax,%r15
  jbe    .L_403d68
  cmpb   $0x3f,0x1(%r8,%rbp,1)
  jne    .L_403d68
  movzbl (%r8,%rax,1),%esi
  leal   -0x21(%rsi),%ecx
  cmpb   $0x1d,%cl
  ja     .L_403d68
  movl   $0x1,%edx
  shlq   %cl,%rdx
  testl  $0x380051c1,%edx
  je     .L_403d68
  cmpb   $0x0,0x33(%rsp)
  jne    .L_403eb0
  cmpq   %r14,%rbx
  jae    .L_403d1f
  movq   0x28(%rsp),%rdi
  movb   $0x3f,(%rdi,%rbx,1)
.L_403d1f:
  leaq   0x1(%rbx),%rdx
  cmpq   %rdx,%r14
  jbe    .L_403d32
  movq   0x28(%rsp),%rdi
  movb   $0x22,0x1(%rdi,%rbx,1)
.L_403d32:
  leaq   0x2(%rbx),%rdx
  cmpq   %rdx,%r14
  jbe    .L_403d45
  movq   0x28(%rsp),%rdi
  movb   $0x22,0x2(%rdi,%rbx,1)
.L_403d45:
  leaq   0x3(%rbx),%rdx
  cmpq   %rdx,%r14
  jbe    .L_403d58
  movq   0x28(%rsp),%rdi
  movb   $0x3f,0x3(%rdi,%rbx,1)
.L_403d58:
  addq   $0x4,%rbx
  movl   %esi,%r12d
  movq   %rax,%rbp
  nop
.L_403d68:
  cmpb   $0x0,0x38(%rsp)
  je     .L_403d79
  cmpb   $0x0,0x95(%rsp)
  jne    .L_403d9e
.L_403d79:
  movq   0x58(%rsp),%rdi
  testq  %rdi,%rdi
  je     .L_403d9e
  movl   %r12d,%edx
  movl   %r12d,%ecx
  movl   $0x1,%eax
  shrb   $0x5,%dl
  andl   $0x1f,%ecx
  movzbl %dl,%edx
  shll   %cl,%eax
  testl  %eax,(%rdi,%rdx,4)
  jne    .L_403da3
.L_403d9e:
  testb  %r11b,%r11b
  je     .L_403dc0
.L_403da3:
  cmpb   $0x0,0x33(%rsp)
  jne    .L_403eb0
  cmpq   %r14,%rbx
  jae    .L_403dbc
  movq   0x28(%rsp),%rax
  movb   $0x5c,(%rax,%rbx,1)
.L_403dbc:
  addq   $0x1,%rbx
.L_403dc0:
  addq   $0x1,%rbp
.L_403dc4:
  cmpq   %r14,%rbx
  jae    .L_403dd2
  movq   0x28(%rsp),%rax
  movb   %r12b,(%rax,%rbx,1)
.L_403dd2:
  addq   $0x1,%rbx
  cmpq   %r15,%rbp
  setne  %al
  cmpq   $0xffffffffffffffff,%r15
  jne    .L_403c10
.L_403de6:
  cmpb   $0x0,(%r8,%rbp,1)
  setne  %al
  testb  %al,%al
  jne    .L_403c18
.L_403df6:
  testq  %rbx,%rbx
  movq   %r14,%r11
  movq   %r8,%r13
  jne    .L_403e13
  cmpl   $0x2,0x34(%rsp)
  jne    .L_403e13
  cmpb   $0x0,0x33(%rsp)
  jne    .L_403eb6
.L_403e13:
  cmpb   $0x0,0x33(%rsp)
  jne    .L_403e54
  cmpq   $0x0,0x60(%rsp)
  je     .L_403e54
  movq   0x60(%rsp),%rdx
  movzbl (%rdx),%eax
  testb  %al,%al
  je     .L_403e54
  movq   0x28(%rsp),%rcx
  subq   %rbx,%rdx
  nop
.L_403e40:
  cmpq   %rbx,%r11
  jbe    .L_403e48
  movb   %al,(%rcx,%rbx,1)
.L_403e48:
  addq   $0x1,%rbx
  movzbl (%rdx,%rbx,1),%eax
  testb  %al,%al
  jne    .L_403e40
.L_403e54:
  cmpq   %r11,%rbx
  movq   %rbx,%rax
  jae    .L_403ef6
  movq   0x28(%rsp),%rsi
  movb   $0x0,(%rsi,%rbx,1)
  jmpq   .L_403ef6
  xchgw  %ax,%ax
  cmpq   $0x1,%r15
  setne  %al
  cmpq   $0xffffffffffffffff,%r15
  je     .L_4044e0
.L_403e81:
  testb  %al,%al
  jne    .L_403d68
  testq  %rbp,%rbp
  jne    .L_403d68
  cmpl   $0x2,0x34(%rsp)
  jne    .L_403d68
  nop
.L_403ea0:
  cmpb   $0x0,0x33(%rsp)
  je     .L_403d68
  nop
.L_403eb0:
  movq   %r14,%r11
  movq   %r8,%r13
.L_403eb6:
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
  callq  .L_403b10
.L_403ef6:
  movq   0xb8(%rsp),%rsi
  xorq   %fs:0x28,%rsi
  jne    .L_404693
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
.L_403f25:
  cmpl   $0x2,0x34(%rsp)
  je     .L_40455f
.L_403f30:
  cmpb   $0x0,0x20(%rsp)
  je     .L_403d68
  movl   %eax,%r12d
  jmpq   .L_403da3
  nop
  movl   $0x62,%eax
  jmpq    .L_403f30
  nop
  movl   $0x66,%eax
  jmpq    .L_403f30
  nop
  movl   $0x76,%eax
  jmpq    .L_403f30
  nop
  movl   $0x6e,%eax
  jmpq    .L_403f25
  nop
  movl   $0x74,%eax
  jmpq    .L_403f25
  nop
  cmpb   $0x0,0x20(%rsp)
  je     .L_4044b0
  cmpb   $0x0,0x33(%rsp)
  jne    .L_403eb0
  cmpq   %r14,%rbx
  jae    .L_403fb4
  movq   0x28(%rsp),%rax
  movb   $0x5c,(%rax,%rbx,1)
.L_403fb4:
  leaq   0x1(%rbp),%rdx
  leaq   0x1(%rbx),%rax
  cmpq   %rdx,%r15
  jbe    .L_403ff0
  movzbl 0x1(%r8,%rbp,1),%esi
  leal   -0x30(%rsi),%edx
  cmpb   $0x9,%dl
  ja     .L_403ff0
  cmpq   %rax,%r14
  ja     .L_404570
.L_403fd8:
  leaq   0x2(%rbx),%rax
  cmpq   %rax,%r14
  jbe    .L_403feb
  movq   0x28(%rsp),%rax
  movb   $0x30,0x2(%rax,%rbx,1)
.L_403feb:
  leaq   0x3(%rbx),%rax
  nop
.L_403ff0:
  movq   %rax,%rbx
  movl   $0x30,%r12d
  jmpq   .L_403d79
  xchgw  %ax,%ax
  movl   $0x61,%eax
  jmpq   .L_403f30
  nop
  cmpb   $0x0,0x20(%rsp)
  je     .L_404026
  cmpb   $0x0,0x33(%rsp)
  je     .L_404026
  testb  %cl,%cl
  jne    .L_403dc0
.L_404026:
  movl   %r12d,%eax
  jmpq   .L_403f25
  xchgw  %ax,%ax
  cmpl   $0x2,0x34(%rsp)
  jne    .L_403d68
  cmpb   $0x0,0x33(%rsp)
  jne    .L_403eb0
  cmpq   %r14,%rbx
  jae    .L_404054
  movq   0x28(%rsp),%rax
  movb   $0x27,(%rax,%rbx,1)
.L_404054:
  leaq   0x1(%rbx),%rax
  cmpq   %rax,%r14
  jbe    .L_404067
  movq   0x28(%rsp),%rax
  movb   $0x5c,0x1(%rax,%rbx,1)
.L_404067:
  leaq   0x2(%rbx),%rax
  cmpq   %rax,%r14
  jbe    .L_40407a
  movq   0x28(%rsp),%rax
  movb   $0x27,0x2(%rax,%rbx,1)
.L_40407a:
  addq   $0x3,%rbx
  jmpq   .L_403d68
  nop
.L_404088:
  cmpq   $0x1,0x78(%rsp)
  jne    .L_404330
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
.L_4040d1:
  andb   0x20(%rsp),%dl
  je     .L_403d68
.L_4040db:
  addq   %rbp,%rax
  movzbl 0x33(%rsp),%edi
  movq   0x28(%rsp),%rcx
  jmpq    .L_404160
  nop
.L_4040f0:
  testb  %dil,%dil
  jne    .L_403eb0
  cmpq   %r14,%rbx
  jae    .L_404102
  movb   $0x5c,(%rcx,%rbx,1)
.L_404102:
  leaq   0x1(%rbx),%rsi
  cmpq   %rsi,%r14
  jbe    .L_40411a
  movl   %r12d,%esi
  shrb   $0x6,%sil
  addl   $0x30,%esi
  movb   %sil,0x1(%rcx,%rbx,1)
.L_40411a:
  leaq   0x2(%rbx),%rsi
  cmpq   %rsi,%r14
  jbe    .L_404135
  movl   %r12d,%esi
  shrb   $0x3,%sil
  andl   $0x7,%esi
  addl   $0x30,%esi
  movb   %sil,0x2(%rcx,%rbx,1)
.L_404135:
  andl   $0x7,%r12d
  addq   $0x3,%rbx
  addl   $0x30,%r12d
.L_404141:
  addq   $0x1,%rbp
  cmpq   %rbp,%rax
  jbe    .L_403dc4
  cmpq   %r14,%rbx
  jae    .L_404157
  movb   %r12b,(%rcx,%rbx,1)
.L_404157:
  movzbl (%r8,%rbp,1),%r12d
  addq   $0x1,%rbx
.L_404160:
  testb  %dl,%dl
  jne    .L_4040f0
  testb  %r11b,%r11b
  je     .L_404141
  cmpq   %r14,%rbx
  jae    .L_404172
  movb   $0x5c,(%rcx,%rbx,1)
.L_404172:
  addq   $0x1,%rbx
  xorl   %r11d,%r11d
  jmpq    .L_404141
  nop
  cmpb   $0x0,0x33(%rsp)
  jne    .L_404678
  testq  %r11,%r11
  je     .L_404541
  movq   0x28(%rsp),%rax
  movb   $0x0,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x406b2b,0x60(%rsp)
  movl   $0x1,%ebx
  movb   $0x27,(%rax)
  jmpq   .L_403bd0
  nop
  cmpb   $0x0,0x33(%rsp)
  jne    .L_404698
  testq  %r11,%r11
  je     .L_404523
  movq   0x28(%rsp),%rax
  movb   $0x1,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x406b2d,0x60(%rsp)
  movl   $0x1,%ebx
  movb   $0x22,(%rax)
  jmpq   .L_403bd0
  nop
  movb   $0x0,0x33(%rsp)
  movb   $0x1,0x20(%rsp)
  xorl   %r14d,%r14d
  movq   $0x0,0x60(%rsp)
  xorl   %ebx,%ebx
  jmpq   .L_403bd0
  nop
  movb   $0x1,0x33(%rsp)
  movb   $0x1,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x406b2d,0x60(%rsp)
  xorl   %ebx,%ebx
  movl   $0x3,0x34(%rsp)
  jmpq   .L_403bd0
  nop
  je     .L_404282
  movl   0x34(%rsp),%ebx
  movl   $0x406b37,%edi
  movq   %r11,0x20(%rsp)
  movl   %ebx,%esi
  callq  .L_403a20
  movl   %ebx,%esi
  movl   $0x406b2b,%edi
  movq   %rax,0x70(%rsp)
  callq  .L_403a20
  movq   0x20(%rsp),%r11
  movq   %rax,0x68(%rsp)
.L_404282:
  xorl   %ebx,%ebx
  cmpb   $0x0,0x33(%rsp)
  jne    .L_4042b4
  movq   0x70(%rsp),%rdx
  movzbl (%rdx),%eax
  testb  %al,%al
  je     .L_4042b4
  movq   0x28(%rsp),%rcx
  nop
.L_4042a0:
  cmpq   %r11,%rbx
  jae    .L_4042a8
  movb   %al,(%rcx,%rbx,1)
.L_4042a8:
  addq   $0x1,%rbx
  movzbl (%rdx,%rbx,1),%eax
  testb  %al,%al
  jne    .L_4042a0
.L_4042b4:
  movq   0x68(%rsp),%rbp
  movq   %r11,0x38(%rsp)
  movq   %rbp,%rdi
  callq  .L_4014e0
  movq   %rbp,0x60(%rsp)
  movq   %rax,%r14
  movb   $0x1,0x20(%rsp)
  movq   0x38(%rsp),%r11
  jmpq   .L_403bd0
  nop
  movb   $0x1,0x33(%rsp)
  movb   $0x0,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x406b2b,0x60(%rsp)
  xorl   %ebx,%ebx
  movl   $0x2,0x34(%rsp)
  jmpq   .L_403bd0
  nop
.L_404310:
  leaq   (%r8,%rbp,1),%r13
  xorl   %r11d,%r11d
  jmpq   .L_403c90
  nop
.L_404320:
  xorl   %r11d,%r11d
  jmpq   .L_403c90
  nop
.L_404330:
  cmpq   $0xffffffffffffffff,%r15
  movq   $0x0,0xb0(%rsp)
  je     .L_4044f5
.L_404346:
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
.L_40438d:
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
  je     .L_40457e
  cmpq   $0xffffffffffffffff,%rax
  je     .L_4045c0
  cmpq   $0xfffffffffffffffe,%rax
  je     .L_404601
  cmpb   $0x0,0x33(%rsp)
  je     .L_40442f
  cmpl   $0x2,0x34(%rsp)
  jne    .L_40442f
  cmpq   $0x1,%rax
  je     .L_40442f
  movl   $0x1,%edx
  movl   $0x1,%eax
  nop
.L_404400:
  movzbl (%r15,%rdx,1),%edi
  leal   -0x5b(%rdi),%ecx
  cmpb   $0x21,%cl
  ja     .L_404426
  movq   %rax,%rsi
  movq $0x20000002b,%rdi
  shlq   %cl,%rsi
  testq  %rdi,%rsi
  jne    .L_4044d0
.L_404426:
  addq   $0x1,%rdx
  cmpq   %rbp,%rdx
  jne    .L_404400
.L_40442f:
  movl   0xac(%rsp),%edi
  callq  .L_401780
  leaq   0xb0(%rsp),%rdi
  testl  %eax,%eax
  movl   $0x0,%eax
  cmovel %eax,%r12d
  addq   %rbp,%rbx
  callq  .L_401770
  testl  %eax,%eax
  je     .L_40438d
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
.L_40449d:
  cmpq   $0x1,%rax
  jbe    .L_4040d1
  andb   0x20(%rsp),%dl
  jmpq   .L_4040db
.L_4044b0:
  testb  $0x1,0x90(%rsp)
  je     .L_403d68
  addq   $0x1,%rbp
  jmpq   .L_403bf6
  nop
.L_4044d0:
  movq   0x50(%rsp),%r11
  movq   0x40(%rsp),%r15
  jmpq   .L_403eb6
  nop
.L_4044e0:
  cmpb   $0x0,0x1(%r8)
  setne  %al
  jmpq   .L_403e81
  nop
.L_4044f0:
  callq  .L_401410
.L_4044f5:
  movq   %r8,%rdi
  movq   %r9,0x50(%rsp)
  movl   %r11d,0x48(%rsp)
  movq   %r8,0x40(%rsp)
  callq  .L_4014e0
  movq   0x50(%rsp),%r9
  movq   %rax,%r15
  movl   0x48(%rsp),%r11d
  movq   0x40(%rsp),%r8
  jmpq   .L_404346
.L_404523:
  movb   $0x1,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x406b2d,0x60(%rsp)
  movl   $0x1,%ebx
  jmpq   .L_403bd0
.L_404541:
  movb   $0x0,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x406b2b,0x60(%rsp)
  movl   $0x1,%ebx
  jmpq   .L_403bd0
.L_40455f:
  cmpb   $0x0,0x33(%rsp)
  je     .L_403f30
  jmpq   .L_403eb0
  nop
.L_404570:
  movq   0x28(%rsp),%rsi
  movb   $0x30,(%rsi,%rax,1)
  jmpq   .L_403fd8
.L_40457e:
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
  jmpq   .L_40449d
.L_4045c0:
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
  jmpq   .L_40449d
.L_404601:
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
  jbe    .L_40466e
  cmpb   $0x0,(%r10)
  jne    .L_404660
  jmpq    .L_40466e
  nop
.L_404658:
  cmpb   $0x0,0x0(%r13,%rax,1)
  je     .L_40466e
.L_404660:
  addq   $0x1,%rax
  leaq   0x0(%rbp,%rax,1),%rdx
  cmpq   %rdx,%r15
  ja     .L_404658
.L_40466e:
  movl   $0x1,%edx
  jmpq   .L_40449d
.L_404678:
  movb   $0x0,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x406b2b,0x60(%rsp)
  xorl   %ebx,%ebx
  jmpq   .L_403bd0
.L_404693:
  callq  .L_4014f0
.L_404698:
  movb   $0x1,0x20(%rsp)
  movl   $0x1,%r14d
  movq   $0x406b2d,0x60(%rsp)
  xorl   %ebx,%ebx
  jmpq   .L_403bd0
  nop
.L_4046c0:
  pushq  %r15
  movslq %edi,%r15
  pushq  %r14
  pushq  %r13
  pushq  %r12
  pushq  %rbp
  pushq  %rbx
  movq   %rcx,%rbx
  subq   $0x48,%rsp
  movq   %rsi,0x20(%rsp)
  movq   %rdx,0x28(%rsp)
  callq  .L_401420
  movq   %rax,%r13
  movl   (%rax),%eax
  testl  %r15d,%r15d
  movq   0x204b86(%rip),%r12        
  movl   %eax,0x34(%rsp)
  js     .L_404867
  cmpl   0x204b8d(%rip),%r15d        
  jb     .L_40476a
  leal   0x1(%r15),%ebp
  movl   %ebp,%r14d
  movq   %r14,%rsi
  shlq   $0x4,%rsi
  cmpq   $0x609280,%r12
  jne    .L_404850
  xorl   %edi,%edi
  callq  .L_405510
  movq   0x204b52(%rip),%rsi        
  movq   0x204b53(%rip),%rdi        
  movq   %rax,%r12
  movq   %rax,0x204b39(%rip)        
  movq   %rsi,(%rax)
  movq   %rdi,0x8(%rax)
.L_404746:
  movl   0x204b44(%rip),%edi        
  movq   %r14,%rdx
  xorl   %esi,%esi
  subq   %rdi,%rdx
  shlq   $0x4,%rdi
  shlq   $0x4,%rdx
  addq   %r12,%rdi
  callq  .L_401560
  movl   %ebp,0x204b26(%rip)        
.L_40476a:
  movq   0x30(%rbx),%rax
  shlq   $0x4,%r15
  movl   0x4(%rbx),%ebp
  addq   %r15,%r12
  movl   (%rbx),%r8d
  leaq   0x8(%rbx),%r15
  movq   (%r12),%r11
  movq   0x8(%r12),%r14
  movq   %rax,0x10(%rsp)
  movq   0x28(%rbx),%rax
  orl    $0x1,%ebp
  movq   0x28(%rsp),%rcx
  movq   0x20(%rsp),%rdx
  movl   %ebp,%r9d
  movq   %r11,%rsi
  movq   %r15,(%rsp)
  movq   %r14,%rdi
  movq   %rax,0x8(%rsp)
  movq   %r11,0x38(%rsp)
  callq  .L_403b10
  movq   0x38(%rsp),%r11
  cmpq   %rax,%r11
  ja     .L_40482f
  leaq   0x1(%rax),%rsi
  cmpq   $0x609320,%r14
  movq   %rsi,(%r12)
  je     .L_4047e7
  movq   %r14,%rdi
  movq   %rsi,0x38(%rsp)
  callq  .L_401400
  movq   0x38(%rsp),%rsi
.L_4047e7:
  movq   %rsi,%rdi
  movq   %rsi,0x38(%rsp)
  callq  .L_4054c0
  movq   %rax,0x8(%r12)
  movq   %rax,%r14
  movq   0x30(%rbx),%rax
  movl   (%rbx),%r8d
  movq   0x28(%rsp),%rcx
  movl   %ebp,%r9d
  movq   0x20(%rsp),%rdx
  movq   0x38(%rsp),%rsi
  movq   %r14,%rdi
  movq   %rax,0x10(%rsp)
  movq   0x28(%rbx),%rax
  movq   %r15,(%rsp)
  movq   %rax,0x8(%rsp)
  callq  .L_403b10
.L_40482f:
  movl   0x34(%rsp),%eax
  movl   %eax,0x0(%r13)
  addq   $0x48,%rsp
  movq   %r14,%rax
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_404850:
  movq   %r12,%rdi
  callq  .L_405510
  movq   %rax,%r12
  movq   %rax,0x204a16(%rip)        
  jmpq   .L_404746
.L_404867:
  callq  .L_401410
  nop
  pushq  %r12
  pushq  %rbp
  movq   %rdi,%rbp
  pushq  %rbx
  callq  .L_401420
  movl   (%rax),%r12d
  testq  %rbp,%rbp
  movl   $0x609420,%edi
  movq   %rax,%rbx
  cmovneq %rbp,%rdi
  movl   $0x38,%esi
  callq  .L_405680
  movl   %r12d,(%rbx)
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  testq  %rdi,%rdi
  movl   $0x609420,%eax
  cmovneq %rdi,%rax
  movl   (%rax),%eax
  retq   
  nop
  movl   $0x609420,%eax
  testq  %rdi,%rdi
  cmovneq %rdi,%rax
  movl   %esi,(%rax)
  retq   
  nop
  testq  %rdi,%rdi
  movl   $0x609420,%eax
  movl   %esi,%ecx
  cmovneq %rdi,%rax
  shrb   $0x5,%sil
  andl   $0x1f,%ecx
  movzbl %sil,%esi
  leaq   (%rax,%rsi,4),%rsi
  movl   0x8(%rsi),%edi
  movl   %edi,%eax
  shrl   %cl,%eax
  xorl   %eax,%edx
  andl   $0x1,%eax
  andl   $0x1,%edx
  shll   %cl,%edx
  xorl   %edi,%edx
  movl   %edx,0x8(%rsi)
  retq   
  nop
  testq  %rdi,%rdi
  movl   $0x609420,%eax
  cmoveq %rax,%rdi
  movl   0x4(%rdi),%eax
  movl   %esi,0x4(%rdi)
  retq   
  nop
.L_404920:
  subq   $0x8,%rsp
  movl   $0x609420,%eax
  testq  %rdi,%rdi
  cmoveq %rax,%rdi
  testq  %rsi,%rsi
  movl   $0x8,(%rdi)
  je     .L_40494d
  testq  %rdx,%rdx
  je     .L_40494d
  movq   %rsi,0x28(%rdi)
  movq   %rdx,0x30(%rdi)
  addq   $0x8,%rsp
  retq   
.L_40494d:
  callq  .L_401410
  nop
  pushq  %r15
  movl   $0x609420,%eax
  movq   %rcx,%r15
  pushq  %r14
  movq   %rdx,%r14
  pushq  %r13
  movq   %rsi,%r13
  pushq  %r12
  pushq  %rbp
  pushq  %rbx
  movq   %r8,%rbx
  subq   $0x28,%rsp
  testq  %r8,%r8
  cmoveq %rax,%rbx
  movq   %rdi,0x18(%rsp)
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbp
  movq   0x30(%rbx),%rax
  movl   0x4(%rbx),%r9d
  movq   0x18(%rsp),%rdi
  movq   %r15,%rcx
  movq   %r14,%rdx
  movq   %r13,%rsi
  movq   %rax,0x10(%rsp)
  movq   0x28(%rbx),%rax
  movq   %rax,0x8(%rsp)
  leaq   0x8(%rbx),%rax
  movq   %rax,(%rsp)
  movl   (%rbx),%r8d
  callq  .L_403b10
  movl   %r12d,0x0(%rbp)
  addq   $0x28,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_4049e0:
  pushq  %r15
  movl   $0x609420,%eax
  pushq  %r14
  movq   %rsi,%r14
  pushq  %r13
  movq   %rdi,%r13
  pushq  %r12
  movq   %rdx,%r12
  pushq  %rbp
  pushq  %rbx
  movq   %rcx,%rbx
  subq   $0x48,%rsp
  testq  %rcx,%rcx
  cmoveq %rax,%rbx
  xorl   %ebp,%ebp
  callq  .L_401420
  movq   %rax,%r15
  movl   (%rax),%eax
  testq  %r12,%r12
  sete   %bpl
  orl    0x4(%rbx),%ebp
  leaq   0x8(%rbx),%r10
  movq   %r14,%rcx
  movq   %r13,%rdx
  xorl   %esi,%esi
  movl   %eax,0x1c(%rsp)
  movq   0x30(%rbx),%rax
  xorl   %edi,%edi
  movq   %r10,0x30(%rsp)
  movl   %ebp,%r9d
  movq   %rax,0x10(%rsp)
  movq   0x28(%rbx),%rax
  movq   %r10,(%rsp)
  movq   %rax,0x8(%rsp)
  movl   (%rbx),%r8d
  callq  .L_403b10
  leaq   0x1(%rax),%rsi
  movq   %rax,0x38(%rsp)
  movq   %rsi,%rdi
  movq   %rsi,0x28(%rsp)
  callq  .L_4054c0
  movq   %rax,%rdi
  movq   %rax,0x20(%rsp)
  movq   0x30(%rbx),%rax
  movq   0x30(%rsp),%r10
  movq   0x28(%rsp),%rsi
  movl   %ebp,%r9d
  movq   %r14,%rcx
  movq   %r13,%rdx
  movq   %rax,0x10(%rsp)
  movq   0x28(%rbx),%rax
  movq   %r10,(%rsp)
  movq   %rax,0x8(%rsp)
  movl   (%rbx),%r8d
  callq  .L_403b10
  movl   0x1c(%rsp),%eax
  testq  %r12,%r12
  movl   %eax,(%r15)
  je     .L_404ab8
  movq   0x38(%rsp),%r11
  movq   %r11,(%r12)
.L_404ab8:
  movq   0x20(%rsp),%rax
  addq   $0x48,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
  movq   %rdx,%rcx
  xorl   %edx,%edx
  jmpq   .L_4049e0
  nop
  pushq  %r12
  movl   0x2047a8(%rip),%eax        
  movq   0x204789(%rip),%r12        
  pushq  %rbp
  cmpl   $0x1,%eax
  pushq  %rbx
  jbe    .L_404b1a
  subl   $0x2,%eax
  movq   %r12,%rbx
  shlq   $0x4,%rax
  leaq   0x10(%r12,%rax,1),%rbp
  nop
.L_404b08:
  movq   0x18(%rbx),%rdi
  addq   $0x10,%rbx
  callq  .L_401400
  cmpq   %rbp,%rbx
  jne    .L_404b08
.L_404b1a:
  movq   0x8(%r12),%rdi
  cmpq   $0x609320,%rdi
  je     .L_404b43
  callq  .L_401400
  movq   $0x100,0x204748(%rip)        
  movq   $0x609320,0x204745(%rip)        
.L_404b43:
  cmpq   $0x609280,%r12
  je     .L_404b5f
  movq   %r12,%rdi
  callq  .L_401400
  movq   $0x609280,0x204719(%rip)        
.L_404b5f:
  popq   %rbx
  popq   %rbp
  movl   $0x1,0x204725(%rip)        
  popq   %r12
  retq   
  xchgw  %ax,%ax
  movl   $0x609420,%ecx
  movq   $0xffffffffffffffff,%rdx
  jmpq   .L_4046c0
  nop
  movl   $0x609420,%ecx
  jmpq   .L_4046c0
  nop
  movq   %rdi,%rsi
  movl   $0x609420,%ecx
  movq   $0xffffffffffffffff,%rdx
  xorl   %edi,%edi
  jmpq   .L_4046c0
  nop
  movq   %rsi,%rdx
  movl   $0x609420,%ecx
  movq   %rdi,%rsi
  xorl   %edi,%edi
  jmpq   .L_4046c0
  nop
.L_404be0:
  pushq  %rbp
  movq   %rdx,%rbp
  pushq  %rbx
  movl   %edi,%ebx
  subq   $0x48,%rsp
  movq   %rsp,%rdi
  callq  .L_4039b0
  movq   %rsp,%rcx
  movq   %rbp,%rsi
  movl   %ebx,%edi
  movq   $0xffffffffffffffff,%rdx
  callq  .L_4046c0
  addq   $0x48,%rsp
  popq   %rbx
  popq   %rbp
  retq   
  xchgw  %ax,%ax
.L_404c10:
  pushq  %r12
  movq   %rcx,%r12
  pushq  %rbp
  movq   %rdx,%rbp
  pushq  %rbx
  movl   %edi,%ebx
  subq   $0x40,%rsp
  movq   %rsp,%rdi
  callq  .L_4039b0
  movq   %rsp,%rcx
  movq   %r12,%rdx
  movq   %rbp,%rsi
  movl   %ebx,%edi
  callq  .L_4046c0
  addq   $0x40,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
  movq   %rsi,%rdx
  movl   %edi,%esi
  xorl   %edi,%edi
  jmpq   .L_404be0
  nop
  movq   %rdx,%rcx
  movq   %rsi,%rdx
  movl   %edi,%esi
  xorl   %edi,%edi
  jmpq   .L_404c10
  nop
.L_404c70:
  subq   $0x48,%rsp
  movq   0x2047a5(%rip),%rax        
  movl   %edx,%r8d
  shrb   $0x5,%r8b
  movl   %edx,%ecx
  movq   %rsi,%rdx
  movzbl %r8b,%r8d
  andl   $0x1f,%ecx
  movq   %rdi,%rsi
  movq   %rax,(%rsp)
  movq   0x20478c(%rip),%rax        
  xorl   %edi,%edi
  movq   %rax,0x8(%rsp)
  movq   0x204786(%rip),%rax        
  movq   %rax,0x10(%rsp)
  movq   0x204782(%rip),%rax        
  movq   %rax,0x18(%rsp)
  movq   0x20477e(%rip),%rax        
  movq   %rax,0x20(%rsp)
  movq   0x20477a(%rip),%rax        
  movl   0x8(%rsp,%r8,4),%r9d
  movq   %rax,0x28(%rsp)
  movq   0x204771(%rip),%rax        
  movq   %rax,0x30(%rsp)
  movl   %r9d,%eax
  shrl   %cl,%eax
  xorl   $0x1,%eax
  andl   $0x1,%eax
  shll   %cl,%eax
  movq   %rsp,%rcx
  xorl   %r9d,%eax
  movl   %eax,0x8(%rsp,%r8,4)
  callq  .L_4046c0
  addq   $0x48,%rsp
  retq   
  nop
  movsbl %sil,%edx
  movq   $0xffffffffffffffff,%rsi
  jmpq   .L_404c70
.L_404d20:
  movl   $0x3a,%edx
  movq   $0xffffffffffffffff,%rsi
  jmpq   .L_404c70
  nop
  movl   $0x3a,%edx
  jmpq   .L_404c70
  nop
.L_404d50:
  pushq  %r12
  movq   %r8,%r12
  pushq  %rbp
  movq   %rcx,%rbp
  pushq  %rbx
  movl   %edi,%ebx
  subq   $0x40,%rsp
  movq   0x2046b9(%rip),%rax        
  movq   %rsp,%rdi
  movq   %rax,(%rsp)
  movq   0x2046b3(%rip),%rax        
  movq   %rax,0x8(%rsp)
  movq   0x2046af(%rip),%rax        
  movq   %rax,0x10(%rsp)
  movq   0x2046ab(%rip),%rax        
  movq   %rax,0x18(%rsp)
  movq   0x2046a7(%rip),%rax        
  movq   %rax,0x20(%rsp)
  movq   0x2046a3(%rip),%rax        
  movq   %rax,0x28(%rsp)
  movq   0x20469f(%rip),%rax        
  movq   %rax,0x30(%rsp)
  callq  .L_404920
  movq   %rsp,%rcx
  movq   %r12,%rdx
  movq   %rbp,%rsi
  movl   %ebx,%edi
  callq  .L_4046c0
  addq   $0x40,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
  movq   $0xffffffffffffffff,%r8
  jmpq   .L_404d50
  nop
  movq   %rdx,%rcx
  movq   $0xffffffffffffffff,%r8
  movq   %rsi,%rdx
  movq   %rdi,%rsi
  xorl   %edi,%edi
  jmpq   .L_404d50
  nop
  movq   %rcx,%r8
  movq   %rdx,%rcx
  movq   %rsi,%rdx
  movq   %rdi,%rsi
  xorl   %edi,%edi
  jmpq   .L_404d50
  nop
  movl   $0x609240,%ecx
  jmpq   .L_4046c0
  nop
  movq   %rsi,%rdx
  movl   $0x609240,%ecx
  movq   %rdi,%rsi
  xorl   %edi,%edi
  jmpq   .L_4046c0
  nop
  movl   $0x609240,%ecx
  movq   $0xffffffffffffffff,%rdx
  jmpq   .L_4046c0
  nop
  movq   %rdi,%rsi
  movl   $0x609240,%ecx
  movq   $0xffffffffffffffff,%rdx
  xorl   %edi,%edi
  jmpq   .L_4046c0
  nop
.L_404ea0:
  movl   $0x3,%edx
  xorl   %esi,%esi
  xorl   %eax,%eax
  jmpq   .L_405790
  xchgw  %ax,%ax
.L_404eb0:
  pushq  %r15
  pushq  %r14
  pushq  %r13
  pushq  %r12
  movq   %r9,%r12
  pushq  %rbp
  movq   %rdi,%rbp
  pushq  %rbx
  movq   %r8,%rbx
  subq   $0x58,%rsp
  testq  %rsi,%rsi
  je     .L_4052b0
  movq   %rcx,%r9
  movq   %rdx,%r8
  movq   %rsi,%rcx
  movl   $0x407028,%edx
  movl   $0x1,%esi
  xorl   %eax,%eax
  callq  .L_401760
.L_404eea:
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x40703b,%esi
  callq  .L_4014c0
  movl   $0x7dd,%r8d
  movq   %rax,%rcx
  movl   $0x407300,%edx
  movl   $0x1,%esi
  movq   %rbp,%rdi
  xorl   %eax,%eax
  callq  .L_401760
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x407098,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  cmpq   $0x9,%r12
  ja     .L_4052d0
  jmpq   *0x4072b0(,%r12,8)
  nop
  movq   0x38(%rbx),%r9
  movq   0x8(%rbx),%r8
  movl   $0x5,%edx
  movq   0x10(%rbx),%rax
  movl   $0x407208,%esi
  xorl   %edi,%edi
  movq   0x30(%rbx),%r13
  movq   0x28(%rbx),%r12
  movq   0x20(%rbx),%r15
  movq   0x18(%rbx),%r14
  movq   %r9,0x40(%rsp)
  movq   %r8,0x38(%rsp)
  movq   (%rbx),%rbx
  movq   %rax,0x30(%rsp)
  callq  .L_4014c0
  movq   0x40(%rsp),%r9
  movq   0x38(%rsp),%r8
  movq   %rax,%rdx
  movq   %r13,0x18(%rsp)
  movq   %r12,0x10(%rsp)
  movq   %rbx,%rcx
  movq   %r15,0x8(%rsp)
  movq   %r14,(%rsp)
  movl   $0x1,%esi
  movq   %r9,0x20(%rsp)
  movq   0x30(%rsp),%r9
  movq   %rbp,%rdi
  xorl   %eax,%eax
  callq  .L_401760
.L_404fcb:
  addq   $0x58,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
  movq   0x40(%rbx),%r10
  movq   0x38(%rbx),%r9
  movl   $0x5,%edx
  movq   0x10(%rbx),%rax
  movq   0x8(%rbx),%r8
  movl   $0x407238,%esi
  movq   0x30(%rbx),%r13
  movq   0x28(%rbx),%r12
  movq   0x20(%rbx),%r15
  movq   0x18(%rbx),%r14
  movq   (%rbx),%rbx
  movq   %r10,0x48(%rsp)
  movq   %r9,0x40(%rsp)
  movq   %rax,0x30(%rsp)
  movq   %r8,0x38(%rsp)
.L_405021:
  xorl   %edi,%edi
  callq  .L_4014c0
  movq   0x40(%rsp),%r9
  movq   0x48(%rsp),%r10
  movq   %rbx,%rcx
  movq   0x38(%rsp),%r8
  movq   %r13,0x18(%rsp)
  movq   %rax,%rdx
  movq   %r12,0x10(%rsp)
  movq   %r15,0x8(%rsp)
  movq   %rbp,%rdi
  movq   %r9,0x20(%rsp)
  movq   0x30(%rsp),%r9
  movl   $0x1,%esi
  movq   %r14,(%rsp)
  movq   %r10,0x28(%rsp)
  xorl   %eax,%eax
  callq  .L_401760
  addq   $0x58,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
  callq  .L_401410
  nop
  movq   (%rbx),%rbx
  movl   $0x5,%edx
  movl   $0x40703f,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  addq   $0x58,%rsp
  movq   %rbx,%rcx
  movq   %rbp,%rdi
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  movq   %rax,%rdx
  movl   $0x1,%esi
  xorl   %eax,%eax
  jmpq   .L_401760
  nop
  movq   0x8(%rbx),%r12
  movq   (%rbx),%rbx
  movl   $0x5,%edx
  movl   $0x40704f,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  addq   $0x58,%rsp
  movq   %rbx,%rcx
  movq   %rbp,%rdi
  popq   %rbx
  popq   %rbp
  movq   %r12,%r8
  movq   %rax,%rdx
  movl   $0x1,%esi
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  xorl   %eax,%eax
  jmpq   .L_401760
  xchgw  %ax,%ax
  movq   0x10(%rbx),%r13
  movq   0x8(%rbx),%r12
  movl   $0x5,%edx
  movq   (%rbx),%rbx
  movl   $0x407066,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  addq   $0x58,%rsp
  movq   %rbp,%rdi
  movq   %r12,%r8
  movq   %rbx,%rcx
  movq   %r13,%r9
  movq   %rax,%rdx
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  movl   $0x1,%esi
  xorl   %eax,%eax
  jmpq   .L_401760
  nop
  movq   0x18(%rbx),%r14
  movq   0x10(%rbx),%r13
  xorl   %edi,%edi
  movq   0x8(%rbx),%r12
  movq   (%rbx),%rbx
  movl   $0x5,%edx
  movl   $0x407168,%esi
  callq  .L_4014c0
  movq   %r14,(%rsp)
  movq   %rax,%rdx
  movq   %r13,%r9
  movq   %r12,%r8
  movq   %rbx,%rcx
  movl   $0x1,%esi
  movq   %rbp,%rdi
  xorl   %eax,%eax
  callq  .L_401760
  jmpq   .L_404fcb
  nop
  movq   0x20(%rbx),%r15
  movq   0x18(%rbx),%r14
  xorl   %edi,%edi
  movq   0x10(%rbx),%r13
  movq   0x8(%rbx),%r12
  movl   $0x5,%edx
  movq   (%rbx),%rbx
  movl   $0x407188,%esi
  callq  .L_4014c0
  movq   %r15,0x8(%rsp)
  movq   %rax,%rdx
  movq   %r14,(%rsp)
  movq   %r13,%r9
  movq   %r12,%r8
  movq   %rbx,%rcx
  movl   $0x1,%esi
  movq   %rbp,%rdi
  xorl   %eax,%eax
  callq  .L_401760
  jmpq   .L_404fcb
  nop
  movq   0x8(%rbx),%r8
  movq   0x28(%rbx),%r12
  xorl   %edi,%edi
  movq   0x20(%rbx),%r15
  movq   0x18(%rbx),%r14
  movl   $0x5,%edx
  movq   0x10(%rbx),%r13
  movl   $0x4071b0,%esi
  movq   (%rbx),%rbx
  movq   %r8,0x30(%rsp)
  callq  .L_4014c0
  movq   0x30(%rsp),%r8
  movq   %rax,%rdx
  movq   %r12,0x10(%rsp)
  movq   %r15,0x8(%rsp)
  movq   %r14,(%rsp)
  movq   %r13,%r9
  movq   %rbx,%rcx
  movl   $0x1,%esi
  movq   %rbp,%rdi
  xorl   %eax,%eax
  callq  .L_401760
  jmpq   .L_404fcb
  nop
  movq   0x10(%rbx),%r9
  movq   0x8(%rbx),%r8
  xorl   %edi,%edi
  movq   0x30(%rbx),%r13
  movq   0x28(%rbx),%r12
  movl   $0x5,%edx
  movq   0x20(%rbx),%r15
  movq   0x18(%rbx),%r14
  movl   $0x4071d8,%esi
  movq   (%rbx),%rbx
  movq   %r9,0x38(%rsp)
  movq   %r8,0x30(%rsp)
  callq  .L_4014c0
  movq   0x38(%rsp),%r9
  movq   0x30(%rsp),%r8
  movq   %rax,%rdx
  movq   %r13,0x18(%rsp)
  movq   %r12,0x10(%rsp)
  movq   %rbx,%rcx
  movq   %r15,0x8(%rsp)
  movq   %r14,(%rsp)
  movl   $0x1,%esi
  movq   %rbp,%rdi
  xorl   %eax,%eax
  callq  .L_401760
  jmpq   .L_404fcb
  nop
.L_4052b0:
  movq   %rcx,%r8
  movl   $0x1,%esi
  movq   %rdx,%rcx
  xorl   %eax,%eax
  movl   $0x407034,%edx
  callq  .L_401760
  jmpq   .L_404eea
  nop
.L_4052d0:
  movq   0x40(%rbx),%r10
  movq   0x38(%rbx),%r9
  movl   $0x5,%edx
  movq   0x10(%rbx),%rax
  movq   0x8(%rbx),%r8
  movl   $0x407270,%esi
  movq   0x30(%rbx),%r13
  movq   0x28(%rbx),%r12
  movq   0x20(%rbx),%r15
  movq   0x18(%rbx),%r14
  movq   %r10,0x48(%rsp)
  movq   %r9,0x40(%rsp)
  movq   %rax,0x30(%rsp)
  movq   %r8,0x38(%rsp)
  movq   (%rbx),%rbx
  jmpq   .L_405021
  nop
  xorl   %r9d,%r9d
  cmpq   $0x0,(%r8)
  je     .L_40533b
  nop
.L_405330:
  addq   $0x1,%r9
  cmpq   $0x0,(%r8,%r9,8)
  jne    .L_405330
.L_40533b:
  jmpq   .L_404eb0
.L_405340:
  subq   $0x58,%rsp
  xorl   %r9d,%r9d
  jmpq    .L_405373
  nop
.L_405350:
  movl   %eax,%r10d
  addq   0x10(%r8),%r10
  addl   $0x8,%eax
  movl   %eax,(%r8)
  movq   (%r10),%rax
  testq  %rax,%rax
  movq   %rax,(%rsp,%r9,8)
  je     .L_405398
.L_405369:
  addq   $0x1,%r9
  cmpq   $0xa,%r9
  je     .L_405398
.L_405373:
  movl   (%r8),%eax
  cmpl   $0x30,%eax
  jb     .L_405350
  movq   0x8(%r8),%r10
  leaq   0x8(%r10),%rax
  movq   %rax,0x8(%r8)
  movq   (%r10),%rax
  testq  %rax,%rax
  movq   %rax,(%rsp,%r9,8)
  jne    .L_405369
  nop
.L_405398:
  movq   %rsp,%r8
  callq  .L_404eb0
  addq   $0x58,%rsp
  retq   
  nop
.L_4053b0:
  subq   $0xd8,%rsp
  testb  %al,%al
  movq   %r8,0x40(%rsp)
  movq   %r9,0x48(%rsp)
  je     .L_4053fc
  movaps %xmm0,0x50(%rsp)
  movaps %xmm1,0x60(%rsp)
  movaps %xmm2,0x70(%rsp)
  movaps %xmm3,0x80(%rsp)
  movaps %xmm4,0x90(%rsp)
  movaps %xmm5,0xa0(%rsp)
  movaps %xmm6,0xb0(%rsp)
  movaps %xmm7,0xc0(%rsp)
.L_4053fc:
  leaq   0xe0(%rsp),%rax
  leaq   0x8(%rsp),%r8
  movq   %rax,0x10(%rsp)
  leaq   0x20(%rsp),%rax
  movl   $0x20,0x8(%rsp)
  movl   $0x30,0xc(%rsp)
  movq   %rax,0x18(%rsp)
  callq  .L_405340
  addq   $0xd8,%rsp
  retq   
  nop
  pushq  %rbx
  movl   $0x5,%edx
  movl   $0x407082,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movl   $0x405f0e,%edx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movl   $0x5,%edx
  movl   $0x405f24,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movl   $0x4064b8,%ecx
  movq   %rax,%rsi
  movl   $0x405f38,%edx
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movq   0x203e19(%rip),%rbx        
  movl   $0x4064e0,%esi
  xorl   %edi,%edi
  movl   $0x5,%edx
  callq  .L_4014c0
  movq   %rbx,%rsi
  movq   %rax,%rdi
  popq   %rbx
  jmpq   .L_4015c0
  nop
  xchgw  %ax,%ax
.L_4054c0:
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_401630
  testq  %rax,%rax
  je     .L_4054d0
.L_4054ce:
  popq   %rbx
  retq   
.L_4054d0:
  testq  %rbx,%rbx
  je     .L_4054ce
  callq  .L_4056d0
  nop
  xorl   %edx,%edx
  movq   $0xffffffffffffffff,%rax
  divq   %rsi
  cmpq   %rdi,%rax
  jb     .L_4054fa
  imulq  %rsi,%rdi
  jmpq   .L_4054c0
.L_4054fa:
  pushq  %rax
  callq  .L_4056d0
  jmpq   .L_4054c0
  nop
.L_405510:
  testq  %rsi,%rsi
  pushq  %rbx
  movq   %rsi,%rbx
  je     .L_405530
.L_405519:
  movq   %rbx,%rsi
  callq  .L_401690
  testq  %rax,%rax
  je     .L_40553e
.L_405526:
  popq   %rbx
  retq   
  nop
.L_405530:
  testq  %rdi,%rdi
  je     .L_405519
  callq  .L_401400
  xorl   %eax,%eax
  popq   %rbx
  retq   
.L_40553e:
  testq  %rbx,%rbx
  je     .L_405526
  callq  .L_4056d0
  nop
  movq   %rdx,%rcx
  movq   $0xffffffffffffffff,%rax
  xorl   %edx,%edx
  divq   %rcx
  cmpq   %rsi,%rax
  jb     .L_40556d
  imulq  %rcx,%rsi
  jmpq   .L_405510
.L_40556d:
  pushq  %rax
  callq  .L_4056d0
  nop
  testq  %rdi,%rdi
  movq   %rdx,%r8
  movq   (%rsi),%rcx
  je     .L_4055c0
  xorl   %edx,%edx
  movq $0xaaaaaaaaaaaaaaaa,%rax
  divq   %r8
  cmpq   %rax,%rcx
  jae    .L_4055dc
  leaq   0x1(%rcx),%rax
  shrq $0x1,  %rax
  addq   %rax,%rcx
.L_4055a9:
  movq   %rcx,(%rsi)
  imulq  %r8,%rcx
  movq   %rcx,%rsi
  jmpq   .L_405510
  nop
.L_4055c0:
  testq  %rcx,%rcx
  jne    .L_4055a9
  xorl   %edx,%edx
  movl   $0x80,%eax
  xorl   %ecx,%ecx
  divq   %r8
  testq  %rax,%rax
  sete   %cl
  addq   %rax,%rcx
  jmpq    .L_4055a9
.L_4055dc:
  pushq  %rax
  callq  .L_4056d0
  nop
  testq  %rdi,%rdi
  movq   (%rsi),%rax
  je     .L_405620
  movq $0xaaaaaaaaaaaaaaa9,%rdx
  cmpq   %rdx,%rax
  ja     .L_405637
  leaq   0x1(%rax),%rdx
  shrq $0x1,  %rdx
  addq   %rdx,%rax
  movq   %rax,(%rsi)
  movq   %rax,%rsi
  jmpq   .L_405510
  nop
.L_405620:
  testq  %rax,%rax
  movl   $0x80,%edx
  cmoveq %rdx,%rax
  movq   %rax,(%rsi)
  movq   %rax,%rsi
  jmpq   .L_405510
.L_405637:
  pushq  %rax
  callq  .L_4056d0
  nop
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_4054c0
  movq   %rbx,%rdx
  xorl   %esi,%esi
  movq   %rax,%rdi
  popq   %rbx
  jmpq   .L_401560
  nop
  subq   $0x8,%rsp
  callq  .L_4015d0
  testq  %rax,%rax
  je     .L_405673
  addq   $0x8,%rsp
  retq   
.L_405673:
  callq  .L_4056d0
  nop
.L_405680:
  pushq  %rbp
  movq   %rdi,%rbp
  movq   %rsi,%rdi
  pushq  %rbx
  movq   %rsi,%rbx
  subq   $0x8,%rsp
  callq  .L_4054c0
  addq   $0x8,%rsp
  movq   %rbx,%rdx
  movq   %rbp,%rsi
  popq   %rbx
  popq   %rbp
  movq   %rax,%rdi
  jmpq   .L_401610
  nop
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_4014e0
  movq   %rbx,%rdi
  leaq   0x1(%rax),%rsi
  popq   %rbx
  jmpq   .L_405680
  nop
.L_4056d0:
  subq   $0x8,%rsp
  movl   $0x5,%edx
  movl   $0x40732f,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movl   0x203b35(%rip),%edi        
  movq   %rax,%rcx
  movl   $0x406a95,%edx
  xorl   %esi,%esi
  xorl   %eax,%eax
  callq  .L_4016e0
  callq  .L_401410
  nop
  nop
.L_405710:
  pushq  %r12
  pushq  %rbp
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_401620
  testl  %eax,%eax
  movq   %rbx,%rdi
  js     .L_40577f
  callq  .L_401670
  testl  %eax,%eax
  jne    .L_405760
.L_40572c:
  movq   %rbx,%rdi
  callq  .L_4058d0
  testl  %eax,%eax
  je     .L_40577c
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rbx,%rdi
  movq   %rax,%rbp
  callq  .L_4014a0
  testl  %r12d,%r12d
  je     .L_405759
  movl   %r12d,0x0(%rbp)
  movl   $0xffffffff,%eax
.L_405759:
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  xchgw  %ax,%ax
.L_405760:
  movq   %rbx,%rdi
  callq  .L_401620
  xorl   %esi,%esi
  movl   $0x1,%edx
  movl   %eax,%edi
  callq  .L_401550
  cmpq   $0xffffffffffffffff,%rax
  jne    .L_40572c
.L_40577c:
  movq   %rbx,%rdi
.L_40577f:
  popq   %rbx
  popq   %rbp
  popq   %r12
  jmpq   .L_4014a0
  nop
.L_405790:
  pushq  %r12
  pushq  %rbp
  movl   %edi,%ebp
  pushq  %rbx
  subq   $0x50,%rsp
  cmpl   $0x406,%esi
  leaq   0x70(%rsp),%rax
  movq   %rdx,0x30(%rsp)
  movq   %rcx,0x38(%rsp)
  movl   $0x10,0x8(%rsp)
  movq   %rax,0x10(%rsp)
  leaq   0x20(%rsp),%rax
  movq   %rax,0x18(%rsp)
  jne    .L_405860
  movl   0x10(%rax),%r12d
  movl   0x203c82(%rip),%eax        
  movl   $0x18,0x8(%rsp)
  testl  %eax,%eax
  movl   %r12d,%edx
  js     .L_405880
  xorl   %eax,%eax
  callq  .L_401470
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_405890
.L_4057fa:
  movl   $0x1,0x203c54(%rip)        
.L_405804:
  testl  %ebx,%ebx
  js     .L_405872
  cmpl   $0xffffffff,0x203c49(%rip)        
  jne    .L_405872
.L_405811:
  xorl   %eax,%eax
  movl   $0x1,%esi
  movl   %ebx,%edi
  callq  .L_401470
  testl  %eax,%eax
  js     .L_40583b
  orl    $0x1,%eax
  movl   $0x2,%esi
  movl   %ebx,%edi
  movl   %eax,%edx
  xorl   %eax,%eax
  callq  .L_401470
  cmpl   $0xffffffff,%eax
  jne    .L_405872
.L_40583b:
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbp
  movl   %ebx,%edi
  callq  .L_401580
  movl   $0xffffffff,%ebx
  movl   %r12d,0x0(%rbp)
  jmpq    .L_405872
  nop
.L_405860:
  movq   0x18(%rsp),%rax
  movq   0x10(%rax),%rdx
  xorl   %eax,%eax
  callq  .L_401470
  movl   %eax,%ebx
.L_405872:
  addq   $0x50,%rsp
  movl   %ebx,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_405880:
  xorl   %esi,%esi
  xorl   %eax,%eax
  callq  .L_405790
  movl   %eax,%ebx
  jmpq   .L_405804
.L_405890:
  callq  .L_401420
  cmpl   $0x16,(%rax)
  jne    .L_4057fa
  xorl   %esi,%esi
  xorl   %eax,%eax
  movl   %r12d,%edx
  movl   %ebp,%edi
  callq  .L_405790
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_405872
  movl   $0xffffffff,0x203b9c(%rip)        
  jmpq   .L_405811
  nop
  nop
.L_4058d0:
  testq  %rdi,%rdi
  pushq  %rbx
  movq   %rdi,%rbx
  je     .L_4058e2
  callq  .L_401670
  testl  %eax,%eax
  jne    .L_4058f0
.L_4058e2:
  movq   %rbx,%rdi
  popq   %rbx
  jmpq   .L_401640
  nop
.L_4058f0:
  testl  $0x100,(%rbx)
  je     .L_4058e2
  movq   %rbx,%rdi
  movl   $0x1,%edx
  xorl   %esi,%esi
  callq  .L_405910
  movq   %rbx,%rdi
  popq   %rbx
  jmpq   .L_401640
.L_405910:
  pushq  %rbx
  movq   %rdi,%rbx
  subq   $0x10,%rsp
  movq   0x8(%rdi),%rax
  cmpq   %rax,0x10(%rdi)
  je     .L_405930
.L_405922:
  addq   $0x10,%rsp
  movq   %rbx,%rdi
  popq   %rbx
  jmpq   .L_401700
  nop
.L_405930:
  movq   0x20(%rdi),%rax
  cmpq   %rax,0x28(%rdi)
  jne    .L_405922
  cmpq   $0x0,0x48(%rdi)
  jne    .L_405922
  movl   %edx,0xc(%rsp)
  movq   %rsi,(%rsp)
  callq  .L_401620
  movl   0xc(%rsp),%edx
  movq   (%rsp),%rsi
  movl   %eax,%edi
  callq  .L_401550
  cmpq   $0xffffffffffffffff,%rax
  je     .L_40596f
  andl   $0xffffffef,(%rbx)
  movq   %rax,0x90(%rbx)
  xorl   %eax,%eax
.L_40596f:
  addq   $0x10,%rsp
  popq   %rbx
  retq   
  nop
  nop
.L_405980:
  pushq  %r12
  pushq  %rbp
  movq   %rdi,%rbp
  pushq  %rbx
  callq  .L_401460
  movl   0x0(%rbp),%ebx
  movq   %rbp,%rdi
  movq   %rax,%r12
  callq  .L_405710
  andl   $0x20,%ebx
  testl  %eax,%eax
  setne  %dl
  testl  %ebx,%ebx
  jne    .L_4059c0
  testb  %dl,%dl
  je     .L_4059b4
  testq  %r12,%r12
  movl   $0xffffffff,%ebx
  je     .L_4059e0
.L_4059b4:
  movl   %ebx,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_4059c0:
  testb  %dl,%dl
  movl   $0xffffffff,%ebx
  jne    .L_4059b4
  callq  .L_401420
  movl   $0x0,(%rax)
  movl   %ebx,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_4059e0:
  callq  .L_401420
  xorl   %ebx,%ebx
  cmpl   $0x9,(%rax)
  setne  %bl
  negl   %ebx
  movl   %ebx,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_405a00:
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
  movq   0x203a2b(%rip),%r14        
  testq  %rax,%rax
  movq   %rax,%rbx
  movl   $0x407081,%eax
  cmoveq %rax,%rbx
  testq  %r14,%r14
  jne    .L_405a6a
  jmpq   .L_405ad4
  xchgw  %ax,%ax
.L_405a50:
  movq   %r14,%rdi
  callq  .L_4014e0
  leaq   0x1(%r14,%rax,1),%rbp
  movq   %rbp,%rdi
  callq  .L_4014e0
  leaq   0x1(%rbp,%rax,1),%r14
.L_405a6a:
  movzbl (%r14),%ebp
  testb  %bpl,%bpl
  je     .L_405a9c
  movq   %r14,%rsi
  movq   %rbx,%rdi
  callq  .L_4015f0
  testl  %eax,%eax
  je     .L_405a8f
  cmpb   $0x2a,%bpl
  jne    .L_405a50
  cmpb   $0x0,0x1(%r14)
  jne    .L_405a50
.L_405a8f:
  movq   %r14,%rdi
  callq  .L_4014e0
  leaq   0x1(%r14,%rax,1),%rbx
.L_405a9c:
  cmpb   $0x0,(%rbx)
  movl   $0x407349,%eax
  cmoveq %rax,%rbx
  movq   0x98(%rsp),%rcx
  xorq   %fs:0x28,%rcx
  movq   %rbx,%rax
  jne    .L_405dfd
  addq   $0xa8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
.L_405ad4:
  movl   $0x40734f,%edi
  callq  .L_4013f0
  testq  %rax,%rax
  movq   %rax,%r15
  je     .L_405aef
  cmpb   $0x0,(%rax)
  jne    .L_405d52
.L_405aef:
  movl   $0x7,%eax
  movl   $0x8,%r12d
  movl   $0x407340,%r15d
.L_405b00:
  cmpb   $0x2f,(%r15,%rax,1)
  movl   $0x1,%r13d
  movl   $0x1,0x8(%rsp)
  je     .L_405d42
.L_405b19:
  addq   %r12,%r13
  leaq   0xe(%r13),%rdi
  callq  .L_401630
  testq  %rax,%rax
  movq   %rax,%rbp
  je     .L_405df2
  movq   %r12,%rdx
  movq   %r15,%rsi
  movq   %rax,%rdi
  callq  .L_401610
  movl   0x8(%rsp),%edx
  testl  %edx,%edx
  je     .L_405b4d
  movb   $0x2f,0x0(%rbp,%r12,1)
.L_405b4d:
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
  js     .L_405d28
  movl   $0x405f67,%esi
  movl   %eax,%edi
  callq  .L_4016a0
  testq  %rax,%rax
  movq   %rax,%r15
  je     .L_405d20
  leaq   0x20(%rsp),%r12
  movq   $0x0,0x8(%rsp)
.L_405bb0:
  movq   0x8(%r15),%rax
  cmpq   0x10(%r15),%rax
  jae    .L_405d01
.L_405bbe:
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x8(%r15)
  movzbl (%rax),%edi
.L_405bc9:
  cmpl   $0x20,%edi
  je     .L_405bb0
  leal   -0x9(%rdi),%eax
  cmpl   $0x1,%eax
  jbe    .L_405bb0
  cmpl   $0x23,%edi
  je     .L_405d75
  movq   %r15,%rsi
  callq  .L_401660
  leaq   0x60(%rsp),%rcx
  xorl   %eax,%eax
  movq   %r12,%rdx
  movl   $0x40735f,%esi
  movq   %r15,%rdi
  callq  .L_401570
  cmpl   $0x1,%eax
  jle    .L_405d9c
  movq   %r12,%rdx
.L_405c0a:
  movl   (%rdx),%ecx
  addq   $0x4,%rdx
  leal   -0x1010101(%rcx),%eax
  notl   %ecx
  andl   %ecx,%eax
  andl   $0x80808080,%eax
  je     .L_405c0a
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
.L_405c44:
  movl   (%r10),%ecx
  addq   $0x4,%r10
  leal   -0x1010101(%rcx),%eax
  notl   %ecx
  andl   %ecx,%eax
  andl   $0x80808080,%eax
  je     .L_405c44
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
  jne    .L_405dbc
  leaq   0x2(%rax),%rcx
  leaq   0x3(%rax),%rdi
  movq   %rdx,0x18(%rsp)
  movq   %r10,0x10(%rsp)
  movq   %rcx,0x8(%rsp)
  callq  .L_401630
  movq   0x10(%rsp),%r10
  movq   0x18(%rsp),%rdx
  movq   %rax,%r13
.L_405cb8:
  testq  %r13,%r13
  je     .L_405e02
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
  jb     .L_405bbe
.L_405d01:
  movq   %r15,%rdi
  callq  .L_4013e0
  cmpl   $0xffffffff,%eax
  movl   %eax,%edi
  je     .L_405d9c
  jmpq   .L_405bc9
  nop
.L_405d20:
  movl   %r12d,%edi
  callq  .L_401580
.L_405d28:
  movl   $0x407081,%r14d
.L_405d2e:
  movq   %rbp,%rdi
  callq  .L_401400
.L_405d36:
  movq   %r14,0x203723(%rip)        
  jmpq   .L_405a6a
.L_405d42:
  xorl   %r13d,%r13d
  movl   $0x0,0x8(%rsp)
  jmpq   .L_405b19
.L_405d52:
  movq   %rax,%rdi
  callq  .L_4014e0
  testq  %rax,%rax
  movq   %rax,%r12
  je     .L_405d42
  leaq   -0x1(%rax),%rax
  jmpq   .L_405b00
  nop
.L_405d70:
  cmpl   $0xffffffff,%eax
  je     .L_405d93
.L_405d75:
  movq   0x8(%r15),%rax
  cmpq   0x10(%r15),%rax
  jae    .L_405e1d
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x8(%r15)
  movzbl (%rax),%eax
.L_405d8e:
  cmpl   $0xa,%eax
  jne    .L_405d70
.L_405d93:
  cmpl   $0xffffffff,%eax
  jne    .L_405bb0
.L_405d9c:
  movq   %r15,%rdi
  callq  .L_405710
  movq   0x8(%rsp),%rax
  testq  %rax,%rax
  je     .L_405d28
  movb   $0x0,(%r14,%rax,1)
  jmpq   .L_405d2e
.L_405dbc:
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
  jmpq   .L_405cb8
.L_405df2:
  movl   $0x407081,%r14d
  jmpq   .L_405d36
.L_405dfd:
  callq  .L_4014f0
.L_405e02:
  movq   %r14,%rdi
  movl   $0x407081,%r14d
  callq  .L_401400
  movq   %r15,%rdi
  callq  .L_405710
  jmpq   .L_405d2e
.L_405e1d:
  movq   %r15,%rdi
  callq  .L_4013e0
  jmpq   .L_405d8e
  nop
  pushq  %r15
  movl   %edi,%r15d
  pushq  %r14
  movq   %rsi,%r14
  pushq  %r13
  movq   %rdx,%r13
  pushq  %r12
  leaq   0x202fc8(%rip),%r12        
  pushq  %rbp
  leaq   0x202fc8(%rip),%rbp        
  pushq  %rbx
  subq   %r12,%rbp
  xorl   %ebx,%ebx
  sarq   $0x3,%rbp
  subq   $0x8,%rsp
  callq  .L_4013a8
  testq  %rbp,%rbp
  je     .L_405e86
  nop
.L_405e70:
  movq   %r13,%rdx
  movq   %r14,%rsi
  movl   %r15d,%edi
  callq  *(%r12,%rbx,8)
  addq   $0x1,%rbx
  cmpq   %rbp,%rbx
  jne    .L_405e70
.L_405e86:
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
  retq
  nop
  nop
.L_405eb0:
  leaq   0x203351(%rip),%rax        
  testq  %rax,%rax
  je     .L_405ec6
  movq   (%rax),%rdx
.L_405ebf:
  xorl   %esi,%esi
  jmpq   .L_401730
.L_405ec6:
  xorl   %edx,%edx
  jmpq    .L_405ebf
  .size .text, .-.text
