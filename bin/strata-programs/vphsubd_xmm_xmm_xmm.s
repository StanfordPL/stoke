  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vcvttps2dq %xmm2, %xmm1          #  1     0     4      OPC=vcvttps2dq_xmm_xmm       
  phsubd %xmm3, %xmm2              #  2     0x4   5      OPC=phsubd_xmm_xmm           
  vmovupd %xmm2, %xmm6             #  3     0x9   4      OPC=vmovupd_xmm_xmm          
  vfmsub132ss %xmm1, %xmm2, %xmm1  #  4     0xd   5      OPC=vfmsub132ss_xmm_xmm_xmm  
  movups %xmm6, %xmm1              #  5     0x12  3      OPC=movups_xmm_xmm           
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target
