  .text
  .globl _ZNSs4_Rep8_M_cloneERKSaIcEj
  .type _ZNSs4_Rep8_M_cloneERKSaIcEj, @function

#! file-offset 0x45f80
#! rip-offset  0x45f80
#! capacity    256 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs4_Rep8_M_cloneERKSaIcEj:           #        0x45f80  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x45f80  5      
  movl %edi, %ebx                        #  2     0x45f85  2      
  movq %r12, -0x10(%rsp)                 #  3     0x45f87  5      
  movl %ebx, %ebx                        #  4     0x45f8c  2      
  movq %r13, -0x8(%rsp)                  #  5     0x45f8e  5      
  movl %edx, %edi                        #  6     0x45f93  2      
  subl $0x18, %esp                       #  7     0x45f95  3      
  addq %r15, %rsp                        #  8     0x45f98  3      
  nop                                    #  9     0x45f9b  1      
  movl %ebx, %ebx                        #  10    0x45f9c  2      
  addl (%r15,%rbx,1), %edi               #  11    0x45f9e  4      
  movl %esi, %edx                        #  12    0x45fa2  2      
  movl %ebx, %ebx                        #  13    0x45fa4  2      
  movl 0x4(%r15,%rbx,1), %esi            #  14    0x45fa6  5      
  nop                                    #  15    0x45fab  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE  #  16    0x45fac  5      
  movl %ebx, %ebx                        #  17    0x45fb1  2      
  movl (%r15,%rbx,1), %edx               #  18    0x45fb3  4      
  movl %eax, %r12d                       #  19    0x45fb7  3      
  testl %edx, %edx                       #  20    0x45fba  2      
  jne .L_46020                           #  21    0x45fbc  6      
  leal 0xc(%r12), %r13d                  #  22    0x45fc2  5      
  xorl %eax, %eax                        #  23    0x45fc7  2      
  nop                                    #  24    0x45fc9  1      
.L_45fe0:                                #        0x45fca  0      
  movl %r12d, %r12d                      #  25    0x45fca  3      
  movl %eax, (%r15,%r12,1)               #  26    0x45fcd  4      
  addl %r13d, %eax                       #  27    0x45fd1  3      
  movl %r12d, %r12d                      #  28    0x45fd4  3      
  movl $0x0, 0x8(%r15,%r12,1)            #  29    0x45fd7  9      
  movl %eax, %eax                        #  30    0x45fe0  2      
  movb $0x0, (%r15,%rax,1)               #  31    0x45fe2  5      
  movl %r13d, %eax                       #  32    0x45fe7  3      
  movq (%rsp), %rbx                      #  33    0x45fea  4      
  movq 0x8(%rsp), %r12                   #  34    0x45fee  5      
  movq 0x10(%rsp), %r13                  #  35    0x45ff3  5      
  addl $0x18, %esp                       #  36    0x45ff8  3      
  addq %r15, %rsp                        #  37    0x45ffb  3      
  popq %r11                              #  38    0x45ffe  3      
  andl $0xffffffe0, %r11d                #  39    0x46001  7      
  addq %r15, %r11                        #  40    0x46008  3      
  jmpq %r11                              #  41    0x4600b  3      
.L_46020:                                #        0x4600e  0      
  cmpl $0x1, %edx                        #  42    0x4600e  3      
  leal 0xc(%rbx), %esi                   #  43    0x46011  3      
  leal 0xc(%r12), %r13d                  #  44    0x46014  5      
  je .L_46060                            #  45    0x46019  6      
  movl %r13d, %edi                       #  46    0x4601f  3      
  nop                                    #  47    0x46022  1      
  callq .memcpy                          #  48    0x46023  5      
  movl %ebx, %ebx                        #  49    0x46028  2      
  movl (%r15,%rbx,1), %eax               #  50    0x4602a  4      
  jmpq .L_45fe0                          #  51    0x4602e  5      
  nop                                    #  52    0x46033  1      
  nop                                    #  53    0x46034  1      
.L_46060:                                #        0x46035  0      
  movl %esi, %esi                        #  54    0x46035  2      
  movzbl (%r15,%rsi,1), %eax             #  55    0x46037  5      
  movl %r13d, %r13d                      #  56    0x4603c  3      
  movb %al, (%r15,%r13,1)                #  57    0x4603f  4      
  movl %ebx, %ebx                        #  58    0x46043  2      
  movl (%r15,%rbx,1), %eax               #  59    0x46045  4      
  jmpq .L_45fe0                          #  60    0x46049  5      
  nop                                    #  61    0x4604e  1      
  nop                                    #  62    0x4604f  1      
  nop                                    #  63    0x46050  1      
  nop                                    #  64    0x46051  1      
  nop                                    #  65    0x46052  1      
  nop                                    #  66    0x46053  1      
  nop                                    #  67    0x46054  1      
                                                                  
.size _ZNSs4_Rep8_M_cloneERKSaIcEj, .-_ZNSs4_Rep8_M_cloneERKSaIcEj

