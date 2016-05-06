  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode            
.target:          #        0    0      OPC=<label>       
  xchgw %ax, %bx  #  1     0    2      OPC=xchgw_r16_ax  
  retq            #  2     0x2  1      OPC=retq          
                                                         
.size target, .-target
