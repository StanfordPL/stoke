  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv, @function

#! file-offset 0xe8e40
#! rip-offset  0xa8e40
#! capacity    96 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode    
._ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv:  #        0xa8e40  0      OPC=0     
  movl %edi, %edi                                        #  1     0xa8e40  2      OPC=1157  
  movl %edi, %edi                                        #  2     0xa8e42  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax                            #  3     0xa8e44  5      OPC=1156  
  movl %edi, %edi                                        #  4     0xa8e49  2      OPC=1157  
  cmpl %eax, 0x4(%r15,%rdi,1)                            #  5     0xa8e4b  5      OPC=457   
  jae .L_a8e80                                           #  6     0xa8e50  6      OPC=869   
  nop                                                    #  7     0xa8e56  1      OPC=1343  
  nop                                                    #  8     0xa8e57  1      OPC=1343  
  popq %r11                                              #  9     0xa8e58  2      OPC=1694  
  subl $0x1, %eax                                        #  10    0xa8e5a  3      OPC=2384  
  movl %edi, %edi                                        #  11    0xa8e5d  2      OPC=1157  
  movl %eax, 0x8(%r15,%rdi,1)                            #  12    0xa8e5f  5      OPC=1136  
  xchgw %ax, %ax                                         #  13    0xa8e64  2      OPC=3700  
  movl %eax, %eax                                        #  14    0xa8e66  2      OPC=1157  
  movzbl (%r15,%rax,1), %eax                             #  15    0xa8e68  5      OPC=1302  
  andl $0xffffffe0, %r11d                                #  16    0xa8e6d  7      OPC=131   
  nop                                                    #  17    0xa8e74  1      OPC=1343  
  nop                                                    #  18    0xa8e75  1      OPC=1343  
  nop                                                    #  19    0xa8e76  1      OPC=1343  
  nop                                                    #  20    0xa8e77  1      OPC=1343  
  addq %r15, %r11                                        #  21    0xa8e78  3      OPC=72    
  jmpq %r11                                              #  22    0xa8e7b  3      OPC=928   
  nop                                                    #  23    0xa8e7e  1      OPC=1343  
  nop                                                    #  24    0xa8e7f  1      OPC=1343  
  nop                                                    #  25    0xa8e80  1      OPC=1343  
  nop                                                    #  26    0xa8e81  1      OPC=1343  
  nop                                                    #  27    0xa8e82  1      OPC=1343  
  nop                                                    #  28    0xa8e83  1      OPC=1343  
  nop                                                    #  29    0xa8e84  1      OPC=1343  
  nop                                                    #  30    0xa8e85  1      OPC=1343  
  nop                                                    #  31    0xa8e86  1      OPC=1343  
  nop                                                    #  32    0xa8e87  1      OPC=1343  
  nop                                                    #  33    0xa8e88  1      OPC=1343  
  nop                                                    #  34    0xa8e89  1      OPC=1343  
  nop                                                    #  35    0xa8e8a  1      OPC=1343  
  nop                                                    #  36    0xa8e8b  1      OPC=1343  
  nop                                                    #  37    0xa8e8c  1      OPC=1343  
.L_a8e80:                                                #        0xa8e8d  0      OPC=0     
  movl %edi, %edi                                        #  38    0xa8e8d  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                               #  39    0xa8e8f  4      OPC=1156  
  orl $0xffffffff, %esi                                  #  40    0xa8e93  6      OPC=1377  
  nop                                                    #  41    0xa8e99  1      OPC=1343  
  nop                                                    #  42    0xa8e9a  1      OPC=1343  
  nop                                                    #  43    0xa8e9b  1      OPC=1343  
  movl %eax, %eax                                        #  44    0xa8e9c  2      OPC=1157  
  movl 0x2c(%r15,%rax,1), %eax                           #  45    0xa8e9e  5      OPC=1156  
  andl $0xffffffe0, %eax                                 #  46    0xa8ea3  6      OPC=131   
  nop                                                    #  47    0xa8ea9  1      OPC=1343  
  nop                                                    #  48    0xa8eaa  1      OPC=1343  
  nop                                                    #  49    0xa8eab  1      OPC=1343  
  addq %r15, %rax                                        #  50    0xa8eac  3      OPC=72    
  jmpq %rax                                              #  51    0xa8eaf  2      OPC=928   
  nop                                                    #  52    0xa8eb1  1      OPC=1343  
  nop                                                    #  53    0xa8eb2  1      OPC=1343  
  nop                                                    #  54    0xa8eb3  1      OPC=1343  
  nop                                                    #  55    0xa8eb4  1      OPC=1343  
  nop                                                    #  56    0xa8eb5  1      OPC=1343  
  nop                                                    #  57    0xa8eb6  1      OPC=1343  
  nop                                                    #  58    0xa8eb7  1      OPC=1343  
  nop                                                    #  59    0xa8eb8  1      OPC=1343  
                                                                                            
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE7sungetcEv

