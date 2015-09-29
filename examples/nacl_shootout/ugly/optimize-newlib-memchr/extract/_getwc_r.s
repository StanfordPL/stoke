  .text
  .globl _getwc_r
  .type _getwc_r, @function

#! file-offset 0x15ee40
#! rip-offset  0x11ee40
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._getwc_r:         #        0x11ee40  0      OPC=<label>       
  movl %edi, %edi  #  1     0x11ee40  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x11ee42  2      OPC=movl_r32_r32  
  jmpq ._fgetwc_r  #  3     0x11ee44  5      OPC=jmpq_label_1  
  nop              #  4     0x11ee49  1      OPC=nop           
  nop              #  5     0x11ee4a  1      OPC=nop           
  nop              #  6     0x11ee4b  1      OPC=nop           
  nop              #  7     0x11ee4c  1      OPC=nop           
  nop              #  8     0x11ee4d  1      OPC=nop           
  nop              #  9     0x11ee4e  1      OPC=nop           
  nop              #  10    0x11ee4f  1      OPC=nop           
  nop              #  11    0x11ee50  1      OPC=nop           
  nop              #  12    0x11ee51  1      OPC=nop           
  nop              #  13    0x11ee52  1      OPC=nop           
  nop              #  14    0x11ee53  1      OPC=nop           
  nop              #  15    0x11ee54  1      OPC=nop           
  nop              #  16    0x11ee55  1      OPC=nop           
  nop              #  17    0x11ee56  1      OPC=nop           
  nop              #  18    0x11ee57  1      OPC=nop           
  nop              #  19    0x11ee58  1      OPC=nop           
  nop              #  20    0x11ee59  1      OPC=nop           
  nop              #  21    0x11ee5a  1      OPC=nop           
  nop              #  22    0x11ee5b  1      OPC=nop           
  nop              #  23    0x11ee5c  1      OPC=nop           
  nop              #  24    0x11ee5d  1      OPC=nop           
  nop              #  25    0x11ee5e  1      OPC=nop           
  nop              #  26    0x11ee5f  1      OPC=nop           
                                                               
.size _getwc_r, .-_getwc_r

