  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                             #  Line  RIP  Bytes  Opcode             
.target:                           #        0    0      OPC=<label>        
  movzbl %bh, %edx                 #  1     0    3      OPC=movzbl_r32_rh  
  callq .move_064_032_rdx_r8d_r9d  #  2     0x3  5      OPC=callq_label    
  callq .move_032_064_r8d_r9d_rcx  #  3     0x8  5      OPC=callq_label    
  movb %cl, %ah                    #  4     0xd  2      OPC=movb_rh_r8     
  retq                             #  5     0xf  1      OPC=retq           
                                                                           
.size target, .-target
