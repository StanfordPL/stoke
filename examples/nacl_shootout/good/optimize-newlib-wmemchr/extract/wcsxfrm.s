  .text
  .globl wcsxfrm
  .type wcsxfrm, @function

#! file-offset 0x1836e0
#! rip-offset  0x1436e0
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.wcsxfrm:          #        0x1436e0  0      OPC=<label>       
  movl %edi, %edi  #  1     0x1436e0  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x1436e2  2      OPC=movl_r32_r32  
  jmpq .wcslcpy    #  3     0x1436e4  5      OPC=jmpq_label_1  
  nop              #  4     0x1436e9  1      OPC=nop           
  nop              #  5     0x1436ea  1      OPC=nop           
  nop              #  6     0x1436eb  1      OPC=nop           
  nop              #  7     0x1436ec  1      OPC=nop           
  nop              #  8     0x1436ed  1      OPC=nop           
  nop              #  9     0x1436ee  1      OPC=nop           
  nop              #  10    0x1436ef  1      OPC=nop           
  nop              #  11    0x1436f0  1      OPC=nop           
  nop              #  12    0x1436f1  1      OPC=nop           
  nop              #  13    0x1436f2  1      OPC=nop           
  nop              #  14    0x1436f3  1      OPC=nop           
  nop              #  15    0x1436f4  1      OPC=nop           
  nop              #  16    0x1436f5  1      OPC=nop           
  nop              #  17    0x1436f6  1      OPC=nop           
  nop              #  18    0x1436f7  1      OPC=nop           
  nop              #  19    0x1436f8  1      OPC=nop           
  nop              #  20    0x1436f9  1      OPC=nop           
  nop              #  21    0x1436fa  1      OPC=nop           
  nop              #  22    0x1436fb  1      OPC=nop           
  nop              #  23    0x1436fc  1      OPC=nop           
  nop              #  24    0x1436fd  1      OPC=nop           
  nop              #  25    0x1436fe  1      OPC=nop           
  nop              #  26    0x1436ff  1      OPC=nop           
                                                               
.size wcsxfrm, .-wcsxfrm

