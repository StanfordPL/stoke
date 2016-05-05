  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vxorpd %xmm1, %xmm1, %xmm1  #  1     0     4      OPC=vxorpd_xmm_xmm_xmm    
  vpbroadcastw %xmm1, %ymm15  #  2     0x4   5      OPC=vpbroadcastw_ymm_xmm  
  vcvttss2sil %xmm15, %r10d   #  3     0x9   5      OPC=vcvttss2sil_r32_xmm   
  subq %rbx, %r10             #  4     0xe   3      OPC=subq_r64_r64          
  xchgq %r10, %rbx            #  5     0x11  3      OPC=xchgq_r64_r64         
  retq                        #  6     0x14  1      OPC=retq                  
                                                                              
.size target, .-target
