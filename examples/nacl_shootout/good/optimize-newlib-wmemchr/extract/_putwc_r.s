  .text
  .globl _putwc_r
  .type _putwc_r, @function

#! file-offset 0x163e60
#! rip-offset  0x123e60
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
._putwc_r:         #        0x123e60  0      OPC=<label>       
  movl %edi, %edi  #  1     0x123e60  2      OPC=movl_r32_r32  
  movl %edx, %edx  #  2     0x123e62  2      OPC=movl_r32_r32  
  jmpq ._fputwc_r  #  3     0x123e64  5      OPC=jmpq_label_1  
  nop              #  4     0x123e69  1      OPC=nop           
  nop              #  5     0x123e6a  1      OPC=nop           
  nop              #  6     0x123e6b  1      OPC=nop           
  nop              #  7     0x123e6c  1      OPC=nop           
  nop              #  8     0x123e6d  1      OPC=nop           
  nop              #  9     0x123e6e  1      OPC=nop           
  nop              #  10    0x123e6f  1      OPC=nop           
  nop              #  11    0x123e70  1      OPC=nop           
  nop              #  12    0x123e71  1      OPC=nop           
  nop              #  13    0x123e72  1      OPC=nop           
  nop              #  14    0x123e73  1      OPC=nop           
  nop              #  15    0x123e74  1      OPC=nop           
  nop              #  16    0x123e75  1      OPC=nop           
  nop              #  17    0x123e76  1      OPC=nop           
  nop              #  18    0x123e77  1      OPC=nop           
  nop              #  19    0x123e78  1      OPC=nop           
  nop              #  20    0x123e79  1      OPC=nop           
  nop              #  21    0x123e7a  1      OPC=nop           
  nop              #  22    0x123e7b  1      OPC=nop           
  nop              #  23    0x123e7c  1      OPC=nop           
  nop              #  24    0x123e7d  1      OPC=nop           
  nop              #  25    0x123e7e  1      OPC=nop           
  nop              #  26    0x123e7f  1      OPC=nop           
                                                               
.size _putwc_r, .-_putwc_r

