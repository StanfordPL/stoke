  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw, @function

#! file-offset 0x119260
#! rip-offset  0xd9260
#! capacity    128 bytes

# Text                                                                            #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw:  #        0xd9260  0      OPC=0     
  movq %rbx, -0x10(%rsp)                                                          #  1     0xd9260  5      OPC=1138  
  movl %edi, %ebx                                                                 #  2     0xd9265  2      OPC=1157  
  movq %r12, -0x8(%rsp)                                                           #  3     0xd9267  5      OPC=1138  
  subl $0x18, %esp                                                                #  4     0xd926c  3      OPC=2384  
  addq %r15, %rsp                                                                 #  5     0xd926f  3      OPC=72    
  movl %esi, %r12d                                                                #  6     0xd9272  3      OPC=1157  
  movl %ebx, %ebx                                                                 #  7     0xd9275  2      OPC=1157  
  subl (%r15,%rbx,1), %r12d                                                       #  8     0xd9277  4      OPC=2385  
  movl %edx, %r8d                                                                 #  9     0xd927b  3      OPC=1157  
  movl %ebx, %edi                                                                 #  10    0xd927e  2      OPC=1157  
  xorl %edx, %edx                                                                 #  11    0xd9280  2      OPC=3758  
  movl $0x1, %ecx                                                                 #  12    0xd9282  5      OPC=1154  
  sarl $0x2, %r12d                                                                #  13    0xd9287  4      OPC=2096  
  movl %r12d, %esi                                                                #  14    0xd928b  3      OPC=1157  
  nop                                                                             #  15    0xd928e  1      OPC=1343  
  nop                                                                             #  16    0xd928f  1      OPC=1343  
  nop                                                                             #  17    0xd9290  1      OPC=1343  
  nop                                                                             #  18    0xd9291  1      OPC=1343  
  nop                                                                             #  19    0xd9292  1      OPC=1343  
  nop                                                                             #  20    0xd9293  1      OPC=1343  
  nop                                                                             #  21    0xd9294  1      OPC=1343  
  nop                                                                             #  22    0xd9295  1      OPC=1343  
  nop                                                                             #  23    0xd9296  1      OPC=1343  
  nop                                                                             #  24    0xd9297  1      OPC=1343  
  nop                                                                             #  25    0xd9298  1      OPC=1343  
  nop                                                                             #  26    0xd9299  1      OPC=1343  
  nop                                                                             #  27    0xd929a  1      OPC=1343  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw                     #  28    0xd929b  5      OPC=260   
  movl %ebx, %ebx                                                                 #  29    0xd92a0  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                                                        #  30    0xd92a2  4      OPC=1156  
  leal -0xc(%rax), %edx                                                           #  31    0xd92a6  3      OPC=1066  
  leal (%rax,%r12,4), %eax                                                        #  32    0xd92a9  4      OPC=1066  
  movl %edx, %edx                                                                 #  33    0xd92ad  2      OPC=1157  
  movl $0xffffffff, 0x8(%r15,%rdx,1)                                              #  34    0xd92af  9      OPC=1135  
  movq 0x8(%rsp), %rbx                                                            #  35    0xd92b8  5      OPC=1161  
  nop                                                                             #  36    0xd92bd  1      OPC=1343  
  nop                                                                             #  37    0xd92be  1      OPC=1343  
  nop                                                                             #  38    0xd92bf  1      OPC=1343  
  movq 0x10(%rsp), %r12                                                           #  39    0xd92c0  5      OPC=1161  
  addl $0x18, %esp                                                                #  40    0xd92c5  3      OPC=65    
  addq %r15, %rsp                                                                 #  41    0xd92c8  3      OPC=72    
  popq %r11                                                                       #  42    0xd92cb  2      OPC=1694  
  andl $0xffffffe0, %r11d                                                         #  43    0xd92cd  7      OPC=131   
  nop                                                                             #  44    0xd92d4  1      OPC=1343  
  nop                                                                             #  45    0xd92d5  1      OPC=1343  
  nop                                                                             #  46    0xd92d6  1      OPC=1343  
  nop                                                                             #  47    0xd92d7  1      OPC=1343  
  addq %r15, %r11                                                                 #  48    0xd92d8  3      OPC=72    
  jmpq %r11                                                                       #  49    0xd92db  3      OPC=928   
  nop                                                                             #  50    0xd92de  1      OPC=1343  
  nop                                                                             #  51    0xd92df  1      OPC=1343  
  nop                                                                             #  52    0xd92e0  1      OPC=1343  
  nop                                                                             #  53    0xd92e1  1      OPC=1343  
  nop                                                                             #  54    0xd92e2  1      OPC=1343  
  nop                                                                             #  55    0xd92e3  1      OPC=1343  
  nop                                                                             #  56    0xd92e4  1      OPC=1343  
  nop                                                                             #  57    0xd92e5  1      OPC=1343  
  nop                                                                             #  58    0xd92e6  1      OPC=1343  
                                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw

