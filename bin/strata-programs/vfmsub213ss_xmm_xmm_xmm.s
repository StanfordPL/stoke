  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  vbroadcastss %xmm3, %ymm0                       #  1     0     5      OPC=vbroadcastss_ymm_xmm      
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label               
  pmovzxbd %xmm8, %xmm7                           #  3     0xa   6      OPC=pmovzxbd_xmm_xmm          
  vfnmsub132ps %xmm7, %xmm0, %xmm8                #  4     0x10  5      OPC=vfnmsub132ps_xmm_xmm_xmm  
  vfmadd213ss %xmm8, %xmm2, %xmm1                 #  5     0x15  5      OPC=vfmadd213ss_xmm_xmm_xmm   
  retq                                            #  6     0x1a  1      OPC=retq                      
                                                                                                      
.size target, .-target
