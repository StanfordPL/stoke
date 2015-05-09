  .text
  .globl _ZNSs4_Rep8_M_cloneERKSaIcEj
  .type _ZNSs4_Rep8_M_cloneERKSaIcEj, @function

#! file-offset 0x45ee0
#! rip-offset  0x45ee0
#! capacity    256 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs4_Rep8_M_cloneERKSaIcEj:           #        0x45ee0  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x45ee0  5      
  movl %edi, %ebx                        #  2     0x45ee5  2      
  movq %r12, -0x10(%rsp)                 #  3     0x45ee7  5      
  movl %ebx, %ebx                        #  4     0x45eec  2      
  movq %r13, -0x8(%rsp)                  #  5     0x45eee  5      
  movl %edx, %edi                        #  6     0x45ef3  2      
  subl $0x18, %esp                       #  7     0x45ef5  3      
  addq %r15, %rsp                        #  8     0x45ef8  3      
  nop                                    #  9     0x45efb  1      
  movl %ebx, %ebx                        #  10    0x45efc  2      
  addl (%r15,%rbx,1), %edi               #  11    0x45efe  4      
  movl %esi, %edx                        #  12    0x45f02  2      
  movl %ebx, %ebx                        #  13    0x45f04  2      
  movl 0x4(%r15,%rbx,1), %esi            #  14    0x45f06  5      
  nop                                    #  15    0x45f0b  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE  #  16    0x45f0c  5      
  movl %ebx, %ebx                        #  17    0x45f11  2      
  movl (%r15,%rbx,1), %edx               #  18    0x45f13  4      
  movl %eax, %r12d                       #  19    0x45f17  3      
  testl %edx, %edx                       #  20    0x45f1a  2      
  jne .L_45f80                           #  21    0x45f1c  6      
  leal 0xc(%r12), %r13d                  #  22    0x45f22  5      
  xorl %eax, %eax                        #  23    0x45f27  2      
  nop                                    #  24    0x45f29  1      
.L_45f40:                                #        0x45f2a  0      
  movl %r12d, %r12d                      #  25    0x45f2a  3      
  movl %eax, (%r15,%r12,1)               #  26    0x45f2d  4      
  addl %r13d, %eax                       #  27    0x45f31  3      
  movl %r12d, %r12d                      #  28    0x45f34  3      
  movl $0x0, 0x8(%r15,%r12,1)            #  29    0x45f37  9      
  movl %eax, %eax                        #  30    0x45f40  2      
  movb $0x0, (%r15,%rax,1)               #  31    0x45f42  5      
  movl %r13d, %eax                       #  32    0x45f47  3      
  movq (%rsp), %rbx                      #  33    0x45f4a  4      
  movq 0x8(%rsp), %r12                   #  34    0x45f4e  5      
  movq 0x10(%rsp), %r13                  #  35    0x45f53  5      
  addl $0x18, %esp                       #  36    0x45f58  3      
  addq %r15, %rsp                        #  37    0x45f5b  3      
  popq %r11                              #  38    0x45f5e  3      
  andl $0xffffffe0, %r11d                #  39    0x45f61  7      
  addq %r15, %r11                        #  40    0x45f68  3      
  jmpq %r11                              #  41    0x45f6b  3      
.L_45f80:                                #        0x45f6e  0      
  cmpl $0x1, %edx                        #  42    0x45f6e  3      
  leal 0xc(%rbx), %esi                   #  43    0x45f71  3      
  leal 0xc(%r12), %r13d                  #  44    0x45f74  5      
  je .L_45fc0                            #  45    0x45f79  6      
  movl %r13d, %edi                       #  46    0x45f7f  3      
  nop                                    #  47    0x45f82  1      
  callq .memcpy                          #  48    0x45f83  5      
  movl %ebx, %ebx                        #  49    0x45f88  2      
  movl (%r15,%rbx,1), %eax               #  50    0x45f8a  4      
  jmpq .L_45f40                          #  51    0x45f8e  5      
  nop                                    #  52    0x45f93  1      
  nop                                    #  53    0x45f94  1      
.L_45fc0:                                #        0x45f95  0      
  movl %esi, %esi                        #  54    0x45f95  2      
  movzbl (%r15,%rsi,1), %eax             #  55    0x45f97  5      
  movl %r13d, %r13d                      #  56    0x45f9c  3      
  movb %al, (%r15,%r13,1)                #  57    0x45f9f  4      
  movl %ebx, %ebx                        #  58    0x45fa3  2      
  movl (%r15,%rbx,1), %eax               #  59    0x45fa5  4      
  jmpq .L_45f40                          #  60    0x45fa9  5      
  nop                                    #  61    0x45fae  1      
  nop                                    #  62    0x45faf  1      
  nop                                    #  63    0x45fb0  1      
  nop                                    #  64    0x45fb1  1      
  nop                                    #  65    0x45fb2  1      
  nop                                    #  66    0x45fb3  1      
  nop                                    #  67    0x45fb4  1      
                                                                  
.size _ZNSs4_Rep8_M_cloneERKSaIcEj, .-_ZNSs4_Rep8_M_cloneERKSaIcEj

