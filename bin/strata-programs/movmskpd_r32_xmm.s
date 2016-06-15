  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movmskpd %xmm1, %r8  #  1     0    5      OPC=movmskpd_r64_xmm  
  movslq %r8d, %rbx    #  2     0x5  3      OPC=movslq_r64_r32    
  retq                 #  3     0x8  1      OPC=retq              
                                                                  
.size target, .-target
