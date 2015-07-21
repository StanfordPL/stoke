  .text
  .globl _Unwind_GetIPInfo
  .type _Unwind_GetIPInfo, @function

#! file-offset 0x149480
#! rip-offset  0x109480
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
._Unwind_GetIPInfo:             #        0x109480  0      OPC=0     
  movl %edi, %edi               #  1     0x109480  2      OPC=1157  
  movl %esi, %esi               #  2     0x109482  2      OPC=1157  
  movl %edi, %edi               #  3     0x109484  2      OPC=1157  
  movq 0x60(%r15,%rdi,1), %rax  #  4     0x109486  5      OPC=1161  
  popq %r11                     #  5     0x10948b  2      OPC=1694  
  shrq $0x3f, %rax              #  6     0x10948d  4      OPC=2315  
  movl %esi, %esi               #  7     0x109491  2      OPC=1157  
  movl %eax, (%r15,%rsi,1)      #  8     0x109493  4      OPC=1136  
  movl %edi, %edi               #  9     0x109497  2      OPC=1157  
  movl 0x4c(%r15,%rdi,1), %eax  #  10    0x109499  5      OPC=1156  
  xchgw %ax, %ax                #  11    0x10949e  2      OPC=3700  
  andl $0xffffffe0, %r11d       #  12    0x1094a0  7      OPC=131   
  nop                           #  13    0x1094a7  1      OPC=1343  
  nop                           #  14    0x1094a8  1      OPC=1343  
  nop                           #  15    0x1094a9  1      OPC=1343  
  nop                           #  16    0x1094aa  1      OPC=1343  
  addq %r15, %r11               #  17    0x1094ab  3      OPC=72    
  jmpq %r11                     #  18    0x1094ae  3      OPC=928   
  nop                           #  19    0x1094b1  1      OPC=1343  
  nop                           #  20    0x1094b2  1      OPC=1343  
  nop                           #  21    0x1094b3  1      OPC=1343  
  nop                           #  22    0x1094b4  1      OPC=1343  
  nop                           #  23    0x1094b5  1      OPC=1343  
  nop                           #  24    0x1094b6  1      OPC=1343  
  nop                           #  25    0x1094b7  1      OPC=1343  
  nop                           #  26    0x1094b8  1      OPC=1343  
  nop                           #  27    0x1094b9  1      OPC=1343  
  nop                           #  28    0x1094ba  1      OPC=1343  
  nop                           #  29    0x1094bb  1      OPC=1343  
  nop                           #  30    0x1094bc  1      OPC=1343  
  nop                           #  31    0x1094bd  1      OPC=1343  
  nop                           #  32    0x1094be  1      OPC=1343  
  nop                           #  33    0x1094bf  1      OPC=1343  
  nop                           #  34    0x1094c0  1      OPC=1343  
  nop                           #  35    0x1094c1  1      OPC=1343  
  nop                           #  36    0x1094c2  1      OPC=1343  
  nop                           #  37    0x1094c3  1      OPC=1343  
  nop                           #  38    0x1094c4  1      OPC=1343  
  nop                           #  39    0x1094c5  1      OPC=1343  
  nop                           #  40    0x1094c6  1      OPC=1343  
                                                                    
.size _Unwind_GetIPInfo, .-_Unwind_GetIPInfo

