  .text
  .globl memalign
  .type memalign, @function

#! file-offset 0x157480
#! rip-offset  0x117480
#! capacity    64 bytes

# Text             #  Line  RIP       Bytes  Opcode    
.memalign:         #        0x117480  0      OPC=0     
  cmpl $0x8, %edi  #  1     0x117480  3      OPC=470   
  jbe .L_1174a0    #  2     0x117483  6      OPC=881   
  nop              #  3     0x117489  1      OPC=1343  
  nop              #  4     0x11748a  1      OPC=1343  
  jmpq .T_277      #  5     0x11748b  5      OPC=930   
  nop              #  6     0x117490  1      OPC=1343  
  nop              #  7     0x117491  1      OPC=1343  
  nop              #  8     0x117492  1      OPC=1343  
  nop              #  9     0x117493  1      OPC=1343  
  nop              #  10    0x117494  1      OPC=1343  
  nop              #  11    0x117495  1      OPC=1343  
  nop              #  12    0x117496  1      OPC=1343  
  nop              #  13    0x117497  1      OPC=1343  
  nop              #  14    0x117498  1      OPC=1343  
  nop              #  15    0x117499  1      OPC=1343  
  nop              #  16    0x11749a  1      OPC=1343  
  nop              #  17    0x11749b  1      OPC=1343  
  nop              #  18    0x11749c  1      OPC=1343  
  nop              #  19    0x11749d  1      OPC=1343  
  nop              #  20    0x11749e  1      OPC=1343  
  nop              #  21    0x11749f  1      OPC=1343  
  nop              #  22    0x1174a0  1      OPC=1343  
  nop              #  23    0x1174a1  1      OPC=1343  
  nop              #  24    0x1174a2  1      OPC=1343  
  nop              #  25    0x1174a3  1      OPC=1343  
  nop              #  26    0x1174a4  1      OPC=1343  
  nop              #  27    0x1174a5  1      OPC=1343  
.L_1174a0:         #        0x1174a6  0      OPC=0     
  movl %esi, %edi  #  28    0x1174a6  2      OPC=1157  
  jmpq .malloc     #  29    0x1174a8  5      OPC=930   
  nop              #  30    0x1174ad  1      OPC=1343  
  nop              #  31    0x1174ae  1      OPC=1343  
  nop              #  32    0x1174af  1      OPC=1343  
  nop              #  33    0x1174b0  1      OPC=1343  
  nop              #  34    0x1174b1  1      OPC=1343  
  nop              #  35    0x1174b2  1      OPC=1343  
  nop              #  36    0x1174b3  1      OPC=1343  
  nop              #  37    0x1174b4  1      OPC=1343  
  nop              #  38    0x1174b5  1      OPC=1343  
  nop              #  39    0x1174b6  1      OPC=1343  
  nop              #  40    0x1174b7  1      OPC=1343  
  nop              #  41    0x1174b8  1      OPC=1343  
  nop              #  42    0x1174b9  1      OPC=1343  
  nop              #  43    0x1174ba  1      OPC=1343  
  nop              #  44    0x1174bb  1      OPC=1343  
  nop              #  45    0x1174bc  1      OPC=1343  
  nop              #  46    0x1174bd  1      OPC=1343  
  nop              #  47    0x1174be  1      OPC=1343  
  nop              #  48    0x1174bf  1      OPC=1343  
  nop              #  49    0x1174c0  1      OPC=1343  
  nop              #  50    0x1174c1  1      OPC=1343  
  nop              #  51    0x1174c2  1      OPC=1343  
  nop              #  52    0x1174c3  1      OPC=1343  
  nop              #  53    0x1174c4  1      OPC=1343  
  nop              #  54    0x1174c5  1      OPC=1343  
                                                       
.size memalign, .-memalign

