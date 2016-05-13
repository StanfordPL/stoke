  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .read_zf_into_rbx            #  1     0     5      OPC=callq_label    
  setnae %bh                         #  2     0x5   3      OPC=setnae_rh      
  callq .move_064_032_rbx_r12d_r13d  #  3     0x8   5      OPC=callq_label    
  callq .move_032_064_r12d_r13d_rbx  #  4     0xd   5      OPC=callq_label    
  xaddl %r13d, %ebx                  #  5     0x12  4      OPC=xaddl_r32_r32  
  callq .read_zf_into_rbx            #  6     0x16  5      OPC=callq_label    
  retq                               #  7     0x1b  1      OPC=retq           
                                                                              
.size target, .-target
