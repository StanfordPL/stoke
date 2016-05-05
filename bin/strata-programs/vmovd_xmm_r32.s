  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  vzeroall                           #  1     0     3      OPC=vzeroall     
  callq .move_016_008_bx_r8b_r9b     #  2     0x3   5      OPC=callq_label  
  callq .move_r8b_to_byte_0_of_ymm1  #  3     0x8   5      OPC=callq_label  
  callq .move_r9b_to_byte_1_of_ymm1  #  4     0xd   5      OPC=callq_label  
  xchgb %r8b, %bl                    #  5     0x12  3      OPC=xchgb_r8_r8  
  callq .move_r9b_to_byte_3_of_ymm1  #  6     0x15  5      OPC=callq_label  
  callq .move_032_016_ebx_r8w_r9w    #  7     0x1a  5      OPC=callq_label  
  callq .move_byte_3_of_rbx_to_r8b   #  8     0x1f  5      OPC=callq_label  
  callq .move_r9b_to_byte_2_of_ymm1  #  9     0x24  5      OPC=callq_label  
  callq .move_r8b_to_byte_3_of_ymm1  #  10    0x29  5      OPC=callq_label  
  retq                               #  11    0x2e  1      OPC=retq         
                                                                            
.size target, .-target
