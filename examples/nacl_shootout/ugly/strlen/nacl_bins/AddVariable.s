  .text
  .globl AddVariable
  .type AddVariable, @function

#! file-offset 0x67480
#! rip-offset  0x27480
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.AddVariable:                  #        0x27480  0      OPC=0     
  movl %edi, %esi              #  1     0x27480  2      OPC=1157  
  movl 0x10049cb8(%rip), %edi  #  2     0x27482  6      OPC=1156  
  jmpq .List_Add               #  3     0x27488  5      OPC=930   
  nop                          #  4     0x2748d  1      OPC=1343  
  nop                          #  5     0x2748e  1      OPC=1343  
  nop                          #  6     0x2748f  1      OPC=1343  
  nop                          #  7     0x27490  1      OPC=1343  
  nop                          #  8     0x27491  1      OPC=1343  
  nop                          #  9     0x27492  1      OPC=1343  
  nop                          #  10    0x27493  1      OPC=1343  
  nop                          #  11    0x27494  1      OPC=1343  
  nop                          #  12    0x27495  1      OPC=1343  
  nop                          #  13    0x27496  1      OPC=1343  
  nop                          #  14    0x27497  1      OPC=1343  
  nop                          #  15    0x27498  1      OPC=1343  
  nop                          #  16    0x27499  1      OPC=1343  
  nop                          #  17    0x2749a  1      OPC=1343  
  nop                          #  18    0x2749b  1      OPC=1343  
  nop                          #  19    0x2749c  1      OPC=1343  
  nop                          #  20    0x2749d  1      OPC=1343  
  nop                          #  21    0x2749e  1      OPC=1343  
  nop                          #  22    0x2749f  1      OPC=1343  
                                                                  
.size AddVariable, .-AddVariable

