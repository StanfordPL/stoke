  .text
  .globl wmemcpy
  .type wmemcpy, @function

#! file-offset 0x183f60
#! rip-offset  0x143f60
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode             
.wmemcpy:          #        0x143f60  0      OPC=<label>        
  movl %edi, %edi  #  1     0x143f60  2      OPC=movl_r32_r32   
  movl %esi, %esi  #  2     0x143f62  2      OPC=movl_r32_r32   
  shll $0x2, %edx  #  3     0x143f64  3      OPC=shll_r32_imm8  
  jmpq .memcpy     #  4     0x143f67  5      OPC=jmpq_label_1   
  nop              #  5     0x143f6c  1      OPC=nop            
  nop              #  6     0x143f6d  1      OPC=nop            
  nop              #  7     0x143f6e  1      OPC=nop            
  nop              #  8     0x143f6f  1      OPC=nop            
  nop              #  9     0x143f70  1      OPC=nop            
  nop              #  10    0x143f71  1      OPC=nop            
  nop              #  11    0x143f72  1      OPC=nop            
  nop              #  12    0x143f73  1      OPC=nop            
  nop              #  13    0x143f74  1      OPC=nop            
  nop              #  14    0x143f75  1      OPC=nop            
  nop              #  15    0x143f76  1      OPC=nop            
  nop              #  16    0x143f77  1      OPC=nop            
  nop              #  17    0x143f78  1      OPC=nop            
  nop              #  18    0x143f79  1      OPC=nop            
  nop              #  19    0x143f7a  1      OPC=nop            
  nop              #  20    0x143f7b  1      OPC=nop            
  nop              #  21    0x143f7c  1      OPC=nop            
  nop              #  22    0x143f7d  1      OPC=nop            
  nop              #  23    0x143f7e  1      OPC=nop            
  nop              #  24    0x143f7f  1      OPC=nop            
                                                                
.size wmemcpy, .-wmemcpy

