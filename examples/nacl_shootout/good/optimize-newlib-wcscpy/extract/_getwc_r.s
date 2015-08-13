  .text
  .globl _getwc_r
  .type _getwc_r, @function

#! file-offset 0x15e420
#! rip-offset  0x11e420
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._getwc_r:         #        0x11e420  0      OPC=<label>       
  movl %edi, %edi  #  1     0x11e420  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x11e422  2      OPC=movl_r32_r32  
  jmpq ._fgetwc_r  #  3     0x11e424  5      OPC=jmpq_label_1  
  nop              #  4     0x11e429  1      OPC=nop           
  nop              #  5     0x11e42a  1      OPC=nop           
  nop              #  6     0x11e42b  1      OPC=nop           
  nop              #  7     0x11e42c  1      OPC=nop           
  nop              #  8     0x11e42d  1      OPC=nop           
  nop              #  9     0x11e42e  1      OPC=nop           
  nop              #  10    0x11e42f  1      OPC=nop           
  nop              #  11    0x11e430  1      OPC=nop           
  nop              #  12    0x11e431  1      OPC=nop           
  nop              #  13    0x11e432  1      OPC=nop           
  nop              #  14    0x11e433  1      OPC=nop           
  nop              #  15    0x11e434  1      OPC=nop           
  nop              #  16    0x11e435  1      OPC=nop           
  nop              #  17    0x11e436  1      OPC=nop           
  nop              #  18    0x11e437  1      OPC=nop           
  nop              #  19    0x11e438  1      OPC=nop           
  nop              #  20    0x11e439  1      OPC=nop           
  nop              #  21    0x11e43a  1      OPC=nop           
  nop              #  22    0x11e43b  1      OPC=nop           
  nop              #  23    0x11e43c  1      OPC=nop           
  nop              #  24    0x11e43d  1      OPC=nop           
  nop              #  25    0x11e43e  1      OPC=nop           
  nop              #  26    0x11e43f  1      OPC=nop           
                                                               
.size _getwc_r, .-_getwc_r

