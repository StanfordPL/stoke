  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movslq %edx, %rbx                  #  1     0     3      OPC=movslq_r64_r32  
  orl %ecx, %edx                     #  2     0x3   2      OPC=orl_r32_r32     
  callq .move_032_016_ecx_r12w_r13w  #  3     0x5   5      OPC=callq_label     
  callq .move_016_032_r12w_r13w_ecx  #  4     0xa   5      OPC=callq_label     
  xorl %edx, %ecx                    #  5     0xf   2      OPC=xorl_r32_r32    
  xchgl %ebx, %ecx                   #  6     0x11  2      OPC=xchgl_r32_r32   
  retq                               #  7     0x13  1      OPC=retq            
                                                                               
.size target, .-target
