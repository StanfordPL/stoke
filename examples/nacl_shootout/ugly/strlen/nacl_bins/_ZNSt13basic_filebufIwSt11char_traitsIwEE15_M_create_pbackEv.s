  .text
  .globl _ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv
  .type _ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv, @function

#! file-offset 0x129ce0
#! rip-offset  0xe9ce0
#! capacity    128 bytes

# Text                                                          #  Line  RIP      Bytes  Opcode    
._ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv:  #        0xe9ce0  0      OPC=0     
  movl %edi, %edi                                               #  1     0xe9ce0  2      OPC=1157  
  movl %edi, %edi                                               #  2     0xe9ce2  2      OPC=1157  
  cmpb $0x0, 0x70(%r15,%rdi,1)                                  #  3     0xe9ce4  6      OPC=461   
  jne .L_e9d40                                                  #  4     0xe9cea  6      OPC=963   
  nop                                                           #  5     0xe9cf0  1      OPC=1343  
  nop                                                           #  6     0xe9cf1  1      OPC=1343  
  movl %edi, %edi                                               #  7     0xe9cf2  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax                                   #  8     0xe9cf4  5      OPC=1156  
  movl %edi, %edi                                               #  9     0xe9cf9  2      OPC=1157  
  movb $0x1, 0x70(%r15,%rdi,1)                                  #  10    0xe9cfb  6      OPC=1140  
  nop                                                           #  11    0xe9d01  1      OPC=1343  
  nop                                                           #  12    0xe9d02  1      OPC=1343  
  nop                                                           #  13    0xe9d03  1      OPC=1343  
  nop                                                           #  14    0xe9d04  1      OPC=1343  
  nop                                                           #  15    0xe9d05  1      OPC=1343  
  movl %edi, %edi                                               #  16    0xe9d06  2      OPC=1157  
  movl %eax, 0x68(%r15,%rdi,1)                                  #  17    0xe9d08  5      OPC=1136  
  movl %edi, %edi                                               #  18    0xe9d0d  2      OPC=1157  
  movl 0xc(%r15,%rdi,1), %eax                                   #  19    0xe9d0f  5      OPC=1156  
  movl %edi, %edi                                               #  20    0xe9d14  2      OPC=1157  
  movl %eax, 0x6c(%r15,%rdi,1)                                  #  21    0xe9d16  5      OPC=1136  
  leal 0x64(%rdi), %eax                                         #  22    0xe9d1b  3      OPC=1066  
  movl %edi, %edi                                               #  23    0xe9d1e  2      OPC=1157  
  movl %eax, 0x4(%r15,%rdi,1)                                   #  24    0xe9d20  5      OPC=1136  
  nop                                                           #  25    0xe9d25  1      OPC=1343  
  movl %edi, %edi                                               #  26    0xe9d26  2      OPC=1157  
  movl %eax, 0x8(%r15,%rdi,1)                                   #  27    0xe9d28  5      OPC=1136  
  addl $0x4, %eax                                               #  28    0xe9d2d  3      OPC=65    
  movl %edi, %edi                                               #  29    0xe9d30  2      OPC=1157  
  movl %eax, 0xc(%r15,%rdi,1)                                   #  30    0xe9d32  5      OPC=1136  
  nop                                                           #  31    0xe9d37  1      OPC=1343  
  nop                                                           #  32    0xe9d38  1      OPC=1343  
  nop                                                           #  33    0xe9d39  1      OPC=1343  
  nop                                                           #  34    0xe9d3a  1      OPC=1343  
  nop                                                           #  35    0xe9d3b  1      OPC=1343  
  nop                                                           #  36    0xe9d3c  1      OPC=1343  
  nop                                                           #  37    0xe9d3d  1      OPC=1343  
  nop                                                           #  38    0xe9d3e  1      OPC=1343  
  nop                                                           #  39    0xe9d3f  1      OPC=1343  
  nop                                                           #  40    0xe9d40  1      OPC=1343  
  nop                                                           #  41    0xe9d41  1      OPC=1343  
  nop                                                           #  42    0xe9d42  1      OPC=1343  
  nop                                                           #  43    0xe9d43  1      OPC=1343  
  nop                                                           #  44    0xe9d44  1      OPC=1343  
  nop                                                           #  45    0xe9d45  1      OPC=1343  
.L_e9d40:                                                       #        0xe9d46  0      OPC=0     
  popq %r11                                                     #  46    0xe9d46  2      OPC=1694  
  andl $0xffffffe0, %r11d                                       #  47    0xe9d48  7      OPC=131   
  nop                                                           #  48    0xe9d4f  1      OPC=1343  
  nop                                                           #  49    0xe9d50  1      OPC=1343  
  nop                                                           #  50    0xe9d51  1      OPC=1343  
  nop                                                           #  51    0xe9d52  1      OPC=1343  
  addq %r15, %r11                                               #  52    0xe9d53  3      OPC=72    
  jmpq %r11                                                     #  53    0xe9d56  3      OPC=928   
  nop                                                           #  54    0xe9d59  1      OPC=1343  
  nop                                                           #  55    0xe9d5a  1      OPC=1343  
  nop                                                           #  56    0xe9d5b  1      OPC=1343  
  nop                                                           #  57    0xe9d5c  1      OPC=1343  
  nop                                                           #  58    0xe9d5d  1      OPC=1343  
  nop                                                           #  59    0xe9d5e  1      OPC=1343  
  nop                                                           #  60    0xe9d5f  1      OPC=1343  
  nop                                                           #  61    0xe9d60  1      OPC=1343  
  nop                                                           #  62    0xe9d61  1      OPC=1343  
  nop                                                           #  63    0xe9d62  1      OPC=1343  
  nop                                                           #  64    0xe9d63  1      OPC=1343  
  nop                                                           #  65    0xe9d64  1      OPC=1343  
  nop                                                           #  66    0xe9d65  1      OPC=1343  
  nop                                                           #  67    0xe9d66  1      OPC=1343  
  nop                                                           #  68    0xe9d67  1      OPC=1343  
  nop                                                           #  69    0xe9d68  1      OPC=1343  
  nop                                                           #  70    0xe9d69  1      OPC=1343  
  nop                                                           #  71    0xe9d6a  1      OPC=1343  
  nop                                                           #  72    0xe9d6b  1      OPC=1343  
  nop                                                           #  73    0xe9d6c  1      OPC=1343  
                                                                                                   
.size _ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv, .-_ZNSt13basic_filebufIwSt11char_traitsIwEE15_M_create_pbackEv

