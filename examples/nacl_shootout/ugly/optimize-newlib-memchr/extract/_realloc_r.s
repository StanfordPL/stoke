  .text
  .globl _realloc_r
  .type _realloc_r, @function

#! file-offset 0x157ea0
#! rip-offset  0x117ea0
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._realloc_r:       #        0x117ea0  0      OPC=<label>       
  movl %esi, %edi  #  1     0x117ea0  2      OPC=movl_r32_r32  
  movl %edx, %esi  #  2     0x117ea2  2      OPC=movl_r32_r32  
  jmpq .realloc    #  3     0x117ea4  5      OPC=jmpq_label_1  
  nop              #  4     0x117ea9  1      OPC=nop           
  nop              #  5     0x117eaa  1      OPC=nop           
  nop              #  6     0x117eab  1      OPC=nop           
  nop              #  7     0x117eac  1      OPC=nop           
  nop              #  8     0x117ead  1      OPC=nop           
  nop              #  9     0x117eae  1      OPC=nop           
  nop              #  10    0x117eaf  1      OPC=nop           
  nop              #  11    0x117eb0  1      OPC=nop           
  nop              #  12    0x117eb1  1      OPC=nop           
  nop              #  13    0x117eb2  1      OPC=nop           
  nop              #  14    0x117eb3  1      OPC=nop           
  nop              #  15    0x117eb4  1      OPC=nop           
  nop              #  16    0x117eb5  1      OPC=nop           
  nop              #  17    0x117eb6  1      OPC=nop           
  nop              #  18    0x117eb7  1      OPC=nop           
  nop              #  19    0x117eb8  1      OPC=nop           
  nop              #  20    0x117eb9  1      OPC=nop           
  nop              #  21    0x117eba  1      OPC=nop           
  nop              #  22    0x117ebb  1      OPC=nop           
  nop              #  23    0x117ebc  1      OPC=nop           
  nop              #  24    0x117ebd  1      OPC=nop           
  nop              #  25    0x117ebe  1      OPC=nop           
  nop              #  26    0x117ebf  1      OPC=nop           
                                                               
.size _realloc_r, .-_realloc_r

