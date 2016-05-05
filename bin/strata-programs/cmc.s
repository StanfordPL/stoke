  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                              #  Line  RIP   Bytes  Opcode           
.target:                            #        0     0      OPC=<label>      
  callq .read_cf_into_rbx           #  1     0     5      OPC=callq_label  
  callq .move_064_032_rbx_r8d_r9d   #  2     0x5   5      OPC=callq_label  
  callq .move_r8b_to_byte_5_of_rbx  #  3     0xa   5      OPC=callq_label  
  decw %bx                          #  4     0xf   3      OPC=decw_r16     
  xorb %bh, %bh                     #  5     0x12  2      OPC=xorb_rh_rh   
  adcb %bl, %bl                     #  6     0x14  2      OPC=adcb_r8_r8   
  retq                              #  7     0x16  1      OPC=retq         
                                                                           
.size target, .-target
