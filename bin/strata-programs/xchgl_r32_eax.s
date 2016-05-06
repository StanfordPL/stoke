  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  callq .move_032_016_ebx_r8w_r9w   #  1     0    5      OPC=callq_label    
  callq .move_r9b_to_byte_2_of_rbx  #  2     0x5  5      OPC=callq_label    
  xchgl %eax, %ebx                  #  3     0xa  2      OPC=xchgl_r32_r32  
  retq                              #  4     0xc  1      OPC=retq           
                                                                            
.size target, .-target
