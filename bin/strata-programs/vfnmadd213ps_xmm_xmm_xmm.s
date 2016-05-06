  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                        
.target:                              #        0     0      OPC=<label>                   
  vmovapd %xmm2, %xmm13               #  1     0     4      OPC=vmovapd_xmm_xmm           
  callq .move_128_64_xmm1_xmm8_xmm9   #  2     0x4   5      OPC=callq_label               
  vorps %xmm8, %xmm1, %xmm14          #  3     0x9   5      OPC=vorps_xmm_xmm_xmm         
  vmovdqu %xmm3, %xmm1                #  4     0xe   4      OPC=vmovdqu_xmm_xmm           
  vfnmadd231ps %ymm14, %ymm13, %ymm1  #  5     0x12  5      OPC=vfnmadd231ps_ymm_ymm_ymm  
  retq                                #  6     0x17  1      OPC=retq                      
                                                                                          
.size target, .-target
