  .text
  .globl main
  .type main, @function
main:
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
  movl   $0x406b16,%edx
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
  movl   $0x406ae5,%r9d
  movq   $0x0,0x8(%rsp)
  movq   $0x406b09,(%rsp)
  movl   $0x406af2,%r8d
  movl   $0x406abb,%edx
  movl   $0x406b01,%esi
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
  movl   $0x4072b8,%esi
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
  movl   $0x407168,%esi
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
  movl   $0x406b1b,%esi
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
  movl   $0x406b2a,%esi
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
  movl   $0x406b46,%esi
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
  movl   $0x4072f8,%esi
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
  movl   $0x406b80,%edi
  callq  .L_401680
  movq   0x20(%rsp),%rdi
  callq  .L_402640
  movq   0x2083e8(%rip),%rcx        
  movl   $0x4,%edx
  movl   $0x1,%esi
  movl   $0x406b83,%edi
  callq  .L_401680
.L_401edc:
  xorl   %ebx,%ebx
  jmpq    .L_401efd
.L_401ee0:
  movzbl 0x80(%rsp,%rbx,1),%edx
  movl   $0x406b88,%esi
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
  movl   $0x407420,%edx
  movl   $0x407450,%esi
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
  movl   $0x406af0,%esi
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
  movl   $0x406b6e,%esi
.L_402139:
  xorl   %edi,%edi
  callq  .L_4014c0
  movq   0x38(%rsp),%rdx
  movq   %rax,%rcx
  movl   $0x406b66,%esi
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
  movl   $0x407140,%esi
  jmpq   .L_4019e5
.L_4021c2:
  cmpb   $0x0,0x208118(%rip)        
  je     .L_4019c9
  testb  %r15b,%r15b
  jne    .L_401a59
  movl   $0x5,%edx
  movl   $0x407278,%esi
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
  movl   $0x407328,%esi
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
  movl   $0x406b71,%esi
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
  movl   $0x4071a8,%esi
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
  movl   $0x407360,%edx
  movl   $0x407390,%esi
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
  movl   $0x4073c0,%edx
  movl   $0x4073f0,%esi
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
  movl   $0x4071f8,%esi
  jmpq   .L_4019e5
.L_4023ab:
  movq   0x207f06(%rip),%rdi        
  callq  .L_406280
  addl   $0x1,%eax
  jne    .L_402283
  xorl   %edi,%edi
  movl   $0x5,%edx
  movl   $0x406b1b,%esi
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
  movl   $0x407238,%esi
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
  movl   $0x406b5f,%esi
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
  .size main, .-main
