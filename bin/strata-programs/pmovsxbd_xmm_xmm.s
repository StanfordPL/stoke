  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  movq $0xffffffffffffff80, %rdx  #  1     0     10     OPC=movq_r64_imm64        
  movq %rdx, %xmm3                #  2     0xa   5      OPC=movq_xmm_r64          
  vpbroadcastd %xmm3, %ymm5       #  3     0xf   5      OPC=vpbroadcastd_ymm_xmm  
  movups %xmm5, %xmm14            #  4     0x14  4      OPC=movups_xmm_xmm        
  pmovzxbd %xmm2, %xmm2           #  5     0x18  5      OPC=pmovzxbd_xmm_xmm      
  vpaddd %xmm14, %xmm2, %xmm6     #  6     0x1d  5      OPC=vpaddd_xmm_xmm_xmm    
  xorps %xmm14, %xmm6             #  7     0x22  4      OPC=xorps_xmm_xmm         
  movaps %xmm6, %xmm1             #  8     0x26  3      OPC=movaps_xmm_xmm        
  retq                            #  9     0x29  1      OPC=retq                  
                                                                                  
.size target, .-target
