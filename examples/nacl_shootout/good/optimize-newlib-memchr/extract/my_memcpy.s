  .text
  .globl my_memcpy
  .type my_memcpy, @function

#! file-offset 0x69d60
#! rip-offset  0x29d60
#! capacity    32 bytes

# Text             #  Line  RIP      Bytes  Opcode            
.my_memcpy:        #        0x29d60  0      OPC=<label>       
  movl %edi, %edi  #  1     0x29d60  2      OPC=movl_r32_r32  
  movl %esi, %esi  #  2     0x29d62  2      OPC=movl_r32_r32  
  jmpq .memcpy     #  3     0x29d64  5      OPC=jmpq_label_1  
  nop              #  4     0x29d69  1      OPC=nop           
  nop              #  5     0x29d6a  1      OPC=nop           
  nop              #  6     0x29d6b  1      OPC=nop           
  nop              #  7     0x29d6c  1      OPC=nop           
  nop              #  8     0x29d6d  1      OPC=nop           
  nop              #  9     0x29d6e  1      OPC=nop           
  nop              #  10    0x29d6f  1      OPC=nop           
  nop              #  11    0x29d70  1      OPC=nop           
  nop              #  12    0x29d71  1      OPC=nop           
  nop              #  13    0x29d72  1      OPC=nop           
  nop              #  14    0x29d73  1      OPC=nop           
  nop              #  15    0x29d74  1      OPC=nop           
  nop              #  16    0x29d75  1      OPC=nop           
  nop              #  17    0x29d76  1      OPC=nop           
  nop              #  18    0x29d77  1      OPC=nop           
  nop              #  19    0x29d78  1      OPC=nop           
  nop              #  20    0x29d79  1      OPC=nop           
  nop              #  21    0x29d7a  1      OPC=nop           
  nop              #  22    0x29d7b  1      OPC=nop           
  nop              #  23    0x29d7c  1      OPC=nop           
  nop              #  24    0x29d7d  1      OPC=nop           
  nop              #  25    0x29d7e  1      OPC=nop           
  nop              #  26    0x29d7f  1      OPC=nop           
                                                              
.size my_memcpy, .-my_memcpy

