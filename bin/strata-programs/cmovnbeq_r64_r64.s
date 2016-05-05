  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setna %ah          #  1     0    3      OPC=setna_rh        
  salb $0x1, %ah     #  2     0x3  2      OPC=salb_rh_one     
  cmovzq %rcx, %rbx  #  3     0x5  4      OPC=cmovzq_r64_r64  
  retq               #  4     0x9  1      OPC=retq            
                                                              
.size target, .-target
