  .text
  .globl _ZNSsC1ERKSs
  .type _ZNSsC1ERKSs, @function

#! file-offset 0x46e60
#! rip-offset  0x46e60
#! capacity    224 bytes

# Text                                 #  Line  RIP      Bytes  
._ZNSsC1ERKSs:                         #        0x46e60  0      
  pushq %rbx                           #  1     0x46e60  2      
  movl %esi, %esi                      #  2     0x46e62  2      
  movl %edi, %ebx                      #  3     0x46e64  2      
  subl $0x10, %esp                     #  4     0x46e66  3      
  addq %r15, %rsp                      #  5     0x46e69  3      
  movl %esi, %esi                      #  6     0x46e6c  2      
  movl (%r15,%rsi,1), %edi             #  7     0x46e6e  4      
  subl $0xc, %edi                      #  8     0x46e72  3      
  movl %edi, %edi                      #  9     0x46e75  2      
  movl 0x8(%r15,%rdi,1), %eax          #  10    0x46e77  5      
  testl %eax, %eax                     #  11    0x46e7c  2      
  nop                                  #  12    0x46e7e  1      
  js .L_46ec0                          #  13    0x46e7f  6      
  cmpl $0x10031da0, %edi               #  14    0x46e85  6      
  jne .L_46f00                         #  15    0x46e8b  6      
  nop                                  #  16    0x46e91  1      
  nop                                  #  17    0x46e92  1      
.L_46ea0:                              #        0x46e93  0      
  addl $0xc, %edi                      #  18    0x46e93  3      
  movl %ebx, %ebx                      #  19    0x46e96  2      
  movl %edi, (%r15,%rbx,1)             #  20    0x46e98  4      
  addl $0x10, %esp                     #  21    0x46e9c  3      
  addq %r15, %rsp                      #  22    0x46e9f  3      
  popq %rbx                            #  23    0x46ea2  2      
  popq %r11                            #  24    0x46ea4  3      
  andl $0xffffffe0, %r11d              #  25    0x46ea7  7      
  addq %r15, %r11                      #  26    0x46eae  3      
  jmpq %r11                            #  27    0x46eb1  3      
  nop                                  #  28    0x46eb4  1      
.L_46ec0:                              #        0x46eb5  0      
  leal 0xf(%rsp), %esi                 #  29    0x46eb5  4      
  xorl %edx, %edx                      #  30    0x46eb9  2      
  nop                                  #  31    0x46ebb  1      
  nop                                  #  32    0x46ebc  1      
  callq ._ZNSs4_Rep8_M_cloneERKSaIcEj  #  33    0x46ebd  5      
  movl %eax, %edi                      #  34    0x46ec2  2      
  movl %ebx, %ebx                      #  35    0x46ec4  2      
  movl %edi, (%r15,%rbx,1)             #  36    0x46ec6  4      
  addl $0x10, %esp                     #  37    0x46eca  3      
  addq %r15, %rsp                      #  38    0x46ecd  3      
  popq %rbx                            #  39    0x46ed0  2      
  popq %r11                            #  40    0x46ed2  3      
  andl $0xffffffe0, %r11d              #  41    0x46ed5  7      
  addq %r15, %r11                      #  42    0x46edc  3      
  jmpq %r11                            #  43    0x46edf  3      
  nop                                  #  44    0x46ee2  1      
.L_46f00:                              #        0x46ee3  0      
  addl $0x1, %eax                      #  45    0x46ee3  3      
  movl %edi, %edi                      #  46    0x46ee6  2      
  movl %eax, 0x8(%r15,%rdi,1)          #  47    0x46ee8  5      
  jmpq .L_46ea0                        #  48    0x46eed  5      
  nop                                  #  49    0x46ef2  1      
  nop                                  #  50    0x46ef3  1      
  movl %eax, %edi                      #  51    0x46ef4  2      
  nop                                  #  52    0x46ef6  1      
  nop                                  #  53    0x46ef7  1      
  callq ._Unwind_Resume                #  54    0x46ef8  5      
                                                                
.size _ZNSsC1ERKSs, .-_ZNSsC1ERKSs

