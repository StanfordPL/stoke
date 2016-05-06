  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  vmovd %ecx, %xmm1                         #  1     0     4      OPC=vmovd_xmm_r32   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x4   5      OPC=callq_label     
  sbbw %cx, %ax                             #  3     0x9   3      OPC=sbbw_r16_r16    
  cmoveq %rcx, %rbx                         #  4     0xc   4      OPC=cmoveq_r64_r64  
  retq                                      #  5     0x10  1      OPC=retq            
                                                                                      
.size target, .-target
