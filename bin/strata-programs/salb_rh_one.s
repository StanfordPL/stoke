  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text            #  Line  RIP  Bytes  Opcode           
.target:          #        0    0      OPC=<label>      
  shlb $0x1, %ah  #  1     0    2      OPC=shlb_rh_one  
  retq            #  2     0x2  1      OPC=retq         
                                                        
.size target, .-target
