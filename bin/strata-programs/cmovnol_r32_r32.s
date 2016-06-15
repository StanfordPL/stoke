  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  callq .set_sf        #  1     0    5      OPC=callq_label       
  cmovngel %ecx, %ebx  #  2     0x5  3      OPC=cmovngel_r32_r32  
  retq                 #  3     0x8  1      OPC=retq              
                                                                  
.size target, .-target
