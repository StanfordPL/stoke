  .text
  .globl _ZNSs4_Rep7_M_grabERKSaIcES2_
  .type _ZNSs4_Rep7_M_grabERKSaIcES2_, @function

#! file-offset 0x46000
#! rip-offset  0x46000
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSs4_Rep7_M_grabERKSaIcES2_:       #        0x46000  0      
  movl %edi, %edi                     #  1     0x46000  2      
  movl %esi, %esi                     #  2     0x46002  2      
  movl %edi, %edi                     #  3     0x46004  2      
  movl 0x8(%r15,%rdi,1), %eax         #  4     0x46006  5      
  testl %eax, %eax                    #  5     0x4600b  2      
  js .L_46040                         #  6     0x4600d  6      
  cmpl $0x10031da0, %edi              #  7     0x46013  6      
  jne .L_46060                        #  8     0x46019  6      
  nop                                 #  9     0x4601f  1      
.L_46020:                             #        0x46020  0      
  popq %r11                           #  10    0x46020  3      
  leal 0xc(%rdi), %eax                #  11    0x46023  3      
  andl $0xffffffe0, %r11d             #  12    0x46026  7      
  addq %r15, %r11                     #  13    0x4602d  3      
  jmpq %r11                           #  14    0x46030  3      
  xchgw %ax, %ax                      #  15    0x46033  3      
  nop                                 #  16    0x46036  1      
.L_46040:                             #        0x46037  0      
  xorl %edx, %edx                     #  17    0x46037  2      
  jmpq ._ZNSs4_Rep8_M_cloneERKSaIcEj  #  18    0x46039  5      
  nop                                 #  19    0x4603e  1      
  nop                                 #  20    0x4603f  1      
.L_46060:                             #        0x46040  0      
  addl $0x1, %eax                     #  21    0x46040  3      
  movl %edi, %edi                     #  22    0x46043  2      
  movl %eax, 0x8(%r15,%rdi,1)         #  23    0x46045  5      
  jmpq .L_46020                       #  24    0x4604a  5      
  nop                                 #  25    0x4604f  1      
  nop                                 #  26    0x46050  1      
  nop                                 #  27    0x46051  1      
  nop                                 #  28    0x46052  1      
  nop                                 #  29    0x46053  1      
  nop                                 #  30    0x46054  1      
  nop                                 #  31    0x46055  1      
  nop                                 #  32    0x46056  1      
  nop                                 #  33    0x46057  1      
  nop                                 #  34    0x46058  1      
  nop                                 #  35    0x46059  1      
  nop                                 #  36    0x4605a  1      
  nop                                 #  37    0x4605b  1      
  nop                                 #  38    0x4605c  1      
  nop                                 #  39    0x4605d  1      
  nop                                 #  40    0x4605e  1      
  nop                                 #  41    0x4605f  1      
  nop                                 #  42    0x46060  1      
  nop                                 #  43    0x46061  1      
  nop                                 #  44    0x46062  1      
                                                               
.size _ZNSs4_Rep7_M_grabERKSaIcES2_, .-_ZNSs4_Rep7_M_grabERKSaIcES2_

