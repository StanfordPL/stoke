  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP  Bytes  Opcode                
.target:                          #        0    0      OPC=<label>           
  xchgl %ecx, %ebx                #  1     0    2      OPC=xchgl_r32_r32     
  vmovd %ecx, %xmm1               #  2     0x2  4      OPC=vmovd_xmm_r32     
  callq .move_128_064_xmm1_r8_r9  #  3     0x6  5      OPC=callq_label       
  cmovnlel %r8d, %ebx             #  4     0xb  4      OPC=cmovnlel_r32_r32  
  retq                            #  5     0xf  1      OPC=retq              
                                                                             
.size target, .-target
