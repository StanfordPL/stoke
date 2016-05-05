  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  cltq                                      #  1     0     2      OPC=cltq               
  vmovq %rax, %xmm2                         #  2     0x2   5      OPC=vmovq_xmm_r64      
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x7   5      OPC=callq_label        
  andnl %r9d, %r9d, %ecx                    #  4     0xc   5      OPC=andnl_r32_r32_r32  
  adcl %ecx, %edx                           #  5     0x11  2      OPC=adcl_r32_r32       
  retq                                      #  6     0x13  1      OPC=retq               
                                                                                         
.size target, .-target
