  .text
  .globl _putwc_r
  .type _putwc_r, @function

#! file-offset 0x164580
#! rip-offset  0x124580
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._putwc_r:         #        0x124580  0      OPC=<label>       
  movl %edi, %edi  #  1     0x124580  2      OPC=movl_r32_r32  
  movl %edx, %edx  #  2     0x124582  2      OPC=movl_r32_r32  
  jmpq ._fputwc_r  #  3     0x124584  5      OPC=jmpq_label_1  
  nop              #  4     0x124589  1      OPC=nop           
  nop              #  5     0x12458a  1      OPC=nop           
  nop              #  6     0x12458b  1      OPC=nop           
  nop              #  7     0x12458c  1      OPC=nop           
  nop              #  8     0x12458d  1      OPC=nop           
  nop              #  9     0x12458e  1      OPC=nop           
  nop              #  10    0x12458f  1      OPC=nop           
  nop              #  11    0x124590  1      OPC=nop           
  nop              #  12    0x124591  1      OPC=nop           
  nop              #  13    0x124592  1      OPC=nop           
  nop              #  14    0x124593  1      OPC=nop           
  nop              #  15    0x124594  1      OPC=nop           
  nop              #  16    0x124595  1      OPC=nop           
  nop              #  17    0x124596  1      OPC=nop           
  nop              #  18    0x124597  1      OPC=nop           
  nop              #  19    0x124598  1      OPC=nop           
  nop              #  20    0x124599  1      OPC=nop           
  nop              #  21    0x12459a  1      OPC=nop           
  nop              #  22    0x12459b  1      OPC=nop           
  nop              #  23    0x12459c  1      OPC=nop           
  nop              #  24    0x12459d  1      OPC=nop           
  nop              #  25    0x12459e  1      OPC=nop           
  nop              #  26    0x12459f  1      OPC=nop           
                                                               
.size _putwc_r, .-_putwc_r

