  .text
  .globl _ZNSsC1ERKSs
  .type _ZNSsC1ERKSs, @function

#! file-offset 0x46dc0
#! rip-offset  0x46dc0
#! capacity    224 bytes

# Text                                 #  Line  RIP      Bytes  
._ZNSsC1ERKSs:                         #        0x46dc0  0      
  pushq %rbx                           #  1     0x46dc0  2      
  movl %esi, %esi                      #  2     0x46dc2  2      
  movl %edi, %ebx                      #  3     0x46dc4  2      
  subl $0x10, %esp                     #  4     0x46dc6  3      
  addq %r15, %rsp                      #  5     0x46dc9  3      
  movl %esi, %esi                      #  6     0x46dcc  2      
  movl (%r15,%rsi,1), %edi             #  7     0x46dce  4      
  subl $0xc, %edi                      #  8     0x46dd2  3      
  movl %edi, %edi                      #  9     0x46dd5  2      
  movl 0x8(%r15,%rdi,1), %eax          #  10    0x46dd7  5      
  testl %eax, %eax                     #  11    0x46ddc  2      
  nop                                  #  12    0x46dde  1      
  js .L_46e20                          #  13    0x46ddf  6      
  cmpl $0x10031da0, %edi               #  14    0x46de5  6      
  jne .L_46e60                         #  15    0x46deb  6      
  nop                                  #  16    0x46df1  1      
  nop                                  #  17    0x46df2  1      
.L_46e00:                              #        0x46df3  0      
  addl $0xc, %edi                      #  18    0x46df3  3      
  movl %ebx, %ebx                      #  19    0x46df6  2      
  movl %edi, (%r15,%rbx,1)             #  20    0x46df8  4      
  addl $0x10, %esp                     #  21    0x46dfc  3      
  addq %r15, %rsp                      #  22    0x46dff  3      
  popq %rbx                            #  23    0x46e02  2      
  popq %r11                            #  24    0x46e04  3      
  andl $0xffffffe0, %r11d              #  25    0x46e07  7      
  addq %r15, %r11                      #  26    0x46e0e  3      
  jmpq %r11                            #  27    0x46e11  3      
  nop                                  #  28    0x46e14  1      
.L_46e20:                              #        0x46e15  0      
  leal 0xf(%rsp), %esi                 #  29    0x46e15  4      
  xorl %edx, %edx                      #  30    0x46e19  2      
  nop                                  #  31    0x46e1b  1      
  nop                                  #  32    0x46e1c  1      
  callq ._ZNSs4_Rep8_M_cloneERKSaIcEj  #  33    0x46e1d  5      
  movl %eax, %edi                      #  34    0x46e22  2      
  movl %ebx, %ebx                      #  35    0x46e24  2      
  movl %edi, (%r15,%rbx,1)             #  36    0x46e26  4      
  addl $0x10, %esp                     #  37    0x46e2a  3      
  addq %r15, %rsp                      #  38    0x46e2d  3      
  popq %rbx                            #  39    0x46e30  2      
  popq %r11                            #  40    0x46e32  3      
  andl $0xffffffe0, %r11d              #  41    0x46e35  7      
  addq %r15, %r11                      #  42    0x46e3c  3      
  jmpq %r11                            #  43    0x46e3f  3      
  nop                                  #  44    0x46e42  1      
.L_46e60:                              #        0x46e43  0      
  addl $0x1, %eax                      #  45    0x46e43  3      
  movl %edi, %edi                      #  46    0x46e46  2      
  movl %eax, 0x8(%r15,%rdi,1)          #  47    0x46e48  5      
  jmpq .L_46e00                        #  48    0x46e4d  5      
  nop                                  #  49    0x46e52  1      
  nop                                  #  50    0x46e53  1      
  movl %eax, %edi                      #  51    0x46e54  2      
  nop                                  #  52    0x46e56  1      
  nop                                  #  53    0x46e57  1      
  callq ._Unwind_Resume                #  54    0x46e58  5      
                                                                
.size _ZNSsC1ERKSs, .-_ZNSsC1ERKSs

