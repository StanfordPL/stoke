  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  callq .read_zf_into_rcx           #  1     0     5      OPC=callq_label     
  callq .read_cf_into_rbx           #  2     0x5   5      OPC=callq_label     
  cmoveq %rcx, %rbx                 #  3     0xa   4      OPC=cmoveq_r64_r64  
  callq .move_032_016_ecx_r8w_r9w   #  4     0xe   5      OPC=callq_label     
  callq .move_r8b_to_byte_7_of_rbx  #  5     0x13  5      OPC=callq_label     
  retq                              #  6     0x18  1      OPC=retq            
                                                                              
.size target, .-target
