  .text
  .globl _ZNSsC1ERKSs
  .type _ZNSsC1ERKSs, @function

#! file-offset 0x46de0
#! rip-offset  0x46de0
#! capacity    224 bytes

# Text                                 #  Line  RIP      Bytes  
._ZNSsC1ERKSs:                         #        0x46de0  0      
  pushq %rbx                           #  1     0x46de0  2      
  movl %esi, %esi                      #  2     0x46de2  2      
  movl %edi, %ebx                      #  3     0x46de4  2      
  subl $0x10, %esp                     #  4     0x46de6  3      
  addq %r15, %rsp                      #  5     0x46de9  3      
  movl %esi, %esi                      #  6     0x46dec  2      
  movl (%r15,%rsi,1), %edi             #  7     0x46dee  4      
  subl $0xc, %edi                      #  8     0x46df2  3      
  movl %edi, %edi                      #  9     0x46df5  2      
  movl 0x8(%r15,%rdi,1), %eax          #  10    0x46df7  5      
  testl %eax, %eax                     #  11    0x46dfc  2      
  nop                                  #  12    0x46dfe  1      
  js .L_46e40                          #  13    0x46dff  6      
  cmpl $0x10031da0, %edi               #  14    0x46e05  6      
  jne .L_46e80                         #  15    0x46e0b  6      
  nop                                  #  16    0x46e11  1      
  nop                                  #  17    0x46e12  1      
.L_46e20:                              #        0x46e13  0      
  addl $0xc, %edi                      #  18    0x46e13  3      
  movl %ebx, %ebx                      #  19    0x46e16  2      
  movl %edi, (%r15,%rbx,1)             #  20    0x46e18  4      
  addl $0x10, %esp                     #  21    0x46e1c  3      
  addq %r15, %rsp                      #  22    0x46e1f  3      
  popq %rbx                            #  23    0x46e22  2      
  popq %r11                            #  24    0x46e24  3      
  andl $0xffffffe0, %r11d              #  25    0x46e27  7      
  addq %r15, %r11                      #  26    0x46e2e  3      
  jmpq %r11                            #  27    0x46e31  3      
  nop                                  #  28    0x46e34  1      
.L_46e40:                              #        0x46e35  0      
  leal 0xf(%rsp), %esi                 #  29    0x46e35  4      
  xorl %edx, %edx                      #  30    0x46e39  2      
  nop                                  #  31    0x46e3b  1      
  nop                                  #  32    0x46e3c  1      
  callq ._ZNSs4_Rep8_M_cloneERKSaIcEj  #  33    0x46e3d  5      
  movl %eax, %edi                      #  34    0x46e42  2      
  movl %ebx, %ebx                      #  35    0x46e44  2      
  movl %edi, (%r15,%rbx,1)             #  36    0x46e46  4      
  addl $0x10, %esp                     #  37    0x46e4a  3      
  addq %r15, %rsp                      #  38    0x46e4d  3      
  popq %rbx                            #  39    0x46e50  2      
  popq %r11                            #  40    0x46e52  3      
  andl $0xffffffe0, %r11d              #  41    0x46e55  7      
  addq %r15, %r11                      #  42    0x46e5c  3      
  jmpq %r11                            #  43    0x46e5f  3      
  nop                                  #  44    0x46e62  1      
.L_46e80:                              #        0x46e63  0      
  addl $0x1, %eax                      #  45    0x46e63  3      
  movl %edi, %edi                      #  46    0x46e66  2      
  movl %eax, 0x8(%r15,%rdi,1)          #  47    0x46e68  5      
  jmpq .L_46e20                        #  48    0x46e6d  5      
  nop                                  #  49    0x46e72  1      
  nop                                  #  50    0x46e73  1      
  movl %eax, %edi                      #  51    0x46e74  2      
  nop                                  #  52    0x46e76  1      
  nop                                  #  53    0x46e77  1      
  callq ._Unwind_Resume                #  54    0x46e78  5      
                                                                
.size _ZNSsC1ERKSs, .-_ZNSsC1ERKSs

