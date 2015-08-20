  .text
  .globl wmemmove
  .type wmemmove, @function

#! file-offset 0x184320
#! rip-offset  0x144320
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode             
.wmemmove:         #        0x144320  0      OPC=<label>        
  movl %edi, %edi  #  1     0x144320  2      OPC=movl_r32_r32   
  movl %esi, %esi  #  2     0x144322  2      OPC=movl_r32_r32   
  shll $0x2, %edx  #  3     0x144324  3      OPC=shll_r32_imm8  
  jmpq .memmove    #  4     0x144327  5      OPC=jmpq_label_1   
  nop              #  5     0x14432c  1      OPC=nop            
  nop              #  6     0x14432d  1      OPC=nop            
  nop              #  7     0x14432e  1      OPC=nop            
  nop              #  8     0x14432f  1      OPC=nop            
  nop              #  9     0x144330  1      OPC=nop            
  nop              #  10    0x144331  1      OPC=nop            
  nop              #  11    0x144332  1      OPC=nop            
  nop              #  12    0x144333  1      OPC=nop            
  nop              #  13    0x144334  1      OPC=nop            
  nop              #  14    0x144335  1      OPC=nop            
  nop              #  15    0x144336  1      OPC=nop            
  nop              #  16    0x144337  1      OPC=nop            
  nop              #  17    0x144338  1      OPC=nop            
  nop              #  18    0x144339  1      OPC=nop            
  nop              #  19    0x14433a  1      OPC=nop            
  nop              #  20    0x14433b  1      OPC=nop            
  nop              #  21    0x14433c  1      OPC=nop            
  nop              #  22    0x14433d  1      OPC=nop            
  nop              #  23    0x14433e  1      OPC=nop            
  nop              #  24    0x14433f  1      OPC=nop            
                                                                
.size wmemmove, .-wmemmove

