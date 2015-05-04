  .text
  .globl _ZNSs4_Rep9_S_createEjjRKSaIcE
  .type _ZNSs4_Rep9_S_createEjjRKSaIcE, @function

#! file-offset 0x44be0
#! rip-offset  0x44be0
#! capacity    288 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs4_Rep9_S_createEjjRKSaIcE:        #        0x44be0  0      
  cmpl $0x3ffffffc, %edi                #  1     0x44be0  6      
  pushq %rbx                            #  2     0x44be6  2      
  movl %edi, %ebx                       #  3     0x44be8  2      
  ja .L_44cc0                           #  4     0x44bea  6      
  cmpl %esi, %edi                       #  5     0x44bf0  2      
  ja .L_44c80                           #  6     0x44bf2  6      
  nop                                   #  7     0x44bf8  1      
.L_44c00:                               #        0x44bf9  0      
  leal 0xd(%rbx), %edi                  #  8     0x44bf9  3      
  nop                                   #  9     0x44bfc  1      
  nop                                   #  10    0x44bfd  1      
.L_44c20:                               #        0x44bfe  0      
  nop                                   #  11    0x44bfe  1      
  nop                                   #  12    0x44bff  1      
  callq ._Znwj                          #  13    0x44c00  5      
  movl %eax, %eax                       #  14    0x44c05  2      
  movl %eax, %eax                       #  15    0x44c07  2      
  movl %ebx, 0x4(%r15,%rax,1)           #  16    0x44c09  5      
  movl %eax, %eax                       #  17    0x44c0e  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  18    0x44c10  9      
  popq %rbx                             #  19    0x44c19  2      
  popq %r11                             #  20    0x44c1b  3      
  nop                                   #  21    0x44c1e  1      
  andl $0xffffffe0, %r11d               #  22    0x44c1f  7      
  addq %r15, %r11                       #  23    0x44c26  3      
  jmpq %r11                             #  24    0x44c29  3      
  nop                                   #  25    0x44c2c  1      
  nop                                   #  26    0x44c2d  1      
.L_44c80:                               #        0x44c2e  0      
  leal (%rsi,%rsi,1), %eax              #  27    0x44c2e  3      
  cmpl %eax, %edi                       #  28    0x44c31  2      
  cmovbl %eax, %ebx                     #  29    0x44c33  3      
  leal 0x1d(%rbx), %edx                 #  30    0x44c36  3      
  leal 0xd(%rbx), %edi                  #  31    0x44c39  3      
  cmpl $0x1000, %edx                    #  32    0x44c3c  6      
  jbe .L_44c20                          #  33    0x44c42  6      
  cmpl %ebx, %esi                       #  34    0x44c48  2      
  jae .L_44c20                          #  35    0x44c4a  6      
  leal 0x1000(%rbx), %eax               #  36    0x44c50  6      
  andl $0xfff, %edx                     #  37    0x44c56  6      
  movl $0x3ffffffc, %ebx                #  38    0x44c5c  5      
  subl %edx, %eax                       #  39    0x44c61  2      
  cmpl $0x3ffffffc, %eax                #  40    0x44c63  5      
  cmovbel %eax, %ebx                    #  41    0x44c68  3      
  jmpq .L_44c00                         #  42    0x44c6b  5      
  nop                                   #  43    0x44c70  1      
.L_44cc0:                               #        0x44c71  0      
  movl $0x1002098b, %edi                #  44    0x44c71  5      
  nop                                   #  45    0x44c76  1      
  nop                                   #  46    0x44c77  1      
  callq ._ZSt20__throw_length_errorPKc  #  47    0x44c78  5      
  movl %eax, %edi                       #  48    0x44c7d  2      
  nop                                   #  49    0x44c7f  1      
  nop                                   #  50    0x44c80  1      
  callq ._Unwind_Resume                 #  51    0x44c81  5      
                                                                 
.size _ZNSs4_Rep9_S_createEjjRKSaIcE, .-_ZNSs4_Rep9_S_createEjjRKSaIcE

