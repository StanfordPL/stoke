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
  callq  .L_404480
  movl   $0x407c01,%esi
  movl   $0x6,%edi
  callq  .L_4016b0
  movl   $0x406acd,%esi
  movl   $0x406abf,%edi
  callq  .L_4014b0
  movl   $0x406abf,%edi
  callq  .L_401490
  movl   $0x402ac0,%edi
  callq  .L_406a20
  movq   0x208a8e(%rip),%rdi        
  xorl   %ecx,%ecx
  movl   $0x1,%edx
  xorl   %esi,%esi
  callq  .L_4016d0
  movb   $0x0,0x49(%rsp)
.L_401835:
  xorl   %r8d,%r8d
  movl   $0x4074a0,%ecx
  movl   $0x406b10,%edx
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
  movb   $0x1,0x208a56(%rip)        
  movb   $0x0,0x208a4e(%rip)        
  movb   $0x0,0x208a46(%rip)        
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
  movb   $0x1,0x2089e8(%rip)        
  jmpq   .L_401835
.L_4018fd:
  movl   $0x1,%ebx
  jmpq   .L_401835
.L_401907:
  movb   $0x0,0x2089d5(%rip)        
  movb   $0x1,0x2089cd(%rip)        
  movb   $0x0,0x2089c5(%rip)        
  jmpq   .L_401835
.L_401921:
  cmpl   $0xffffff7d,%eax
  jne    .L_4019fa
  movq   0x20897d(%rip),%rdi        
  movq   0x2088de(%rip),%rcx        
  movl   $0x406adf,%r9d
  movq   $0x0,0x8(%rsp)
  movq   $0x406b03,(%rsp)
  movl   $0x406aec,%r8d
  movl   $0x406abb,%edx
  movl   $0x406afb,%esi
  xorl   %eax,%eax
  callq  .L_405f20
  xorl   %edi,%edi
  callq  .L_401740
.L_40196f:
  testl  %ebx,%ebx
  movq   $0x2a,0x208974(%rip)        
  movq   $0x28,0x208961(%rip)        
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
  cmpb   $0x0,0x208936(%rip)        
  je     .L_401a43
  testb  %r15b,%r15b
  je     .L_40239c
  cmpb   $0x0,0x20891e(%rip)        
  jne    .L_401a59
.L_4019c9:
  testb  %r15b,%r15b
  jne    .L_401a59
  cmpb   $0x0,0x208907(%rip)        
  je     .L_401a59
  movl   $0x5,%edx
  movl   $0x4072b0,%esi
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
  movb   $0x0,0x2088d8(%rip)        
  movb   $0x0,0x2088d0(%rip)        
  movb   $0x1,0x2088c8(%rip)        
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
  movl   $0x407160,%esi
  jmpq    .L_4019e5
.L_401a43:
  cmpb   $0x0,0x208898(%rip)        
  je     .L_4021c2
  testb  %r15b,%r15b
  je     .L_402403
.L_401a59:
  cmpl   $0xffffffff,%ebx
  movl   $0x0,%eax
  cmovel %eax,%ebx
  movslq 0x208855(%rip),%rax        
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
  movl   $0x406b15,%esi
  xorl   %edi,%edi
  movb   $0x1,0x20880d(%rip)        
  callq  .L_4014c0
  movq   0x2087c1(%rip),%rbp        
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
  movl   $0x4,%edx
  movl   $0x406a6a,%esi
  movq   %r8,%rdi
  movq   %r8,0x18(%rsp)
  callq  .L_401430
  testl  %eax,%eax
  movq   0x18(%rsp),%r8
  jne    .L_401bff
  xorl   %eax,%eax
  cmpb   $0x20,0x4(%r15,%r13,1)
  sete   %al
  addq   %rax,%r13
  cmpb   $0x28,0x4(%r15,%r13,1)
  leaq   0x4(%r13),%rax
  leaq   (%r15,%r13,1),%r8
  je     .L_40215e
.L_401bff:
  movq   %r14,%rsi
  xorl   %eax,%eax
  movq   %r8,%rdx
  subq   %r13,%rsi
  cmpb   $0x5c,(%r8)
  sete   %al
  addq   0x2086d8(%rip),%rax        
  cmpq   %rax,%rsi
  jb     .L_401da2
  addq   0x2086c0(%rip),%r13        
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
  cmpl   $0x1,0x2085a7(%rip)        
  je     .L_401c79
  leaq   0x2(%r13),%rsi
  movl   $0x0,0x208597(%rip)        
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
  cmpb   $0x0,0x20862e(%rip)        
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
  movl   $0x406b24,%esi
  callq  .L_4014c0
  movq   0x20(%rsp),%rcx
  movq   %rax,%rdx
  xorl   %esi,%esi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
  jmpq   .L_401b48
.L_401d00:
  movq   0x2085e1(%rip),%r13        
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
  cmpb   $0x0,0x208571(%rip)        
  jne    .L_401cc0
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x406b40,%esi
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
  movl   $0x4072f0,%esi
  callq  .L_4014c0
  movq   0x20(%rsp),%rcx
  movq   %rax,%rdx
  movl   $0x406a6a,%r9d
  movq   %rbx,%r8
  xorl   %esi,%esi
  xorl   %edi,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
  jmpq   .L_401cba
.L_401e00:
  cmpl   $0x0,0x208409(%rip)        
  je     .L_401da5
  movl   $0x1,0x2083fd(%rip)        
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
  movq   0x208448(%rip),%rdi        
  movq   0x28(%rdi),%rax
  cmpq   0x30(%rdi),%rax
  jae    .L_4024a7
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x28(%rdi)
  movb   $0x5c,(%rax)
.L_401e81:
  movq   0x208428(%rip),%rcx        
  movl   $0x4,%edx
  movl   $0x1,%esi
  movl   $0x406a6a,%edi
  callq  .L_401680
  movq   0x20840d(%rip),%rcx        
  movl   $0x2,%edx
  movl   $0x1,%esi
  movl   $0x406b7a,%edi
  callq  .L_401680
  movq   0x20(%rsp),%rdi
  callq  .L_402640
  movq   0x2083e8(%rip),%rcx        
  movl   $0x4,%edx
  movl   $0x1,%esi
  movl   $0x406b7d,%edi
  callq  .L_401680
.L_401edc:
  xorl   %ebx,%ebx
  jmpq    .L_401efd
.L_401ee0:
  movzbl 0x80(%rsp,%rbx,1),%edx
  movl   $0x406b82,%esi
  movl   $0x1,%edi
  xorl   %eax,%eax
  addq   $0x1,%rbx
  callq  .L_4016c0
.L_401efd:
  movq   0x2083e4(%rip),%rax        
  shrq $0x1,  %rax
  cmpq   %rax,%rbx
  jb     .L_401ee0
  cmpb   $0x0,0x49(%rsp)
  jne    .L_401f61
  movq   0x208396(%rip),%rdi        
  movq   0x28(%rdi),%rax
  cmpq   0x30(%rdi),%rax
  jae    .L_4024c5
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x28(%rdi)
  movb   $0x20,(%rax)
.L_401f33:
  movq   0x208376(%rip),%rdi        
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
  movq   0x208348(%rip),%rdi        
  movq   0x28(%rdi),%rax
  cmpq   0x30(%rdi),%rax
  jae    .L_402498
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x28(%rdi)
  movb   $0xa,(%rax)
.L_401f81:
  addl   $0x1,0x208338(%rip)        
  movslq 0x208331(%rip),%rax        
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
  cmpb   $0x0,0x20831d(%rip)        
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
  cmpb   $0x0,0x2082e5(%rip)        
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
  movl   $0x407418,%edx
  movl   $0x407448,%esi
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
  movl   $0x406aea,%esi
  callq  .L_4043e0
  testq  %rax,%rax
  movq   %rax,%rbp
  movb   $0x0,0x4b(%rsp)
  jne    .L_401b01
.L_40208b:
  callq  .L_401420
  movq   0x20(%rsp),%rcx
  movl   (%rax),%esi
  movl   $0x407615,%edx
  xorl   %eax,%eax
  xorl   %edi,%edi
  callq  .L_4016e0
  xorl   %eax,%eax
  jmpq   .L_40200d
.L_4020ac:
  movb   $0x0,0x6e(%rsp)
  jmpq   .L_401f81
.L_4020b6:
  movq   0x20822b(%rip),%r14        
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
  movsbl 0x407480(%rcx),%ecx
  cmpl   %ecx,(%rax,%rsi,4)
  jne    .L_402476
  movzbl 0x1(%r12,%r13,2),%ecx
  andl   $0xf,%edx
  movsbl 0x407480(%rdx),%edx
  cmpl   %edx,(%rax,%rcx,4)
  jne    .L_402476
  addq   $0x1,%r13
.L_402110:
  cmpq   %r14,%r13
  jne    .L_4020c5
  cmpb   $0x0,0x2081c7(%rip)        
  jne    .L_401cc0
  cmpb   $0x0,0x2081b8(%rip)        
  jne    .L_401cc0
  movl   $0x5,%edx
  movl   $0x406b68,%esi
.L_402139:
  xorl   %edi,%edi
  callq  .L_4014c0
  movq   0x38(%rsp),%rdx
  movq   %rax,%rcx
  movl   $0x406b60,%esi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  jmpq   .L_401cc0
.L_40215e:
  movq   %r14,%rcx
  subq   %rax,%rcx
  cmpq   $0x1,%rcx
  je     .L_402197
  leaq   0x5(%r15,%r13,1),%r15
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
  movl   $0x407138,%esi
  jmpq   .L_4019e5
.L_4021c2:
  cmpb   $0x0,0x208118(%rip)        
  je     .L_4019c9
  testb  %r15b,%r15b
  jne    .L_401a59
  movl   $0x5,%edx
  movl   $0x407270,%esi
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
  movq   0x2080a1(%rip),%rdi        
  movq   0x28(%rdi),%rax
  cmpq   0x30(%rdi),%rax
  jae    .L_402467
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x28(%rdi)
  movb   $0x5c,(%rax)
  jmpq   .L_401edc
.L_40222d:
  movq   %rbp,%rdi
  callq  .L_406280
  testl  %eax,%eax
  je     .L_401fb3
  nop
  jmpq   .L_40208b
.L_402245:
  movl   $0x5,%edx
  movl   $0x407320,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movq   0x20(%rsp),%rcx
  movq   %rax,%rdx
  movl   $0x406a6a,%r8d
  xorl   %eax,%eax
  xorl   %esi,%esi
  xorl   %edi,%edi
  callq  .L_4016e0
  xorl   %eax,%eax
  jmpq   .L_40200a
.L_402276:
  cmpb   $0x0,0x20807b(%rip)        
  jne    .L_4023ab
.L_402283:
  xorl   %edi,%edi
  cmpb   $0x0,0x6e(%rsp)
  sete   %dil
  callq  .L_401740
.L_402293:
  movl   $0x5,%edx
  movl   $0x406b6b,%esi
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
  movl   $0x4071a0,%esi
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
  movl   $0x407358,%edx
  movl   $0x407388,%esi
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
  movl   $0x4073b8,%edx
  movl   $0x4073e8,%esi
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
  movl   $0x4071f0,%esi
  jmpq   .L_4019e5
.L_4023ab:
  movq   0x207f06(%rip),%rdi        
  callq  .L_406280
  addl   $0x1,%eax
  jne    .L_402283
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x406b15,%esi
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
  movq   $0x4076a2,0x0(%r13,%rdx,8)
  jmpq   .L_401a73
.L_402403:
  movl   $0x5,%edx
  movl   $0x407230,%esi
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
  cmpb   $0x0,0x207e60(%rip)        
  jne    .L_401cc0
  movl   $0x5,%edx
  movl   $0x406b59,%esi
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
  movq   $0x406a10,%r8
  movq   $0x4069a0,%rcx
  movq   $0x4017b0,%rdi
  callq  .L_4015a0
  retq
  nop
.L_402500:
  movl   $0x60a29f,%eax
  pushq  %rbp
  subq   $0x60a298,%rax
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
  movl   $0x60a298,%edi
  jmpq   *%rax
  nop
.L_402530:
  movl   $0x60a298,%eax
  pushq  %rbp
  subq   $0x60a298,%rax
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
  movl   $0x60a298,%edi
  jmpq   *%rdx
  nop
  cmpb   $0x0,0x207d61(%rip)        
  jne    .L_40258a
  pushq  %rbp
  movq   %rsp,%rbp
  callq  .L_402500
  popq   %rbp
  movb   $0x1,0x207d4e(%rip)        
.L_40258a:
  retq
  nop
  cmpq   $0x0,0x207888(%rip)        
  je     .L_4025b8
  movl   $0x0,%eax
  testq  %rax,%rax
  je     .L_4025b8
  pushq  %rbp
  movl   $0x609e20,%edi
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
  movq   0x207c59(%rip),%rcx        
  movl   $0x2,%edx
  movl   $0x1,%esi
  movl   $0x406a67,%edi
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
  movq   0x207c2b(%rip),%rdi        
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
  movq   0x207bf9(%rip),%rcx        
  movl   $0x2,%edx
  movl   $0x1,%esi
  movl   $0x406a64,%edi
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
  movl   $0x406aea,%esi
  movq   %rbp,%rdi
  callq  .L_4043e0
  testq  %rax,%rax
  movq   %rax,%rbx
  je     .L_40272c
  movq   %rax,%rdi
  movl   $0x2,%esi
  callq  .L_4043b0
  movq   %r12,%rsi
  movq   %rbx,%rdi
  callq  .L_4041d0
  testl  %eax,%eax
  jne    .L_402790
  movq   %rbx,%rdi
  callq  .L_406280
  testl  %eax,%eax
  je     .L_402780
