  .text
  .globl putwc
  .type putwc, @function

#! file-offset 0x163e40
#! rip-offset  0x123e40
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode            
.putwc:            #        0x123e40  0      OPC=<label>       
  movl %esi, %esi  #  1     0x123e40  2      OPC=movl_r32_r32  
  jmpq .fputwc     #  2     0x123e42  5      OPC=jmpq_label_1  
  nop              #  3     0x123e47  1      OPC=nop           
  nop              #  4     0x123e48  1      OPC=nop           
  nop              #  5     0x123e49  1      OPC=nop           
  nop              #  6     0x123e4a  1      OPC=nop           
  nop              #  7     0x123e4b  1      OPC=nop           
  nop              #  8     0x123e4c  1      OPC=nop           
  nop              #  9     0x123e4d  1      OPC=nop           
  nop              #  10    0x123e4e  1      OPC=nop           
  nop              #  11    0x123e4f  1      OPC=nop           
  nop              #  12    0x123e50  1      OPC=nop           
  nop              #  13    0x123e51  1      OPC=nop           
  nop              #  14    0x123e52  1      OPC=nop           
  nop              #  15    0x123e53  1      OPC=nop           
  nop              #  16    0x123e54  1      OPC=nop           
  nop              #  17    0x123e55  1      OPC=nop           
  nop              #  18    0x123e56  1      OPC=nop           
  nop              #  19    0x123e57  1      OPC=nop           
  nop              #  20    0x123e58  1      OPC=nop           
  nop              #  21    0x123e59  1      OPC=nop           
  nop              #  22    0x123e5a  1      OPC=nop           
  nop              #  23    0x123e5b  1      OPC=nop           
  nop              #  24    0x123e5c  1      OPC=nop           
  nop              #  25    0x123e5d  1      OPC=nop           
  nop              #  26    0x123e5e  1      OPC=nop           
  nop              #  27    0x123e5f  1      OPC=nop           
                                                               
.size putwc, .-putwc

