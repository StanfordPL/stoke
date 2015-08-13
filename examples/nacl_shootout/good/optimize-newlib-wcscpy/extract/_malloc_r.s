  .text
  .globl _malloc_r
  .type _malloc_r, @function

#! file-offset 0x156a20
#! rip-offset  0x116a20
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._malloc_r:        #        0x116a20  0      OPC=<label>       
  movl %esi, %edi  #  1     0x116a20  2      OPC=movl_r32_r32  
  jmpq .malloc     #  2     0x116a22  5      OPC=jmpq_label_1  
  nop              #  3     0x116a27  1      OPC=nop           
  nop              #  4     0x116a28  1      OPC=nop           
  nop              #  5     0x116a29  1      OPC=nop           
  nop              #  6     0x116a2a  1      OPC=nop           
  nop              #  7     0x116a2b  1      OPC=nop           
  nop              #  8     0x116a2c  1      OPC=nop           
  nop              #  9     0x116a2d  1      OPC=nop           
  nop              #  10    0x116a2e  1      OPC=nop           
  nop              #  11    0x116a2f  1      OPC=nop           
  nop              #  12    0x116a30  1      OPC=nop           
  nop              #  13    0x116a31  1      OPC=nop           
  nop              #  14    0x116a32  1      OPC=nop           
  nop              #  15    0x116a33  1      OPC=nop           
  nop              #  16    0x116a34  1      OPC=nop           
  nop              #  17    0x116a35  1      OPC=nop           
  nop              #  18    0x116a36  1      OPC=nop           
  nop              #  19    0x116a37  1      OPC=nop           
  nop              #  20    0x116a38  1      OPC=nop           
  nop              #  21    0x116a39  1      OPC=nop           
  nop              #  22    0x116a3a  1      OPC=nop           
  nop              #  23    0x116a3b  1      OPC=nop           
  nop              #  24    0x116a3c  1      OPC=nop           
  nop              #  25    0x116a3d  1      OPC=nop           
  nop              #  26    0x116a3e  1      OPC=nop           
  nop              #  27    0x116a3f  1      OPC=nop           
                                                               
.size _malloc_r, .-_malloc_r

