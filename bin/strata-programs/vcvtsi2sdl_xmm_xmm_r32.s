  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovd %ebx, %xmm1                   #  1     0     4      OPC=vmovd_xmm_r32       
  callq .move_128_064_xmm1_r8_r9      #  2     0x4   5      OPC=callq_label         
  callq .move_r9b_to_byte_25_of_ymm1  #  3     0x9   5      OPC=callq_label         
  vcvtdq2pd %ymm1, %ymm3              #  4     0xe   4      OPC=vcvtdq2pd_ymm_ymm   
  vmovsd %xmm3, %xmm2, %xmm1          #  5     0x12  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                                #  6     0x16  1      OPC=retq                
                                                                                    
.size target, .-target
