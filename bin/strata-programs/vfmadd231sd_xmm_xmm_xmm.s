  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP  Bytes  Opcode                       
.target:                               #        0    0      OPC=<label>                  
  vfmadd132pd %xmm3, %xmm1, %xmm2      #  1     0    5      OPC=vfmadd132pd_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5  5      OPC=callq_label              
  vmovsd %xmm10, %xmm1, %xmm1          #  3     0xa  5      OPC=vmovsd_xmm_xmm_xmm       
  retq                                 #  4     0xf  1      OPC=retq                     
                                                                                         
.size target, .-target
