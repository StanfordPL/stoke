  .text
  .globl _realloc_r
  .type _realloc_r, @function

#! file-offset 0x157780
#! rip-offset  0x117780
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._realloc_r:       #        0x117780  0      OPC=<label>       
  movl %esi, %edi  #  1     0x117780  2      OPC=movl_r32_r32  
  movl %edx, %esi  #  2     0x117782  2      OPC=movl_r32_r32  
  jmpq .realloc    #  3     0x117784  5      OPC=jmpq_label_1  
  nop              #  4     0x117789  1      OPC=nop           
  nop              #  5     0x11778a  1      OPC=nop           
  nop              #  6     0x11778b  1      OPC=nop           
  nop              #  7     0x11778c  1      OPC=nop           
  nop              #  8     0x11778d  1      OPC=nop           
  nop              #  9     0x11778e  1      OPC=nop           
  nop              #  10    0x11778f  1      OPC=nop           
  nop              #  11    0x117790  1      OPC=nop           
  nop              #  12    0x117791  1      OPC=nop           
  nop              #  13    0x117792  1      OPC=nop           
  nop              #  14    0x117793  1      OPC=nop           
  nop              #  15    0x117794  1      OPC=nop           
  nop              #  16    0x117795  1      OPC=nop           
  nop              #  17    0x117796  1      OPC=nop           
  nop              #  18    0x117797  1      OPC=nop           
  nop              #  19    0x117798  1      OPC=nop           
  nop              #  20    0x117799  1      OPC=nop           
  nop              #  21    0x11779a  1      OPC=nop           
  nop              #  22    0x11779b  1      OPC=nop           
  nop              #  23    0x11779c  1      OPC=nop           
  nop              #  24    0x11779d  1      OPC=nop           
  nop              #  25    0x11779e  1      OPC=nop           
  nop              #  26    0x11779f  1      OPC=nop           
                                                               
.size _realloc_r, .-_realloc_r

