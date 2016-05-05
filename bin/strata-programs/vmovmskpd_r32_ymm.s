  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP   Bytes  Opcode                 
.target:                 #        0     0      OPC=<label>            
  movq $0x20, %rbx       #  1     0     10     OPC=movq_r64_imm64     
  vmovmskpd %ymm1, %r12  #  2     0xa   4      OPC=vmovmskpd_r64_ymm  
  xaddw %bx, %r12w       #  3     0xe   5      OPC=xaddw_r16_r16      
  retq                   #  4     0x13  1      OPC=retq               
                                                                      
.size target, .-target
