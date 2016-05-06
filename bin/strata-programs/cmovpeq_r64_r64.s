  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setpo %dh           #  1     0    3      OPC=setpo_rh         
  salb $0x1, %dh      #  2     0x3  2      OPC=salb_rh_one      
  cmovnaq %rcx, %rbx  #  3     0x5  4      OPC=cmovnaq_r64_r64  
  retq                #  4     0x9  1      OPC=retq             
                                                                
.size target, .-target
