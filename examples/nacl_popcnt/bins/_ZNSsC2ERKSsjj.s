  .text
  .globl _ZNSsC2ERKSsjj
  .type _ZNSsC2ERKSsjj, @function

#! file-offset 0x47a60
#! rip-offset  0x47a60
#! capacity    160 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2ERKSsjj:                                                          #        0x47a60  0      
  pushq %rbx                                                              #  1     0x47a60  2      
  movl %esi, %esi                                                         #  2     0x47a62  2      
  movl %edi, %ebx                                                         #  3     0x47a64  2      
  subl $0x20, %esp                                                        #  4     0x47a66  3      
  addq %r15, %rsp                                                         #  5     0x47a69  3      
  movl %esi, %esi                                                         #  6     0x47a6c  2      
  movl (%r15,%rsi,1), %edi                                                #  7     0x47a6e  4      
  leal -0xc(%rdi), %eax                                                   #  8     0x47a72  3      
  movl %eax, %eax                                                         #  9     0x47a75  2      
  movl (%r15,%rax,1), %esi                                                #  10    0x47a77  4      
  cmpl %esi, %edx                                                         #  11    0x47a7b  2      
  nop                                                                     #  12    0x47a7d  1      
  ja .L_47ac0                                                             #  13    0x47a7e  6      
  subl %edx, %esi                                                         #  14    0x47a84  2      
  leal 0x1f(%rsp), %eax                                                   #  15    0x47a86  4      
  movb $0x0, (%rsp)                                                       #  16    0x47a8a  4      
  cmpl %ecx, %esi                                                         #  17    0x47a8e  2      
  cmoval %ecx, %esi                                                       #  18    0x47a90  3      
  addl %edx, %esi                                                         #  19    0x47a93  2      
  addl %edi, %esi                                                         #  20    0x47a95  2      
  leal (%rdx,%rdi,1), %edi                                                #  21    0x47a97  3      
  movl %eax, %edx                                                         #  22    0x47a9a  2      
  nop                                                                     #  23    0x47a9c  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  24    0x47a9d  5      
  movl %ebx, %ebx                                                         #  25    0x47aa2  2      
  movl %eax, (%r15,%rbx,1)                                                #  26    0x47aa4  4      
  addl $0x20, %esp                                                        #  27    0x47aa8  3      
  addq %r15, %rsp                                                         #  28    0x47aab  3      
  popq %rbx                                                               #  29    0x47aae  2      
  popq %r11                                                               #  30    0x47ab0  3      
  andl $0xffffffe0, %r11d                                                 #  31    0x47ab3  7      
  addq %r15, %r11                                                         #  32    0x47aba  3      
  jmpq %r11                                                               #  33    0x47abd  3      
  nop                                                                     #  34    0x47ac0  1      
.L_47ac0:                                                                 #        0x47ac1  0      
  movl $0x100209f2, %edi                                                  #  35    0x47ac1  5      
  nop                                                                     #  36    0x47ac6  1      
  nop                                                                     #  37    0x47ac7  1      
  callq ._ZSt20__throw_out_of_rangePKc                                    #  38    0x47ac8  5      
  movl %eax, %edi                                                         #  39    0x47acd  2      
  nop                                                                     #  40    0x47acf  1      
  nop                                                                     #  41    0x47ad0  1      
  callq ._Unwind_Resume                                                   #  42    0x47ad1  5      
                                                                                                   
.size _ZNSsC2ERKSsjj, .-_ZNSsC2ERKSsjj

