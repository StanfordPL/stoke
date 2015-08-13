  .text
  .globl _calloc_r
  .type _calloc_r, @function

#! file-offset 0x156b00
#! rip-offset  0x116b00
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._calloc_r:        #        0x116b00  0      OPC=<label>       
  movl %esi, %edi  #  1     0x116b00  2      OPC=movl_r32_r32  
  movl %edx, %esi  #  2     0x116b02  2      OPC=movl_r32_r32  
  jmpq .calloc     #  3     0x116b04  5      OPC=jmpq_label_1  
  nop              #  4     0x116b09  1      OPC=nop           
  nop              #  5     0x116b0a  1      OPC=nop           
  nop              #  6     0x116b0b  1      OPC=nop           
  nop              #  7     0x116b0c  1      OPC=nop           
  nop              #  8     0x116b0d  1      OPC=nop           
  nop              #  9     0x116b0e  1      OPC=nop           
  nop              #  10    0x116b0f  1      OPC=nop           
  nop              #  11    0x116b10  1      OPC=nop           
  nop              #  12    0x116b11  1      OPC=nop           
  nop              #  13    0x116b12  1      OPC=nop           
  nop              #  14    0x116b13  1      OPC=nop           
  nop              #  15    0x116b14  1      OPC=nop           
  nop              #  16    0x116b15  1      OPC=nop           
  nop              #  17    0x116b16  1      OPC=nop           
  nop              #  18    0x116b17  1      OPC=nop           
  nop              #  19    0x116b18  1      OPC=nop           
  nop              #  20    0x116b19  1      OPC=nop           
  nop              #  21    0x116b1a  1      OPC=nop           
  nop              #  22    0x116b1b  1      OPC=nop           
  nop              #  23    0x116b1c  1      OPC=nop           
  nop              #  24    0x116b1d  1      OPC=nop           
  nop              #  25    0x116b1e  1      OPC=nop           
  nop              #  26    0x116b1f  1      OPC=nop           
                                                               
.size _calloc_r, .-_calloc_r

