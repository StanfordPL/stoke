  .text
  .globl _ZNSs4_Rep9_S_createEjjRKSaIcE
  .type _ZNSs4_Rep9_S_createEjjRKSaIcE, @function

#! file-offset 0x44b60
#! rip-offset  0x44b60
#! capacity    288 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs4_Rep9_S_createEjjRKSaIcE:        #        0x44b60  0      
  cmpl $0x3ffffffc, %edi                #  1     0x44b60  6      
  pushq %rbx                            #  2     0x44b66  2      
  movl %edi, %ebx                       #  3     0x44b68  2      
  ja .L_44c40                           #  4     0x44b6a  6      
  cmpl %esi, %edi                       #  5     0x44b70  2      
  ja .L_44c00                           #  6     0x44b72  6      
  nop                                   #  7     0x44b78  1      
.L_44b80:                               #        0x44b79  0      
  leal 0xd(%rbx), %edi                  #  8     0x44b79  3      
  nop                                   #  9     0x44b7c  1      
  nop                                   #  10    0x44b7d  1      
.L_44ba0:                               #        0x44b7e  0      
  nop                                   #  11    0x44b7e  1      
  nop                                   #  12    0x44b7f  1      
  callq ._Znwj                          #  13    0x44b80  5      
  movl %eax, %eax                       #  14    0x44b85  2      
  movl %eax, %eax                       #  15    0x44b87  2      
  movl %ebx, 0x4(%r15,%rax,1)           #  16    0x44b89  5      
  movl %eax, %eax                       #  17    0x44b8e  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  18    0x44b90  9      
  popq %rbx                             #  19    0x44b99  2      
  popq %r11                             #  20    0x44b9b  3      
  nop                                   #  21    0x44b9e  1      
  andl $0xffffffe0, %r11d               #  22    0x44b9f  7      
  addq %r15, %r11                       #  23    0x44ba6  3      
  jmpq %r11                             #  24    0x44ba9  3      
  nop                                   #  25    0x44bac  1      
  nop                                   #  26    0x44bad  1      
.L_44c00:                               #        0x44bae  0      
  leal (%rsi,%rsi,1), %eax              #  27    0x44bae  3      
  cmpl %eax, %edi                       #  28    0x44bb1  2      
  cmovbl %eax, %ebx                     #  29    0x44bb3  3      
  leal 0x1d(%rbx), %edx                 #  30    0x44bb6  3      
  leal 0xd(%rbx), %edi                  #  31    0x44bb9  3      
  cmpl $0x1000, %edx                    #  32    0x44bbc  6      
  jbe .L_44ba0                          #  33    0x44bc2  6      
  cmpl %ebx, %esi                       #  34    0x44bc8  2      
  jae .L_44ba0                          #  35    0x44bca  6      
  leal 0x1000(%rbx), %eax               #  36    0x44bd0  6      
  andl $0xfff, %edx                     #  37    0x44bd6  6      
  movl $0x3ffffffc, %ebx                #  38    0x44bdc  5      
  subl %edx, %eax                       #  39    0x44be1  2      
  cmpl $0x3ffffffc, %eax                #  40    0x44be3  5      
  cmovbel %eax, %ebx                    #  41    0x44be8  3      
  jmpq .L_44b80                         #  42    0x44beb  5      
  nop                                   #  43    0x44bf0  1      
.L_44c40:                               #        0x44bf1  0      
  movl $0x1002098b, %edi                #  44    0x44bf1  5      
  nop                                   #  45    0x44bf6  1      
  nop                                   #  46    0x44bf7  1      
  callq ._ZSt20__throw_length_errorPKc  #  47    0x44bf8  5      
  movl %eax, %edi                       #  48    0x44bfd  2      
  nop                                   #  49    0x44bff  1      
  nop                                   #  50    0x44c00  1      
  callq ._Unwind_Resume                 #  51    0x44c01  5      
                                                                 
.size _ZNSs4_Rep9_S_createEjjRKSaIcE, .-_ZNSs4_Rep9_S_createEjjRKSaIcE

