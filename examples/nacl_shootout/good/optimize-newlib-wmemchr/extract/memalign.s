  .text
  .globl memalign
  .type memalign, @function

#! file-offset 0x157cc0
#! rip-offset  0x117cc0
#! capacity    64 bytes

# Text             #  Line  RIP       Bytes  Opcode             
.memalign:         #        0x117cc0  0      OPC=<label>        
  cmpl $0x8, %edi  #  1     0x117cc0  3      OPC=cmpl_r32_imm8  
  jbe .L_117ce0    #  2     0x117cc3  2      OPC=jbe_label      
  jmpq .T_277      #  3     0x117cc5  5      OPC=jmpq_label_1   
  nop              #  4     0x117cca  1      OPC=nop            
  nop              #  5     0x117ccb  1      OPC=nop            
  nop              #  6     0x117ccc  1      OPC=nop            
  nop              #  7     0x117ccd  1      OPC=nop            
  nop              #  8     0x117cce  1      OPC=nop            
  nop              #  9     0x117ccf  1      OPC=nop            
  nop              #  10    0x117cd0  1      OPC=nop            
  nop              #  11    0x117cd1  1      OPC=nop            
  nop              #  12    0x117cd2  1      OPC=nop            
  nop              #  13    0x117cd3  1      OPC=nop            
  nop              #  14    0x117cd4  1      OPC=nop            
  nop              #  15    0x117cd5  1      OPC=nop            
  nop              #  16    0x117cd6  1      OPC=nop            
  nop              #  17    0x117cd7  1      OPC=nop            
  nop              #  18    0x117cd8  1      OPC=nop            
  nop              #  19    0x117cd9  1      OPC=nop            
  nop              #  20    0x117cda  1      OPC=nop            
  nop              #  21    0x117cdb  1      OPC=nop            
  nop              #  22    0x117cdc  1      OPC=nop            
  nop              #  23    0x117cdd  1      OPC=nop            
  nop              #  24    0x117cde  1      OPC=nop            
  nop              #  25    0x117cdf  1      OPC=nop            
.L_117ce0:         #        0x117ce0  0      OPC=<label>        
  movl %esi, %edi  #  26    0x117ce0  2      OPC=movl_r32_r32   
  jmpq .malloc     #  27    0x117ce2  5      OPC=jmpq_label_1   
  nop              #  28    0x117ce7  1      OPC=nop            
  nop              #  29    0x117ce8  1      OPC=nop            
  nop              #  30    0x117ce9  1      OPC=nop            
  nop              #  31    0x117cea  1      OPC=nop            
  nop              #  32    0x117ceb  1      OPC=nop            
  nop              #  33    0x117cec  1      OPC=nop            
  nop              #  34    0x117ced  1      OPC=nop            
  nop              #  35    0x117cee  1      OPC=nop            
  nop              #  36    0x117cef  1      OPC=nop            
  nop              #  37    0x117cf0  1      OPC=nop            
  nop              #  38    0x117cf1  1      OPC=nop            
  nop              #  39    0x117cf2  1      OPC=nop            
  nop              #  40    0x117cf3  1      OPC=nop            
  nop              #  41    0x117cf4  1      OPC=nop            
  nop              #  42    0x117cf5  1      OPC=nop            
  nop              #  43    0x117cf6  1      OPC=nop            
  nop              #  44    0x117cf7  1      OPC=nop            
  nop              #  45    0x117cf8  1      OPC=nop            
  nop              #  46    0x117cf9  1      OPC=nop            
  nop              #  47    0x117cfa  1      OPC=nop            
  nop              #  48    0x117cfb  1      OPC=nop            
  nop              #  49    0x117cfc  1      OPC=nop            
  nop              #  50    0x117cfd  1      OPC=nop            
  nop              #  51    0x117cfe  1      OPC=nop            
  nop              #  52    0x117cff  1      OPC=nop            
                                                                
.size memalign, .-memalign

