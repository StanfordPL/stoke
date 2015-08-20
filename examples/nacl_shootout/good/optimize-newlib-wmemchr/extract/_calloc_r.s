  .text
  .globl _calloc_r
  .type _calloc_r, @function

#! file-offset 0x156e00
#! rip-offset  0x116e00
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._calloc_r:        #        0x116e00  0      OPC=<label>       
  movl %esi, %edi  #  1     0x116e00  2      OPC=movl_r32_r32  
  movl %edx, %esi  #  2     0x116e02  2      OPC=movl_r32_r32  
  jmpq .calloc     #  3     0x116e04  5      OPC=jmpq_label_1  
  nop              #  4     0x116e09  1      OPC=nop           
  nop              #  5     0x116e0a  1      OPC=nop           
  nop              #  6     0x116e0b  1      OPC=nop           
  nop              #  7     0x116e0c  1      OPC=nop           
  nop              #  8     0x116e0d  1      OPC=nop           
  nop              #  9     0x116e0e  1      OPC=nop           
  nop              #  10    0x116e0f  1      OPC=nop           
  nop              #  11    0x116e10  1      OPC=nop           
  nop              #  12    0x116e11  1      OPC=nop           
  nop              #  13    0x116e12  1      OPC=nop           
  nop              #  14    0x116e13  1      OPC=nop           
  nop              #  15    0x116e14  1      OPC=nop           
  nop              #  16    0x116e15  1      OPC=nop           
  nop              #  17    0x116e16  1      OPC=nop           
  nop              #  18    0x116e17  1      OPC=nop           
  nop              #  19    0x116e18  1      OPC=nop           
  nop              #  20    0x116e19  1      OPC=nop           
  nop              #  21    0x116e1a  1      OPC=nop           
  nop              #  22    0x116e1b  1      OPC=nop           
  nop              #  23    0x116e1c  1      OPC=nop           
  nop              #  24    0x116e1d  1      OPC=nop           
  nop              #  25    0x116e1e  1      OPC=nop           
  nop              #  26    0x116e1f  1      OPC=nop           
                                                               
.size _calloc_r, .-_calloc_r

