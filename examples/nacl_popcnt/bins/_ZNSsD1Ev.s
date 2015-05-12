  .text
  .globl _ZNSsD1Ev
  .type _ZNSsD1Ev, @function

#! file-offset 0x45c40
#! rip-offset  0x45c40
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSsD1Ev:                              #        0x45c40  0      
  movl %edi, %edi                        #  1     0x45c40  2      
  subl $0x18, %esp                       #  2     0x45c42  3      
  addq %r15, %rsp                        #  3     0x45c45  3      
  movl %edi, %edi                        #  4     0x45c48  2      
  movl (%r15,%rdi,1), %edi               #  5     0x45c4a  4      
  subl $0xc, %edi                        #  6     0x45c4e  3      
  cmpl $0x10031da0, %edi                 #  7     0x45c51  6      
  jne .L_45c80                           #  8     0x45c57  6      
  nop                                    #  9     0x45c5d  1      
.L_45c60:                                #        0x45c5e  0      
  addl $0x18, %esp                       #  10    0x45c5e  3      
  addq %r15, %rsp                        #  11    0x45c61  3      
  popq %r11                              #  12    0x45c64  3      
  andl $0xffffffe0, %r11d                #  13    0x45c67  7      
  addq %r15, %r11                        #  14    0x45c6e  3      
  jmpq %r11                              #  15    0x45c71  3      
  nop                                    #  16    0x45c74  1      
.L_45c80:                                #        0x45c75  0      
  movl %edi, %edi                        #  17    0x45c75  2      
  movl 0x8(%r15,%rdi,1), %eax            #  18    0x45c77  5      
  leal -0x1(%rax), %edx                  #  19    0x45c7c  3      
  testl %eax, %eax                       #  20    0x45c7f  2      
  movl %edi, %edi                        #  21    0x45c81  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  22    0x45c83  5      
  jg .L_45c60                            #  23    0x45c88  6      
  leal 0xf(%rsp), %esi                   #  24    0x45c8e  4      
  xchgw %ax, %ax                         #  25    0x45c92  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  26    0x45c95  5      
  jmpq .L_45c60                          #  27    0x45c9a  5      
  nop                                    #  28    0x45c9f  1      
  nop                                    #  29    0x45ca0  1      
  nop                                    #  30    0x45ca1  1      
  nop                                    #  31    0x45ca2  1      
  nop                                    #  32    0x45ca3  1      
  nop                                    #  33    0x45ca4  1      
  nop                                    #  34    0x45ca5  1      
  nop                                    #  35    0x45ca6  1      
  nop                                    #  36    0x45ca7  1      
  nop                                    #  37    0x45ca8  1      
  nop                                    #  38    0x45ca9  1      
  nop                                    #  39    0x45caa  1      
  nop                                    #  40    0x45cab  1      
  nop                                    #  41    0x45cac  1      
  nop                                    #  42    0x45cad  1      
  nop                                    #  43    0x45cae  1      
  nop                                    #  44    0x45caf  1      
  nop                                    #  45    0x45cb0  1      
  nop                                    #  46    0x45cb1  1      
  nop                                    #  47    0x45cb2  1      
  nop                                    #  48    0x45cb3  1      
  nop                                    #  49    0x45cb4  1      
  nop                                    #  50    0x45cb5  1      
  nop                                    #  51    0x45cb6  1      
  nop                                    #  52    0x45cb7  1      
  nop                                    #  53    0x45cb8  1      
  nop                                    #  54    0x45cb9  1      
  nop                                    #  55    0x45cba  1      
  nop                                    #  56    0x45cbb  1      
  nop                                    #  57    0x45cbc  1      
                                                                  
.size _ZNSsD1Ev, .-_ZNSsD1Ev

