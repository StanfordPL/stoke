  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setpe %dh          #  1     0    3      OPC=setpe_rh        
  decb %dh           #  2     0x3  2      OPC=decb_rh         
  cmovsq %rcx, %rbx  #  3     0x5  4      OPC=cmovsq_r64_r64  
  retq               #  4     0x9  1      OPC=retq            
                                                              
.size target, .-target
