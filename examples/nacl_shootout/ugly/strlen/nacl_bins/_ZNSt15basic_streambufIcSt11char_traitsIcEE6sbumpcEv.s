  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv, @function

#! file-offset 0xe8f80
#! rip-offset  0xa8f80
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode    
._ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv:  #        0xa8f80  0      OPC=0     
  movl %edi, %edi                                       #  1     0xa8f80  2      OPC=1157  
  movl %edi, %edi                                       #  2     0xa8f82  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %edx                           #  3     0xa8f84  5      OPC=1156  
  movl %edi, %edi                                       #  4     0xa8f89  2      OPC=1157  
  cmpl %edx, 0xc(%r15,%rdi,1)                           #  5     0xa8f8b  5      OPC=457   
  jbe .L_a8fc0                                          #  6     0xa8f90  6      OPC=881   
  nop                                                   #  7     0xa8f96  1      OPC=1343  
  nop                                                   #  8     0xa8f97  1      OPC=1343  
  popq %r11                                             #  9     0xa8f98  2      OPC=1694  
  movl %edx, %edx                                       #  10    0xa8f9a  2      OPC=1157  
  movzbl (%r15,%rdx,1), %eax                            #  11    0xa8f9c  5      OPC=1302  
  addl $0x1, %edx                                       #  12    0xa8fa1  3      OPC=65    
  xchgw %ax, %ax                                        #  13    0xa8fa4  2      OPC=3700  
  movl %edi, %edi                                       #  14    0xa8fa6  2      OPC=1157  
  movl %edx, 0x8(%r15,%rdi,1)                           #  15    0xa8fa8  5      OPC=1136  
  andl $0xffffffe0, %r11d                               #  16    0xa8fad  7      OPC=131   
  nop                                                   #  17    0xa8fb4  1      OPC=1343  
  nop                                                   #  18    0xa8fb5  1      OPC=1343  
  nop                                                   #  19    0xa8fb6  1      OPC=1343  
  nop                                                   #  20    0xa8fb7  1      OPC=1343  
  addq %r15, %r11                                       #  21    0xa8fb8  3      OPC=72    
  jmpq %r11                                             #  22    0xa8fbb  3      OPC=928   
  nop                                                   #  23    0xa8fbe  1      OPC=1343  
  nop                                                   #  24    0xa8fbf  1      OPC=1343  
  nop                                                   #  25    0xa8fc0  1      OPC=1343  
  nop                                                   #  26    0xa8fc1  1      OPC=1343  
  nop                                                   #  27    0xa8fc2  1      OPC=1343  
  nop                                                   #  28    0xa8fc3  1      OPC=1343  
  nop                                                   #  29    0xa8fc4  1      OPC=1343  
  nop                                                   #  30    0xa8fc5  1      OPC=1343  
  nop                                                   #  31    0xa8fc6  1      OPC=1343  
  nop                                                   #  32    0xa8fc7  1      OPC=1343  
  nop                                                   #  33    0xa8fc8  1      OPC=1343  
  nop                                                   #  34    0xa8fc9  1      OPC=1343  
  nop                                                   #  35    0xa8fca  1      OPC=1343  
  nop                                                   #  36    0xa8fcb  1      OPC=1343  
  nop                                                   #  37    0xa8fcc  1      OPC=1343  
.L_a8fc0:                                               #        0xa8fcd  0      OPC=0     
  movl %edi, %edi                                       #  38    0xa8fcd  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                              #  39    0xa8fcf  4      OPC=1156  
  movl %eax, %eax                                       #  40    0xa8fd3  2      OPC=1157  
  movl 0x28(%r15,%rax,1), %eax                          #  41    0xa8fd5  5      OPC=1156  
  andl $0xffffffe0, %eax                                #  42    0xa8fda  6      OPC=131   
  nop                                                   #  43    0xa8fe0  1      OPC=1343  
  nop                                                   #  44    0xa8fe1  1      OPC=1343  
  nop                                                   #  45    0xa8fe2  1      OPC=1343  
  addq %r15, %rax                                       #  46    0xa8fe3  3      OPC=72    
  jmpq %rax                                             #  47    0xa8fe6  2      OPC=928   
  nop                                                   #  48    0xa8fe8  1      OPC=1343  
  nop                                                   #  49    0xa8fe9  1      OPC=1343  
  nop                                                   #  50    0xa8fea  1      OPC=1343  
  nop                                                   #  51    0xa8feb  1      OPC=1343  
  nop                                                   #  52    0xa8fec  1      OPC=1343  
  nop                                                   #  53    0xa8fed  1      OPC=1343  
  nop                                                   #  54    0xa8fee  1      OPC=1343  
  nop                                                   #  55    0xa8fef  1      OPC=1343  
  nop                                                   #  56    0xa8ff0  1      OPC=1343  
  nop                                                   #  57    0xa8ff1  1      OPC=1343  
  nop                                                   #  58    0xa8ff2  1      OPC=1343  
                                                                                           
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE6sbumpcEv

