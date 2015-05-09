  .text
  .globl _ZNSt8ios_base7failureD0Ev
  .type _ZNSt8ios_base7failureD0Ev, @function

#! file-offset 0x4e140
#! rip-offset  0x4e140
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt8ios_base7failureD0Ev:             #        0x4e140  0      
  pushq %rbx                             #  1     0x4e140  2      
  movl %edi, %ebx                        #  2     0x4e142  2      
  subl $0x10, %esp                       #  3     0x4e144  3      
  addq %r15, %rsp                        #  4     0x4e147  3      
  movl %ebx, %ebx                        #  5     0x4e14a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4e14c  5      
  movl %ebx, %ebx                        #  7     0x4e151  2      
  movl $0x10021148, (%r15,%rbx,1)        #  8     0x4e153  8      
  subl $0xc, %edi                        #  9     0x4e15b  3      
  nop                                    #  10    0x4e15e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4e15f  6      
  jne .L_4e1e0                           #  12    0x4e165  6      
  nop                                    #  13    0x4e16b  1      
  nop                                    #  14    0x4e16c  1      
.L_4e180:                                #        0x4e16d  0      
  movl %ebx, %edi                        #  15    0x4e16d  2      
  nop                                    #  16    0x4e16f  1      
  nop                                    #  17    0x4e170  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4e171  5      
  movl %ebx, %edi                        #  19    0x4e176  2      
  nop                                    #  20    0x4e178  1      
  nop                                    #  21    0x4e179  1      
  callq ._ZdlPv                          #  22    0x4e17a  5      
  addl $0x10, %esp                       #  23    0x4e17f  3      
  addq %r15, %rsp                        #  24    0x4e182  3      
  popq %rbx                              #  25    0x4e185  2      
  popq %r11                              #  26    0x4e187  3      
  andl $0xffffffe0, %r11d                #  27    0x4e18a  7      
  addq %r15, %r11                        #  28    0x4e191  3      
  jmpq %r11                              #  29    0x4e194  3      
  nop                                    #  30    0x4e197  1      
.L_4e1e0:                                #        0x4e198  0      
  movl %edi, %edi                        #  31    0x4e198  2      
  movl 0x8(%r15,%rdi,1), %eax            #  32    0x4e19a  5      
  leal -0x1(%rax), %edx                  #  33    0x4e19f  3      
  testl %eax, %eax                       #  34    0x4e1a2  2      
  movl %edi, %edi                        #  35    0x4e1a4  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  36    0x4e1a6  5      
  jg .L_4e180                            #  37    0x4e1ab  6      
  leal 0xf(%rsp), %esi                   #  38    0x4e1b1  4      
  xchgw %ax, %ax                         #  39    0x4e1b5  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  40    0x4e1b8  5      
  jmpq .L_4e180                          #  41    0x4e1bd  5      
  nop                                    #  42    0x4e1c2  1      
  nop                                    #  43    0x4e1c3  1      
  nop                                    #  44    0x4e1c4  1      
  nop                                    #  45    0x4e1c5  1      
  nop                                    #  46    0x4e1c6  1      
  nop                                    #  47    0x4e1c7  1      
  nop                                    #  48    0x4e1c8  1      
  nop                                    #  49    0x4e1c9  1      
  nop                                    #  50    0x4e1ca  1      
  nop                                    #  51    0x4e1cb  1      
  nop                                    #  52    0x4e1cc  1      
  nop                                    #  53    0x4e1cd  1      
  nop                                    #  54    0x4e1ce  1      
  nop                                    #  55    0x4e1cf  1      
  nop                                    #  56    0x4e1d0  1      
  nop                                    #  57    0x4e1d1  1      
  nop                                    #  58    0x4e1d2  1      
  nop                                    #  59    0x4e1d3  1      
  nop                                    #  60    0x4e1d4  1      
  nop                                    #  61    0x4e1d5  1      
  nop                                    #  62    0x4e1d6  1      
  nop                                    #  63    0x4e1d7  1      
  nop                                    #  64    0x4e1d8  1      
  nop                                    #  65    0x4e1d9  1      
  nop                                    #  66    0x4e1da  1      
  nop                                    #  67    0x4e1db  1      
  nop                                    #  68    0x4e1dc  1      
                                                                  
.size _ZNSt8ios_base7failureD0Ev, .-_ZNSt8ios_base7failureD0Ev

