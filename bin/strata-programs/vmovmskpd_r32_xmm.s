  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode            
.target:                                    #        0     0      OPC=<label>       
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label   
  roll $0x1, %r9d                           #  2     0x5   3      OPC=roll_r32_one  
  callq .read_cf_into_rbx                   #  3     0x8   5      OPC=callq_label   
  roll $0x1, %edx                           #  4     0xd   2      OPC=roll_r32_one  
  rcll $0x1, %ebx                           #  5     0xf   2      OPC=rcll_r32_one  
  retq                                      #  6     0x11  1      OPC=retq          
                                                                                    
.size target, .-target
