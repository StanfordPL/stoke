  .text
  .globl _ZNSs4_Rep7_M_grabERKSaIcES2_
  .type _ZNSs4_Rep7_M_grabERKSaIcES2_, @function

#! file-offset 0x46080
#! rip-offset  0x46080
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSs4_Rep7_M_grabERKSaIcES2_:       #        0x46080  0      
  movl %edi, %edi                     #  1     0x46080  2      
  movl %esi, %esi                     #  2     0x46082  2      
  movl %edi, %edi                     #  3     0x46084  2      
  movl 0x8(%r15,%rdi,1), %eax         #  4     0x46086  5      
  testl %eax, %eax                    #  5     0x4608b  2      
  js .L_460c0                         #  6     0x4608d  6      
  cmpl $0x10031da0, %edi              #  7     0x46093  6      
  jne .L_460e0                        #  8     0x46099  6      
  nop                                 #  9     0x4609f  1      
.L_460a0:                             #        0x460a0  0      
  popq %r11                           #  10    0x460a0  3      
  leal 0xc(%rdi), %eax                #  11    0x460a3  3      
  andl $0xffffffe0, %r11d             #  12    0x460a6  7      
  addq %r15, %r11                     #  13    0x460ad  3      
  jmpq %r11                           #  14    0x460b0  3      
  xchgw %ax, %ax                      #  15    0x460b3  3      
  nop                                 #  16    0x460b6  1      
.L_460c0:                             #        0x460b7  0      
  xorl %edx, %edx                     #  17    0x460b7  2      
  jmpq ._ZNSs4_Rep8_M_cloneERKSaIcEj  #  18    0x460b9  5      
  nop                                 #  19    0x460be  1      
  nop                                 #  20    0x460bf  1      
.L_460e0:                             #        0x460c0  0      
  addl $0x1, %eax                     #  21    0x460c0  3      
  movl %edi, %edi                     #  22    0x460c3  2      
  movl %eax, 0x8(%r15,%rdi,1)         #  23    0x460c5  5      
  jmpq .L_460a0                       #  24    0x460ca  5      
  nop                                 #  25    0x460cf  1      
  nop                                 #  26    0x460d0  1      
  nop                                 #  27    0x460d1  1      
  nop                                 #  28    0x460d2  1      
  nop                                 #  29    0x460d3  1      
  nop                                 #  30    0x460d4  1      
  nop                                 #  31    0x460d5  1      
  nop                                 #  32    0x460d6  1      
  nop                                 #  33    0x460d7  1      
  nop                                 #  34    0x460d8  1      
  nop                                 #  35    0x460d9  1      
  nop                                 #  36    0x460da  1      
  nop                                 #  37    0x460db  1      
  nop                                 #  38    0x460dc  1      
  nop                                 #  39    0x460dd  1      
  nop                                 #  40    0x460de  1      
  nop                                 #  41    0x460df  1      
  nop                                 #  42    0x460e0  1      
  nop                                 #  43    0x460e1  1      
  nop                                 #  44    0x460e2  1      
                                                               
.size _ZNSs4_Rep7_M_grabERKSaIcES2_, .-_ZNSs4_Rep7_M_grabERKSaIcES2_

