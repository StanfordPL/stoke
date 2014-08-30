  .text
  .globl print_filename
  .type print_filename, @function
print_filename:
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
  .size print_filename, .-print_filename
