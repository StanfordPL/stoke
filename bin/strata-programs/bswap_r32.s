  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .move_032_016_ebx_r8w_r9w   #  1     0     5      OPC=callq_label  
  callq .move_016_032_r8w_r9w_ecx   #  2     0x5   5      OPC=callq_label  
  callq .move_byte_3_of_rbx_to_r8b  #  3     0xa   5      OPC=callq_label  
  notl %ebx                         #  4     0xf   2      OPC=notl_r32     
  callq .move_008_016_r8b_r9b_bx    #  5     0x11  5      OPC=callq_label  
  callq .move_016_008_cx_r8b_r9b    #  6     0x16  5      OPC=callq_label  
  callq .move_r8b_to_byte_3_of_rbx  #  7     0x1b  5      OPC=callq_label  
  callq .move_r9b_to_byte_2_of_rbx  #  8     0x20  5      OPC=callq_label  
  retq                              #  9     0x25  1      OPC=retq         
                                                                           
.size target, .-target
