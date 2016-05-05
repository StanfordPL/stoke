  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64  
  setne %bh                         #  2     0xa   3      OPC=setne_rh        
  callq .move_016_008_bx_r8b_r9b    #  3     0xd   5      OPC=callq_label     
  callq .move_r9b_to_byte_6_of_rbx  #  4     0x12  5      OPC=callq_label     
  xaddb %bh, %bl                    #  5     0x17  3      OPC=xaddb_r8_rh     
  callq .move_r8b_to_byte_5_of_rbx  #  6     0x1a  5      OPC=callq_label     
  retq                              #  7     0x1f  1      OPC=retq            
                                                                              
.size target, .-target
