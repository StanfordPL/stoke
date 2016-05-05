  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_016_008_cx_r8b_r9b  #  1     0     5      OPC=callq_label     
  movswq %bx, %r12                #  2     0x5   4      OPC=movswq_r64_r16  
  callq .move_008_016_r8b_r9b_bx  #  3     0x9   5      OPC=callq_label     
  callq .set_szp_for_bx           #  4     0xe   5      OPC=callq_label     
  callq .read_sf_into_rbx         #  5     0x13  5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx  #  6     0x18  5      OPC=callq_label     
  xorq %rbx, %r12                 #  7     0x1d  3      OPC=xorq_r64_r64    
  movswq %r12w, %rbx              #  8     0x20  4      OPC=movswq_r64_r16  
  callq .set_szp_for_bx           #  9     0x24  5      OPC=callq_label     
  retq                            #  10    0x29  1      OPC=retq            
                                                                            
.size target, .-target
