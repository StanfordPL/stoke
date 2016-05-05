  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  movq $0x0, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  decw %bx         #  2     0xa   3      OPC=decw_r16        
  xaddw %bx, %cx   #  3     0xd   4      OPC=xaddw_r16_r16   
  retq             #  4     0x11  1      OPC=retq            
                                                             
.size target, .-target
