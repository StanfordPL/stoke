  .text
  .globl wmemcpy
  .type wmemcpy, @function

#! file-offset 0x184a20
#! rip-offset  0x144a20
#! capacity    32 bytes

# Text             #  Line  RIP       Bytes  Opcode             
.wmemcpy:          #        0x144a20  0      OPC=<label>        
  movl %edi, %edi  #  1     0x144a20  2      OPC=movl_r32_r32   
  movl %esi, %esi  #  2     0x144a22  2      OPC=movl_r32_r32   
  shll $0x2, %edx  #  3     0x144a24  3      OPC=shll_r32_imm8  
  jmpq .memcpy     #  4     0x144a27  5      OPC=jmpq_label_1   
  nop              #  5     0x144a2c  1      OPC=nop            
  nop              #  6     0x144a2d  1      OPC=nop            
  nop              #  7     0x144a2e  1      OPC=nop            
  nop              #  8     0x144a2f  1      OPC=nop            
  nop              #  9     0x144a30  1      OPC=nop            
  nop              #  10    0x144a31  1      OPC=nop            
  nop              #  11    0x144a32  1      OPC=nop            
  nop              #  12    0x144a33  1      OPC=nop            
  nop              #  13    0x144a34  1      OPC=nop            
  nop              #  14    0x144a35  1      OPC=nop            
  nop              #  15    0x144a36  1      OPC=nop            
  nop              #  16    0x144a37  1      OPC=nop            
  nop              #  17    0x144a38  1      OPC=nop            
  nop              #  18    0x144a39  1      OPC=nop            
  nop              #  19    0x144a3a  1      OPC=nop            
  nop              #  20    0x144a3b  1      OPC=nop            
  nop              #  21    0x144a3c  1      OPC=nop            
  nop              #  22    0x144a3d  1      OPC=nop            
  nop              #  23    0x144a3e  1      OPC=nop            
  nop              #  24    0x144a3f  1      OPC=nop            
                                                                
.size wmemcpy, .-wmemcpy

