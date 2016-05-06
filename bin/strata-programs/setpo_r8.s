  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .read_pf_into_rbx           #  1     0     5      OPC=callq_label    
  callq .move_064_032_rbx_r8d_r9d   #  2     0x5   5      OPC=callq_label    
  callq .move_byte_3_of_rbx_to_r9b  #  3     0xa   5      OPC=callq_label    
  xchgl %r8d, %r9d                  #  4     0xf   3      OPC=xchgl_r32_r32  
  xorq %rbx, %rbx                   #  5     0x12  3      OPC=xorq_r64_r64   
  callq .read_pf_into_rbx           #  6     0x15  5      OPC=callq_label    
  xorq %r9, %rbx                    #  7     0x1a  3      OPC=xorq_r64_r64   
  retq                              #  8     0x1d  1      OPC=retq           
                                                                             
.size target, .-target
