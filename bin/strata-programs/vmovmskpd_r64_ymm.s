  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                 
.target:                                #        0     0      OPC=<label>            
  callq .move_256_128_ymm1_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vmovmskpd %xmm11, %r9d                #  2     0x5   5      OPC=vmovmskpd_r32_xmm  
  vmovmskpd %xmm10, %ebx                #  3     0xa   5      OPC=vmovmskpd_r32_xmm  
  xaddb %r9b, %r9b                      #  4     0xf   4      OPC=xaddb_r8_r8        
  xaddb %bl, %r9b                       #  5     0x13  4      OPC=xaddb_r8_r8        
  addw %r9w, %bx                        #  6     0x17  4      OPC=addw_r16_r16       
  retq                                  #  7     0x1b  1      OPC=retq               
                                                                                     
.size target, .-target
