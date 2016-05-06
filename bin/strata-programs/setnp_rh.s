  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .read_pf_into_rbx           #  1     0     5      OPC=callq_label  
  callq .move_032_016_ebx_r8w_r9w   #  2     0x5   5      OPC=callq_label  
  callq .move_r8b_to_byte_2_of_rbx  #  3     0xa   5      OPC=callq_label  
  callq .set_szp_for_bx             #  4     0xf   5      OPC=callq_label  
  callq .read_zf_into_rbx           #  5     0x14  5      OPC=callq_label  
  movb %bl, %ah                     #  6     0x19  2      OPC=movb_rh_r8   
  retq                              #  7     0x1b  1      OPC=retq         
                                                                           
.size target, .-target
