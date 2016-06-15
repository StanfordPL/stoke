  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  vmovq %xmm1, %r10  #  1     0    5      OPC=vmovq_r64_xmm  
  movq %r10, %rbx    #  2     0x5  3      OPC=movq_r64_r64   
  retq               #  3     0x8  1      OPC=retq           
                                                             
.size target, .-target
