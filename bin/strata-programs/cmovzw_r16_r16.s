  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movswq %cx, %r13    #  1     0    4      OPC=movswq_r64_r16  
  movslq %r13d, %r13  #  2     0x4  3      OPC=movslq_r64_r32  
  cmoveq %r13, %rbx   #  3     0x7  4      OPC=cmoveq_r64_r64  
  retq                #  4     0xb  1      OPC=retq            
                                                               
.size target, .-target
