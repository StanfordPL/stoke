  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vmovq %rbx, %xmm12          #  1     0     5      OPC=vmovq_xmm_r64       
  vmovq %xmm12, %xmm2         #  2     0x5   5      OPC=vmovq_xmm_xmm       
  vmovq %rcx, %xmm4           #  3     0xa   5      OPC=vmovq_xmm_r64       
  xorw %cx, %cx               #  4     0xf   3      OPC=xorw_r16_r16        
  vandpd %ymm2, %ymm4, %ymm1  #  5     0x12  4      OPC=vandpd_ymm_ymm_ymm  
  vmovq %xmm1, %rbx           #  6     0x16  5      OPC=vmovq_r64_xmm       
  callq .set_szp_for_rbx      #  7     0x1b  5      OPC=callq_label         
  retq                        #  8     0x20  1      OPC=retq                
                                                                            
.size target, .-target
