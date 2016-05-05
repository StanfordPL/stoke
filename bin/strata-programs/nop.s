  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text    #  Line  RIP  Bytes  Opcode       
.target:  #        0    0      OPC=<label>  
  retq    #  1     0    1      OPC=retq     
                                            
.size target, .-target
