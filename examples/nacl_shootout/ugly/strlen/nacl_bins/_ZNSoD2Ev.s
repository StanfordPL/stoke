  .text
  .globl _ZNSoD2Ev
  .type _ZNSoD2Ev, @function

#! file-offset 0xdc600
#! rip-offset  0x9c600
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
._ZNSoD2Ev:                    #        0x9c600  0      OPC=0     
  movl %esi, %esi              #  1     0x9c600  2      OPC=1157  
  movl %edi, %edi              #  2     0x9c602  2      OPC=1157  
  movl %esi, %esi              #  3     0x9c604  2      OPC=1157  
  movl (%r15,%rsi,1), %eax     #  4     0x9c606  4      OPC=1156  
  movl %edi, %edi              #  5     0x9c60a  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)     #  6     0x9c60c  4      OPC=1136  
  subl $0xc, %eax              #  7     0x9c610  3      OPC=2384  
  movl %eax, %eax              #  8     0x9c613  2      OPC=1157  
  addl (%r15,%rax,1), %edi     #  9     0x9c615  4      OPC=66    
  movl %esi, %esi              #  10    0x9c619  2      OPC=1157  
  movl 0x4(%r15,%rsi,1), %eax  #  11    0x9c61b  5      OPC=1156  
  movl %edi, %edi              #  12    0x9c620  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)     #  13    0x9c622  4      OPC=1136  
  popq %r11                    #  14    0x9c626  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  15    0x9c628  7      OPC=131   
  nop                          #  16    0x9c62f  1      OPC=1343  
  nop                          #  17    0x9c630  1      OPC=1343  
  nop                          #  18    0x9c631  1      OPC=1343  
  nop                          #  19    0x9c632  1      OPC=1343  
  addq %r15, %r11              #  20    0x9c633  3      OPC=72    
  jmpq %r11                    #  21    0x9c636  3      OPC=928   
  nop                          #  22    0x9c639  1      OPC=1343  
  nop                          #  23    0x9c63a  1      OPC=1343  
  nop                          #  24    0x9c63b  1      OPC=1343  
  nop                          #  25    0x9c63c  1      OPC=1343  
  nop                          #  26    0x9c63d  1      OPC=1343  
  nop                          #  27    0x9c63e  1      OPC=1343  
  nop                          #  28    0x9c63f  1      OPC=1343  
  nop                          #  29    0x9c640  1      OPC=1343  
  nop                          #  30    0x9c641  1      OPC=1343  
  nop                          #  31    0x9c642  1      OPC=1343  
  nop                          #  32    0x9c643  1      OPC=1343  
  nop                          #  33    0x9c644  1      OPC=1343  
  nop                          #  34    0x9c645  1      OPC=1343  
  nop                          #  35    0x9c646  1      OPC=1343  
                                                                  
.size _ZNSoD2Ev, .-_ZNSoD2Ev

