  .text
  .globl wmemcpy
  .type wmemcpy, @function

#! file-offset 0x184300
#! rip-offset  0x144300
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode             
.wmemcpy:          #        0x144300  0      OPC=<label>        
  movl %edi, %edi  #  1     0x144300  2      OPC=movl_r32_r32   
  movl %esi, %esi  #  2     0x144302  2      OPC=movl_r32_r32   
  shll $0x2, %edx  #  3     0x144304  3      OPC=shll_r32_imm8  
  jmpq .memcpy     #  4     0x144307  5      OPC=jmpq_label_1   
  nop              #  5     0x14430c  1      OPC=nop            
  nop              #  6     0x14430d  1      OPC=nop            
  nop              #  7     0x14430e  1      OPC=nop            
  nop              #  8     0x14430f  1      OPC=nop            
  nop              #  9     0x144310  1      OPC=nop            
  nop              #  10    0x144311  1      OPC=nop            
  nop              #  11    0x144312  1      OPC=nop            
  nop              #  12    0x144313  1      OPC=nop            
  nop              #  13    0x144314  1      OPC=nop            
  nop              #  14    0x144315  1      OPC=nop            
  nop              #  15    0x144316  1      OPC=nop            
  nop              #  16    0x144317  1      OPC=nop            
  nop              #  17    0x144318  1      OPC=nop            
  nop              #  18    0x144319  1      OPC=nop            
  nop              #  19    0x14431a  1      OPC=nop            
  nop              #  20    0x14431b  1      OPC=nop            
  nop              #  21    0x14431c  1      OPC=nop            
  nop              #  22    0x14431d  1      OPC=nop            
  nop              #  23    0x14431e  1      OPC=nop            
  nop              #  24    0x14431f  1      OPC=nop            
                                                                
.size wmemcpy, .-wmemcpy

