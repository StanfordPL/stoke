  .text
  .globl _ZNSs4_Rep8_M_cloneERKSaIcEj
  .type _ZNSs4_Rep8_M_cloneERKSaIcEj, @function

#! file-offset 0x45f00
#! rip-offset  0x45f00
#! capacity    256 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs4_Rep8_M_cloneERKSaIcEj:           #        0x45f00  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x45f00  5      
  movl %edi, %ebx                        #  2     0x45f05  2      
  movq %r12, -0x10(%rsp)                 #  3     0x45f07  5      
  movl %ebx, %ebx                        #  4     0x45f0c  2      
  movq %r13, -0x8(%rsp)                  #  5     0x45f0e  5      
  movl %edx, %edi                        #  6     0x45f13  2      
  subl $0x18, %esp                       #  7     0x45f15  3      
  addq %r15, %rsp                        #  8     0x45f18  3      
  nop                                    #  9     0x45f1b  1      
  movl %ebx, %ebx                        #  10    0x45f1c  2      
  addl (%r15,%rbx,1), %edi               #  11    0x45f1e  4      
  movl %esi, %edx                        #  12    0x45f22  2      
  movl %ebx, %ebx                        #  13    0x45f24  2      
  movl 0x4(%r15,%rbx,1), %esi            #  14    0x45f26  5      
  nop                                    #  15    0x45f2b  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE  #  16    0x45f2c  5      
  movl %ebx, %ebx                        #  17    0x45f31  2      
  movl (%r15,%rbx,1), %edx               #  18    0x45f33  4      
  movl %eax, %r12d                       #  19    0x45f37  3      
  testl %edx, %edx                       #  20    0x45f3a  2      
  jne .L_45fa0                           #  21    0x45f3c  6      
  leal 0xc(%r12), %r13d                  #  22    0x45f42  5      
  xorl %eax, %eax                        #  23    0x45f47  2      
  nop                                    #  24    0x45f49  1      
.L_45f60:                                #        0x45f4a  0      
  movl %r12d, %r12d                      #  25    0x45f4a  3      
  movl %eax, (%r15,%r12,1)               #  26    0x45f4d  4      
  addl %r13d, %eax                       #  27    0x45f51  3      
  movl %r12d, %r12d                      #  28    0x45f54  3      
  movl $0x0, 0x8(%r15,%r12,1)            #  29    0x45f57  9      
  movl %eax, %eax                        #  30    0x45f60  2      
  movb $0x0, (%r15,%rax,1)               #  31    0x45f62  5      
  movl %r13d, %eax                       #  32    0x45f67  3      
  movq (%rsp), %rbx                      #  33    0x45f6a  4      
  movq 0x8(%rsp), %r12                   #  34    0x45f6e  5      
  movq 0x10(%rsp), %r13                  #  35    0x45f73  5      
  addl $0x18, %esp                       #  36    0x45f78  3      
  addq %r15, %rsp                        #  37    0x45f7b  3      
  popq %r11                              #  38    0x45f7e  3      
  andl $0xffffffe0, %r11d                #  39    0x45f81  7      
  addq %r15, %r11                        #  40    0x45f88  3      
  jmpq %r11                              #  41    0x45f8b  3      
.L_45fa0:                                #        0x45f8e  0      
  cmpl $0x1, %edx                        #  42    0x45f8e  3      
  leal 0xc(%rbx), %esi                   #  43    0x45f91  3      
  leal 0xc(%r12), %r13d                  #  44    0x45f94  5      
  je .L_45fe0                            #  45    0x45f99  6      
  movl %r13d, %edi                       #  46    0x45f9f  3      
  nop                                    #  47    0x45fa2  1      
  callq .memcpy                          #  48    0x45fa3  5      
  movl %ebx, %ebx                        #  49    0x45fa8  2      
  movl (%r15,%rbx,1), %eax               #  50    0x45faa  4      
  jmpq .L_45f60                          #  51    0x45fae  5      
  nop                                    #  52    0x45fb3  1      
  nop                                    #  53    0x45fb4  1      
.L_45fe0:                                #        0x45fb5  0      
  movl %esi, %esi                        #  54    0x45fb5  2      
  movzbl (%r15,%rsi,1), %eax             #  55    0x45fb7  5      
  movl %r13d, %r13d                      #  56    0x45fbc  3      
  movb %al, (%r15,%r13,1)                #  57    0x45fbf  4      
  movl %ebx, %ebx                        #  58    0x45fc3  2      
  movl (%r15,%rbx,1), %eax               #  59    0x45fc5  4      
  jmpq .L_45f60                          #  60    0x45fc9  5      
  nop                                    #  61    0x45fce  1      
  nop                                    #  62    0x45fcf  1      
  nop                                    #  63    0x45fd0  1      
  nop                                    #  64    0x45fd1  1      
  nop                                    #  65    0x45fd2  1      
  nop                                    #  66    0x45fd3  1      
  nop                                    #  67    0x45fd4  1      
                                                                  
.size _ZNSs4_Rep8_M_cloneERKSaIcEj, .-_ZNSs4_Rep8_M_cloneERKSaIcEj

