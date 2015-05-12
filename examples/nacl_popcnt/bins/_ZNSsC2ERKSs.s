  .text
  .globl _ZNSsC2ERKSs
  .type _ZNSsC2ERKSs, @function

#! file-offset 0x46f60
#! rip-offset  0x46f60
#! capacity    224 bytes

# Text                                 #  Line  RIP      Bytes  
._ZNSsC2ERKSs:                         #        0x46f60  0      
  pushq %rbx                           #  1     0x46f60  2      
  movl %esi, %esi                      #  2     0x46f62  2      
  movl %edi, %ebx                      #  3     0x46f64  2      
  subl $0x10, %esp                     #  4     0x46f66  3      
  addq %r15, %rsp                      #  5     0x46f69  3      
  movl %esi, %esi                      #  6     0x46f6c  2      
  movl (%r15,%rsi,1), %edi             #  7     0x46f6e  4      
  subl $0xc, %edi                      #  8     0x46f72  3      
  movl %edi, %edi                      #  9     0x46f75  2      
  movl 0x8(%r15,%rdi,1), %eax          #  10    0x46f77  5      
  testl %eax, %eax                     #  11    0x46f7c  2      
  nop                                  #  12    0x46f7e  1      
  js .L_46fc0                          #  13    0x46f7f  6      
  cmpl $0x10031da0, %edi               #  14    0x46f85  6      
  jne .L_47000                         #  15    0x46f8b  6      
  nop                                  #  16    0x46f91  1      
  nop                                  #  17    0x46f92  1      
.L_46fa0:                              #        0x46f93  0      
  addl $0xc, %edi                      #  18    0x46f93  3      
  movl %ebx, %ebx                      #  19    0x46f96  2      
  movl %edi, (%r15,%rbx,1)             #  20    0x46f98  4      
  addl $0x10, %esp                     #  21    0x46f9c  3      
  addq %r15, %rsp                      #  22    0x46f9f  3      
  popq %rbx                            #  23    0x46fa2  2      
  popq %r11                            #  24    0x46fa4  3      
  andl $0xffffffe0, %r11d              #  25    0x46fa7  7      
  addq %r15, %r11                      #  26    0x46fae  3      
  jmpq %r11                            #  27    0x46fb1  3      
  nop                                  #  28    0x46fb4  1      
.L_46fc0:                              #        0x46fb5  0      
  leal 0xf(%rsp), %esi                 #  29    0x46fb5  4      
  xorl %edx, %edx                      #  30    0x46fb9  2      
  nop                                  #  31    0x46fbb  1      
  nop                                  #  32    0x46fbc  1      
  callq ._ZNSs4_Rep8_M_cloneERKSaIcEj  #  33    0x46fbd  5      
  movl %eax, %edi                      #  34    0x46fc2  2      
  movl %ebx, %ebx                      #  35    0x46fc4  2      
  movl %edi, (%r15,%rbx,1)             #  36    0x46fc6  4      
  addl $0x10, %esp                     #  37    0x46fca  3      
  addq %r15, %rsp                      #  38    0x46fcd  3      
  popq %rbx                            #  39    0x46fd0  2      
  popq %r11                            #  40    0x46fd2  3      
  andl $0xffffffe0, %r11d              #  41    0x46fd5  7      
  addq %r15, %r11                      #  42    0x46fdc  3      
  jmpq %r11                            #  43    0x46fdf  3      
  nop                                  #  44    0x46fe2  1      
.L_47000:                              #        0x46fe3  0      
  addl $0x1, %eax                      #  45    0x46fe3  3      
  movl %edi, %edi                      #  46    0x46fe6  2      
  movl %eax, 0x8(%r15,%rdi,1)          #  47    0x46fe8  5      
  jmpq .L_46fa0                        #  48    0x46fed  5      
  nop                                  #  49    0x46ff2  1      
  nop                                  #  50    0x46ff3  1      
  movl %eax, %edi                      #  51    0x46ff4  2      
  nop                                  #  52    0x46ff6  1      
  nop                                  #  53    0x46ff7  1      
  callq ._Unwind_Resume                #  54    0x46ff8  5      
                                                                
.size _ZNSsC2ERKSs, .-_ZNSsC2ERKSs

