  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x191d00
#! rip-offset  0x151d00
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.wcscpy:                    #        0x151d00  0      OPC=0     
  movl %edi, %eax           #  1     0x151d00  2      OPC=1157  
  movl %esi, %esi           #  2     0x151d02  2      OPC=1157  
  movl %eax, %eax           #  3     0x151d04  2      OPC=1157  
  movl $0x0, (%r15,%rax,1)  #  4     0x151d06  8      OPC=1135  
  movl %esi, %esi           #  5     0x151d0e  2      OPC=1157  
  movl (%r15,%rsi,1), %ecx  #  6     0x151d10  4      OPC=1156  
  movq %rax, %rdx           #  7     0x151d14  3      OPC=1162  
  testl %ecx, %ecx          #  8     0x151d17  2      OPC=2436  
  je .L_151d40              #  9     0x151d19  6      OPC=893   
  nop                       #  10    0x151d1f  1      OPC=1343  
  nop                       #  11    0x151d20  1      OPC=1343  
  nop                       #  12    0x151d21  1      OPC=1343  
  nop                       #  13    0x151d22  1      OPC=1343  
  nop                       #  14    0x151d23  1      OPC=1343  
  nop                       #  15    0x151d24  1      OPC=1343  
  nop                       #  16    0x151d25  1      OPC=1343  
.L_151d20:                  #        0x151d26  0      OPC=0     
  addl $0x4, %esi           #  17    0x151d26  3      OPC=65    
  movl %edx, %edx           #  18    0x151d29  2      OPC=1157  
  movl %ecx, (%r15,%rdx,1)  #  19    0x151d2b  4      OPC=1136  
  addl $0x4, %edx           #  20    0x151d2f  3      OPC=65    
  movl %esi, %esi           #  21    0x151d32  2      OPC=1157  
  movl (%r15,%rsi,1), %ecx  #  22    0x151d34  4      OPC=1156  
  testl %ecx, %ecx          #  23    0x151d38  2      OPC=2436  
  jne .L_151d20             #  24    0x151d3a  6      OPC=963   
  nop                       #  25    0x151d40  1      OPC=1343  
  nop                       #  26    0x151d41  1      OPC=1343  
  nop                       #  27    0x151d42  1      OPC=1343  
  nop                       #  28    0x151d43  1      OPC=1343  
  nop                       #  29    0x151d44  1      OPC=1343  
  nop                       #  30    0x151d45  1      OPC=1343  
  nop                       #  31    0x151d46  1      OPC=1343  
  nop                       #  32    0x151d47  1      OPC=1343  
  nop                       #  33    0x151d48  1      OPC=1343  
  nop                       #  34    0x151d49  1      OPC=1343  
  nop                       #  35    0x151d4a  1      OPC=1343  
  nop                       #  36    0x151d4b  1      OPC=1343  
.L_151d40:                  #        0x151d4c  0      OPC=0     
  movl %edx, %edx           #  37    0x151d4c  2      OPC=1157  
  movl $0x0, (%r15,%rdx,1)  #  38    0x151d4e  8      OPC=1135  
  popq %r11                 #  39    0x151d56  2      OPC=1694  
  andl $0xffffffe0, %r11d   #  40    0x151d58  7      OPC=131   
  nop                       #  41    0x151d5f  1      OPC=1343  
  nop                       #  42    0x151d60  1      OPC=1343  
  nop                       #  43    0x151d61  1      OPC=1343  
  nop                       #  44    0x151d62  1      OPC=1343  
  addq %r15, %r11           #  45    0x151d63  3      OPC=72    
  jmpq %r11                 #  46    0x151d66  3      OPC=928   
  nop                       #  47    0x151d69  1      OPC=1343  
  nop                       #  48    0x151d6a  1      OPC=1343  
  nop                       #  49    0x151d6b  1      OPC=1343  
  nop                       #  50    0x151d6c  1      OPC=1343  
  nop                       #  51    0x151d6d  1      OPC=1343  
  nop                       #  52    0x151d6e  1      OPC=1343  
  nop                       #  53    0x151d6f  1      OPC=1343  
  nop                       #  54    0x151d70  1      OPC=1343  
  nop                       #  55    0x151d71  1      OPC=1343  
  nop                       #  56    0x151d72  1      OPC=1343  
                                                                
.size wcscpy, .-wcscpy

