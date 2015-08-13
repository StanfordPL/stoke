  .text
  .globl _realloc_r
  .type _realloc_r, @function

#! file-offset 0x157480
#! rip-offset  0x117480
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._realloc_r:       #        0x117480  0      OPC=<label>       
  movl %esi, %edi  #  1     0x117480  2      OPC=movl_r32_r32  
  movl %edx, %esi  #  2     0x117482  2      OPC=movl_r32_r32  
  jmpq .realloc    #  3     0x117484  5      OPC=jmpq_label_1  
  nop              #  4     0x117489  1      OPC=nop           
  nop              #  5     0x11748a  1      OPC=nop           
  nop              #  6     0x11748b  1      OPC=nop           
  nop              #  7     0x11748c  1      OPC=nop           
  nop              #  8     0x11748d  1      OPC=nop           
  nop              #  9     0x11748e  1      OPC=nop           
  nop              #  10    0x11748f  1      OPC=nop           
  nop              #  11    0x117490  1      OPC=nop           
  nop              #  12    0x117491  1      OPC=nop           
  nop              #  13    0x117492  1      OPC=nop           
  nop              #  14    0x117493  1      OPC=nop           
  nop              #  15    0x117494  1      OPC=nop           
  nop              #  16    0x117495  1      OPC=nop           
  nop              #  17    0x117496  1      OPC=nop           
  nop              #  18    0x117497  1      OPC=nop           
  nop              #  19    0x117498  1      OPC=nop           
  nop              #  20    0x117499  1      OPC=nop           
  nop              #  21    0x11749a  1      OPC=nop           
  nop              #  22    0x11749b  1      OPC=nop           
  nop              #  23    0x11749c  1      OPC=nop           
  nop              #  24    0x11749d  1      OPC=nop           
  nop              #  25    0x11749e  1      OPC=nop           
  nop              #  26    0x11749f  1      OPC=nop           
                                                               
.size _realloc_r, .-_realloc_r

