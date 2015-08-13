  .text
  .globl memalign
  .type memalign, @function

#! file-offset 0x1579c0
#! rip-offset  0x1179c0
#! capacity    64 bytes

# Text             #  Line  RIP       Bytes  Opcode             
.memalign:         #        0x1179c0  0      OPC=<label>        
  cmpl $0x8, %edi  #  1     0x1179c0  3      OPC=cmpl_r32_imm8  
  jbe .L_1179e0    #  2     0x1179c3  2      OPC=jbe_label      
  jmpq .T_277      #  3     0x1179c5  5      OPC=jmpq_label_1   
  nop              #  4     0x1179ca  1      OPC=nop            
  nop              #  5     0x1179cb  1      OPC=nop            
  nop              #  6     0x1179cc  1      OPC=nop            
  nop              #  7     0x1179cd  1      OPC=nop            
  nop              #  8     0x1179ce  1      OPC=nop            
  nop              #  9     0x1179cf  1      OPC=nop            
  nop              #  10    0x1179d0  1      OPC=nop            
  nop              #  11    0x1179d1  1      OPC=nop            
  nop              #  12    0x1179d2  1      OPC=nop            
  nop              #  13    0x1179d3  1      OPC=nop            
  nop              #  14    0x1179d4  1      OPC=nop            
  nop              #  15    0x1179d5  1      OPC=nop            
  nop              #  16    0x1179d6  1      OPC=nop            
  nop              #  17    0x1179d7  1      OPC=nop            
  nop              #  18    0x1179d8  1      OPC=nop            
  nop              #  19    0x1179d9  1      OPC=nop            
  nop              #  20    0x1179da  1      OPC=nop            
  nop              #  21    0x1179db  1      OPC=nop            
  nop              #  22    0x1179dc  1      OPC=nop            
  nop              #  23    0x1179dd  1      OPC=nop            
  nop              #  24    0x1179de  1      OPC=nop            
  nop              #  25    0x1179df  1      OPC=nop            
.L_1179e0:         #        0x1179e0  0      OPC=<label>        
  movl %esi, %edi  #  26    0x1179e0  2      OPC=movl_r32_r32   
  jmpq .malloc     #  27    0x1179e2  5      OPC=jmpq_label_1   
  nop              #  28    0x1179e7  1      OPC=nop            
  nop              #  29    0x1179e8  1      OPC=nop            
  nop              #  30    0x1179e9  1      OPC=nop            
  nop              #  31    0x1179ea  1      OPC=nop            
  nop              #  32    0x1179eb  1      OPC=nop            
  nop              #  33    0x1179ec  1      OPC=nop            
  nop              #  34    0x1179ed  1      OPC=nop            
  nop              #  35    0x1179ee  1      OPC=nop            
  nop              #  36    0x1179ef  1      OPC=nop            
  nop              #  37    0x1179f0  1      OPC=nop            
  nop              #  38    0x1179f1  1      OPC=nop            
  nop              #  39    0x1179f2  1      OPC=nop            
  nop              #  40    0x1179f3  1      OPC=nop            
  nop              #  41    0x1179f4  1      OPC=nop            
  nop              #  42    0x1179f5  1      OPC=nop            
  nop              #  43    0x1179f6  1      OPC=nop            
  nop              #  44    0x1179f7  1      OPC=nop            
  nop              #  45    0x1179f8  1      OPC=nop            
  nop              #  46    0x1179f9  1      OPC=nop            
  nop              #  47    0x1179fa  1      OPC=nop            
  nop              #  48    0x1179fb  1      OPC=nop            
  nop              #  49    0x1179fc  1      OPC=nop            
  nop              #  50    0x1179fd  1      OPC=nop            
  nop              #  51    0x1179fe  1      OPC=nop            
  nop              #  52    0x1179ff  1      OPC=nop            
                                                                
.size memalign, .-memalign

