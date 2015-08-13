  .text
  .globl wmemmove
  .type wmemmove, @function

#! file-offset 0x183f80
#! rip-offset  0x143f80
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode             
.wmemmove:         #        0x143f80  0      OPC=<label>        
  movl %edi, %edi  #  1     0x143f80  2      OPC=movl_r32_r32   
  movl %esi, %esi  #  2     0x143f82  2      OPC=movl_r32_r32   
  shll $0x2, %edx  #  3     0x143f84  3      OPC=shll_r32_imm8  
  jmpq .memmove    #  4     0x143f87  5      OPC=jmpq_label_1   
  nop              #  5     0x143f8c  1      OPC=nop            
  nop              #  6     0x143f8d  1      OPC=nop            
  nop              #  7     0x143f8e  1      OPC=nop            
  nop              #  8     0x143f8f  1      OPC=nop            
  nop              #  9     0x143f90  1      OPC=nop            
  nop              #  10    0x143f91  1      OPC=nop            
  nop              #  11    0x143f92  1      OPC=nop            
  nop              #  12    0x143f93  1      OPC=nop            
  nop              #  13    0x143f94  1      OPC=nop            
  nop              #  14    0x143f95  1      OPC=nop            
  nop              #  15    0x143f96  1      OPC=nop            
  nop              #  16    0x143f97  1      OPC=nop            
  nop              #  17    0x143f98  1      OPC=nop            
  nop              #  18    0x143f99  1      OPC=nop            
  nop              #  19    0x143f9a  1      OPC=nop            
  nop              #  20    0x143f9b  1      OPC=nop            
  nop              #  21    0x143f9c  1      OPC=nop            
  nop              #  22    0x143f9d  1      OPC=nop            
  nop              #  23    0x143f9e  1      OPC=nop            
  nop              #  24    0x143f9f  1      OPC=nop            
                                                                
.size wmemmove, .-wmemmove