.L_40272c:
  callq  .L_401420
  movl   (%rax),%esi
  movq   %rbp,%rcx
  xorl   %eax,%eax
  movl   $0x407615,%edx
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
  movq   0x207b5b(%rip),%rbx        
  movl   $0x2,%esi
  movb   $0x1,0x207b8f(%rip)        
  movq   %rbx,%rdi
  callq  .L_4043b0
  movq   %r12,%rsi
  movq   %rbx,%rdi
  callq  .L_4041d0
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
  movl   $0x407615,%edx
  xorl   %ebp,%ebp
  callq  .L_4016e0
  cmpq   0x207b07(%rip),%rbx        
  je     .L_402785
  movq   %rbx,%rdi
  callq  .L_406280
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
  movq   0x207b2a(%rip),%rbp        
  je     .L_402814
  movl   $0x406bc8,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movq   0x207ad5(%rip),%rdi        
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
  movl   $0x406bf0,%esi
  callq  .L_4014c0
  movl   $0xa0,%r8d
  movl   $0x406a6a,%ecx
  movq   %rbp,%rdx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movq   0x207a6c(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x406c70,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x406ca0,%esi
  callq  .L_4014c0
  movl   $0x406a6a,%edx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movq   0x207a24(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x406ce8,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  movq   0x207a01(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x406d20,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  movq   0x2079de(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x406d58,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  movq   0x2079bb(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x406e80,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  movq   0x207998(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x406ed0,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  movq   0x207975(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x406f00,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x406f38,%esi
  callq  .L_4014c0
  movl   $0x406a6f,%edx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movq   0x20798d(%rip),%rdi        
  callq  .L_404300
  xorl   %edi,%edi
  movq   %rax,%rbp
  movl   $0x5,%edx
  movl   $0x406a7a,%esi
  callq  .L_4014c0
  movl   $0x406a91,%ecx
  movq   %rbp,%rdx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x406aa7,%esi
  callq  .L_4014c0
  movl   $0x407040,%ecx
  movq   %rax,%rsi
  movl   $0x406abb,%edx
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movq   0x2078cc(%rip),%rbp        
  movl   $0x5,%edx
  xorl   %edi,%edi
  movl   $0x407068,%esi
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
  movl   $0x406ac9,%esi
  movq   %rax,%rdi
  callq  .L_401430
  testl  %eax,%eax
  jne    .L_402a5e
.L_402a27:
  movq   0x2078e2(%rip),%rdi        
  callq  .L_404300
  xorl   %edi,%edi
  movq   %rax,%rbp
  movl   $0x5,%edx
  movl   $0x4070f0,%esi
  callq  .L_4014c0
  movq   %rbp,%rdx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  jmpq   .L_40280d
.L_402a5e:
  movq   0x2078ab(%rip),%rdi        
  callq  .L_404300
  xorl   %edi,%edi
  movq   %rax,%rbp
  movl   $0x5,%edx
  movl   $0x4070a8,%esi
  callq  .L_4014c0
  movq   %rbp,%rdx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  jmpq    .L_402a27
  nop
  nop
  movq   %rdi,0x207861(%rip)        
  retq   
  nop
  movb   %dil,0x207849(%rip)        
  retq   
  nop
  pushq  %rbp
  pushq  %rbx
  subq   $0x8,%rsp
  movq   0x2077e3(%rip),%rdi        
  callq  .L_4064f0
  testl  %eax,%eax
  je     .L_402ae9
  cmpb   $0x0,0x207823(%rip)        
  je     .L_402b00
  callq  .L_401420
  cmpl   $0x20,(%rax)
  jne    .L_402b00
.L_402ae9:
  movq   0x2077e0(%rip),%rdi        
  callq  .L_4064f0
  testl  %eax,%eax
  jne    .L_402b43
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  retq   
.L_402b00:
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x407605,%esi
  callq  .L_4014c0
  movq   0x2077f0(%rip),%rdi        
  movq   %rax,%rbx
  testq  %rdi,%rdi
  je     .L_402b4e
  callq  .L_405890
  movq   %rax,%rbp
  callq  .L_401420
  movl   (%rax),%esi
  movq   %rbx,%r8
  movq   %rbp,%rcx
  movl   $0x407611,%edx
  xorl   %edi,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
.L_402b43:
  movl   0x2076d7(%rip),%edi        
  callq  .L_401440
.L_402b4e:
  callq  .L_401420
  movl   (%rax),%esi
  movq   %rbx,%rcx
  movl   $0x407615,%edx
  xorl   %edi,%edi
  xorl   %eax,%eax
  callq  .L_4016e0
  jmpq    .L_402b43
  nop
  movl   $0x67452301,(%rdi)
  movl   $0xefcdab89,0x4(%rdi)
  movl   $0x98badcfe,0x8(%rdi)
  movl   $0x10325476,0xc(%rdi)
  movl   $0xc3d2e1f0,0x10(%rdi)
  movl   $0x0,0x18(%rdi)
  movl   $0x0,0x14(%rdi)
  movl   $0x0,0x1c(%rdi)
  retq   
  nop
.L_402bb0:
  movl   (%rdi),%edx
  movq   %rsi,%rax
  bswap  %edx
  movl   %edx,(%rsi)
  movl   0x4(%rdi),%edx
  bswap  %edx
  movl   %edx,0x4(%rsi)
  movl   0x8(%rdi),%edx
  bswap  %edx
  movl   %edx,0x8(%rsi)
  movl   0xc(%rdi),%edx
  bswap  %edx
  movl   %edx,0xc(%rsi)
  movl   0x10(%rdi),%edx
  bswap  %edx
  movl   %edx,0x10(%rsi)
  retq   
  nop
.L_402be0:
  pushq  %r15
  movq   %rsi,%rax
  movq   %rdi,%rcx
  andq   $0xfffffffffffffffc,%rax
  pushq  %r14
  addq   %rdi,%rax
  movq   %rax,%rdi
  pushq  %r13
  pushq  %r12
  pushq  %rbp
  pushq  %rbx
  movq   %rdx,%rbx
  subq   $0x24,%rsp
  movq   %rax,-0x34(%rsp)
  movl   (%rdx),%eax
  movq   %rdx,-0x2c(%rsp)
  movl   %eax,-0x48(%rsp)
  movl   0x4(%rdx),%eax
  movl   %eax,-0x44(%rsp)
  movl   0x8(%rdx),%eax
  movl   %eax,-0x40(%rsp)
  movl   0xc(%rdx),%eax
  movl   %eax,-0x3c(%rsp)
  movl   0x10(%rdx),%eax
  movl   %eax,-0x38(%rsp)
  movl   0x14(%rdx),%eax
  addl   %esi,%eax
  movl   %eax,0x14(%rdx)
  movq   %rsi,%rdx
  shrq   $0x20,%rdx
  addl   0x18(%rbx),%edx
  cmpl   %eax,%esi
  seta   %al
  movzbl %al,%eax
  addl   %edx,%eax
  cmpq   %rdi,%rcx
  movl   %eax,0x18(%rbx)
  jae    .L_403f2a
  movq   %rcx,%rax
  nop
.L_402c60:
  xorl   %edx,%edx
  nop
.L_402c68:
  movl   (%rax,%rdx,1),%ecx
  bswap  %ecx
  movl   %ecx,-0x24(%rsp,%rdx,1)
  addq   $0x4,%rdx
  cmpq   $0x40,%rdx
  jne    .L_402c68
  movl   -0x24(%rsp),%r11d
  movl   -0x38(%rsp),%ebx
  addq   $0x40,%rax
  movl   -0x48(%rsp),%edi
  movl   -0x40(%rsp),%r15d
  movl   -0x44(%rsp),%r8d
  movl   -0x20(%rsp),%r10d
  leal   0x5a827999(%r11,%rbx,1),%esi
  movl   -0x3c(%rsp),%ebx
  movl   -0x18(%rsp),%ebp
  movl   %edi,%edx
  movl   -0x14(%rsp),%r12d
  movl   -0x10(%rsp),%r14d
  rorl   $0x1b,%edx
  addl   %edx,%esi
  movl   %ebx,%edx
  leal   0x5a827999(%r10,%rbx,1),%ecx
  xorl   %r15d,%edx
  andl   %r8d,%edx
  rorl   $0x2,%r8d
  xorl   %ebx,%edx
  movl   -0x1c(%rsp),%ebx
  addl   %edx,%esi
  movl   %r15d,%edx
  xorl   %r8d,%edx
  andl   %edi,%edx
  rorl   $0x2,%edi
  leal   0x5a827999(%rbx,%r15,1),%r9d
  xorl   %r15d,%edx
  addl   %ecx,%edx
  movl   %esi,%ecx
  rorl   $0x1b,%ecx
  addl   %edx,%ecx
  movl   %edi,%edx
  xorl   %r8d,%edx
  andl   %esi,%edx
  rorl   $0x2,%esi
  xorl   %r8d,%edx
  addl   %r9d,%edx
  movl   %ecx,%r9d
  rorl   $0x1b,%r9d
  addl   %r9d,%edx
  leal   0x5a827999(%r8,%rbp,1),%r9d
  movl   %esi,%r8d
  xorl   %edi,%r8d
  andl   %ecx,%r8d
  rorl   $0x2,%ecx
  xorl   %edi,%r8d
  movl   %ecx,%r15d
  addl   %r9d,%r8d
  movl   %edx,%r9d
  xorl   %esi,%r15d
  rorl   $0x1b,%r9d
  addl   %r9d,%r8d
  leal   0x5a827999(%rdi,%r12,1),%r9d
  movl   %r15d,%edi
  andl   %edx,%edi
  movl   -0xc(%rsp),%r15d
  xorl   %esi,%edi
  addl   %r9d,%edi
  movl   %r8d,%r9d
  rorl   $0x1b,%r9d
  rorl   $0x2,%edx
  addl   %r9d,%edi
  leal   0x5a827999(%rsi,%r14,1),%r9d
  movl   %edx,%esi
  xorl   %ecx,%esi
  andl   %r8d,%esi
  rorl   $0x2,%r8d
  xorl   %ecx,%esi
  addl   %r9d,%esi
  movl   %edi,%r9d
  rorl   $0x1b,%r9d
  addl   %r9d,%esi
  leal   0x5a827999(%rcx,%r15,1),%r9d
  movl   %r8d,%ecx
  xorl   %edx,%ecx
  andl   %edi,%ecx
  rorl   $0x2,%edi
  xorl   %edx,%ecx
  addl   %r9d,%ecx
  movl   %esi,%r9d
  rorl   $0x1b,%r9d
  addl   %r9d,%ecx
  movl   -0x8(%rsp),%r9d
  leal   0x5a827999(%rdx,%r9,1),%r9d
  movl   %edi,%edx
  xorl   %r8d,%edx
  andl   %esi,%edx
  rorl   $0x2,%esi
  xorl   %r8d,%edx
  addl   %r9d,%edx
  movl   %ecx,%r9d
  rorl   $0x1b,%r9d
  addl   %r9d,%edx
  movl   -0x4(%rsp),%r9d
  leal   0x5a827999(%r8,%r9,1),%r9d
  movl   %esi,%r8d
  xorl   %edi,%r8d
  andl   %ecx,%r8d
  rorl   $0x2,%ecx
  xorl   %edi,%r8d
  movl   %ecx,%r13d
  addl   %r9d,%r8d
  movl   %edx,%r9d
  xorl   %esi,%r13d
  rorl   $0x1b,%r9d
  addl   %r9d,%r8d
  movl   (%rsp),%r9d
  leal   0x5a827999(%rdi,%r9,1),%r9d
  movl   %r13d,%edi
  andl   %edx,%edi
  xorl   %esi,%edi
  rorl   $0x2,%edx
  addl   %r9d,%edi
  movl   %r8d,%r9d
  rorl   $0x1b,%r9d
  addl   %r9d,%edi
  movl   0x4(%rsp),%r9d
  leal   0x5a827999(%rsi,%r9,1),%r9d
  movl   %edx,%esi
  xorl   %ecx,%esi
  andl   %r8d,%esi
  rorl   $0x2,%r8d
  xorl   %ecx,%esi
  addl   %r9d,%esi
  movl   %edi,%r9d
  rorl   $0x1b,%r9d
  addl   %r9d,%esi
  movl   0x8(%rsp),%r9d
  leal   0x5a827999(%rcx,%r9,1),%r9d
  movl   %r8d,%ecx
  xorl   %edx,%ecx
  andl   %edi,%ecx
  rorl   $0x2,%edi
  xorl   %edx,%ecx
  addl   %r9d,%ecx
  movl   %esi,%r9d
  rorl   $0x1b,%r9d
  addl   %r9d,%ecx
  movl   0xc(%rsp),%r9d
  leal   0x5a827999(%rdx,%r9,1),%r9d
  movl   %edi,%edx
  xorl   %r8d,%edx
  andl   %esi,%edx
  rorl   $0x2,%esi
  xorl   %r8d,%edx
  addl   %r9d,%edx
  movl   %ecx,%r9d
  rorl   $0x1b,%r9d
  addl   %r9d,%edx
  movl   0x10(%rsp),%r9d
  leal   0x5a827999(%r8,%r9,1),%r9d
  movl   %esi,%r8d
  xorl   %edi,%r8d
  andl   %ecx,%r8d
  rorl   $0x2,%ecx
  xorl   %edi,%r8d
  movl   %ecx,%r13d
  addl   %r9d,%r8d
  movl   %edx,%r9d
  rorl   $0x1b,%r9d
  addl   %r9d,%r8d
  movl   0x14(%rsp),%r9d
  xorl   %esi,%r13d
  xorl   %ebx,%r11d
  xorl   -0x4(%rsp),%r11d
  xorl   %ebp,%r10d
  xorl   0x10(%rsp),%r11d
  xorl   (%rsp),%r10d
  leal   0x5a827999(%rdi,%r9,1),%r9d
  movl   %r13d,%edi
  xorl   0x14(%rsp),%r10d
  andl   %edx,%edi
  rorl   $0x2,%edx
  xorl   %esi,%edi
  addl   %r9d,%edi
  movl   %r8d,%r9d
  rorl   $0x1f,%r11d
  rorl   $0x1b,%r9d
  rorl   $0x1f,%r10d
  addl   %r9d,%edi
  movl   0x18(%rsp),%r9d
  leal   0x5a827999(%rsi,%r9,1),%r9d
  movl   %edx,%esi
  xorl   %ecx,%esi
  andl   %r8d,%esi
  rorl   $0x2,%r8d
  xorl   %ecx,%esi
  addl   %r9d,%esi
  movl   %edi,%r9d
  rorl   $0x1b,%r9d
  addl   %r9d,%esi
  leal   0x5a827999(%rcx,%r11,1),%r9d
  movl   %r8d,%ecx
  xorl   %edx,%ecx
  andl   %edi,%ecx
  rorl   $0x2,%edi
  xorl   %edx,%ecx
  addl   %r9d,%ecx
  movl   %esi,%r9d
  rorl   $0x1b,%r9d
  addl   %r9d,%ecx
  leal   0x5a827999(%rdx,%r10,1),%r9d
  movl   %edi,%edx
  xorl   %r8d,%edx
  andl   %esi,%edx
  xorl   %r8d,%edx
  addl   %r9d,%edx
  movl   %ecx,%r9d
  rorl   $0x1b,%r9d
  xorl   %r12d,%ebx
  rorl   $0x2,%esi
  addl   %r9d,%edx
  movl   0x4(%rsp),%r9d
  xorl   %r15d,%r12d
  xorl   %ebx,%r9d
  xorl   0x18(%rsp),%r9d
  rorl   $0x1f,%r9d
  leal   0x5a827999(%r8,%r9,1),%ebx
  movl   %esi,%r8d
  xorl   %edi,%r8d
  andl   %ecx,%r8d
  rorl   $0x2,%ecx
  xorl   %edi,%r8d
  addl   %ebx,%r8d
  movl   %edx,%ebx
  rorl   $0x1b,%ebx
  addl   %r8d,%ebx
  movl   %ebp,%r8d
  movl   %ecx,%ebp
  xorl   %r14d,%r8d
  xorl   0x8(%rsp),%r8d
  xorl   %esi,%ebp
  xorl   %r11d,%r8d
  rorl   $0x1f,%r8d
  leal   0x5a827999(%rdi,%r8,1),%r13d
  movl   %ebp,%edi
  movl   %ebx,%ebp
  andl   %edx,%edi
  rorl   $0x1b,%ebp
  rorl   $0x2,%edx
  xorl   %esi,%edi
  addl   %edi,%r13d
  movl   0xc(%rsp),%edi
  addl   %ebp,%r13d
  xorl   %r12d,%edi
  xorl   %r10d,%edi
  rorl   $0x1f,%edi
  leal   0x6ed9eba1(%rsi,%rdi,1),%ebp
  movl   %edx,%esi
  xorl   %ecx,%esi
  xorl   %ebx,%esi
  addl   %ebp,%esi
  movl   %r13d,%ebp
  rorl   $0x1b,%ebp
  addl   %esi,%ebp
  movl   -0x8(%rsp),%esi
  rorl   $0x2,%ebx
  movl   %ebp,%r12d
  rorl   $0x1b,%r12d
  xorl   %r14d,%esi
  xorl   0x10(%rsp),%esi
  xorl   %r9d,%esi
  rorl   $0x1f,%esi
  leal   0x6ed9eba1(%rcx,%rsi,1),%r14d
  movl   %ebx,%ecx
  xorl   %edx,%ecx
  xorl   %r13d,%ecx
  rorl   $0x2,%r13d
  addl   %ecx,%r14d
  movl   -0x4(%rsp),%ecx
  addl   %r12d,%r14d
  xorl   %r15d,%ecx
  xorl   0x14(%rsp),%ecx
  xorl   %r8d,%ecx
  rorl   $0x1f,%ecx
  leal   0x6ed9eba1(%rdx,%rcx,1),%r12d
  movl   %r13d,%edx
  xorl   %ebx,%edx
  xorl   %ebp,%edx
  rorl   $0x2,%ebp
  addl   %r12d,%edx
  movl   %r14d,%r12d
  rorl   $0x1b,%r12d
  addl   %edx,%r12d
  movl   (%rsp),%edx
  xorl   -0x8(%rsp),%edx
  xorl   0x18(%rsp),%edx
  xorl   %edi,%edx
  rorl   $0x1f,%edx
  leal   0x6ed9eba1(%rbx,%rdx,1),%r15d
  movl   %ebp,%ebx
  xorl   %r13d,%ebx
  xorl   %r14d,%ebx
  rorl   $0x2,%r14d
  addl   %r15d,%ebx
  movl   %r12d,%r15d
  rorl   $0x1b,%r15d
  addl   %r15d,%ebx
  movl   0x4(%rsp),%r15d
  xorl   -0x4(%rsp),%r15d
  movl   %r15d,-0x78(%rsp)
  xorl   %r11d,-0x78(%rsp)
  xorl   %esi,-0x78(%rsp)
  rorl   $0x1f,-0x78(%rsp)
  movl   -0x78(%rsp),%r15d
  leal   0x6ed9eba1(%r13,%r15,1),%r15d
  movl   %r14d,%r13d
  xorl   %ebp,%r13d
  xorl   %r12d,%r13d
  rorl   $0x2,%r12d
  addl   %r15d,%r13d
  movl   %ebx,%r15d
  rorl   $0x1b,%r15d
  addl   %r15d,%r13d
  movl   0x8(%rsp),%r15d
  xorl   (%rsp),%r15d
  movl   %r15d,-0x74(%rsp)
  xorl   %r10d,-0x74(%rsp)
  xorl   %ecx,-0x74(%rsp)
  rorl   $0x1f,-0x74(%rsp)
  movl   -0x74(%rsp),%r15d
  leal   0x6ed9eba1(%rbp,%r15,1),%r15d
  movl   %r12d,%ebp
  xorl   %r14d,%ebp
  xorl   %ebx,%ebp
  rorl   $0x2,%ebx
  addl   %r15d,%ebp
  movl   %r13d,%r15d
  rorl   $0x1b,%r15d
  addl   %r15d,%ebp
  movl   0xc(%rsp),%r15d
  xorl   0x4(%rsp),%r15d
  movl   %r15d,-0x70(%rsp)
  xorl   %r9d,-0x70(%rsp)
  xorl   %edx,-0x70(%rsp)
  rorl   $0x1f,-0x70(%rsp)
  movl   -0x70(%rsp),%r15d
  leal   0x6ed9eba1(%r14,%r15,1),%r15d
  movl   %ebx,%r14d
  xorl   %r12d,%r14d
  xorl   %r13d,%r14d
  rorl   $0x2,%r13d
  addl   %r15d,%r14d
  movl   %ebp,%r15d
  rorl   $0x1b,%r15d
  addl   %r15d,%r14d
  movl   0x10(%rsp),%r15d
  xorl   0x8(%rsp),%r15d
  movl   %r15d,-0x6c(%rsp)
  movl   -0x78(%rsp),%r15d
  xorl   %r8d,-0x6c(%rsp)
  xorl   %r15d,-0x6c(%rsp)
  rorl   $0x1f,-0x6c(%rsp)
  movl   -0x6c(%rsp),%r15d
  leal   0x6ed9eba1(%r12,%r15,1),%r15d
  movl   %r13d,%r12d
  xorl   %ebx,%r12d
  xorl   %ebp,%r12d
  rorl   $0x2,%ebp
  addl   %r15d,%r12d
  movl   %r14d,%r15d
  rorl   $0x1b,%r15d
  addl   %r15d,%r12d
  movl   0x14(%rsp),%r15d
  xorl   0xc(%rsp),%r15d
  movl   %r15d,-0x68(%rsp)
  xorl   %edi,-0x68(%rsp)
  movl   -0x74(%rsp),%r15d
  xorl   %r15d,-0x68(%rsp)
  rorl   $0x1f,-0x68(%rsp)
  movl   -0x68(%rsp),%r15d
  leal   0x6ed9eba1(%rbx,%r15,1),%r15d
  movl   %ebp,%ebx
  xorl   %r13d,%ebx
  xorl   %r14d,%ebx
  rorl   $0x2,%r14d
  addl   %r15d,%ebx
  movl   %r12d,%r15d
  rorl   $0x1b,%r15d
  addl   %r15d,%ebx
  movl   0x18(%rsp),%r15d
  xorl   0x10(%rsp),%r15d
  movl   %r15d,-0x64(%rsp)
  xorl   %esi,-0x64(%rsp)
  movl   -0x70(%rsp),%r15d
  xorl   %r15d,-0x64(%rsp)
  rorl   $0x1f,-0x64(%rsp)
  movl   -0x64(%rsp),%r15d
  leal   0x6ed9eba1(%r13,%r15,1),%r15d
  movl   %r14d,%r13d
  xorl   %ebp,%r13d
  xorl   %r12d,%r13d
  rorl   $0x2,%r12d
  addl   %r15d,%r13d
  movl   %ebx,%r15d
  rorl   $0x1b,%r15d
  addl   %r15d,%r13d
  movl   0x14(%rsp),%r15d
  xorl   %r11d,%r15d
  movl   %r15d,-0x60(%rsp)
  xorl   %ecx,-0x60(%rsp)
  movl   -0x6c(%rsp),%r15d
  xorl   %r15d,-0x60(%rsp)
  rorl   $0x1f,-0x60(%rsp)
  movl   -0x60(%rsp),%r15d
  leal   0x6ed9eba1(%rbp,%r15,1),%r15d
  movl   %r12d,%ebp
  xorl   %r14d,%ebp
  xorl   %ebx,%ebp
  addl   %r15d,%ebp
  movl   %r13d,%r15d
  rorl   $0x1b,%r15d
  rorl   $0x2,%ebx
  xorl   %r9d,%r11d
  addl   %r15d,%ebp
  movl   0x18(%rsp),%r15d
  xorl   %r10d,%r15d
  movl   %r15d,-0x5c(%rsp)
  xorl   %edx,-0x5c(%rsp)
  movl   -0x68(%rsp),%r15d
  xorl   %r15d,-0x5c(%rsp)
  rorl   $0x1f,-0x5c(%rsp)
  movl   -0x5c(%rsp),%r15d
  leal   0x6ed9eba1(%r14,%r15,1),%r15d
  movl   %ebx,%r14d
  xorl   %r12d,%r14d
  xorl   %r13d,%r14d
  rorl   $0x2,%r13d
  addl   %r15d,%r14d
  movl   %ebp,%r15d
  rorl   $0x1b,%r15d
  addl   %r15d,%r14d
  movl   -0x78(%rsp),%r15d
  xorl   %r11d,%r15d
  xorl   -0x64(%rsp),%r15d
  movl   %r13d,%r11d
  xorl   %ebx,%r11d
  xorl   %ebp,%r11d
  rorl   $0x2,%ebp
  rorl   $0x1f,%r15d
  leal   0x6ed9eba1(%r12,%r15,1),%r12d
  addl   %r12d,%r11d
  movl   %r14d,%r12d
  rorl   $0x1b,%r12d
  addl   %r12d,%r11d
  movl   %r10d,%r12d
  movl   %ebp,%r10d
  xorl   %r8d,%r12d
  xorl   -0x74(%rsp),%r12d
  xorl   %r13d,%r10d
  xorl   -0x60(%rsp),%r12d
  xorl   %r14d,%r10d
  rorl   $0x2,%r14d
  rorl   $0x1f,%r12d
  leal   0x6ed9eba1(%rbx,%r12,1),%ebx
  addl   %ebx,%r10d
  movl   %r11d,%ebx
  rorl   $0x1b,%ebx
  addl   %ebx,%r10d
  xorl   %edi,%r9d
  movl   -0x70(%rsp),%ebx
  movl   %r9d,-0x58(%rsp)
  xorl   %ebx,-0x58(%rsp)
  movl   -0x5c(%rsp),%r9d
  xorl   %r9d,-0x58(%rsp)
  movl   %r14d,%r9d
  rorl   $0x1f,-0x58(%rsp)
  xorl   %ebp,%r9d
  movl   -0x58(%rsp),%ebx
  xorl   %r11d,%r9d
  rorl   $0x2,%r11d
  leal   0x6ed9eba1(%r13,%rbx,1),%ebx
  movl   %r10d,%r13d
  rorl   $0x1b,%r13d
  addl   %ebx,%r9d
  addl   %r13d,%r9d
  movl   %r8d,%r13d
  movl   %r11d,%r8d
  xorl   %esi,%r13d
  xorl   -0x6c(%rsp),%r13d
  xorl   %r14d,%r8d
  xorl   %r10d,%r8d
  rorl   $0x2,%r10d
  xorl   %edx,%esi
  xorl   %r15d,%r13d
  rorl   $0x1f,%r13d
  leal   0x6ed9eba1(%rbp,%r13,1),%ebx
  movl   %r9d,%ebp
  rorl   $0x1b,%ebp
  addl   %ebx,%r8d
  addl   %ebp,%r8d
  movl   %edi,%ebp
  movl   %r10d,%edi
  xorl   %ecx,%ebp
  xorl   -0x68(%rsp),%ebp
  xorl   %r11d,%edi
  xorl   %r9d,%edi
  rorl   $0x2,%r9d
  xorl   %r12d,%ebp
  rorl   $0x1f,%ebp
  leal   0x6ed9eba1(%r14,%rbp,1),%ebx
  addl   %ebx,%edi
  movl   %r8d,%ebx
  rorl   $0x1b,%ebx
  addl   %ebx,%edi
  movl   -0x64(%rsp),%ebx
  xorl   %esi,%ebx
  xorl   -0x58(%rsp),%ebx
  movl   %r9d,%esi
  rorl   $0x1f,%ebx
  xorl   %r10d,%esi
  xorl   -0x78(%rsp),%ecx
  leal   0x6ed9eba1(%r11,%rbx,1),%r11d
  xorl   %r8d,%esi
  rorl   $0x2,%r8d
  xorl   -0x74(%rsp),%edx
  addl   %r11d,%esi
  movl   %edi,%r11d
  rorl   $0x1b,%r11d
  addl   %r11d,%esi
  movl   -0x60(%rsp),%r11d
  movl   %esi,%r14d
  rorl   $0x1b,%r14d
  xorl   %ecx,%r11d
  movl   %r8d,%ecx
  xorl   %r13d,%r11d
  xorl   %r9d,%ecx
  rorl   $0x1f,%r11d
  xorl   %edi,%ecx
  rorl   $0x2,%edi
  leal   0x6ed9eba1(%r10,%r11,1),%r10d
  addl   %r10d,%ecx
  addl   %r14d,%ecx
  movl   -0x5c(%rsp),%r14d
  movl   %ecx,%r10d
  xorl   %edx,%r14d
  movl   %edi,%edx
  xorl   %ebp,%r14d
  xorl   %r8d,%edx
  rorl   $0x1f,%r14d
  xorl   %esi,%edx
  rorl   $0x2,%esi
  leal   0x6ed9eba1(%r9,%r14,1),%r9d
  addl   %r9d,%edx
  movl   %ecx,%r9d
  rorl   $0x1b,%r9d
  addl   %edx,%r9d
  movl   -0x78(%rsp),%edx
  xorl   -0x70(%rsp),%edx
  movl   %edx,-0x54(%rsp)
  xorl   %r15d,-0x54(%rsp)
  xorl   %ebx,-0x54(%rsp)
  rorl   $0x1f,-0x54(%rsp)
  movl   -0x54(%rsp),%edx
  leal   -0x70e44324(%r8,%rdx,1),%r8d
  movl   %r9d,%edx
  rorl   $0x1b,%edx
  addl   %edx,%r8d
  movl   %ecx,%edx
  orl    %esi,%edx
  andl   %esi,%r10d
  rorl   $0x2,%ecx
  andl   %edi,%edx
  orl    %r10d,%edx
  movl   -0x74(%rsp),%r10d
  xorl   -0x6c(%rsp),%r10d
  addl   %r8d,%edx
  movl   %r10d,-0x74(%rsp)
  xorl   %r12d,-0x74(%rsp)
  movl   %r9d,%r10d
  xorl   %r11d,-0x74(%rsp)
  andl   %ecx,%r10d
  rorl   $0x1f,-0x74(%rsp)
  movl   -0x74(%rsp),%r8d
  leal   -0x70e44324(%rdi,%r8,1),%r8d
  movl   %r9d,%edi
  rorl   $0x2,%r9d
  orl    %ecx,%edi
  andl   %esi,%edi
  orl    %r10d,%edi
  movl   -0x70(%rsp),%r10d
  xorl   -0x68(%rsp),%r10d
  addl   %r8d,%edi
  movl   %edx,%r8d
  rorl   $0x1b,%r8d
  addl   %r8d,%edi
  movl   -0x58(%rsp),%r8d
  movl   %r10d,-0x70(%rsp)
  xorl   %r8d,-0x70(%rsp)
  movl   %edx,%r10d
  xorl   %r14d,-0x70(%rsp)
  andl   %r9d,%r10d
  rorl   $0x1f,-0x70(%rsp)
  movl   -0x70(%rsp),%r8d
  leal   -0x70e44324(%rsi,%r8,1),%r8d
  movl   %edi,%esi
  rorl   $0x1b,%esi
  addl   %esi,%r8d
  movl   %edx,%esi
  rorl   $0x2,%edx
  orl    %r9d,%esi
  andl   %ecx,%esi
  orl    %r10d,%esi
  movl   -0x6c(%rsp),%r10d
  xorl   -0x64(%rsp),%r10d
  addl   %r8d,%esi
  movl   -0x54(%rsp),%r8d
  movl   %r10d,-0x6c(%rsp)
  xorl   %r13d,-0x6c(%rsp)
  xorl   %r8d,-0x6c(%rsp)
  rorl   $0x1f,-0x6c(%rsp)
  movl   -0x6c(%rsp),%r10d
  leal   -0x70e44324(%rcx,%r10,1),%r8d
  movl   %edi,%ecx
  movl   %edi,%r10d
  orl    %edx,%ecx
  andl   %edx,%r10d
  rorl   $0x2,%edi
  andl   %r9d,%ecx
  orl    %r10d,%ecx
  movl   %esi,%r10d
  addl   %r8d,%ecx
  rorl   $0x1b,%r10d
  addl   %r10d,%ecx
  movl   -0x68(%rsp),%r10d
  xorl   -0x60(%rsp),%r10d
  movl   %r10d,-0x68(%rsp)
  xorl   %ebp,-0x68(%rsp)
  movl   -0x74(%rsp),%r10d
  xorl   %r10d,-0x68(%rsp)
  movl   %esi,%r10d
  rorl   $0x1f,-0x68(%rsp)
  andl   %edi,%r10d
  movl   -0x68(%rsp),%r8d
  leal   -0x70e44324(%r9,%r8,1),%r9d
  movl   %ecx,%r8d
  rorl   $0x1b,%r8d
  addl   %r9d,%r8d
  movl   %esi,%r9d
  rorl   $0x2,%esi
  orl    %edi,%r9d
  andl   %edx,%r9d
  orl    %r10d,%r9d
  movl   -0x64(%rsp),%r10d
  xorl   -0x5c(%rsp),%r10d
  addl   %r8d,%r9d
  movl   -0x70(%rsp),%r8d
  movl   %r10d,-0x64(%rsp)
  xorl   %ebx,-0x64(%rsp)
  xorl   %r8d,-0x64(%rsp)
  rorl   $0x1f,-0x64(%rsp)
  movl   -0x64(%rsp),%r10d
  leal   -0x70e44324(%rdx,%r10,1),%r8d
  movl   %ecx,%edx
  movl   %ecx,%r10d
  orl    %esi,%edx
  andl   %esi,%r10d
  rorl   $0x2,%ecx
  andl   %edi,%edx
  orl    %r10d,%edx
  movl   %r9d,%r10d
  addl   %r8d,%edx
  rorl   $0x1b,%r10d
  addl   %r10d,%edx
  movl   -0x60(%rsp),%r10d
  xorl   %r15d,%r10d
  movl   %r10d,-0x78(%rsp)
  xorl   %r11d,-0x78(%rsp)
  movl   -0x6c(%rsp),%r10d
  xorl   %r10d,-0x78(%rsp)
  rorl   $0x1f,-0x78(%rsp)
  movl   -0x78(%rsp),%r10d
  xorl   -0x58(%rsp),%r15d
  leal   -0x70e44324(%rdi,%r10,1),%r8d
  movl   %edx,%edi
  movl   %r9d,%r10d
  rorl   $0x1b,%edi
  andl   %ecx,%r10d
  xorl   -0x54(%rsp),%r15d
  addl   %edi,%r8d
  movl   %r9d,%edi
  rorl   $0x2,%r9d
  orl    %ecx,%edi
  xorl   -0x64(%rsp),%r15d
  andl   %esi,%edi
  orl    %r10d,%edi
  movl   -0x5c(%rsp),%r10d
  addl   %r8d,%edi
  rorl   $0x1f,%r15d
  xorl   %r12d,%r10d
  movl   %r10d,-0x60(%rsp)
  xorl   %r14d,-0x60(%rsp)
  movl   -0x68(%rsp),%r10d
  xorl   %r10d,-0x60(%rsp)
  movl   %edx,%r10d
  rorl   $0x1f,-0x60(%rsp)
  andl   %r9d,%r10d
  movl   -0x60(%rsp),%r8d
  leal   -0x70e44324(%rsi,%r8,1),%r8d
  movl   %edx,%esi
  rorl   $0x2,%edx
  orl    %r9d,%esi
  andl   %ecx,%esi
  orl    %r10d,%esi
  movl   %edi,%r10d
  addl   %r8d,%esi
  rorl   $0x1b,%r10d
  leal   -0x70e44324(%rcx,%r15,1),%r8d
  addl   %r10d,%esi
  movl   %edi,%r10d
  movl   %esi,%ecx
  andl   %edx,%r10d
  rorl   $0x1b,%ecx
  addl   %ecx,%r8d
  movl   %edi,%ecx
  orl    %edx,%ecx
  andl   %r9d,%ecx
  orl    %r10d,%ecx
  xorl   %r13d,%r12d
  xorl   -0x74(%rsp),%r12d
  xorl   -0x78(%rsp),%r12d
  addl   %r8d,%ecx
  rorl   $0x2,%edi
  movl   %esi,%r10d
  xorl   %ebx,%r13d
  xorl   -0x6c(%rsp),%r13d
  andl   %edi,%r10d
  rorl   $0x1f,%r12d
  leal   -0x70e44324(%r9,%r12,1),%r8d
  movl   %esi,%r9d
  rorl   $0x2,%esi
  orl    %edi,%r9d
  xorl   %r15d,%r13d
  andl   %edx,%r9d
  rorl   $0x1f,%r13d
  orl    %r10d,%r9d
  movl   %ecx,%r10d
  addl   %r8d,%r9d
  movl   -0x58(%rsp),%r8d
  rorl   $0x1b,%r10d
  addl   %r10d,%r9d
  xorl   %ebp,%r8d
  movl   %r8d,-0x5c(%rsp)
  movl   -0x70(%rsp),%r8d
  xorl   %r8d,-0x5c(%rsp)
  movl   -0x60(%rsp),%r8d
  xorl   %r8d,-0x5c(%rsp)
  rorl   $0x1f,-0x5c(%rsp)
  movl   -0x5c(%rsp),%r10d
  leal   -0x70e44324(%rdx,%r10,1),%r8d
  movl   %r9d,%edx
  movl   %ecx,%r10d
  rorl   $0x1b,%edx
  andl   %esi,%r10d
  addl   %edx,%r8d
  movl   %ecx,%edx
  rorl   $0x2,%ecx
  orl    %esi,%edx
  andl   %edi,%edx
  orl    %r10d,%edx
  movl   %r9d,%r10d
  addl   %r8d,%edx
  leal   -0x70e44324(%rdi,%r13,1),%r8d
  movl   %r9d,%edi
  orl    %ecx,%edi
  andl   %esi,%edi
  andl   %ecx,%r10d
  xorl   %r11d,%ebp
  xorl   -0x68(%rsp),%ebp
  orl    %r10d,%edi
  movl   %edx,%r10d
  addl   %r8d,%edi
  rorl   $0x1b,%r10d
  rorl   $0x2,%r9d
  addl   %r10d,%edi
  movl   %edx,%r10d
  xorl   %r14d,%ebx
  andl   %r9d,%r10d
  movl   %ebx,-0x50(%rsp)
  movl   -0x64(%rsp),%ebx
  xorl   %r12d,%ebp
  xorl   %ebx,-0x50(%rsp)
  rorl   $0x1f,%ebp
  leal   -0x70e44324(%rsi,%rbp,1),%r8d
  movl   %edi,%esi
  rorl   $0x1b,%esi
  addl   %esi,%r8d
  movl   %edx,%esi
  rorl   $0x2,%edx
  orl    %r9d,%esi
  andl   %ecx,%esi
  orl    %r10d,%esi
  movl   -0x5c(%rsp),%r10d
  xorl   %r10d,-0x50(%rsp)
  rorl   $0x1f,-0x50(%rsp)
  addl   %r8d,%esi
  movl   %edi,%r10d
  movl   -0x50(%rsp),%ebx
  andl   %edx,%r10d
  leal   -0x70e44324(%rcx,%rbx,1),%r8d
  movl   %edi,%ecx
  movl   -0x54(%rsp),%ebx
  orl    %edx,%ecx
  rorl   $0x2,%edi
  andl   %r9d,%ecx
  orl    %r10d,%ecx
  xorl   %ebx,%r11d
  addl   %r8d,%ecx
  movl   %esi,%r8d
  movl   %r11d,-0x54(%rsp)
  rorl   $0x1b,%r8d
  addl   %r8d,%ecx
  movl   -0x78(%rsp),%r8d
  xorl   %r8d,-0x54(%rsp)
  xorl   %r13d,-0x54(%rsp)
  rorl   $0x1f,-0x54(%rsp)
  movl   -0x54(%rsp),%r11d
  leal   -0x70e44324(%r9,%r11,1),%r9d
  movl   %ecx,%r11d
  rorl   $0x1b,%r11d
  movl   %r11d,%r8d
  movl   %esi,%r11d
  addl   %r9d,%r8d
  movl   %esi,%r9d
  andl   %edi,%r11d
  orl    %edi,%r9d
  rorl   $0x2,%esi
  andl   %edx,%r9d
  orl    %r11d,%r9d
  movl   -0x74(%rsp),%r11d
  addl   %r8d,%r9d
  movl   %r9d,%r10d
  xorl   %r11d,%r14d
  movl   %r14d,-0x74(%rsp)
  movl   -0x60(%rsp),%r14d
  xorl   %r14d,-0x74(%rsp)
  xorl   %ebp,-0x74(%rsp)
  rorl   $0x1f,-0x74(%rsp)
  movl   -0x74(%rsp),%r14d
  leal   -0x70e44324(%rdx,%r14,1),%r8d
  movl   %ecx,%edx
  movl   %ecx,%r14d
  orl    %esi,%edx
  andl   %esi,%r14d
  rorl   $0x2,%ecx
  andl   %edi,%edx
  andl   %ecx,%r10d
  orl    %r14d,%edx
  movl   %r9d,%r14d
  addl   %r8d,%edx
  movl   %ebx,%r8d
  movl   -0x70(%rsp),%ebx
  rorl   $0x1b,%r14d
  addl   %r14d,%edx
  xorl   %ebx,%r8d
  movl   %r8d,%r14d
  xorl   %r15d,%r14d
  xorl   -0x50(%rsp),%r14d
  rorl   $0x1f,%r14d
  leal   -0x70e44324(%rdi,%r14,1),%r8d
  movl   %edx,%edi
  rorl   $0x1b,%edi
  addl   %edi,%r8d
  movl   %r9d,%edi
  rorl   $0x2,%r9d
  orl    %ecx,%edi
  andl   %esi,%edi
  orl    %r10d,%edi
  movl   %r11d,%r10d
  movl   -0x6c(%rsp),%r11d
  addl   %r8d,%edi
  movl   -0x54(%rsp),%r8d
  xorl   %r11d,%r10d
  movl   %r10d,-0x70(%rsp)
  xorl   %r12d,-0x70(%rsp)
  movl   %edx,%r10d
  xorl   %r8d,-0x70(%rsp)
  andl   %r9d,%r10d
  rorl   $0x1f,-0x70(%rsp)
  movl   -0x70(%rsp),%r8d
  leal   -0x70e44324(%rsi,%r8,1),%r8d
  movl   %edx,%esi
  rorl   $0x2,%edx
  orl    %r9d,%esi
  andl   %ecx,%esi
  orl    %r10d,%esi
  movl   %edi,%r10d
  addl   %r8d,%esi
  movl   %ebx,%r8d
  movl   -0x68(%rsp),%ebx
  rorl   $0x1b,%r10d
  addl   %r10d,%esi
  movl   -0x5c(%rsp),%r10d
  xorl   %ebx,%r8d
  movl   %r8d,-0x6c(%rsp)
  xorl   %r10d,-0x6c(%rsp)
  movl   -0x74(%rsp),%r8d
  xorl   %r8d,-0x6c(%rsp)
  rorl   $0x1f,-0x6c(%rsp)
  movl   -0x6c(%rsp),%r10d
  leal   -0x70e44324(%rcx,%r10,1),%r8d
  movl   %esi,%ecx
  movl   %edi,%r10d
  rorl   $0x1b,%ecx
  andl   %edx,%r10d
  addl   %ecx,%r8d
  movl   %edi,%ecx
  rorl   $0x2,%edi
  orl    %edx,%ecx
  andl   %r9d,%ecx
  orl    %r10d,%ecx
  movl   %r11d,%r10d
  movl   -0x64(%rsp),%r11d
  addl   %r8d,%ecx
  xorl   %r11d,%r10d
  movl   %r10d,-0x68(%rsp)
  xorl   %r13d,-0x68(%rsp)
  movl   %esi,%r10d
  xorl   %r14d,-0x68(%rsp)
  andl   %edi,%r10d
  rorl   $0x1f,-0x68(%rsp)
  movl   -0x68(%rsp),%r8d
  leal   -0x70e44324(%r9,%r8,1),%r8d
  movl   %esi,%r9d
  orl    %edi,%r9d
  andl   %edx,%r9d
  orl    %r10d,%r9d
  movl   %ecx,%r10d
  addl   %r8d,%r9d
  rorl   $0x1b,%r10d
  rorl   $0x2,%esi
  addl   %r10d,%r9d
  movl   -0x78(%rsp),%r10d
  xorl   %ebx,%r10d
  movl   -0x70(%rsp),%ebx
  movl   %r10d,-0x64(%rsp)
  xorl   %ebp,-0x64(%rsp)
  xorl   %ebx,-0x64(%rsp)
  rorl   $0x1f,-0x64(%rsp)
  movl   -0x64(%rsp),%ebx
  leal   -0x359d3e2a(%rdx,%rbx,1),%r8d
  movl   %r11d,%ebx
  movl   -0x60(%rsp),%r11d
  movl   %esi,%edx
  xorl   %edi,%edx
  xorl   %r11d,%ebx
  xorl   %ecx,%edx
  rorl   $0x2,%ecx
  movl   %ebx,-0x60(%rsp)
  movl   -0x50(%rsp),%ebx
  addl   %r8d,%edx
  xorl   %ebx,-0x60(%rsp)
  movl   %r9d,%r8d
  movl   -0x6c(%rsp),%ebx
  xorl   %ebx,-0x60(%rsp)
  rorl   $0x1b,%r8d
  movl   -0x78(%rsp),%r10d
  rorl   $0x1f,-0x60(%rsp)
  addl   %r8d,%edx
  movl   -0x54(%rsp),%ebx
  movl   -0x60(%rsp),%r8d
  xorl   %r15d,%r10d
  leal   -0x359d3e2a(%rdi,%r8,1),%r8d
  movl   %ecx,%edi
  movl   %r10d,-0x4c(%rsp)
  xorl   %esi,%edi
  xorl   %ebx,-0x4c(%rsp)
  movl   %r11d,%ebx
  xorl   %r9d,%edi
  rorl   $0x2,%r9d
  movl   -0x64(%rsp),%r11d
  addl   %r8d,%edi
  movl   %edx,%r8d
  movl   -0x5c(%rsp),%r10d
  rorl   $0x1b,%r8d
  addl   %edi,%r8d
  movl   -0x68(%rsp),%edi
  xorl   %edi,-0x4c(%rsp)
  rorl   $0x1f,-0x4c(%rsp)
  movl   -0x4c(%rsp),%edi
  leal   -0x359d3e2a(%rsi,%rdi,1),%edi
  movl   %r9d,%esi
  xorl   %ecx,%esi
  xorl   %edx,%esi
  rorl   $0x2,%edx
  addl   %edi,%esi
  movl   %r8d,%edi
  rorl   $0x1b,%edi
  addl   %esi,%edi
  xorl   %r12d,%ebx
  movl   -0x74(%rsp),%esi
  movl   %ebx,-0x78(%rsp)
  xorl   %esi,-0x78(%rsp)
  xorl   %r10d,%r15d
  xorl   %r11d,-0x78(%rsp)
  movl   %r15d,-0x5c(%rsp)
  xorl   %r13d,%r12d
  rorl   $0x1f,-0x78(%rsp)
  movl   -0x78(%rsp),%ebx
  leal   -0x359d3e2a(%rcx,%rbx,1),%esi
  movl   %edx,%ecx
  xorl   %r14d,-0x5c(%rsp)
  xorl   %r9d,%ecx
  xorl   %r8d,%ecx
  rorl   $0x2,%r8d
  addl   %esi,%ecx
  movl   %edi,%esi
  movl   %r8d,%r11d
  rorl   $0x1b,%esi
  xorl   %edx,%r11d
  addl   %ecx,%esi
  movl   -0x60(%rsp),%ecx
  xorl   %ecx,-0x5c(%rsp)
  rorl   $0x1f,-0x5c(%rsp)
  movl   %r12d,-0x58(%rsp)
  movl   -0x5c(%rsp),%ecx
  movl   -0x54(%rsp),%r12d
  leal   -0x359d3e2a(%r9,%rcx,1),%r9d
  movl   %ecx,-0x24(%rsp)
  movl   %r11d,%ecx
  xorl   %edi,%ecx
  movl   -0x70(%rsp),%r11d
  xorl   %r11d,-0x58(%rsp)
  addl   %r9d,%ecx
  movl   %esi,%r9d
  rorl   $0x2,%edi
  rorl   $0x1b,%r9d
  addl   %r9d,%ecx
  movl   -0x4c(%rsp),%r9d
  xorl   %r9d,-0x58(%rsp)
  movl   %ecx,%r15d
  rorl   $0x1f,-0x58(%rsp)
  rorl   $0x1b,%r15d
  movl   -0x58(%rsp),%r9d
  movl   %r9d,-0x20(%rsp)
  leal   -0x359d3e2a(%rdx,%r9,1),%r9d
  movl   %edi,%edx
  xorl   %r8d,%edx
  xorl   %esi,%edx
  rorl   $0x2,%esi
  addl   %r9d,%edx
  movl   %r10d,%r9d
  xorl   %ebp,%r9d
  xorl   -0x6c(%rsp),%r9d
  addl   %r15d,%edx
  movl   -0x50(%rsp),%r15d
  movl   %edx,%r10d
  xorl   %ebx,%r9d
  rorl   $0x1f,%r9d
  xorl   %r15d,%r13d
  xorl   %r12d,%ebp
  leal   -0x359d3e2a(%r8,%r9,1),%ebx
  movl   %esi,%r8d
  rorl   $0x1b,%r10d
  xorl   %edi,%r8d
  movl   %r9d,-0x1c(%rsp)
  xorl   %ecx,%r8d
  rorl   $0x2,%ecx
  addl   %r8d,%ebx
  movl   -0x68(%rsp),%r8d
  addl   %r10d,%ebx
  xorl   %r13d,%r8d
  xorl   -0x5c(%rsp),%r8d
  movl   %ecx,%r13d
  xorl   %esi,%r13d
  rorl   $0x1f,%r8d
  leal   -0x359d3e2a(%rdi,%r8,1),%r11d
  movl   %r13d,%edi
  movl   %ebx,%r13d
  xorl   %edx,%edi
  rorl   $0x2,%edx
  rorl   $0x1b,%r13d
  addl   %edi,%r11d
  movl   -0x64(%rsp),%edi
  movl   %r8d,-0x18(%rsp)
  addl   %r13d,%r11d
  xorl   %ebp,%edi
  xorl   -0x58(%rsp),%edi
  movl   %edx,%ebp
  xorl   %ecx,%ebp
  rorl   $0x1f,%edi
  leal   -0x359d3e2a(%rsi,%rdi,1),%r10d
  movl   %ebp,%esi
  movl   %r11d,%ebp
  xorl   %ebx,%esi
  rorl   $0x1b,%ebp
  rorl   $0x2,%ebx
  addl   %r10d,%esi
  movl   %ebp,%r10d
  movl   %ebx,%ebp
  addl   %esi,%r10d
  movl   -0x74(%rsp),%esi
  xorl   %edx,%ebp
  movl   %edi,-0x14(%rsp)
  xorl   %r15d,%esi
  xorl   -0x60(%rsp),%esi
  xorl   %r9d,%esi
  rorl   $0x1f,%esi
  leal   -0x359d3e2a(%rcx,%rsi,1),%r15d
  movl   %ebp,%ecx
  movl   %r10d,%ebp
  xorl   %r11d,%ecx
  movl   %esi,-0x10(%rsp)
  addl   %ecx,%r15d
  movl   %r12d,%ecx
  rorl   $0x2,%r11d
  xorl   %r14d,%ecx
  xorl   -0x4c(%rsp),%ecx
  rorl   $0x1b,%ebp
  addl   %ebp,%r15d
  xorl   %r8d,%ecx
  rorl   $0x1f,%ecx
  leal   -0x359d3e2a(%rdx,%rcx,1),%ebp
  movl   %r11d,%edx
  movl   %ecx,-0xc(%rsp)
  xorl   %ebx,%edx
  xorl   %r10d,%edx
  rorl   $0x2,%r10d
  addl   %ebp,%edx
  movl   %r15d,%ebp
  rorl   $0x1b,%ebp
  leal   (%rdx,%rbp,1),%r13d
  movl   -0x74(%rsp),%edx
  xorl   -0x70(%rsp),%edx
  xorl   -0x78(%rsp),%edx
  movl   %r10d,%ebp
  xorl   %r11d,%ebp
  xorl   %edi,%edx
  rorl   $0x1f,%edx
  leal   -0x359d3e2a(%rbx,%rdx,1),%r12d
  movl   %ebp,%ebx
  movl   %r13d,%ebp
  xorl   %r15d,%ebx
  rorl   $0x1b,%ebp
  movl   %edx,-0x8(%rsp)
  addl   %ebx,%r12d
  movl   -0x5c(%rsp),%ebx
  rorl   $0x2,%r15d
  addl   %ebp,%r12d
  movl   -0x6c(%rsp),%ebp
  xorl   %r14d,%ebp
  xorl   %ebp,%ebx
  xorl   %esi,%ebx
  rorl   $0x1f,%ebx
  leal   -0x359d3e2a(%r11,%rbx,1),%ebp
  movl   %r15d,%r11d
  movl   %ebx,-0x4(%rsp)
  xorl   %r10d,%r11d
  xorl   %r13d,%r11d
  rorl   $0x2,%r13d
  addl   %ebp,%r11d
  movl   %r12d,%ebp
  movl   %r13d,%r14d
  rorl   $0x1b,%ebp
  addl   %r11d,%ebp
  movl   -0x70(%rsp),%r11d
  xorl   -0x68(%rsp),%r11d
  xorl   -0x58(%rsp),%r11d
  xorl   %ecx,%r11d
  rorl   $0x1f,%r11d
  leal   -0x359d3e2a(%r10,%r11,1),%r13d
  movl   %r14d,%r10d
  movl   %r11d,(%rsp)
  xorl   %r15d,%r10d
  xorl   %r12d,%r10d
  rorl   $0x2,%r12d
  addl   %r13d,%r10d
  movl   %ebp,%r13d
  rorl   $0x1b,%r13d
  addl   %r10d,%r13d
  movl   -0x6c(%rsp),%r10d
  xorl   -0x64(%rsp),%r10d
  xorl   %r9d,%r10d
  movl   %r12d,%r9d
  xorl   %edx,%r10d
  xorl   %r14d,%r9d
  rorl   $0x1f,%r10d
  xorl   %ebp,%r9d
  rorl   $0x2,%ebp
  leal   -0x359d3e2a(%r15,%r10,1),%r15d
  movl   %r10d,0x4(%rsp)
  addl   %r15d,%r9d
  movl   %r13d,%r15d
  rorl   $0x1b,%r15d
  addl   %r9d,%r15d
  movl   -0x68(%rsp),%r9d
  xorl   -0x60(%rsp),%r9d
  xorl   %r8d,%r9d
  movl   %ebp,%r8d
  xorl   %ebx,%r9d
  xorl   %r12d,%r8d
  rorl   $0x1f,%r9d
  xorl   %r13d,%r8d
  rorl   $0x2,%r13d
  leal   -0x359d3e2a(%r14,%r9,1),%ebx
  movl   -0x4c(%rsp),%r14d
  movl   %r9d,0x8(%rsp)
  addl   %ebx,%r8d
  movl   %r15d,%ebx
  rorl   $0x1b,%ebx
  addl   %r8d,%ebx
  movl   -0x64(%rsp),%r8d
  xorl   %r14d,%r8d
  xorl   %edi,%r8d
  movl   %r13d,%edi
  xorl   %r11d,%r8d
  rorl   $0x1f,%r8d
  xorl   %ebp,%edi
  leal   -0x359d3e2a(%r12,%r8,1),%r11d
  xorl   %r15d,%edi
  movl   -0x78(%rsp),%r12d
  rorl   $0x2,%r15d
  movl   %r8d,0xc(%rsp)
  addl   %r11d,%edi
  movl   %ebx,%r11d
  rorl   $0x1b,%r11d
  addl   %r11d,%edi
  movl   -0x60(%rsp),%r11d
  xorl   %r12d,%r11d
  xorl   %esi,%r11d
  movl   %r15d,%esi
  xorl   %r10d,%r11d
  xorl   %r13d,%esi
  rorl   $0x1f,%r11d
  xorl   %ebx,%esi
  rorl   $0x2,%ebx
  leal   -0x359d3e2a(%rbp,%r11,1),%r10d
  movl   %r11d,0x10(%rsp)
  movl   %edi,%r11d
  rorl   $0x1b,%r11d
  addl   %r10d,%esi
  movl   -0x5c(%rsp),%r10d
  addl   %r11d,%esi
  movl   %esi,%r11d
  xorl   %r14d,%r10d
  movl   -0x48(%rsp),%r14d
  rorl   $0x1b,%r11d
  xorl   %ecx,%r10d
  movl   %ebx,%ecx
  xorl   %r9d,%r10d
  xorl   %r15d,%ecx
  rorl   $0x1f,%r10d
  xorl   %edi,%ecx
  rorl   $0x2,%edi
  leal   -0x359d3e2a(%r13,%r10,1),%r9d
  movl   %r10d,0x14(%rsp)
  addl   %r9d,%ecx
  movl   -0x58(%rsp),%r9d
  addl   %r11d,%ecx
  xorl   %r12d,%r9d
  xorl   %edx,%r9d
  movl   %esi,%edx
  xorl   %r8d,%r9d
  rorl   $0x2,%edx
  rorl   $0x1f,%r9d
  leal   -0x359d3e2a(%r14,%r9,1),%r8d
  movl   %r9d,0x18(%rsp)
  addl   %r8d,%r15d
  movl   %edi,%r8d
  xorl   %ebx,%r8d
  addl   %ecx,-0x44(%rsp)
  addl   %edx,-0x40(%rsp)
  xorl   %esi,%r8d
  movl   %ecx,%esi
  movl   -0x44(%rsp),%ecx
  addl   %r15d,%r8d
  rorl   $0x1b,%esi
  addl   %r8d,%esi
  movl   %esi,%r14d
  movl   %esi,-0x48(%rsp)
  movq   -0x2c(%rsp),%rsi
  movl   %ecx,0x4(%rsi)
  movl   -0x40(%rsp),%ecx
  movl   %r14d,(%rsi)
  movl   %ecx,0x8(%rsi)
  addl   %edi,-0x3c(%rsp)
  addl   %ebx,-0x38(%rsp)
  cmpq   %rax,-0x34(%rsp)
  movl   -0x3c(%rsp),%edi
  movl   -0x38(%rsp),%ebx
  movl   %edi,0xc(%rsi)
  movl   %ebx,0x10(%rsi)
  ja     .L_402c60
.L_403f2a:
  addq   $0x24,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_403f40:
  pushq  %r13
  pushq  %r12
  movq   %rsi,%r12
  pushq  %rbp
  pushq  %rbx
  movq   %rdi,%rbx
  subq   $0x8,%rsp
  movl   0x1c(%rdi),%edx
  movl   0x14(%rdi),%esi
  cmpl   $0x38,%edx
  sbbq   %rbp,%rbp
  andq   $0xffffffffffffffc0,%rbp
  subq   $0xffffffffffffff80,%rbp
  cmpl   $0x38,%edx
  sbbq   %rcx,%rcx
  andq   $0xfffffffffffffff0,%rcx
  addq   $0x1f,%rcx
  cmpl   $0x38,%edx
  sbbq   %rax,%rax
  addl   %edx,%esi
  andq   $0xfffffffffffffff0,%rax
  movl   %esi,0x14(%rdi)
  movl   0x18(%rdi),%edi
  addq   $0x1e,%rax
  cmpl   %esi,%edx
  jbe    .L_403f92
  addl   $0x1,%edi
  movl   %edi,0x18(%rbx)
.L_403f92:
  movl   %esi,%r8d
  shll   $0x3,%edi
  leaq   0x20(%rbx),%r13
  shrl   $0x1d,%r8d
  orl    %r8d,%edi
  bswap  %edi
  movl   %edi,0x20(%rbx,%rax,4)
  leal   0x0(,%rsi,8),%edi
  shll   $0x1b,%esi
  movl   %edi,%eax
  shrl   $0x18,%eax
  orl    %esi,%eax
  movl   %edi,%esi
  shrl   $0x8,%edi
  andl   $0xff00,%esi
  shll   $0x8,%esi
  orl    %esi,%eax
  movl   %edi,%esi
  leaq   0x0(%r13,%rdx,1),%rdi
  andl   $0xff00,%esi
  orl    %esi,%eax
  movl   $0x407620,%esi
  movl   %eax,0x20(%rbx,%rcx,4)
  movq   %rbp,%rax
  subq   %rdx,%rax
  leaq   -0x8(%rax),%rdx
  callq  .L_401610
  movq   %rbp,%rsi
  movq   %r13,%rdi
  movq   %rbx,%rdx
  callq  .L_402be0
  addq   $0x8,%rsp
  movq   %rbx,%rdi
  movq   %r12,%rsi
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  jmpq   .L_402bb0
  nop
.L_404020:
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
  movl   0x1c(%rdx),%eax
  testl  %eax,%eax
  jne    .L_4040c0
.L_404042:
  cmpq   $0x3f,%rbx
  ja     .L_4040a0
.L_404048:
  testq  %rbx,%rbx
  jne    .L_404060
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_404060:
  movl   0x1c(%rbp),%r13d
  leaq   0x20(%rbp),%r14
  movq   %rbx,%rdx
  movq   %r12,%rsi
  leaq   (%r14,%r13,1),%rdi
  addq   %r13,%rbx
  callq  .L_401610
  cmpq   $0x3f,%rbx
  ja     .L_404100
.L_404084:
  movl   %ebx,0x1c(%rbp)
  addq   $0x8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
  nop
.L_4040a0:
  movq   %rbx,%r13
  movq   %r12,%rdi
  movq   %rbp,%rdx
  andq   $0xffffffffffffffc0,%r13
  andl   $0x3f,%ebx
  movq   %r13,%rsi
  addq   %r13,%r12
  callq  .L_402be0
  jmpq    .L_404048
  nop
.L_4040c0:
  movl   %eax,%r14d
  movl   $0x80,%r13d
  leaq   0x20(%rdx),%r15
  subq   %r14,%r13
  cmpq   %rsi,%r13
  leaq   (%r15,%r14,1),%rdi
  cmovaq %rsi,%r13
  movq   %r12,%rsi
  movq   %r13,%rdx
  callq  .L_401610
  movl   0x1c(%rbp),%esi
  addl   %r13d,%esi
  cmpl   $0x40,%esi
  movl   %esi,0x1c(%rbp)
  ja     .L_404130
.L_4040f4:
  addq   %r13,%r12
  subq   %r13,%rbx
  jmpq   .L_404042
  nop
.L_404100:
  movq   %rbp,%rdx
  movq   %r14,%rdi
  movl   $0x40,%esi
  callq  .L_402be0
  subq   $0x40,%rbx
  leaq   0x60(%rbp),%rsi
  movq   %r14,%rdi
  movq   %rbx,%rdx
  callq  .L_401610
  jmpq   .L_404084
  nop
.L_404130:
  andl   $0xffffffc0,%esi
  movq   %rbp,%rdx
  movq   %r15,%rdi
  callq  .L_402be0
  movl   0x1c(%rbp),%edx
  addq   %r13,%r14
  movq   %r15,%rdi
  andq   $0xffffffffffffffc0,%r14
  leaq   (%r15,%r14,1),%rsi
  andl   $0x3f,%edx
  movl   %edx,0x1c(%rbp)
  callq  .L_401610
  jmpq    .L_4040f4
  nop
  pushq  %rbx
  movq   %rdx,%rbx
  subq   $0xa0,%rsp
  movq   %rsp,%rdx
  movl   $0x67452301,(%rsp)
  movl   $0xefcdab89,0x4(%rsp)
  movl   $0x98badcfe,0x8(%rsp)
  movl   $0x10325476,0xc(%rsp)
  movl   $0xc3d2e1f0,0x10(%rsp)
  movl   $0x0,0x18(%rsp)
  movl   $0x0,0x14(%rsp)
  movl   $0x0,0x1c(%rsp)
  callq  .L_404020
  movq   %rbx,%rsi
  movq   %rsp,%rdi
  callq  .L_403f40
  addq   $0xa0,%rsp
  popq   %rbx
  retq   
  nop
.L_4041d0:
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
  je     .L_4042e0
  movl   $0x67452301,(%rsp)
  movl   $0xefcdab89,0x4(%rsp)
  xorl   %ebx,%ebx
  movl   $0x98badcfe,0x8(%rsp)
  movl   $0x10325476,0xc(%rsp)
  movl   $0xc3d2e1f0,0x10(%rsp)
  movl   $0x0,0x18(%rsp)
  movl   $0x0,0x14(%rsp)
  movl   $0x0,0x1c(%rsp)
  nop
.L_404240:
  leaq   (%r12,%rbx,1),%rdi
  movl   $0x8000,%edx
  movq   %rbp,%rcx
  subq   %rbx,%rdx
  movl   $0x1,%esi
  callq  .L_401480
  addq   %rax,%rbx
  cmpq   $0x8000,%rbx
  je     .L_4042a0
  testq  %rax,%rax
  je     .L_4042b8
  testb  $0x10,0x0(%rbp)
  je     .L_404240
.L_404270:
  testq  %rbx,%rbx
  jne    .L_4042d0
.L_404275:
  movq   %r13,%rsi
  movq   %rsp,%rdi
  callq  .L_403f40
  movq   %r12,%rdi
  callq  .L_401400
  xorl   %eax,%eax
.L_40428a:
  addq   $0xa8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
.L_4042a0:
  movq   %rsp,%rdx
  movl   $0x8000,%esi
  movq   %r12,%rdi
  callq  .L_402be0
  xorl   %ebx,%ebx
  jmpq    .L_404240
  nop
.L_4042b8:
  testb  $0x20,0x0(%rbp)
  je     .L_404270
  movq   %r12,%rdi
  callq  .L_401400
  movl   $0x1,%eax
  jmpq    .L_40428a
  nop
.L_4042d0:
  movq   %rsp,%rdx
  movq   %rbx,%rsi
  movq   %r12,%rdi
  callq  .L_404020
  jmpq    .L_404275
.L_4042e0:
  addq   $0xa8,%rsp
  movl   $0x1,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
  nop
.L_404300:
  movzbl (%rdi),%edx
  movq   %rdi,%rax
  cmpb   $0x2f,%dl
  jne    .L_40431c
  nop
.L_404310:
  addq   $0x1,%rax
  movzbl (%rax),%edx
  cmpb   $0x2f,%dl
  je     .L_404310
.L_40431c:
  movl   %edx,%ecx
  xorl   %esi,%esi
  movq   %rax,%rdx
  testb  %cl,%cl
  je     .L_404367
  nop
.L_404330:
  addq   $0x1,%rdx
  movzbl (%rdx),%ecx
  testb  %cl,%cl
  je     .L_404355
.L_40433b:
  cmpb   $0x2f,%cl
  je     .L_404360
  testb  %sil,%sil
  je     .L_404330
  movq   %rdx,%rax
  addq   $0x1,%rdx
  movzbl (%rdx),%ecx
  xorl   %esi,%esi
  testb  %cl,%cl
  jne    .L_40433b
.L_404355:
  retq
  nop
.L_404360:
  movl   $0x1,%esi
  jmpq    .L_404330
.L_404367:
  retq
  nop
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_4014e0
  cmpq   $0x1,%rax
  jbe    .L_40438a
.L_40437f:
  cmpb   $0x2f,-0x1(%rbx,%rax,1)
  leaq   -0x1(%rax),%rdx
  je     .L_404390
.L_40438a:
  popq   %rbx
  retq   
  nop
.L_404390:
  cmpq   $0x1,%rdx
  movq   %rdx,%rax
  jne    .L_40437f
  popq   %rbx
  retq   
  nop
  jmpq   .L_401590
  nop
.L_4043b0:
  testq  %rdi,%rdi
  je     .L_4043d0
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
.L_4043d0:
  retq
  nop
  nop
.L_4043e0:
  pushq  %r12
  movq   %rsi,%r12
  pushq  %rbp
  xorl   %ebp,%ebp
  pushq  %rbx
  callq  .L_401710
  testq  %rax,%rax
  movq   %rax,%rbx
  je     .L_404406
  movq   %rax,%rdi
  movq   %rbx,%rbp
  callq  .L_401620
  cmpl   $0x2,%eax
  jbe    .L_404410
.L_404406:
  popq   %rbx
  movq   %rbp,%rax
  popq   %rbp
  popq   %r12
  retq   
  xchgw  %ax,%ax
.L_404410:
  movl   %eax,%edi
  callq  .L_405a10
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_404443
  movq   %rbp,%rdi
  callq  .L_406280
  testl  %eax,%eax
  jne    .L_404460
  movq   %r12,%rsi
  movl   %ebx,%edi
  callq  .L_4016a0
  testq  %rax,%rax
  je     .L_404460
  movq   %rax,%rbp
  popq   %rbx
  movq   %rbp,%rax
  popq   %rbp
  popq   %r12
  retq   
.L_404443:
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbx
  movq   %rbp,%rdi
  callq  .L_406280
  xorl   %ebp,%ebp
  movl   %r12d,(%rbx)
  jmpq    .L_404406
  nop
.L_404460:
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbp
  movl   %ebx,%edi
  callq  .L_401580
  movl   %r12d,0x0(%rbp)
  xorl   %ebp,%ebp
  jmpq    .L_404406
  nop
.L_404480:
  testq  %rdi,%rdi
  pushq  %rbx
  movq   %rdi,%rbx
  je     .L_4044f3
  movl   $0x2f,%esi
  callq  .L_401540
  testq  %rax,%rax
  je     .L_4044e3
  leaq   0x1(%rax),%rdx
  movq   %rdx,%rcx
  subq   %rbx,%rcx
  cmpq   $0x6,%rcx
  jle    .L_4044e3
  leaq   -0x6(%rax),%rsi
  movl   $0x407698,%edi
  movl   $0x7,%ecx
  repz cmpsb %es:(%rdi),%ds:(%rsi)
  jne    .L_4044e3
  movl   $0x3,%ecx
  movq   %rdx,%rsi
  movl   $0x4076a0,%edi
  repz cmpsb %es:(%rdi),%ds:(%rsi)
  movq   %rdx,%rbx
  seta   %sil
  setb   %cl
  cmpb   %cl,%sil
  jne    .L_4044e3
  leaq   0x4(%rax),%rbx
  movq   %rbx,0x205dbd(%rip)        
.L_4044e3:
  movq   %rbx,0x205e26(%rip)        
  movq   %rbx,0x205dd7(%rip)        
  popq   %rbx
  retq   
.L_4044f3:
  movq   0x205dd6(%rip),%rcx        
  movl   $0x37,%edx
  movl   $0x1,%esi
  movl   $0x407660,%edi
  callq  .L_401750
  callq  .L_401410
  nop
  nop
.L_404520:
  subq   $0x48,%rsp
  xorl   %eax,%eax
  movq   %rdi,%rdx
  movl   $0x7,%ecx
  movq   %rsp,%rdi
  cmpl   $0x8,%esi
  rep stosq %es:(%rdi)
  je     .L_404581
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
.L_404581:
  callq  .L_401410
  nop
.L_404590:
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
  je     .L_4045c8
.L_4045b7:
  addq   $0x8,%rsp
  movq   %rbx,%rax
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  retq   
  nop
.L_4045c8:
  callq  .L_406570
  movzbl (%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x55,%dl
  jne    .L_404630
  movzbl 0x1(%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x54,%dl
  jne    .L_404618
  movzbl 0x2(%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x46,%dl
  jne    .L_404618
  cmpb   $0x2d,0x3(%rax)
  jne    .L_404618
  cmpb   $0x38,0x4(%rax)
  jne    .L_404618
  cmpb   $0x0,0x5(%rax)
  jne    .L_404618
  cmpb   $0x60,(%rbx)
  movl   $0x4076b3,%eax
  movl   $0x4076a4,%ebx
  cmoveq %rax,%rbx
  jmpq    .L_4045b7
  nop
.L_404618:
  movl   $0x4076ad,%ebx
  cmpl   $0x7,%r12d
  movl   $0x4076ab,%eax
  cmovneq %rax,%rbx
  jmpq    .L_4045b7
  nop
.L_404630:
  cmpb   $0x47,%dl
  jne    .L_404618
  movzbl 0x1(%rax),%edx
  andl   $0xffffffdf,%edx
  cmpb   $0x42,%dl
  jne    .L_404618
  cmpb   $0x31,0x2(%rax)
  jne    .L_404618
  cmpb   $0x38,0x3(%rax)
  jne    .L_404618
  cmpb   $0x30,0x4(%rax)
  jne    .L_404618
  cmpb   $0x33,0x5(%rax)
  jne    .L_404618
  cmpb   $0x30,0x6(%rax)
  jne    .L_404618
  cmpb   $0x0,0x7(%rax)
  jne    .L_404618
  movq   %rbx,%r13
  movl   $0x4076a8,%eax
  movl   $0x4076af,%ebx
  cmpb   $0x60,0x0(%r13)
  cmovneq %rax,%rbx
  jmpq   .L_4045b7
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
.L_405230:
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
  movq   0x205016(%rip),%r12        
  movl   %eax,0x34(%rsp)
  js     .L_4053d7
  cmpl   0x20501d(%rip),%r15d        
  jb     .L_4052da
  leal   0x1(%r15),%ebp
  movl   %ebp,%r14d
  movq   %r14,%rsi
  shlq   $0x4,%rsi
  cmpq   $0x60a280,%r12
  jne    .L_4053c0
  xorl   %edi,%edi
  callq  .L_406080
  movq   0x204fe2(%rip),%rsi        
  movq   0x204fe3(%rip),%rdi        
  movq   %rax,%r12
  movq   %rax,0x204fc9(%rip)        
  movq   %rsi,(%rax)
  movq   %rdi,0x8(%rax)
.L_4052b6:
  movl   0x204fd4(%rip),%edi        
  movq   %r14,%rdx
  xorl   %esi,%esi
  subq   %rdi,%rdx
  shlq   $0x4,%rdi
  shlq   $0x4,%rdx
  addq   %r12,%rdi
  callq  .L_401560
  movl   %ebp,0x204fb6(%rip)        
.L_4052da:
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
  callq  .L_404680
  movq   0x38(%rsp),%r11
  cmpq   %rax,%r11
  ja     .L_40539f
  leaq   0x1(%rax),%rsi
  cmpq   $0x60a320,%r14
  movq   %rsi,(%r12)
  je     .L_405357
  movq   %r14,%rdi
  movq   %rsi,0x38(%rsp)
  callq  .L_401400
  movq   0x38(%rsp),%rsi
.L_405357:
  movq   %rsi,%rdi
  movq   %rsi,0x38(%rsp)
  callq  .L_406030
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
  callq  .L_404680
.L_40539f:
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
.L_4053c0:
  movq   %r12,%rdi
  callq  .L_406080
  movq   %rax,%r12
  movq   %rax,0x204ea6(%rip)        
  jmpq   .L_4052b6
.L_4053d7:
  callq  .L_401410
  nop
  pushq  %r12
  pushq  %rbp
  movq   %rdi,%rbp
  pushq  %rbx
  callq  .L_401420
  movl   (%rax),%r12d
  testq  %rbp,%rbp
  movl   $0x60a420,%edi
  movq   %rax,%rbx
  cmovneq %rbp,%rdi
  movl   $0x38,%esi
  callq  .L_4061f0
  movl   %r12d,(%rbx)
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  testq  %rdi,%rdi
  movl   $0x60a420,%eax
  cmovneq %rdi,%rax
  movl   (%rax),%eax
  retq   
  nop
  movl   $0x60a420,%eax
  testq  %rdi,%rdi
  cmovneq %rdi,%rax
  movl   %esi,(%rax)
  retq   
  nop
  testq  %rdi,%rdi
  movl   $0x60a420,%eax
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
  movl   $0x60a420,%eax
  cmoveq %rax,%rdi
  movl   0x4(%rdi),%eax
  movl   %esi,0x4(%rdi)
  retq   
  nop
.L_405490:
  subq   $0x8,%rsp
  movl   $0x60a420,%eax
  testq  %rdi,%rdi
  cmoveq %rax,%rdi
  testq  %rsi,%rsi
  movl   $0x8,(%rdi)
  je     .L_4054bd
  testq  %rdx,%rdx
  je     .L_4054bd
  movq   %rsi,0x28(%rdi)
  movq   %rdx,0x30(%rdi)
  addq   $0x8,%rsp
  retq   
.L_4054bd:
  callq  .L_401410
  nop
  pushq  %r15
  movl   $0x60a420,%eax
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
  callq  .L_404680
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
.L_405550:
  pushq  %r15
  movl   $0x60a420,%eax
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
  callq  .L_404680
  leaq   0x1(%rax),%rsi
  movq   %rax,0x38(%rsp)
  movq   %rsi,%rdi
  movq   %rsi,0x28(%rsp)
  callq  .L_406030
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
  callq  .L_404680
  movl   0x1c(%rsp),%eax
  testq  %r12,%r12
  movl   %eax,(%r15)
  je     .L_405628
  movq   0x38(%rsp),%r11
  movq   %r11,(%r12)
.L_405628:
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
  jmpq   .L_405550
  nop
  pushq  %r12
  movl   0x204c38(%rip),%eax        
  movq   0x204c19(%rip),%r12        
  pushq  %rbp
  cmpl   $0x1,%eax
  pushq  %rbx
  jbe    .L_40568a
  subl   $0x2,%eax
  movq   %r12,%rbx
  shlq   $0x4,%rax
  leaq   0x10(%r12,%rax,1),%rbp
  nop
.L_405678:
  movq   0x18(%rbx),%rdi
  addq   $0x10,%rbx
  callq  .L_401400
  cmpq   %rbp,%rbx
  jne    .L_405678
.L_40568a:
  movq   0x8(%r12),%rdi
  cmpq   $0x60a320,%rdi
  je     .L_4056b3
  callq  .L_401400
  movq   $0x100,0x204bd8(%rip)        
  movq   $0x60a320,0x204bd5(%rip)        
.L_4056b3:
  cmpq   $0x60a280,%r12
  je     .L_4056cf
  movq   %r12,%rdi
  callq  .L_401400
  movq   $0x60a280,0x204ba9(%rip)        
.L_4056cf:
  popq   %rbx
  popq   %rbp
  movl   $0x1,0x204bb5(%rip)        
  popq   %r12
  retq   
  xchgw  %ax,%ax
  movl   $0x60a420,%ecx
  movq   $0xffffffffffffffff,%rdx
  jmpq   .L_405230
  nop
  movl   $0x60a420,%ecx
  jmpq   .L_405230
  nop
  movq   %rdi,%rsi
  movl   $0x60a420,%ecx
  movq   $0xffffffffffffffff,%rdx
  xorl   %edi,%edi
  jmpq   .L_405230
  nop
  movq   %rsi,%rdx
  movl   $0x60a420,%ecx
  movq   %rdi,%rsi
  xorl   %edi,%edi
  jmpq   .L_405230
  nop
.L_405750:
  pushq  %rbp
  movq   %rdx,%rbp
  pushq  %rbx
  movl   %edi,%ebx
  subq   $0x48,%rsp
  movq   %rsp,%rdi
  callq  .L_404520
  movq   %rsp,%rcx
  movq   %rbp,%rsi
  movl   %ebx,%edi
  movq   $0xffffffffffffffff,%rdx
  callq  .L_405230
  addq   $0x48,%rsp
  popq   %rbx
  popq   %rbp
  retq   
  xchgw  %ax,%ax
.L_405780:
  pushq  %r12
  movq   %rcx,%r12
  pushq  %rbp
  movq   %rdx,%rbp
  pushq  %rbx
  movl   %edi,%ebx
  subq   $0x40,%rsp
  movq   %rsp,%rdi
  callq  .L_404520
  movq   %rsp,%rcx
  movq   %r12,%rdx
  movq   %rbp,%rsi
  movl   %ebx,%edi
  callq  .L_405230
  addq   $0x40,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
  movq   %rsi,%rdx
  movl   %edi,%esi
  xorl   %edi,%edi
  jmpq   .L_405750
  nop
  movq   %rdx,%rcx
  movq   %rsi,%rdx
  movl   %edi,%esi
  xorl   %edi,%edi
  jmpq   .L_405780
  nop
.L_4057e0:
  subq   $0x48,%rsp
  movq   0x204c35(%rip),%rax        
  movl   %edx,%r8d
  shrb   $0x5,%r8b
  movl   %edx,%ecx
  movq   %rsi,%rdx
  movzbl %r8b,%r8d
  andl   $0x1f,%ecx
  movq   %rdi,%rsi
  movq   %rax,(%rsp)
  movq   0x204c1c(%rip),%rax        
  xorl   %edi,%edi
  movq   %rax,0x8(%rsp)
  movq   0x204c16(%rip),%rax        
  movq   %rax,0x10(%rsp)
  movq   0x204c12(%rip),%rax        
  movq   %rax,0x18(%rsp)
  movq   0x204c0e(%rip),%rax        
  movq   %rax,0x20(%rsp)
  movq   0x204c0a(%rip),%rax        
  movl   0x8(%rsp,%r8,4),%r9d
  movq   %rax,0x28(%rsp)
  movq   0x204c01(%rip),%rax        
  movq   %rax,0x30(%rsp)
  movl   %r9d,%eax
  shrl   %cl,%eax
  xorl   $0x1,%eax
  andl   $0x1,%eax
  shll   %cl,%eax
  movq   %rsp,%rcx
  xorl   %r9d,%eax
  movl   %eax,0x8(%rsp,%r8,4)
  callq  .L_405230
  addq   $0x48,%rsp
  retq   
  nop
  movsbl %sil,%edx
  movq   $0xffffffffffffffff,%rsi
  jmpq   .L_4057e0
.L_405890:
  movl   $0x3a,%edx
  movq   $0xffffffffffffffff,%rsi
  jmpq   .L_4057e0
  nop
  movl   $0x3a,%edx
  jmpq   .L_4057e0
  nop
.L_4058c0:
  pushq  %r12
  movq   %r8,%r12
  pushq  %rbp
  movq   %rcx,%rbp
  pushq  %rbx
  movl   %edi,%ebx
  subq   $0x40,%rsp
  movq   0x204b49(%rip),%rax        
  movq   %rsp,%rdi
  movq   %rax,(%rsp)
  movq   0x204b43(%rip),%rax        
  movq   %rax,0x8(%rsp)
  movq   0x204b3f(%rip),%rax        
  movq   %rax,0x10(%rsp)
  movq   0x204b3b(%rip),%rax        
  movq   %rax,0x18(%rsp)
  movq   0x204b37(%rip),%rax        
  movq   %rax,0x20(%rsp)
  movq   0x204b33(%rip),%rax        
  movq   %rax,0x28(%rsp)
  movq   0x204b2f(%rip),%rax        
  movq   %rax,0x30(%rsp)
  callq  .L_405490
  movq   %rsp,%rcx
  movq   %r12,%rdx
  movq   %rbp,%rsi
  movl   %ebx,%edi
  callq  .L_405230
  addq   $0x40,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
  movq   $0xffffffffffffffff,%r8
  jmpq   .L_4058c0
  nop
  movq   %rdx,%rcx
  movq   $0xffffffffffffffff,%r8
  movq   %rsi,%rdx
  movq   %rdi,%rsi
  xorl   %edi,%edi
  jmpq   .L_4058c0
  nop
  movq   %rcx,%r8
  movq   %rdx,%rcx
  movq   %rsi,%rdx
  movq   %rdi,%rsi
  xorl   %edi,%edi
  jmpq   .L_4058c0
  nop
  movl   $0x60a240,%ecx
  jmpq   .L_405230
  nop
  movq   %rsi,%rdx
  movl   $0x60a240,%ecx
  movq   %rdi,%rsi
  xorl   %edi,%edi
  jmpq   .L_405230
  nop
  movl   $0x60a240,%ecx
  movq   $0xffffffffffffffff,%rdx
  jmpq   .L_405230
  nop
  movq   %rdi,%rsi
  movl   $0x60a240,%ecx
  movq   $0xffffffffffffffff,%rdx
  xorl   %edi,%edi
  jmpq   .L_405230
  nop
.L_405a10:
  movl   $0x3,%edx
  xorl   %esi,%esi
  xorl   %eax,%eax
  jmpq   .L_406300
  xchgw  %ax,%ax
.L_405a20:
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
  je     .L_405e20
  movq   %rcx,%r9
  movq   %rdx,%r8
  movq   %rsi,%rcx
  movl   $0x407ba8,%edx
  movl   $0x1,%esi
  xorl   %eax,%eax
  callq  .L_401760
.L_405a5a:
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x407bbb,%esi
  callq  .L_4014c0
  movl   $0x7dd,%r8d
  movq   %rax,%rcx
  movl   $0x407e80,%edx
  movl   $0x1,%esi
  movq   %rbp,%rdi
  xorl   %eax,%eax
  callq  .L_401760
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x407c18,%esi
  callq  .L_4014c0
  movq   %rbp,%rsi
  movq   %rax,%rdi
  callq  .L_4015c0
  cmpq   $0x9,%r12
  ja     .L_405e40
  jmpq   *0x407e30(,%r12,8)
  nop
  movq   0x38(%rbx),%r9
  movq   0x8(%rbx),%r8
  movl   $0x5,%edx
  movq   0x10(%rbx),%rax
  movl   $0x407d88,%esi
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
.L_405b3b:
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
  movl   $0x407db8,%esi
  movq   0x30(%rbx),%r13
  movq   0x28(%rbx),%r12
  movq   0x20(%rbx),%r15
  movq   0x18(%rbx),%r14
  movq   (%rbx),%rbx
  movq   %r10,0x48(%rsp)
  movq   %r9,0x40(%rsp)
  movq   %rax,0x30(%rsp)
  movq   %r8,0x38(%rsp)
.L_405b91:
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
  movl   $0x407bbf,%esi
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
  movl   $0x407bcf,%esi
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
  movl   $0x407be6,%esi
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
  movl   $0x407ce8,%esi
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
  jmpq   .L_405b3b
  nop
  movq   0x20(%rbx),%r15
  movq   0x18(%rbx),%r14
  xorl   %edi,%edi
  movq   0x10(%rbx),%r13
  movq   0x8(%rbx),%r12
  movl   $0x5,%edx
  movq   (%rbx),%rbx
  movl   $0x407d08,%esi
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
  jmpq   .L_405b3b
  nop
  movq   0x8(%rbx),%r8
  movq   0x28(%rbx),%r12
  xorl   %edi,%edi
  movq   0x20(%rbx),%r15
  movq   0x18(%rbx),%r14
  movl   $0x5,%edx
  movq   0x10(%rbx),%r13
  movl   $0x407d30,%esi
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
  jmpq   .L_405b3b
  nop
  movq   0x10(%rbx),%r9
  movq   0x8(%rbx),%r8
  xorl   %edi,%edi
  movq   0x30(%rbx),%r13
  movq   0x28(%rbx),%r12
  movl   $0x5,%edx
  movq   0x20(%rbx),%r15
  movq   0x18(%rbx),%r14
  movl   $0x407d58,%esi
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
  jmpq   .L_405b3b
  nop
.L_405e20:
  movq   %rcx,%r8
  movl   $0x1,%esi
  movq   %rdx,%rcx
  xorl   %eax,%eax
  movl   $0x407bb4,%edx
  callq  .L_401760
  jmpq   .L_405a5a
  nop
.L_405e40:
  movq   0x40(%rbx),%r10
  movq   0x38(%rbx),%r9
  movl   $0x5,%edx
  movq   0x10(%rbx),%rax
  movq   0x8(%rbx),%r8
  movl   $0x407df0,%esi
  movq   0x30(%rbx),%r13
  movq   0x28(%rbx),%r12
  movq   0x20(%rbx),%r15
  movq   0x18(%rbx),%r14
  movq   %r10,0x48(%rsp)
  movq   %r9,0x40(%rsp)
  movq   %rax,0x30(%rsp)
  movq   %r8,0x38(%rsp)
  movq   (%rbx),%rbx
  jmpq   .L_405b91
  nop
  xorl   %r9d,%r9d
  cmpq   $0x0,(%r8)
  je     .L_405eab
  nop
.L_405ea0:
  addq   $0x1,%r9
  cmpq   $0x0,(%r8,%r9,8)
  jne    .L_405ea0
.L_405eab:
  jmpq   .L_405a20
.L_405eb0:
  subq   $0x58,%rsp
  xorl   %r9d,%r9d
  jmpq    .L_405ee3
  nop
.L_405ec0:
  movl   %eax,%r10d
  addq   0x10(%r8),%r10
  addl   $0x8,%eax
  movl   %eax,(%r8)
  movq   (%r10),%rax
  testq  %rax,%rax
  movq   %rax,(%rsp,%r9,8)
  je     .L_405f08
.L_405ed9:
  addq   $0x1,%r9
  cmpq   $0xa,%r9
  je     .L_405f08
.L_405ee3:
  movl   (%r8),%eax
  cmpl   $0x30,%eax
  jb     .L_405ec0
  movq   0x8(%r8),%r10
  leaq   0x8(%r10),%rax
  movq   %rax,0x8(%r8)
  movq   (%r10),%rax
  testq  %rax,%rax
  movq   %rax,(%rsp,%r9,8)
  jne    .L_405ed9
  nop
.L_405f08:
  movq   %rsp,%r8
  callq  .L_405a20
  addq   $0x58,%rsp
  retq   
  nop
.L_405f20:
  subq   $0xd8,%rsp
  testb  %al,%al
  movq   %r8,0x40(%rsp)
  movq   %r9,0x48(%rsp)
  je     .L_405f6c
  movaps %xmm0,0x50(%rsp)
  movaps %xmm1,0x60(%rsp)
  movaps %xmm2,0x70(%rsp)
  movaps %xmm3,0x80(%rsp)
  movaps %xmm4,0x90(%rsp)
  movaps %xmm5,0xa0(%rsp)
  movaps %xmm6,0xb0(%rsp)
  movaps %xmm7,0xc0(%rsp)
.L_405f6c:
  leaq   0xe0(%rsp),%rax
  leaq   0x8(%rsp),%r8
  movq   %rax,0x10(%rsp)
  leaq   0x20(%rsp),%rax
  movl   $0x20,0x8(%rsp)
  movl   $0x30,0xc(%rsp)
  movq   %rax,0x18(%rsp)
  callq  .L_405eb0
  addq   $0xd8,%rsp
  retq   
  nop
  pushq  %rbx
  movl   $0x5,%edx
  movl   $0x407c02,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movl   $0x406a91,%edx
  movq   %rax,%rsi
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movl   $0x5,%edx
  movl   $0x406aa7,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movl   $0x407040,%ecx
  movq   %rax,%rsi
  movl   $0x406abb,%edx
  movl   $0x1,%edi
  xorl   %eax,%eax
  callq  .L_4016c0
  movq   0x2042a9(%rip),%rbx        
  movl   $0x407068,%esi
  xorl   %edi,%edi
  movl   $0x5,%edx
  callq  .L_4014c0
  movq   %rbx,%rsi
  movq   %rax,%rdi
  popq   %rbx
  jmpq   .L_4015c0
  nop
  xchgw  %ax,%ax
.L_406030:
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_401630
  testq  %rax,%rax
  je     .L_406040
.L_40603e:
  popq   %rbx
  retq   
.L_406040:
  testq  %rbx,%rbx
  je     .L_40603e
  callq  .L_406240
  nop
  xorl   %edx,%edx
  movq   $0xffffffffffffffff,%rax
  divq   %rsi
  cmpq   %rdi,%rax
  jb     .L_40606a
  imulq  %rsi,%rdi
  jmpq   .L_406030
.L_40606a:
  pushq  %rax
  callq  .L_406240
  jmpq   .L_406030
  nop
.L_406080:
  testq  %rsi,%rsi
  pushq  %rbx
  movq   %rsi,%rbx
  je     .L_4060a0
.L_406089:
  movq   %rbx,%rsi
  callq  .L_401690
  testq  %rax,%rax
  je     .L_4060ae
.L_406096:
  popq   %rbx
  retq   
  nop
.L_4060a0:
  testq  %rdi,%rdi
  je     .L_406089
  callq  .L_401400
  xorl   %eax,%eax
  popq   %rbx
  retq   
.L_4060ae:
  testq  %rbx,%rbx
  je     .L_406096
  callq  .L_406240
  nop
  movq   %rdx,%rcx
  movq   $0xffffffffffffffff,%rax
  xorl   %edx,%edx
  divq   %rcx
  cmpq   %rsi,%rax
  jb     .L_4060dd
  imulq  %rcx,%rsi
  jmpq   .L_406080
.L_4060dd:
  pushq  %rax
  callq  .L_406240
  nop
  testq  %rdi,%rdi
  movq   %rdx,%r8
  movq   (%rsi),%rcx
  je     .L_406130
  xorl   %edx,%edx
  movq $0xaaaaaaaaaaaaaaaa,%rax
  divq   %r8
  cmpq   %rax,%rcx
  jae    .L_40614c
  leaq   0x1(%rcx),%rax
  shrq $0x1,  %rax
  addq   %rax,%rcx
.L_406119:
  movq   %rcx,(%rsi)
  imulq  %r8,%rcx
  movq   %rcx,%rsi
  jmpq   .L_406080
  nop
.L_406130:
  testq  %rcx,%rcx
  jne    .L_406119
  xorl   %edx,%edx
  movl   $0x80,%eax
  xorl   %ecx,%ecx
  divq   %r8
  testq  %rax,%rax
  sete   %cl
  addq   %rax,%rcx
  jmpq    .L_406119
.L_40614c:
  pushq  %rax
  callq  .L_406240
  nop
  testq  %rdi,%rdi
  movq   (%rsi),%rax
  je     .L_406190
  movq $0xaaaaaaaaaaaaaaa9,%rdx
  cmpq   %rdx,%rax
  ja     .L_4061a7
  leaq   0x1(%rax),%rdx
  shrq $0x1,  %rdx
  addq   %rdx,%rax
  movq   %rax,(%rsi)
  movq   %rax,%rsi
  jmpq   .L_406080
  nop
.L_406190:
  testq  %rax,%rax
  movl   $0x80,%edx
  cmoveq %rdx,%rax
  movq   %rax,(%rsi)
  movq   %rax,%rsi
  jmpq   .L_406080
.L_4061a7:
  pushq  %rax
  callq  .L_406240
  nop
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_406030
  movq   %rbx,%rdx
  xorl   %esi,%esi
  movq   %rax,%rdi
  popq   %rbx
  jmpq   .L_401560
  nop
  subq   $0x8,%rsp
  callq  .L_4015d0
  testq  %rax,%rax
  je     .L_4061e3
  addq   $0x8,%rsp
  retq   
.L_4061e3:
  callq  .L_406240
  nop
.L_4061f0:
  pushq  %rbp
  movq   %rdi,%rbp
  movq   %rsi,%rdi
  pushq  %rbx
  movq   %rsi,%rbx
  subq   $0x8,%rsp
  callq  .L_406030
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
  jmpq   .L_4061f0
  nop
.L_406240:
  subq   $0x8,%rsp
  movl   $0x5,%edx
  movl   $0x407eaf,%esi
  xorl   %edi,%edi
  callq  .L_4014c0
  movl   0x203fc5(%rip),%edi        
  movq   %rax,%rcx
  movl   $0x407615,%edx
  xorl   %esi,%esi
  xorl   %eax,%eax
  callq  .L_4016e0
  callq  .L_401410
  nop
  nop
.L_406280:
  pushq  %r12
  pushq  %rbp
  pushq  %rbx
  movq   %rdi,%rbx
  callq  .L_401620
  testl  %eax,%eax
  movq   %rbx,%rdi
  js     .L_4062ef
  callq  .L_401670
  testl  %eax,%eax
  jne    .L_4062d0
.L_40629c:
  movq   %rbx,%rdi
  callq  .L_406440
  testl  %eax,%eax
  je     .L_4062ec
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rbx,%rdi
  movq   %rax,%rbp
  callq  .L_4014a0
  testl  %r12d,%r12d
  je     .L_4062c9
  movl   %r12d,0x0(%rbp)
  movl   $0xffffffff,%eax
.L_4062c9:
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  xchgw  %ax,%ax
.L_4062d0:
  movq   %rbx,%rdi
  callq  .L_401620
  xorl   %esi,%esi
  movl   $0x1,%edx
  movl   %eax,%edi
  callq  .L_401550
  cmpq   $0xffffffffffffffff,%rax
  jne    .L_40629c
.L_4062ec:
  movq   %rbx,%rdi
.L_4062ef:
  popq   %rbx
  popq   %rbp
  popq   %r12
  jmpq   .L_4014a0
  nop
.L_406300:
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
  jne    .L_4063d0
  movl   0x10(%rax),%r12d
  movl   0x204112(%rip),%eax        
  movl   $0x18,0x8(%rsp)
  testl  %eax,%eax
  movl   %r12d,%edx
  js     .L_4063f0
  xorl   %eax,%eax
  callq  .L_401470
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_406400
.L_40636a:
  movl   $0x1,0x2040e4(%rip)        
.L_406374:
  testl  %ebx,%ebx
  js     .L_4063e2
  cmpl   $0xffffffff,0x2040d9(%rip)        
  jne    .L_4063e2
.L_406381:
  xorl   %eax,%eax
  movl   $0x1,%esi
  movl   %ebx,%edi
  callq  .L_401470
  testl  %eax,%eax
  js     .L_4063ab
  orl    $0x1,%eax
  movl   $0x2,%esi
  movl   %ebx,%edi
  movl   %eax,%edx
  xorl   %eax,%eax
  callq  .L_401470
  cmpl   $0xffffffff,%eax
  jne    .L_4063e2
.L_4063ab:
  callq  .L_401420
  movl   (%rax),%r12d
  movq   %rax,%rbp
  movl   %ebx,%edi
  callq  .L_401580
  movl   $0xffffffff,%ebx
  movl   %r12d,0x0(%rbp)
  jmpq    .L_4063e2
  nop
.L_4063d0:
  movq   0x18(%rsp),%rax
  movq   0x10(%rax),%rdx
  xorl   %eax,%eax
  callq  .L_401470
  movl   %eax,%ebx
.L_4063e2:
  addq   $0x50,%rsp
  movl   %ebx,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_4063f0:
  xorl   %esi,%esi
  xorl   %eax,%eax
  callq  .L_406300
  movl   %eax,%ebx
  jmpq   .L_406374
.L_406400:
  callq  .L_401420
  cmpl   $0x16,(%rax)
  jne    .L_40636a
  xorl   %esi,%esi
  xorl   %eax,%eax
  movl   %r12d,%edx
  movl   %ebp,%edi
  callq  .L_406300
  testl  %eax,%eax
  movl   %eax,%ebx
  js     .L_4063e2
  movl   $0xffffffff,0x20402c(%rip)        
  jmpq   .L_406381
  nop
  nop
.L_406440:
  testq  %rdi,%rdi
  pushq  %rbx
  movq   %rdi,%rbx
  je     .L_406452
  callq  .L_401670
  testl  %eax,%eax
  jne    .L_406460
.L_406452:
  movq   %rbx,%rdi
  popq   %rbx
  jmpq   .L_401640
  nop
.L_406460:
  testl  $0x100,(%rbx)
  je     .L_406452
  movq   %rbx,%rdi
  movl   $0x1,%edx
  xorl   %esi,%esi
  callq  .L_406480
  movq   %rbx,%rdi
  popq   %rbx
  jmpq   .L_401640
.L_406480:
  pushq  %rbx
  movq   %rdi,%rbx
  subq   $0x10,%rsp
  movq   0x8(%rdi),%rax
  cmpq   %rax,0x10(%rdi)
  je     .L_4064a0
.L_406492:
  addq   $0x10,%rsp
  movq   %rbx,%rdi
  popq   %rbx
  jmpq   .L_401700
  nop
.L_4064a0:
  movq   0x20(%rdi),%rax
  cmpq   %rax,0x28(%rdi)
  jne    .L_406492
  cmpq   $0x0,0x48(%rdi)
  jne    .L_406492
  movl   %edx,0xc(%rsp)
  movq   %rsi,(%rsp)
  callq  .L_401620
  movl   0xc(%rsp),%edx
  movq   (%rsp),%rsi
  movl   %eax,%edi
  callq  .L_401550
  cmpq   $0xffffffffffffffff,%rax
  je     .L_4064df
  andl   $0xffffffef,(%rbx)
  movq   %rax,0x90(%rbx)
  xorl   %eax,%eax
.L_4064df:
  addq   $0x10,%rsp
  popq   %rbx
  retq   
  nop
  nop
.L_4064f0:
  pushq  %r12
  pushq  %rbp
  movq   %rdi,%rbp
  pushq  %rbx
  callq  .L_401460
  movl   0x0(%rbp),%ebx
  movq   %rbp,%rdi
  movq   %rax,%r12
  callq  .L_406280
  andl   $0x20,%ebx
  testl  %eax,%eax
  setne  %dl
  testl  %ebx,%ebx
  jne    .L_406530
  testb  %dl,%dl
  je     .L_406524
  testq  %r12,%r12
  movl   $0xffffffff,%ebx
  je     .L_406550
.L_406524:
  movl   %ebx,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_406530:
  testb  %dl,%dl
  movl   $0xffffffff,%ebx
  jne    .L_406524
  callq  .L_401420
  movl   $0x0,(%rax)
  movl   %ebx,%eax
  popq   %rbx
  popq   %rbp
  popq   %r12
  retq   
  nop
.L_406550:
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
.L_406570:
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
  movq   0x203ebb(%rip),%r14        
  testq  %rax,%rax
  movq   %rax,%rbx
  movl   $0x407c01,%eax
  cmoveq %rax,%rbx
  testq  %r14,%r14
  jne    .L_4065da
  jmpq   .L_406644
  xchgw  %ax,%ax
.L_4065c0:
  movq   %r14,%rdi
  callq  .L_4014e0
  leaq   0x1(%r14,%rax,1),%rbp
  movq   %rbp,%rdi
  callq  .L_4014e0
  leaq   0x1(%rbp,%rax,1),%r14
.L_4065da:
  movzbl (%r14),%ebp
  testb  %bpl,%bpl
  je     .L_40660c
  movq   %r14,%rsi
  movq   %rbx,%rdi
  callq  .L_4015f0
  testl  %eax,%eax
  je     .L_4065ff
  cmpb   $0x2a,%bpl
  jne    .L_4065c0
  cmpb   $0x0,0x1(%r14)
  jne    .L_4065c0
.L_4065ff:
  movq   %r14,%rdi
  callq  .L_4014e0
  leaq   0x1(%r14,%rax,1),%rbx
.L_40660c:
  cmpb   $0x0,(%rbx)
  movl   $0x407ec9,%eax
  cmoveq %rax,%rbx
  movq   0x98(%rsp),%rcx
  xorq   %fs:0x28,%rcx
  movq   %rbx,%rax
  jne    .L_40696d
  addq   $0xa8,%rsp
  popq   %rbx
  popq   %rbp
  popq   %r12
  popq   %r13
  popq   %r14
  popq   %r15
  retq   
.L_406644:
  movl   $0x407ecf,%edi
  callq  .L_4013f0
  testq  %rax,%rax
  movq   %rax,%r15
  je     .L_40665f
  cmpb   $0x0,(%rax)
  jne    .L_4068c2
.L_40665f:
  movl   $0x7,%eax
  movl   $0x8,%r12d
  movl   $0x407ec0,%r15d
.L_406670:
  cmpb   $0x2f,(%r15,%rax,1)
  movl   $0x1,%r13d
  movl   $0x1,0x8(%rsp)
  je     .L_4068b2
.L_406689:
  addq   %r12,%r13
  leaq   0xe(%r13),%rdi
  callq  .L_401630
  testq  %rax,%rax
  movq   %rax,%rbp
  je     .L_406962
  movq   %r12,%rdx
  movq   %r15,%rsi
  movq   %rax,%rdi
  callq  .L_401610
  movl   0x8(%rsp),%edx
  testl  %edx,%edx
  je     .L_4066bd
  movb   $0x2f,0x0(%rbp,%r12,1)
.L_4066bd:
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
  js     .L_406898
  movl   $0x406aea,%esi
  movl   %eax,%edi
  callq  .L_4016a0
  testq  %rax,%rax
  movq   %rax,%r15
  je     .L_406890
  leaq   0x20(%rsp),%r12
  movq   $0x0,0x8(%rsp)
.L_406720:
  movq   0x8(%r15),%rax
  cmpq   0x10(%r15),%rax
  jae    .L_406871
.L_40672e:
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x8(%r15)
  movzbl (%rax),%edi
.L_406739:
  cmpl   $0x20,%edi
  je     .L_406720
  leal   -0x9(%rdi),%eax
  cmpl   $0x1,%eax
  jbe    .L_406720
  cmpl   $0x23,%edi
  je     .L_4068e5
  movq   %r15,%rsi
  callq  .L_401660
  leaq   0x60(%rsp),%rcx
  xorl   %eax,%eax
  movq   %r12,%rdx
  movl   $0x407edf,%esi
  movq   %r15,%rdi
  callq  .L_401570
  cmpl   $0x1,%eax
  jle    .L_40690c
  movq   %r12,%rdx
.L_40677a:
  movl   (%rdx),%ecx
  addq   $0x4,%rdx
  leal   -0x1010101(%rcx),%eax
  notl   %ecx
  andl   %ecx,%eax
  andl   $0x80808080,%eax
  je     .L_40677a
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
.L_4067b4:
  movl   (%r10),%ecx
  addq   $0x4,%r10
  leal   -0x1010101(%rcx),%eax
  notl   %ecx
  andl   %ecx,%eax
  andl   $0x80808080,%eax
  je     .L_4067b4
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
  jne    .L_40692c
  leaq   0x2(%rax),%rcx
  leaq   0x3(%rax),%rdi
  movq   %rdx,0x18(%rsp)
  movq   %r10,0x10(%rsp)
  movq   %rcx,0x8(%rsp)
  callq  .L_401630
  movq   0x10(%rsp),%r10
  movq   0x18(%rsp),%rdx
  movq   %rax,%r13
.L_406828:
  testq  %r13,%r13
  je     .L_406972
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
  jb     .L_40672e
.L_406871:
  movq   %r15,%rdi
  callq  .L_4013e0
  cmpl   $0xffffffff,%eax
  movl   %eax,%edi
  je     .L_40690c
  jmpq   .L_406739
  nop
.L_406890:
  movl   %r12d,%edi
  callq  .L_401580
.L_406898:
  movl   $0x407c01,%r14d
.L_40689e:
  movq   %rbp,%rdi
  callq  .L_401400
.L_4068a6:
  movq   %r14,0x203bb3(%rip)        
  jmpq   .L_4065da
.L_4068b2:
  xorl   %r13d,%r13d
  movl   $0x0,0x8(%rsp)
  jmpq   .L_406689
.L_4068c2:
  movq   %rax,%rdi
  callq  .L_4014e0
  testq  %rax,%rax
  movq   %rax,%r12
  je     .L_4068b2
  leaq   -0x1(%rax),%rax
  jmpq   .L_406670
  nop
.L_4068e0:
  cmpl   $0xffffffff,%eax
  je     .L_406903
.L_4068e5:
  movq   0x8(%r15),%rax
  cmpq   0x10(%r15),%rax
  jae    .L_40698d
  leaq   0x1(%rax),%rdx
  movq   %rdx,0x8(%r15)
  movzbl (%rax),%eax
.L_4068fe:
  cmpl   $0xa,%eax
  jne    .L_4068e0
.L_406903:
  cmpl   $0xffffffff,%eax
  jne    .L_406720
.L_40690c:
  movq   %r15,%rdi
  callq  .L_406280
  movq   0x8(%rsp),%rax
  testq  %rax,%rax
  je     .L_406898
  movb   $0x0,(%r14,%rax,1)
  jmpq   .L_40689e
.L_40692c:
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
  jmpq   .L_406828
.L_406962:
  movl   $0x407c01,%r14d
  jmpq   .L_4068a6
.L_40696d:
  callq  .L_4014f0
.L_406972:
  movq   %r14,%rdi
  movl   $0x407c01,%r14d
  callq  .L_401400
  movq   %r15,%rdi
  callq  .L_406280
  jmpq   .L_40689e
.L_40698d:
  movq   %r15,%rdi
  callq  .L_4013e0
  jmpq   .L_4068fe
  nop
  pushq  %r15
  movl   %edi,%r15d
  pushq  %r14
  movq   %rsi,%r14
  pushq  %r13
  movq   %rdx,%r13
  pushq  %r12
  leaq   0x203458(%rip),%r12        
  pushq  %rbp
  leaq   0x203458(%rip),%rbp        
  pushq  %rbx
  subq   %r12,%rbp
  xorl   %ebx,%ebx
  sarq   $0x3,%rbp
  subq   $0x8,%rsp
  callq  .L_4013a8
  testq  %rbp,%rbp
  je     .L_4069f6
  nop
.L_4069e0:
  movq   %r13,%rdx
  movq   %r14,%rsi
  movl   %r15d,%edi
  callq  *(%r12,%rbx,8)
  addq   $0x1,%rbx
  cmpq   %rbp,%rbx
  jne    .L_4069e0
.L_4069f6:
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
.L_406a20:
  leaq   0x2037e1(%rip),%rax        
  testq  %rax,%rax
  je     .L_406a36
  movq   (%rax),%rdx
.L_406a2f:
  xorl   %esi,%esi
  jmpq   .L_401730
.L_406a36:
  xorl   %edx,%edx
  jmpq    .L_406a2f
  .size .text, .-.text
