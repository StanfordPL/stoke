  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .set_of                      #  1     0     5      OPC=callq_label    
  callq .read_of_into_rbx            #  2     0x5   5      OPC=callq_label    
  callq .move_064_032_rbx_r10d_r11d  #  3     0xa   5      OPC=callq_label    
  movsbq %cl, %r10                   #  4     0xf   4      OPC=movsbq_r64_r8  
  callq .move_032_064_r10d_r11d_rbx  #  5     0x13  5      OPC=callq_label    
  retq                               #  6     0x18  1      OPC=retq           
                                                                              
.size target, .-target
