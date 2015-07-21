  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv, @function

#! file-offset 0xe8c60
#! rip-offset  0xa8c60
#! capacity    96 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode    
._ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv:  #        0xa8c60  0      OPC=0     
  movl %edi, %edi                                        #  1     0xa8c60  2      OPC=1157  
  movl %edi, %edi                                        #  2     0xa8c62  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax                            #  3     0xa8c64  5      OPC=1156  
  movl %edi, %edi                                        #  4     0xa8c69  2      OPC=1157  
  cmpl %eax, 0x4(%r15,%rdi,1)                            #  5     0xa8c6b  5      OPC=457   
  jae .L_a8ca0                                           #  6     0xa8c70  6      OPC=869   
  nop                                                    #  7     0xa8c76  1      OPC=1343  
  nop                                                    #  8     0xa8c77  1      OPC=1343  
  popq %r11                                              #  9     0xa8c78  2      OPC=1694  
  subl $0x4, %eax                                        #  10    0xa8c7a  3      OPC=2384  
  movl %edi, %edi                                        #  11    0xa8c7d  2      OPC=1157  
  movl %eax, 0x8(%r15,%rdi,1)                            #  12    0xa8c7f  5      OPC=1136  
  xchgw %ax, %ax                                         #  13    0xa8c84  2      OPC=3700  
  movl %eax, %eax                                        #  14    0xa8c86  2      OPC=1157  
  movl (%r15,%rax,1), %eax                               #  15    0xa8c88  4      OPC=1156  
  andl $0xffffffe0, %r11d                                #  16    0xa8c8c  7      OPC=131   
  nop                                                    #  17    0xa8c93  1      OPC=1343  
  nop                                                    #  18    0xa8c94  1      OPC=1343  
  nop                                                    #  19    0xa8c95  1      OPC=1343  
  nop                                                    #  20    0xa8c96  1      OPC=1343  
  addq %r15, %r11                                        #  21    0xa8c97  3      OPC=72    
  jmpq %r11                                              #  22    0xa8c9a  3      OPC=928   
  nop                                                    #  23    0xa8c9d  1      OPC=1343  
  nop                                                    #  24    0xa8c9e  1      OPC=1343  
  nop                                                    #  25    0xa8c9f  1      OPC=1343  
  nop                                                    #  26    0xa8ca0  1      OPC=1343  
  nop                                                    #  27    0xa8ca1  1      OPC=1343  
  nop                                                    #  28    0xa8ca2  1      OPC=1343  
  nop                                                    #  29    0xa8ca3  1      OPC=1343  
  nop                                                    #  30    0xa8ca4  1      OPC=1343  
  nop                                                    #  31    0xa8ca5  1      OPC=1343  
  nop                                                    #  32    0xa8ca6  1      OPC=1343  
  nop                                                    #  33    0xa8ca7  1      OPC=1343  
  nop                                                    #  34    0xa8ca8  1      OPC=1343  
  nop                                                    #  35    0xa8ca9  1      OPC=1343  
  nop                                                    #  36    0xa8caa  1      OPC=1343  
  nop                                                    #  37    0xa8cab  1      OPC=1343  
  nop                                                    #  38    0xa8cac  1      OPC=1343  
.L_a8ca0:                                                #        0xa8cad  0      OPC=0     
  movl %edi, %edi                                        #  39    0xa8cad  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                               #  40    0xa8caf  4      OPC=1156  
  orl $0xffffffff, %esi                                  #  41    0xa8cb3  6      OPC=1377  
  nop                                                    #  42    0xa8cb9  1      OPC=1343  
  nop                                                    #  43    0xa8cba  1      OPC=1343  
  nop                                                    #  44    0xa8cbb  1      OPC=1343  
  movl %eax, %eax                                        #  45    0xa8cbc  2      OPC=1157  
  movl 0x2c(%r15,%rax,1), %eax                           #  46    0xa8cbe  5      OPC=1156  
  andl $0xffffffe0, %eax                                 #  47    0xa8cc3  6      OPC=131   
  nop                                                    #  48    0xa8cc9  1      OPC=1343  
  nop                                                    #  49    0xa8cca  1      OPC=1343  
  nop                                                    #  50    0xa8ccb  1      OPC=1343  
  addq %r15, %rax                                        #  51    0xa8ccc  3      OPC=72    
  jmpq %rax                                              #  52    0xa8ccf  2      OPC=928   
  nop                                                    #  53    0xa8cd1  1      OPC=1343  
  nop                                                    #  54    0xa8cd2  1      OPC=1343  
  nop                                                    #  55    0xa8cd3  1      OPC=1343  
  nop                                                    #  56    0xa8cd4  1      OPC=1343  
  nop                                                    #  57    0xa8cd5  1      OPC=1343  
  nop                                                    #  58    0xa8cd6  1      OPC=1343  
  nop                                                    #  59    0xa8cd7  1      OPC=1343  
  nop                                                    #  60    0xa8cd8  1      OPC=1343  
                                                                                            
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE7sungetcEv

