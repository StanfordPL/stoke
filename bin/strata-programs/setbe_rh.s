  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  setbe %dl       #  1     0    3      OPC=setbe_r8      
  xorw %ax, %ax   #  2     0x3  3      OPC=xorw_r16_r16  
  xaddb %ah, %dl  #  3     0x6  3      OPC=xaddb_r8_rh   
  retq            #  4     0x9  1      OPC=retq          
                                                         
.size target, .-target
