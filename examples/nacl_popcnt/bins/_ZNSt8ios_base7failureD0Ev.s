  .text
  .globl _ZNSt8ios_base7failureD0Ev
  .type _ZNSt8ios_base7failureD0Ev, @function

#! file-offset 0x4e160
#! rip-offset  0x4e160
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt8ios_base7failureD0Ev:             #        0x4e160  0      
  pushq %rbx                             #  1     0x4e160  2      
  movl %edi, %ebx                        #  2     0x4e162  2      
  subl $0x10, %esp                       #  3     0x4e164  3      
  addq %r15, %rsp                        #  4     0x4e167  3      
  movl %ebx, %ebx                        #  5     0x4e16a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4e16c  5      
  movl %ebx, %ebx                        #  7     0x4e171  2      
  movl $0x10021148, (%r15,%rbx,1)        #  8     0x4e173  8      
  subl $0xc, %edi                        #  9     0x4e17b  3      
  nop                                    #  10    0x4e17e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4e17f  6      
  jne .L_4e200                           #  12    0x4e185  6      
  nop                                    #  13    0x4e18b  1      
  nop                                    #  14    0x4e18c  1      
.L_4e1a0:                                #        0x4e18d  0      
  movl %ebx, %edi                        #  15    0x4e18d  2      
  nop                                    #  16    0x4e18f  1      
  nop                                    #  17    0x4e190  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4e191  5      
  movl %ebx, %edi                        #  19    0x4e196  2      
  nop                                    #  20    0x4e198  1      
  nop                                    #  21    0x4e199  1      
  callq ._ZdlPv                          #  22    0x4e19a  5      
  addl $0x10, %esp                       #  23    0x4e19f  3      
  addq %r15, %rsp                        #  24    0x4e1a2  3      
  popq %rbx                              #  25    0x4e1a5  2      
  popq %r11                              #  26    0x4e1a7  3      
  andl $0xffffffe0, %r11d                #  27    0x4e1aa  7      
  addq %r15, %r11                        #  28    0x4e1b1  3      
  jmpq %r11                              #  29    0x4e1b4  3      
  nop                                    #  30    0x4e1b7  1      
.L_4e200:                                #        0x4e1b8  0      
  movl %edi, %edi                        #  31    0x4e1b8  2      
  movl 0x8(%r15,%rdi,1), %eax            #  32    0x4e1ba  5      
  leal -0x1(%rax), %edx                  #  33    0x4e1bf  3      
  testl %eax, %eax                       #  34    0x4e1c2  2      
  movl %edi, %edi                        #  35    0x4e1c4  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  36    0x4e1c6  5      
  jg .L_4e1a0                            #  37    0x4e1cb  6      
  leal 0xf(%rsp), %esi                   #  38    0x4e1d1  4      
  xchgw %ax, %ax                         #  39    0x4e1d5  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  40    0x4e1d8  5      
  jmpq .L_4e1a0                          #  41    0x4e1dd  5      
  nop                                    #  42    0x4e1e2  1      
  nop                                    #  43    0x4e1e3  1      
  nop                                    #  44    0x4e1e4  1      
  nop                                    #  45    0x4e1e5  1      
  nop                                    #  46    0x4e1e6  1      
  nop                                    #  47    0x4e1e7  1      
  nop                                    #  48    0x4e1e8  1      
  nop                                    #  49    0x4e1e9  1      
  nop                                    #  50    0x4e1ea  1      
  nop                                    #  51    0x4e1eb  1      
  nop                                    #  52    0x4e1ec  1      
  nop                                    #  53    0x4e1ed  1      
  nop                                    #  54    0x4e1ee  1      
  nop                                    #  55    0x4e1ef  1      
  nop                                    #  56    0x4e1f0  1      
  nop                                    #  57    0x4e1f1  1      
  nop                                    #  58    0x4e1f2  1      
  nop                                    #  59    0x4e1f3  1      
  nop                                    #  60    0x4e1f4  1      
  nop                                    #  61    0x4e1f5  1      
  nop                                    #  62    0x4e1f6  1      
  nop                                    #  63    0x4e1f7  1      
  nop                                    #  64    0x4e1f8  1      
  nop                                    #  65    0x4e1f9  1      
  nop                                    #  66    0x4e1fa  1      
  nop                                    #  67    0x4e1fb  1      
  nop                                    #  68    0x4e1fc  1      
                                                                  
.size _ZNSt8ios_base7failureD0Ev, .-_ZNSt8ios_base7failureD0Ev

