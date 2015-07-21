  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw, @function

#! file-offset 0xe8cc0
#! rip-offset  0xa8cc0
#! capacity    96 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode    
._ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw:  #        0xa8cc0  0      OPC=0     
  movl %edi, %edi                                          #  1     0xa8cc0  2      OPC=1157  
  movl %edi, %edi                                          #  2     0xa8cc2  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %edx                              #  3     0xa8cc4  5      OPC=1156  
  movl %edi, %edi                                          #  4     0xa8cc9  2      OPC=1157  
  cmpl %edx, 0x4(%r15,%rdi,1)                              #  5     0xa8ccb  5      OPC=457   
  jb .L_a8d00                                              #  6     0xa8cd0  6      OPC=875   
  nop                                                      #  7     0xa8cd6  1      OPC=1343  
  nop                                                      #  8     0xa8cd7  1      OPC=1343  
  nop                                                      #  9     0xa8cd8  1      OPC=1343  
  nop                                                      #  10    0xa8cd9  1      OPC=1343  
  nop                                                      #  11    0xa8cda  1      OPC=1343  
  nop                                                      #  12    0xa8cdb  1      OPC=1343  
  nop                                                      #  13    0xa8cdc  1      OPC=1343  
  nop                                                      #  14    0xa8cdd  1      OPC=1343  
  nop                                                      #  15    0xa8cde  1      OPC=1343  
  nop                                                      #  16    0xa8cdf  1      OPC=1343  
  nop                                                      #  17    0xa8ce0  1      OPC=1343  
  nop                                                      #  18    0xa8ce1  1      OPC=1343  
  nop                                                      #  19    0xa8ce2  1      OPC=1343  
  nop                                                      #  20    0xa8ce3  1      OPC=1343  
  nop                                                      #  21    0xa8ce4  1      OPC=1343  
  nop                                                      #  22    0xa8ce5  1      OPC=1343  
.L_a8ce0:                                                  #        0xa8ce6  0      OPC=0     
  movl %edi, %edi                                          #  23    0xa8ce6  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                 #  24    0xa8ce8  4      OPC=1156  
  movl %eax, %eax                                          #  25    0xa8cec  2      OPC=1157  
  movl 0x2c(%r15,%rax,1), %edx                             #  26    0xa8cee  5      OPC=1156  
  andl $0xffffffe0, %edx                                   #  27    0xa8cf3  6      OPC=131   
  nop                                                      #  28    0xa8cf9  1      OPC=1343  
  nop                                                      #  29    0xa8cfa  1      OPC=1343  
  nop                                                      #  30    0xa8cfb  1      OPC=1343  
  addq %r15, %rdx                                          #  31    0xa8cfc  3      OPC=72    
  jmpq %rdx                                                #  32    0xa8cff  2      OPC=928   
  nop                                                      #  33    0xa8d01  1      OPC=1343  
  nop                                                      #  34    0xa8d02  1      OPC=1343  
  nop                                                      #  35    0xa8d03  1      OPC=1343  
  nop                                                      #  36    0xa8d04  1      OPC=1343  
  nop                                                      #  37    0xa8d05  1      OPC=1343  
  nop                                                      #  38    0xa8d06  1      OPC=1343  
  nop                                                      #  39    0xa8d07  1      OPC=1343  
  nop                                                      #  40    0xa8d08  1      OPC=1343  
  nop                                                      #  41    0xa8d09  1      OPC=1343  
  nop                                                      #  42    0xa8d0a  1      OPC=1343  
  nop                                                      #  43    0xa8d0b  1      OPC=1343  
.L_a8d00:                                                  #        0xa8d0c  0      OPC=0     
  subl $0x4, %edx                                          #  44    0xa8d0c  3      OPC=2384  
  movl %edx, %edx                                          #  45    0xa8d0f  2      OPC=1157  
  cmpl (%r15,%rdx,1), %esi                                 #  46    0xa8d11  4      OPC=471   
  jne .L_a8ce0                                             #  47    0xa8d15  6      OPC=963   
  nop                                                      #  48    0xa8d1b  1      OPC=1343  
  nop                                                      #  49    0xa8d1c  1      OPC=1343  
  popq %r11                                                #  50    0xa8d1d  2      OPC=1694  
  movl %esi, %eax                                          #  51    0xa8d1f  2      OPC=1157  
  movl %edi, %edi                                          #  52    0xa8d21  2      OPC=1157  
  movl %edx, 0x8(%r15,%rdi,1)                              #  53    0xa8d23  5      OPC=1136  
  andl $0xffffffe0, %r11d                                  #  54    0xa8d28  7      OPC=131   
  nop                                                      #  55    0xa8d2f  1      OPC=1343  
  nop                                                      #  56    0xa8d30  1      OPC=1343  
  nop                                                      #  57    0xa8d31  1      OPC=1343  
  nop                                                      #  58    0xa8d32  1      OPC=1343  
  addq %r15, %r11                                          #  59    0xa8d33  3      OPC=72    
  jmpq %r11                                                #  60    0xa8d36  3      OPC=928   
                                                                                              
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE9sputbackcEw

