  .text
  .globl _putwc_r
  .type _putwc_r, @function

#! file-offset 0x163b60
#! rip-offset  0x123b60
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._putwc_r:         #        0x123b60  0      OPC=<label>       
  movl %edi, %edi  #  1     0x123b60  2      OPC=movl_r32_r32  
  movl %edx, %edx  #  2     0x123b62  2      OPC=movl_r32_r32  
  jmpq ._fputwc_r  #  3     0x123b64  5      OPC=jmpq_label_1  
  nop              #  4     0x123b69  1      OPC=nop           
  nop              #  5     0x123b6a  1      OPC=nop           
  nop              #  6     0x123b6b  1      OPC=nop           
  nop              #  7     0x123b6c  1      OPC=nop           
  nop              #  8     0x123b6d  1      OPC=nop           
  nop              #  9     0x123b6e  1      OPC=nop           
  nop              #  10    0x123b6f  1      OPC=nop           
  nop              #  11    0x123b70  1      OPC=nop           
  nop              #  12    0x123b71  1      OPC=nop           
  nop              #  13    0x123b72  1      OPC=nop           
  nop              #  14    0x123b73  1      OPC=nop           
  nop              #  15    0x123b74  1      OPC=nop           
  nop              #  16    0x123b75  1      OPC=nop           
  nop              #  17    0x123b76  1      OPC=nop           
  nop              #  18    0x123b77  1      OPC=nop           
  nop              #  19    0x123b78  1      OPC=nop           
  nop              #  20    0x123b79  1      OPC=nop           
  nop              #  21    0x123b7a  1      OPC=nop           
  nop              #  22    0x123b7b  1      OPC=nop           
  nop              #  23    0x123b7c  1      OPC=nop           
  nop              #  24    0x123b7d  1      OPC=nop           
  nop              #  25    0x123b7e  1      OPC=nop           
  nop              #  26    0x123b7f  1      OPC=nop           
                                                               
.size _putwc_r, .-_putwc_r

