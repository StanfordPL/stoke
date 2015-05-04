  .text
  .globl _ZNSsC2ERKSsjj
  .type _ZNSsC2ERKSsjj, @function

#! file-offset 0x47b00
#! rip-offset  0x47b00
#! capacity    160 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZNSsC2ERKSsjj:                                                          #        0x47b00  0      
  pushq %rbx                                                              #  1     0x47b00  2      
  movl %esi, %esi                                                         #  2     0x47b02  2      
  movl %edi, %ebx                                                         #  3     0x47b04  2      
  subl $0x20, %esp                                                        #  4     0x47b06  3      
  addq %r15, %rsp                                                         #  5     0x47b09  3      
  movl %esi, %esi                                                         #  6     0x47b0c  2      
  movl (%r15,%rsi,1), %edi                                                #  7     0x47b0e  4      
  leal -0xc(%rdi), %eax                                                   #  8     0x47b12  3      
  movl %eax, %eax                                                         #  9     0x47b15  2      
  movl (%r15,%rax,1), %esi                                                #  10    0x47b17  4      
  cmpl %esi, %edx                                                         #  11    0x47b1b  2      
  nop                                                                     #  12    0x47b1d  1      
  ja .L_47b60                                                             #  13    0x47b1e  6      
  subl %edx, %esi                                                         #  14    0x47b24  2      
  leal 0x1f(%rsp), %eax                                                   #  15    0x47b26  4      
  movb $0x0, (%rsp)                                                       #  16    0x47b2a  4      
  cmpl %ecx, %esi                                                         #  17    0x47b2e  2      
  cmoval %ecx, %esi                                                       #  18    0x47b30  3      
  addl %edx, %esi                                                         #  19    0x47b33  2      
  addl %edi, %esi                                                         #  20    0x47b35  2      
  leal (%rdx,%rdi,1), %edi                                                #  21    0x47b37  3      
  movl %eax, %edx                                                         #  22    0x47b3a  2      
  nop                                                                     #  23    0x47b3c  1      
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  24    0x47b3d  5      
  movl %ebx, %ebx                                                         #  25    0x47b42  2      
  movl %eax, (%r15,%rbx,1)                                                #  26    0x47b44  4      
  addl $0x20, %esp                                                        #  27    0x47b48  3      
  addq %r15, %rsp                                                         #  28    0x47b4b  3      
  popq %rbx                                                               #  29    0x47b4e  2      
  popq %r11                                                               #  30    0x47b50  3      
  andl $0xffffffe0, %r11d                                                 #  31    0x47b53  7      
  addq %r15, %r11                                                         #  32    0x47b5a  3      
  jmpq %r11                                                               #  33    0x47b5d  3      
  nop                                                                     #  34    0x47b60  1      
.L_47b60:                                                                 #        0x47b61  0      
  movl $0x100209f2, %edi                                                  #  35    0x47b61  5      
  nop                                                                     #  36    0x47b66  1      
  nop                                                                     #  37    0x47b67  1      
  callq ._ZSt20__throw_out_of_rangePKc                                    #  38    0x47b68  5      
  movl %eax, %edi                                                         #  39    0x47b6d  2      
  nop                                                                     #  40    0x47b6f  1      
  nop                                                                     #  41    0x47b70  1      
  callq ._Unwind_Resume                                                   #  42    0x47b71  5      
                                                                                                   
.size _ZNSsC2ERKSsjj, .-_ZNSsC2ERKSsjj

