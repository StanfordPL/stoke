  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE
  .type _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE, @function

#! file-offset 0x119460
#! rip-offset  0xd9460
#! capacity    128 bytes

# Text                                                                          #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE:  #        0xd9460  0      OPC=0     
  movq %r12, -0x8(%rsp)                                                         #  1     0xd9460  5      OPC=1138  
  movl %edi, %r12d                                                              #  2     0xd9465  3      OPC=1157  
  movq %rbx, -0x10(%rsp)                                                        #  3     0xd9468  5      OPC=1138  
  subl $0x18, %esp                                                              #  4     0xd946d  3      OPC=2384  
  addq %r15, %rsp                                                               #  5     0xd9470  3      OPC=72    
  movl %esi, %ebx                                                               #  6     0xd9473  2      OPC=1157  
  movl %r12d, %r12d                                                             #  7     0xd9475  3      OPC=1157  
  subl (%r15,%r12,1), %ebx                                                      #  8     0xd9478  4      OPC=2385  
  nop                                                                           #  9     0xd947c  1      OPC=1343  
  nop                                                                           #  10    0xd947d  1      OPC=1343  
  nop                                                                           #  11    0xd947e  1      OPC=1343  
  nop                                                                           #  12    0xd947f  1      OPC=1343  
  movl $0x1, %edx                                                               #  13    0xd9480  5      OPC=1154  
  movl %r12d, %edi                                                              #  14    0xd9485  3      OPC=1157  
  xorl %ecx, %ecx                                                               #  15    0xd9488  2      OPC=3758  
  sarl $0x2, %ebx                                                               #  16    0xd948a  3      OPC=2096  
  movl %ebx, %esi                                                               #  17    0xd948d  2      OPC=1157  
  nop                                                                           #  18    0xd948f  1      OPC=1343  
  nop                                                                           #  19    0xd9490  1      OPC=1343  
  nop                                                                           #  20    0xd9491  1      OPC=1343  
  nop                                                                           #  21    0xd9492  1      OPC=1343  
  nop                                                                           #  22    0xd9493  1      OPC=1343  
  nop                                                                           #  23    0xd9494  1      OPC=1343  
  nop                                                                           #  24    0xd9495  1      OPC=1343  
  nop                                                                           #  25    0xd9496  1      OPC=1343  
  nop                                                                           #  26    0xd9497  1      OPC=1343  
  nop                                                                           #  27    0xd9498  1      OPC=1343  
  nop                                                                           #  28    0xd9499  1      OPC=1343  
  nop                                                                           #  29    0xd949a  1      OPC=1343  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj                          #  30    0xd949b  5      OPC=260   
  movl %r12d, %r12d                                                             #  31    0xd94a0  3      OPC=1157  
  movl (%r15,%r12,1), %eax                                                      #  32    0xd94a3  4      OPC=1156  
  leal -0xc(%rax), %edx                                                         #  33    0xd94a7  3      OPC=1066  
  leal (%rax,%rbx,4), %eax                                                      #  34    0xd94aa  3      OPC=1066  
  movl %edx, %edx                                                               #  35    0xd94ad  2      OPC=1157  
  movl $0xffffffff, 0x8(%r15,%rdx,1)                                            #  36    0xd94af  9      OPC=1135  
  movq 0x8(%rsp), %rbx                                                          #  37    0xd94b8  5      OPC=1161  
  nop                                                                           #  38    0xd94bd  1      OPC=1343  
  nop                                                                           #  39    0xd94be  1      OPC=1343  
  nop                                                                           #  40    0xd94bf  1      OPC=1343  
  movq 0x10(%rsp), %r12                                                         #  41    0xd94c0  5      OPC=1161  
  addl $0x18, %esp                                                              #  42    0xd94c5  3      OPC=65    
  addq %r15, %rsp                                                               #  43    0xd94c8  3      OPC=72    
  popq %r11                                                                     #  44    0xd94cb  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                       #  45    0xd94cd  7      OPC=131   
  nop                                                                           #  46    0xd94d4  1      OPC=1343  
  nop                                                                           #  47    0xd94d5  1      OPC=1343  
  nop                                                                           #  48    0xd94d6  1      OPC=1343  
  nop                                                                           #  49    0xd94d7  1      OPC=1343  
  addq %r15, %r11                                                               #  50    0xd94d8  3      OPC=72    
  jmpq %r11                                                                     #  51    0xd94db  3      OPC=928   
  nop                                                                           #  52    0xd94de  1      OPC=1343  
  nop                                                                           #  53    0xd94df  1      OPC=1343  
  nop                                                                           #  54    0xd94e0  1      OPC=1343  
  nop                                                                           #  55    0xd94e1  1      OPC=1343  
  nop                                                                           #  56    0xd94e2  1      OPC=1343  
  nop                                                                           #  57    0xd94e3  1      OPC=1343  
  nop                                                                           #  58    0xd94e4  1      OPC=1343  
  nop                                                                           #  59    0xd94e5  1      OPC=1343  
  nop                                                                           #  60    0xd94e6  1      OPC=1343  
                                                                                                                   
.size _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE, .-_ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE

