  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  vxorps %xmm2, %xmm2, %xmm1                #  1     0     4      OPC=vxorps_xmm_xmm_xmm  
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label         
  setnae %ah                                #  3     0x9   3      OPC=setnae_rh           
  xaddw %ax, %r8w                           #  4     0xc   5      OPC=xaddw_r16_r16       
  cmovnzl %ecx, %ebx                        #  5     0x11  3      OPC=cmovnzl_r32_r32     
  retq                                      #  6     0x14  1      OPC=retq                
                                                                                          
.size target, .-target
