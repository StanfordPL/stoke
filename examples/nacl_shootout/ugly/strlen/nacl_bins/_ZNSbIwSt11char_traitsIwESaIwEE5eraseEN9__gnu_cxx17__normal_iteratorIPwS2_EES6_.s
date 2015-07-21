  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_
  .type _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_, @function

#! file-offset 0x1193e0
#! rip-offset  0xd93e0
#! capacity    128 bytes

# Text                                                                             #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_:  #        0xd93e0  0      OPC=0     
  movq %r12, -0x8(%rsp)                                                            #  1     0xd93e0  5      OPC=1138  
  movl %edi, %r12d                                                                 #  2     0xd93e5  3      OPC=1157  
  movq %rbx, -0x10(%rsp)                                                           #  3     0xd93e8  5      OPC=1138  
  subl $0x18, %esp                                                                 #  4     0xd93ed  3      OPC=2384  
  addq %r15, %rsp                                                                  #  5     0xd93f0  3      OPC=72    
  movl %esi, %ebx                                                                  #  6     0xd93f3  2      OPC=1157  
  movl %r12d, %r12d                                                                #  7     0xd93f5  3      OPC=1157  
  subl (%r15,%r12,1), %ebx                                                         #  8     0xd93f8  4      OPC=2385  
  subl %esi, %edx                                                                  #  9     0xd93fc  2      OPC=2386  
  xchgw %ax, %ax                                                                   #  10    0xd93fe  2      OPC=3700  
  movl %r12d, %edi                                                                 #  11    0xd9400  3      OPC=1157  
  xorl %ecx, %ecx                                                                  #  12    0xd9403  2      OPC=3758  
  sarl $0x2, %edx                                                                  #  13    0xd9405  3      OPC=2096  
  sarl $0x2, %ebx                                                                  #  14    0xd9408  3      OPC=2096  
  movl %ebx, %esi                                                                  #  15    0xd940b  2      OPC=1157  
  nop                                                                              #  16    0xd940d  1      OPC=1343  
  nop                                                                              #  17    0xd940e  1      OPC=1343  
  nop                                                                              #  18    0xd940f  1      OPC=1343  
  nop                                                                              #  19    0xd9410  1      OPC=1343  
  nop                                                                              #  20    0xd9411  1      OPC=1343  
  nop                                                                              #  21    0xd9412  1      OPC=1343  
  nop                                                                              #  22    0xd9413  1      OPC=1343  
  nop                                                                              #  23    0xd9414  1      OPC=1343  
  nop                                                                              #  24    0xd9415  1      OPC=1343  
  nop                                                                              #  25    0xd9416  1      OPC=1343  
  nop                                                                              #  26    0xd9417  1      OPC=1343  
  nop                                                                              #  27    0xd9418  1      OPC=1343  
  nop                                                                              #  28    0xd9419  1      OPC=1343  
  nop                                                                              #  29    0xd941a  1      OPC=1343  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj                             #  30    0xd941b  5      OPC=260   
  movl %r12d, %r12d                                                                #  31    0xd9420  3      OPC=1157  
  movl (%r15,%r12,1), %eax                                                         #  32    0xd9423  4      OPC=1156  
  leal -0xc(%rax), %edx                                                            #  33    0xd9427  3      OPC=1066  
  leal (%rax,%rbx,4), %eax                                                         #  34    0xd942a  3      OPC=1066  
  movl %edx, %edx                                                                  #  35    0xd942d  2      OPC=1157  
  movl $0xffffffff, 0x8(%r15,%rdx,1)                                               #  36    0xd942f  9      OPC=1135  
  movq 0x8(%rsp), %rbx                                                             #  37    0xd9438  5      OPC=1161  
  nop                                                                              #  38    0xd943d  1      OPC=1343  
  nop                                                                              #  39    0xd943e  1      OPC=1343  
  nop                                                                              #  40    0xd943f  1      OPC=1343  
  movq 0x10(%rsp), %r12                                                            #  41    0xd9440  5      OPC=1161  
  addl $0x18, %esp                                                                 #  42    0xd9445  3      OPC=65    
  addq %r15, %rsp                                                                  #  43    0xd9448  3      OPC=72    
  popq %r11                                                                        #  44    0xd944b  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                          #  45    0xd944d  7      OPC=131   
  nop                                                                              #  46    0xd9454  1      OPC=1343  
  nop                                                                              #  47    0xd9455  1      OPC=1343  
  nop                                                                              #  48    0xd9456  1      OPC=1343  
  nop                                                                              #  49    0xd9457  1      OPC=1343  
  addq %r15, %r11                                                                  #  50    0xd9458  3      OPC=72    
  jmpq %r11                                                                        #  51    0xd945b  3      OPC=928   
  nop                                                                              #  52    0xd945e  1      OPC=1343  
  nop                                                                              #  53    0xd945f  1      OPC=1343  
  nop                                                                              #  54    0xd9460  1      OPC=1343  
  nop                                                                              #  55    0xd9461  1      OPC=1343  
  nop                                                                              #  56    0xd9462  1      OPC=1343  
  nop                                                                              #  57    0xd9463  1      OPC=1343  
  nop                                                                              #  58    0xd9464  1      OPC=1343  
  nop                                                                              #  59    0xd9465  1      OPC=1343  
  nop                                                                              #  60    0xd9466  1      OPC=1343  
                                                                                                                      
.size _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_, .-_ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_

