  .text
  .globl _ZNSsD2Ev
  .type _ZNSsD2Ev, @function

#! file-offset 0x45d40
#! rip-offset  0x45d40
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSsD2Ev:                              #        0x45d40  0      
  movl %edi, %edi                        #  1     0x45d40  2      
  subl $0x18, %esp                       #  2     0x45d42  3      
  addq %r15, %rsp                        #  3     0x45d45  3      
  movl %edi, %edi                        #  4     0x45d48  2      
  movl (%r15,%rdi,1), %edi               #  5     0x45d4a  4      
  subl $0xc, %edi                        #  6     0x45d4e  3      
  cmpl $0x10031da0, %edi                 #  7     0x45d51  6      
  jne .L_45d80                           #  8     0x45d57  6      
  nop                                    #  9     0x45d5d  1      
.L_45d60:                                #        0x45d5e  0      
  addl $0x18, %esp                       #  10    0x45d5e  3      
  addq %r15, %rsp                        #  11    0x45d61  3      
  popq %r11                              #  12    0x45d64  3      
  andl $0xffffffe0, %r11d                #  13    0x45d67  7      
  addq %r15, %r11                        #  14    0x45d6e  3      
  jmpq %r11                              #  15    0x45d71  3      
  nop                                    #  16    0x45d74  1      
.L_45d80:                                #        0x45d75  0      
  movl %edi, %edi                        #  17    0x45d75  2      
  movl 0x8(%r15,%rdi,1), %eax            #  18    0x45d77  5      
  leal -0x1(%rax), %edx                  #  19    0x45d7c  3      
  testl %eax, %eax                       #  20    0x45d7f  2      
  movl %edi, %edi                        #  21    0x45d81  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  22    0x45d83  5      
  jg .L_45d60                            #  23    0x45d88  6      
  leal 0xf(%rsp), %esi                   #  24    0x45d8e  4      
  xchgw %ax, %ax                         #  25    0x45d92  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  26    0x45d95  5      
  jmpq .L_45d60                          #  27    0x45d9a  5      
  nop                                    #  28    0x45d9f  1      
  nop                                    #  29    0x45da0  1      
  nop                                    #  30    0x45da1  1      
  nop                                    #  31    0x45da2  1      
  nop                                    #  32    0x45da3  1      
  nop                                    #  33    0x45da4  1      
  nop                                    #  34    0x45da5  1      
  nop                                    #  35    0x45da6  1      
  nop                                    #  36    0x45da7  1      
  nop                                    #  37    0x45da8  1      
  nop                                    #  38    0x45da9  1      
  nop                                    #  39    0x45daa  1      
  nop                                    #  40    0x45dab  1      
  nop                                    #  41    0x45dac  1      
  nop                                    #  42    0x45dad  1      
  nop                                    #  43    0x45dae  1      
  nop                                    #  44    0x45daf  1      
  nop                                    #  45    0x45db0  1      
  nop                                    #  46    0x45db1  1      
  nop                                    #  47    0x45db2  1      
  nop                                    #  48    0x45db3  1      
  nop                                    #  49    0x45db4  1      
  nop                                    #  50    0x45db5  1      
  nop                                    #  51    0x45db6  1      
  nop                                    #  52    0x45db7  1      
  nop                                    #  53    0x45db8  1      
  nop                                    #  54    0x45db9  1      
  nop                                    #  55    0x45dba  1      
  nop                                    #  56    0x45dbb  1      
  nop                                    #  57    0x45dbc  1      
                                                                  
.size _ZNSsD2Ev, .-_ZNSsD2Ev

