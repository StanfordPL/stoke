  .text
  .globl my_memcpy
  .type my_memcpy, @function

#! file-offset 0x69800
#! rip-offset  0x29800
#! capacity    32 bytes

# Text             #  Line  RIP      Bytes  Opcode            
.my_memcpy:        #        0x29800  0      OPC=<label>       
  movl %edi, %edi  #  1     0x29800  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x29802  2      OPC=movl_r32_r32  
  jmpq .memcpy     #  3     0x29804  5      OPC=jmpq_label_1  
  nop              #  4     0x29809  1      OPC=nop           
  nop              #  5     0x2980a  1      OPC=nop           
  nop              #  6     0x2980b  1      OPC=nop           
  nop              #  7     0x2980c  1      OPC=nop           
  nop              #  8     0x2980d  1      OPC=nop           
  nop              #  9     0x2980e  1      OPC=nop           
  nop              #  10    0x2980f  1      OPC=nop           
  nop              #  11    0x29810  1      OPC=nop           
  nop              #  12    0x29811  1      OPC=nop           
  nop              #  13    0x29812  1      OPC=nop           
  nop              #  14    0x29813  1      OPC=nop           
  nop              #  15    0x29814  1      OPC=nop           
  nop              #  16    0x29815  1      OPC=nop           
  nop              #  17    0x29816  1      OPC=nop           
  nop              #  18    0x29817  1      OPC=nop           
  nop              #  19    0x29818  1      OPC=nop           
  nop              #  20    0x29819  1      OPC=nop           
  nop              #  21    0x2981a  1      OPC=nop           
  nop              #  22    0x2981b  1      OPC=nop           
  nop              #  23    0x2981c  1      OPC=nop           
  nop              #  24    0x2981d  1      OPC=nop           
  nop              #  25    0x2981e  1      OPC=nop           
  nop              #  26    0x2981f  1      OPC=nop           
                                                              
.size my_memcpy, .-my_memcpy

