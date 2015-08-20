  .text
  .globl _getwc_r
  .type _getwc_r, @function

#! file-offset 0x15e720
#! rip-offset  0x11e720
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._getwc_r:         #        0x11e720  0      OPC=<label>       
  movl %edi, %edi  #  1     0x11e720  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x11e722  2      OPC=movl_r32_r32  
  jmpq ._fgetwc_r  #  3     0x11e724  5      OPC=jmpq_label_1  
  nop              #  4     0x11e729  1      OPC=nop           
  nop              #  5     0x11e72a  1      OPC=nop           
  nop              #  6     0x11e72b  1      OPC=nop           
  nop              #  7     0x11e72c  1      OPC=nop           
  nop              #  8     0x11e72d  1      OPC=nop           
  nop              #  9     0x11e72e  1      OPC=nop           
  nop              #  10    0x11e72f  1      OPC=nop           
  nop              #  11    0x11e730  1      OPC=nop           
  nop              #  12    0x11e731  1      OPC=nop           
  nop              #  13    0x11e732  1      OPC=nop           
  nop              #  14    0x11e733  1      OPC=nop           
  nop              #  15    0x11e734  1      OPC=nop           
  nop              #  16    0x11e735  1      OPC=nop           
  nop              #  17    0x11e736  1      OPC=nop           
  nop              #  18    0x11e737  1      OPC=nop           
  nop              #  19    0x11e738  1      OPC=nop           
  nop              #  20    0x11e739  1      OPC=nop           
  nop              #  21    0x11e73a  1      OPC=nop           
  nop              #  22    0x11e73b  1      OPC=nop           
  nop              #  23    0x11e73c  1      OPC=nop           
  nop              #  24    0x11e73d  1      OPC=nop           
  nop              #  25    0x11e73e  1      OPC=nop           
  nop              #  26    0x11e73f  1      OPC=nop           
                                                               
.size _getwc_r, .-_getwc_r

