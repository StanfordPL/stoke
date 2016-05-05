  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  movddup %xmm1, %xmm14                           #  1     0     5      OPC=movddup_xmm_xmm           
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label               
  vminsd %xmm8, %xmm10, %xmm15                    #  3     0xa   5      OPC=vminsd_xmm_xmm_xmm        
  movaps %xmm3, %xmm6                             #  4     0xf   3      OPC=movaps_xmm_xmm            
  vfnmsub213pd %xmm2, %xmm15, %xmm15              #  5     0x12  5      OPC=vfnmsub213pd_xmm_xmm_xmm  
  vxorps %xmm8, %xmm1, %xmm10                     #  6     0x17  5      OPC=vxorps_xmm_xmm_xmm        
  vfmsub213sd %xmm6, %xmm15, %xmm14               #  7     0x1c  5      OPC=vfmsub213sd_xmm_xmm_xmm   
  vmovsd %xmm14, %xmm10, %xmm1                    #  8     0x21  5      OPC=vmovsd_xmm_xmm_xmm        
  retq                                            #  9     0x26  1      OPC=retq                      
                                                                                                      
.size target, .-target
