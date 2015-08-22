  .text
  .globl memalign
  .type memalign, @function

#! file-offset 0x1583e0
#! rip-offset  0x1183e0
#! capacity    64 bytes

# Text             #  Line  RIP       Bytes  Opcode             
.memalign:         #        0x1183e0  0      OPC=<label>        
  cmpl $0x8, %edi  #  1     0x1183e0  3      OPC=cmpl_r32_imm8  
  jbe .L_118400    #  2     0x1183e3  2      OPC=jbe_label      
  jmpq .T_277      #  3     0x1183e5  5      OPC=jmpq_label_1   
  nop              #  4     0x1183ea  1      OPC=nop            
  nop              #  5     0x1183eb  1      OPC=nop            
  nop              #  6     0x1183ec  1      OPC=nop            
  nop              #  7     0x1183ed  1      OPC=nop            
  nop              #  8     0x1183ee  1      OPC=nop            
  nop              #  9     0x1183ef  1      OPC=nop            
  nop              #  10    0x1183f0  1      OPC=nop            
  nop              #  11    0x1183f1  1      OPC=nop            
  nop              #  12    0x1183f2  1      OPC=nop            
  nop              #  13    0x1183f3  1      OPC=nop            
  nop              #  14    0x1183f4  1      OPC=nop            
  nop              #  15    0x1183f5  1      OPC=nop            
  nop              #  16    0x1183f6  1      OPC=nop            
  nop              #  17    0x1183f7  1      OPC=nop            
  nop              #  18    0x1183f8  1      OPC=nop            
  nop              #  19    0x1183f9  1      OPC=nop            
  nop              #  20    0x1183fa  1      OPC=nop            
  nop              #  21    0x1183fb  1      OPC=nop            
  nop              #  22    0x1183fc  1      OPC=nop            
  nop              #  23    0x1183fd  1      OPC=nop            
  nop              #  24    0x1183fe  1      OPC=nop            
  nop              #  25    0x1183ff  1      OPC=nop            
.L_118400:         #        0x118400  0      OPC=<label>        
  movl %esi, %edi  #  26    0x118400  2      OPC=movl_r32_r32   
  jmpq .malloc     #  27    0x118402  5      OPC=jmpq_label_1   
  nop              #  28    0x118407  1      OPC=nop            
  nop              #  29    0x118408  1      OPC=nop            
  nop              #  30    0x118409  1      OPC=nop            
  nop              #  31    0x11840a  1      OPC=nop            
  nop              #  32    0x11840b  1      OPC=nop            
  nop              #  33    0x11840c  1      OPC=nop            
  nop              #  34    0x11840d  1      OPC=nop            
  nop              #  35    0x11840e  1      OPC=nop            
  nop              #  36    0x11840f  1      OPC=nop            
  nop              #  37    0x118410  1      OPC=nop            
  nop              #  38    0x118411  1      OPC=nop            
  nop              #  39    0x118412  1      OPC=nop            
  nop              #  40    0x118413  1      OPC=nop            
  nop              #  41    0x118414  1      OPC=nop            
  nop              #  42    0x118415  1      OPC=nop            
  nop              #  43    0x118416  1      OPC=nop            
  nop              #  44    0x118417  1      OPC=nop            
  nop              #  45    0x118418  1      OPC=nop            
  nop              #  46    0x118419  1      OPC=nop            
  nop              #  47    0x11841a  1      OPC=nop            
  nop              #  48    0x11841b  1      OPC=nop            
  nop              #  49    0x11841c  1      OPC=nop            
  nop              #  50    0x11841d  1      OPC=nop            
  nop              #  51    0x11841e  1      OPC=nop            
  nop              #  52    0x11841f  1      OPC=nop            
                                                                
.size memalign, .-memalign

