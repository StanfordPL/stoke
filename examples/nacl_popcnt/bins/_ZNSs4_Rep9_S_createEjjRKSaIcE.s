  .text
  .globl _ZNSs4_Rep9_S_createEjjRKSaIcE
  .type _ZNSs4_Rep9_S_createEjjRKSaIcE, @function

#! file-offset 0x44b40
#! rip-offset  0x44b40
#! capacity    288 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs4_Rep9_S_createEjjRKSaIcE:        #        0x44b40  0      
  cmpl $0x3ffffffc, %edi                #  1     0x44b40  6      
  pushq %rbx                            #  2     0x44b46  2      
  movl %edi, %ebx                       #  3     0x44b48  2      
  ja .L_44c20                           #  4     0x44b4a  6      
  cmpl %esi, %edi                       #  5     0x44b50  2      
  ja .L_44be0                           #  6     0x44b52  6      
  nop                                   #  7     0x44b58  1      
.L_44b60:                               #        0x44b59  0      
  leal 0xd(%rbx), %edi                  #  8     0x44b59  3      
  nop                                   #  9     0x44b5c  1      
  nop                                   #  10    0x44b5d  1      
.L_44b80:                               #        0x44b5e  0      
  nop                                   #  11    0x44b5e  1      
  nop                                   #  12    0x44b5f  1      
  callq ._Znwj                          #  13    0x44b60  5      
  movl %eax, %eax                       #  14    0x44b65  2      
  movl %eax, %eax                       #  15    0x44b67  2      
  movl %ebx, 0x4(%r15,%rax,1)           #  16    0x44b69  5      
  movl %eax, %eax                       #  17    0x44b6e  2      
  movl $0x0, 0x8(%r15,%rax,1)           #  18    0x44b70  9      
  popq %rbx                             #  19    0x44b79  2      
  popq %r11                             #  20    0x44b7b  3      
  nop                                   #  21    0x44b7e  1      
  andl $0xffffffe0, %r11d               #  22    0x44b7f  7      
  addq %r15, %r11                       #  23    0x44b86  3      
  jmpq %r11                             #  24    0x44b89  3      
  nop                                   #  25    0x44b8c  1      
  nop                                   #  26    0x44b8d  1      
.L_44be0:                               #        0x44b8e  0      
  leal (%rsi,%rsi,1), %eax              #  27    0x44b8e  3      
  cmpl %eax, %edi                       #  28    0x44b91  2      
  cmovbl %eax, %ebx                     #  29    0x44b93  3      
  leal 0x1d(%rbx), %edx                 #  30    0x44b96  3      
  leal 0xd(%rbx), %edi                  #  31    0x44b99  3      
  cmpl $0x1000, %edx                    #  32    0x44b9c  6      
  jbe .L_44b80                          #  33    0x44ba2  6      
  cmpl %ebx, %esi                       #  34    0x44ba8  2      
  jae .L_44b80                          #  35    0x44baa  6      
  leal 0x1000(%rbx), %eax               #  36    0x44bb0  6      
  andl $0xfff, %edx                     #  37    0x44bb6  6      
  movl $0x3ffffffc, %ebx                #  38    0x44bbc  5      
  subl %edx, %eax                       #  39    0x44bc1  2      
  cmpl $0x3ffffffc, %eax                #  40    0x44bc3  5      
  cmovbel %eax, %ebx                    #  41    0x44bc8  3      
  jmpq .L_44b60                         #  42    0x44bcb  5      
  nop                                   #  43    0x44bd0  1      
.L_44c20:                               #        0x44bd1  0      
  movl $0x1002098b, %edi                #  44    0x44bd1  5      
  nop                                   #  45    0x44bd6  1      
  nop                                   #  46    0x44bd7  1      
  callq ._ZSt20__throw_length_errorPKc  #  47    0x44bd8  5      
  movl %eax, %edi                       #  48    0x44bdd  2      
  nop                                   #  49    0x44bdf  1      
  nop                                   #  50    0x44be0  1      
  callq ._Unwind_Resume                 #  51    0x44be1  5      
                                                                 
.size _ZNSs4_Rep9_S_createEjjRKSaIcE, .-_ZNSs4_Rep9_S_createEjjRKSaIcE

