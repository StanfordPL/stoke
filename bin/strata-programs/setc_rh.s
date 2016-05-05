  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label  
  movb %cl, %ah            #  2     0x5  2      OPC=movb_rh_r8   
  retq                     #  3     0x7  1      OPC=retq         
                                                                 
.size target, .-target
