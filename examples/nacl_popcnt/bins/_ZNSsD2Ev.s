  .text
  .globl _ZNSsD2Ev
  .type _ZNSsD2Ev, @function

#! file-offset 0x45ca0
#! rip-offset  0x45ca0
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSsD2Ev:                              #        0x45ca0  0      
  movl %edi, %edi                        #  1     0x45ca0  2      
  subl $0x18, %esp                       #  2     0x45ca2  3      
  addq %r15, %rsp                        #  3     0x45ca5  3      
  movl %edi, %edi                        #  4     0x45ca8  2      
  movl (%r15,%rdi,1), %edi               #  5     0x45caa  4      
  subl $0xc, %edi                        #  6     0x45cae  3      
  cmpl $0x10031da0, %edi                 #  7     0x45cb1  6      
  jne .L_45ce0                           #  8     0x45cb7  6      
  nop                                    #  9     0x45cbd  1      
.L_45cc0:                                #        0x45cbe  0      
  addl $0x18, %esp                       #  10    0x45cbe  3      
  addq %r15, %rsp                        #  11    0x45cc1  3      
  popq %r11                              #  12    0x45cc4  3      
  andl $0xffffffe0, %r11d                #  13    0x45cc7  7      
  addq %r15, %r11                        #  14    0x45cce  3      
  jmpq %r11                              #  15    0x45cd1  3      
  nop                                    #  16    0x45cd4  1      
.L_45ce0:                                #        0x45cd5  0      
  movl %edi, %edi                        #  17    0x45cd5  2      
  movl 0x8(%r15,%rdi,1), %eax            #  18    0x45cd7  5      
  leal -0x1(%rax), %edx                  #  19    0x45cdc  3      
  testl %eax, %eax                       #  20    0x45cdf  2      
  movl %edi, %edi                        #  21    0x45ce1  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  22    0x45ce3  5      
  jg .L_45cc0                            #  23    0x45ce8  6      
  leal 0xf(%rsp), %esi                   #  24    0x45cee  4      
  xchgw %ax, %ax                         #  25    0x45cf2  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  26    0x45cf5  5      
  jmpq .L_45cc0                          #  27    0x45cfa  5      
  nop                                    #  28    0x45cff  1      
  nop                                    #  29    0x45d00  1      
  nop                                    #  30    0x45d01  1      
  nop                                    #  31    0x45d02  1      
  nop                                    #  32    0x45d03  1      
  nop                                    #  33    0x45d04  1      
  nop                                    #  34    0x45d05  1      
  nop                                    #  35    0x45d06  1      
  nop                                    #  36    0x45d07  1      
  nop                                    #  37    0x45d08  1      
  nop                                    #  38    0x45d09  1      
  nop                                    #  39    0x45d0a  1      
  nop                                    #  40    0x45d0b  1      
  nop                                    #  41    0x45d0c  1      
  nop                                    #  42    0x45d0d  1      
  nop                                    #  43    0x45d0e  1      
  nop                                    #  44    0x45d0f  1      
  nop                                    #  45    0x45d10  1      
  nop                                    #  46    0x45d11  1      
  nop                                    #  47    0x45d12  1      
  nop                                    #  48    0x45d13  1      
  nop                                    #  49    0x45d14  1      
  nop                                    #  50    0x45d15  1      
  nop                                    #  51    0x45d16  1      
  nop                                    #  52    0x45d17  1      
  nop                                    #  53    0x45d18  1      
  nop                                    #  54    0x45d19  1      
  nop                                    #  55    0x45d1a  1      
  nop                                    #  56    0x45d1b  1      
  nop                                    #  57    0x45d1c  1      
                                                                  
.size _ZNSsD2Ev, .-_ZNSsD2Ev

