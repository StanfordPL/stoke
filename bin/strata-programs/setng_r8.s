  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_sf_into_rbx  #  1     0    5      OPC=callq_label  
  setle %bh                #  2     0x5  3      OPC=setle_rh     
  xchgb %bl, %bh           #  3     0x8  2      OPC=xchgb_rh_r8  
  retq                     #  4     0xa  1      OPC=retq         
                                                                 
.size target, .-target
