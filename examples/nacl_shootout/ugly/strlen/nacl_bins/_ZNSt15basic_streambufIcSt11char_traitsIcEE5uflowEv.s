  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv, @function

#! file-offset 0xe7ee0
#! rip-offset  0xa7ee0
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode    
._ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv:  #        0xa7ee0  0      OPC=0     
  pushq %rbx                                           #  1     0xa7ee0  1      OPC=1861  
  movl %edi, %ebx                                      #  2     0xa7ee1  2      OPC=1157  
  movl %ebx, %ebx                                      #  3     0xa7ee3  2      OPC=1157  
  movl (%r15,%rbx,1), %eax                             #  4     0xa7ee5  4      OPC=1156  
  movl %ebx, %edi                                      #  5     0xa7ee9  2      OPC=1157  
  movl %eax, %eax                                      #  6     0xa7eeb  2      OPC=1157  
  movl 0x24(%r15,%rax,1), %eax                         #  7     0xa7eed  5      OPC=1156  
  nop                                                  #  8     0xa7ef2  1      OPC=1343  
  nop                                                  #  9     0xa7ef3  1      OPC=1343  
  nop                                                  #  10    0xa7ef4  1      OPC=1343  
  nop                                                  #  11    0xa7ef5  1      OPC=1343  
  nop                                                  #  12    0xa7ef6  1      OPC=1343  
  nop                                                  #  13    0xa7ef7  1      OPC=1343  
  andl $0xffffffe0, %eax                               #  14    0xa7ef8  6      OPC=131   
  nop                                                  #  15    0xa7efe  1      OPC=1343  
  nop                                                  #  16    0xa7eff  1      OPC=1343  
  nop                                                  #  17    0xa7f00  1      OPC=1343  
  addq %r15, %rax                                      #  18    0xa7f01  3      OPC=72    
  callq %rax                                           #  19    0xa7f04  2      OPC=258   
  cmpl $0xffffffff, %eax                               #  20    0xa7f06  6      OPC=469   
  nop                                                  #  21    0xa7f0c  1      OPC=1343  
  nop                                                  #  22    0xa7f0d  1      OPC=1343  
  nop                                                  #  23    0xa7f0e  1      OPC=1343  
  je .L_a7f20                                          #  24    0xa7f0f  6      OPC=893   
  nop                                                  #  25    0xa7f15  1      OPC=1343  
  nop                                                  #  26    0xa7f16  1      OPC=1343  
  movl %ebx, %ebx                                      #  27    0xa7f17  2      OPC=1157  
  movl 0x8(%r15,%rbx,1), %edx                          #  28    0xa7f19  5      OPC=1156  
  movl %edx, %edx                                      #  29    0xa7f1e  2      OPC=1157  
  movzbl (%r15,%rdx,1), %eax                           #  30    0xa7f20  5      OPC=1302  
  addl $0x1, %edx                                      #  31    0xa7f25  3      OPC=65    
  movl %ebx, %ebx                                      #  32    0xa7f28  2      OPC=1157  
  movl %edx, 0x8(%r15,%rbx,1)                          #  33    0xa7f2a  5      OPC=1136  
  nop                                                  #  34    0xa7f2f  1      OPC=1343  
  nop                                                  #  35    0xa7f30  1      OPC=1343  
  nop                                                  #  36    0xa7f31  1      OPC=1343  
.L_a7f20:                                              #        0xa7f32  0      OPC=0     
  popq %rbx                                            #  37    0xa7f32  1      OPC=1694  
  popq %r11                                            #  38    0xa7f33  2      OPC=1694  
  andl $0xffffffe0, %r11d                              #  39    0xa7f35  7      OPC=131   
  nop                                                  #  40    0xa7f3c  1      OPC=1343  
  nop                                                  #  41    0xa7f3d  1      OPC=1343  
  nop                                                  #  42    0xa7f3e  1      OPC=1343  
  nop                                                  #  43    0xa7f3f  1      OPC=1343  
  addq %r15, %r11                                      #  44    0xa7f40  3      OPC=72    
  jmpq %r11                                            #  45    0xa7f43  3      OPC=928   
  nop                                                  #  46    0xa7f46  1      OPC=1343  
  nop                                                  #  47    0xa7f47  1      OPC=1343  
  nop                                                  #  48    0xa7f48  1      OPC=1343  
  nop                                                  #  49    0xa7f49  1      OPC=1343  
  nop                                                  #  50    0xa7f4a  1      OPC=1343  
  nop                                                  #  51    0xa7f4b  1      OPC=1343  
  nop                                                  #  52    0xa7f4c  1      OPC=1343  
  nop                                                  #  53    0xa7f4d  1      OPC=1343  
  nop                                                  #  54    0xa7f4e  1      OPC=1343  
  nop                                                  #  55    0xa7f4f  1      OPC=1343  
  nop                                                  #  56    0xa7f50  1      OPC=1343  
  nop                                                  #  57    0xa7f51  1      OPC=1343  
  nop                                                  #  58    0xa7f52  1      OPC=1343  
  nop                                                  #  59    0xa7f53  1      OPC=1343  
  nop                                                  #  60    0xa7f54  1      OPC=1343  
  nop                                                  #  61    0xa7f55  1      OPC=1343  
  nop                                                  #  62    0xa7f56  1      OPC=1343  
  nop                                                  #  63    0xa7f57  1      OPC=1343  
  nop                                                  #  64    0xa7f58  1      OPC=1343  
                                                                                          
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5uflowEv

