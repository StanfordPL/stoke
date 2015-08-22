  .text
  .globl wcsxfrm
  .type wcsxfrm, @function

#! file-offset 0x183e00
#! rip-offset  0x143e00
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.wcsxfrm:          #        0x143e00  0      OPC=<label>       
  movl %edi, %edi  #  1     0x143e00  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x143e02  2      OPC=movl_r32_r32  
  jmpq .wcslcpy    #  3     0x143e04  5      OPC=jmpq_label_1  
  nop              #  4     0x143e09  1      OPC=nop           
  nop              #  5     0x143e0a  1      OPC=nop           
  nop              #  6     0x143e0b  1      OPC=nop           
  nop              #  7     0x143e0c  1      OPC=nop           
  nop              #  8     0x143e0d  1      OPC=nop           
  nop              #  9     0x143e0e  1      OPC=nop           
  nop              #  10    0x143e0f  1      OPC=nop           
  nop              #  11    0x143e10  1      OPC=nop           
  nop              #  12    0x143e11  1      OPC=nop           
  nop              #  13    0x143e12  1      OPC=nop           
  nop              #  14    0x143e13  1      OPC=nop           
  nop              #  15    0x143e14  1      OPC=nop           
  nop              #  16    0x143e15  1      OPC=nop           
  nop              #  17    0x143e16  1      OPC=nop           
  nop              #  18    0x143e17  1      OPC=nop           
  nop              #  19    0x143e18  1      OPC=nop           
  nop              #  20    0x143e19  1      OPC=nop           
  nop              #  21    0x143e1a  1      OPC=nop           
  nop              #  22    0x143e1b  1      OPC=nop           
  nop              #  23    0x143e1c  1      OPC=nop           
  nop              #  24    0x143e1d  1      OPC=nop           
  nop              #  25    0x143e1e  1      OPC=nop           
  nop              #  26    0x143e1f  1      OPC=nop           
                                                               
.size wcsxfrm, .-wcsxfrm

