  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  movslq %ebx, %rsi               #  1     0     3      OPC=movslq_r64_r32   
  vmovd %ecx, %xmm1               #  2     0x3   4      OPC=vmovd_xmm_r32    
  callq .move_128_064_xmm1_r8_r9  #  3     0x7   5      OPC=callq_label      
  cmovnel %r8d, %ebx              #  4     0xc   4      OPC=cmovnel_r32_r32  
  adcb %r9b, %r9b                 #  5     0x10  3      OPC=adcb_r8_r8       
  cmovnzl %esi, %ebx              #  6     0x13  3      OPC=cmovnzl_r32_r32  
  retq                            #  7     0x16  1      OPC=retq             
                                                                             
.size target, .-target
