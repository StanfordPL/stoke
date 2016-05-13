  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP  Bytes  Opcode            
.target:                 #        0    0      OPC=<label>       
  clc                    #  1     0    1      OPC=clc           
  adcw %cx, %bx          #  2     0x1  3      OPC=adcw_r16_r16  
  callq .set_szp_for_bx  #  3     0x4  5      OPC=callq_label   
  retq                   #  4     0x9  1      OPC=retq          
                                                                
.size target, .-target
