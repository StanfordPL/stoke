  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP  Bytes  Opcode           
.target:                            #        0    0      OPC=<label>      
  callq .read_of_into_rbx           #  1     0    5      OPC=callq_label  
  callq .move_byte_6_of_rbx_to_r9b  #  2     0x5  5      OPC=callq_label  
  callq .move_r9b_to_byte_6_of_rbx  #  3     0xa  5      OPC=callq_label  
  retq                              #  4     0xf  1      OPC=retq         
                                                                          
.size target, .-target
