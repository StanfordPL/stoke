  .text
  .globl _malloc_r
  .type _malloc_r, @function

#! file-offset 0x157440
#! rip-offset  0x117440
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._malloc_r:        #        0x117440  0      OPC=<label>       
  movl %esi, %edi  #  1     0x117440  2      OPC=movl_r32_r32  
  jmpq .malloc     #  2     0x117442  5      OPC=jmpq_label_1  
  nop              #  3     0x117447  1      OPC=nop           
  nop              #  4     0x117448  1      OPC=nop           
  nop              #  5     0x117449  1      OPC=nop           
  nop              #  6     0x11744a  1      OPC=nop           
  nop              #  7     0x11744b  1      OPC=nop           
  nop              #  8     0x11744c  1      OPC=nop           
  nop              #  9     0x11744d  1      OPC=nop           
  nop              #  10    0x11744e  1      OPC=nop           
  nop              #  11    0x11744f  1      OPC=nop           
  nop              #  12    0x117450  1      OPC=nop           
  nop              #  13    0x117451  1      OPC=nop           
  nop              #  14    0x117452  1      OPC=nop           
  nop              #  15    0x117453  1      OPC=nop           
  nop              #  16    0x117454  1      OPC=nop           
  nop              #  17    0x117455  1      OPC=nop           
  nop              #  18    0x117456  1      OPC=nop           
  nop              #  19    0x117457  1      OPC=nop           
  nop              #  20    0x117458  1      OPC=nop           
  nop              #  21    0x117459  1      OPC=nop           
  nop              #  22    0x11745a  1      OPC=nop           
  nop              #  23    0x11745b  1      OPC=nop           
  nop              #  24    0x11745c  1      OPC=nop           
  nop              #  25    0x11745d  1      OPC=nop           
  nop              #  26    0x11745e  1      OPC=nop           
  nop              #  27    0x11745f  1      OPC=nop           
                                                               
.size _malloc_r, .-_malloc_r

