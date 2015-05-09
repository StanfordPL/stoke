  .text
  .globl _ZNSs4_Rep7_M_grabERKSaIcES2_
  .type _ZNSs4_Rep7_M_grabERKSaIcES2_, @function

#! file-offset 0x45fe0
#! rip-offset  0x45fe0
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSs4_Rep7_M_grabERKSaIcES2_:       #        0x45fe0  0      
  movl %edi, %edi                     #  1     0x45fe0  2      
  movl %esi, %esi                     #  2     0x45fe2  2      
  movl %edi, %edi                     #  3     0x45fe4  2      
  movl 0x8(%r15,%rdi,1), %eax         #  4     0x45fe6  5      
  testl %eax, %eax                    #  5     0x45feb  2      
  js .L_46020                         #  6     0x45fed  6      
  cmpl $0x10031da0, %edi              #  7     0x45ff3  6      
  jne .L_46040                        #  8     0x45ff9  6      
  nop                                 #  9     0x45fff  1      
.L_46000:                             #        0x46000  0      
  popq %r11                           #  10    0x46000  3      
  leal 0xc(%rdi), %eax                #  11    0x46003  3      
  andl $0xffffffe0, %r11d             #  12    0x46006  7      
  addq %r15, %r11                     #  13    0x4600d  3      
  jmpq %r11                           #  14    0x46010  3      
  xchgw %ax, %ax                      #  15    0x46013  3      
  nop                                 #  16    0x46016  1      
.L_46020:                             #        0x46017  0      
  xorl %edx, %edx                     #  17    0x46017  2      
  jmpq ._ZNSs4_Rep8_M_cloneERKSaIcEj  #  18    0x46019  5      
  nop                                 #  19    0x4601e  1      
  nop                                 #  20    0x4601f  1      
.L_46040:                             #        0x46020  0      
  addl $0x1, %eax                     #  21    0x46020  3      
  movl %edi, %edi                     #  22    0x46023  2      
  movl %eax, 0x8(%r15,%rdi,1)         #  23    0x46025  5      
  jmpq .L_46000                       #  24    0x4602a  5      
  nop                                 #  25    0x4602f  1      
  nop                                 #  26    0x46030  1      
  nop                                 #  27    0x46031  1      
  nop                                 #  28    0x46032  1      
  nop                                 #  29    0x46033  1      
  nop                                 #  30    0x46034  1      
  nop                                 #  31    0x46035  1      
  nop                                 #  32    0x46036  1      
  nop                                 #  33    0x46037  1      
  nop                                 #  34    0x46038  1      
  nop                                 #  35    0x46039  1      
  nop                                 #  36    0x4603a  1      
  nop                                 #  37    0x4603b  1      
  nop                                 #  38    0x4603c  1      
  nop                                 #  39    0x4603d  1      
  nop                                 #  40    0x4603e  1      
  nop                                 #  41    0x4603f  1      
  nop                                 #  42    0x46040  1      
  nop                                 #  43    0x46041  1      
  nop                                 #  44    0x46042  1      
                                                               
.size _ZNSs4_Rep7_M_grabERKSaIcES2_, .-_ZNSs4_Rep7_M_grabERKSaIcES2_

