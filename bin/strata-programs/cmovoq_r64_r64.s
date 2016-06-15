  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  callq .set_sf       #  1     0    5      OPC=callq_label      
  cmovgeq %rcx, %rbx  #  2     0x5  4      OPC=cmovgeq_r64_r64  
  retq                #  3     0x9  1      OPC=retq             
                                                                
.size target, .-target
