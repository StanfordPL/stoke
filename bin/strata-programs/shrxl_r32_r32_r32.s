  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  movd %ecx, %xmm3                #  1     0     4      OPC=movd_xmm_r32       
  callq .move_128_064_xmm3_r8_r9  #  2     0x4   5      OPC=callq_label        
  tzcntl %r9d, %r13d              #  3     0x9   5      OPC=tzcntl_r32_r32     
  andnl %edx, %r13d, %edi         #  4     0xe   5      OPC=andnl_r32_r32_r32  
  shrxq %rdi, %r8, %rbx           #  5     0x13  5      OPC=shrxq_r64_r64_r64  
  retq                            #  6     0x18  1      OPC=retq               
                                                                               
.size target, .-target
