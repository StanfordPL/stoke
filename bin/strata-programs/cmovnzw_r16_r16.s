  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movzbl %ch, %ebp                #  1     0     3      OPC=movzbl_r32_rh   
  movw %bx, %bp                   #  2     0x3   3      OPC=movw_r16_r16    
  callq .move_016_008_cx_r8b_r9b  #  3     0x6   5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_bx  #  4     0xb   5      OPC=callq_label     
  cmoveq %rbp, %rbx               #  5     0x10  4      OPC=cmoveq_r64_r64  
  retq                            #  6     0x14  1      OPC=retq            
                                                                            
.size target, .-target
