  .text
  .globl _ZNSsC2ERKSs
  .type _ZNSsC2ERKSs, @function

#! file-offset 0x46fe0
#! rip-offset  0x46fe0
#! capacity    224 bytes

# Text                                 #  Line  RIP      Bytes  
._ZNSsC2ERKSs:                         #        0x46fe0  0      
  pushq %rbx                           #  1     0x46fe0  2      
  movl %esi, %esi                      #  2     0x46fe2  2      
  movl %edi, %ebx                      #  3     0x46fe4  2      
  subl $0x10, %esp                     #  4     0x46fe6  3      
  addq %r15, %rsp                      #  5     0x46fe9  3      
  movl %esi, %esi                      #  6     0x46fec  2      
  movl (%r15,%rsi,1), %edi             #  7     0x46fee  4      
  subl $0xc, %edi                      #  8     0x46ff2  3      
  movl %edi, %edi                      #  9     0x46ff5  2      
  movl 0x8(%r15,%rdi,1), %eax          #  10    0x46ff7  5      
  testl %eax, %eax                     #  11    0x46ffc  2      
  nop                                  #  12    0x46ffe  1      
  js .L_47040                          #  13    0x46fff  6      
  cmpl $0x10031da0, %edi               #  14    0x47005  6      
  jne .L_47080                         #  15    0x4700b  6      
  nop                                  #  16    0x47011  1      
  nop                                  #  17    0x47012  1      
.L_47020:                              #        0x47013  0      
  addl $0xc, %edi                      #  18    0x47013  3      
  movl %ebx, %ebx                      #  19    0x47016  2      
  movl %edi, (%r15,%rbx,1)             #  20    0x47018  4      
  addl $0x10, %esp                     #  21    0x4701c  3      
  addq %r15, %rsp                      #  22    0x4701f  3      
  popq %rbx                            #  23    0x47022  2      
  popq %r11                            #  24    0x47024  3      
  andl $0xffffffe0, %r11d              #  25    0x47027  7      
  addq %r15, %r11                      #  26    0x4702e  3      
  jmpq %r11                            #  27    0x47031  3      
  nop                                  #  28    0x47034  1      
.L_47040:                              #        0x47035  0      
  leal 0xf(%rsp), %esi                 #  29    0x47035  4      
  xorl %edx, %edx                      #  30    0x47039  2      
  nop                                  #  31    0x4703b  1      
  nop                                  #  32    0x4703c  1      
  callq ._ZNSs4_Rep8_M_cloneERKSaIcEj  #  33    0x4703d  5      
  movl %eax, %edi                      #  34    0x47042  2      
  movl %ebx, %ebx                      #  35    0x47044  2      
  movl %edi, (%r15,%rbx,1)             #  36    0x47046  4      
  addl $0x10, %esp                     #  37    0x4704a  3      
  addq %r15, %rsp                      #  38    0x4704d  3      
  popq %rbx                            #  39    0x47050  2      
  popq %r11                            #  40    0x47052  3      
  andl $0xffffffe0, %r11d              #  41    0x47055  7      
  addq %r15, %r11                      #  42    0x4705c  3      
  jmpq %r11                            #  43    0x4705f  3      
  nop                                  #  44    0x47062  1      
.L_47080:                              #        0x47063  0      
  addl $0x1, %eax                      #  45    0x47063  3      
  movl %edi, %edi                      #  46    0x47066  2      
  movl %eax, 0x8(%r15,%rdi,1)          #  47    0x47068  5      
  jmpq .L_47020                        #  48    0x4706d  5      
  nop                                  #  49    0x47072  1      
  nop                                  #  50    0x47073  1      
  movl %eax, %edi                      #  51    0x47074  2      
  nop                                  #  52    0x47076  1      
  nop                                  #  53    0x47077  1      
  callq ._Unwind_Resume                #  54    0x47078  5      
                                                                
.size _ZNSsC2ERKSs, .-_ZNSsC2ERKSs

