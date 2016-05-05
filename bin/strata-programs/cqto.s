  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                           #  Line  RIP  Bytes  Opcode                 
.target:                         #        0    0      OPC=<label>            
  movq $0xffffffffffffffff, %r8  #  1     0    10     OPC=movq_r64_imm64     
  sarxq %r8, %rax, %rdx          #  2     0xa  5      OPC=sarxq_r64_r64_r64  
  retq                           #  3     0xf  1      OPC=retq               
                                                                             
.size target, .-target
