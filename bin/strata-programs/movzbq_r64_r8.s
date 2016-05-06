  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x0, %rbx   #  1     0     10     OPC=movq_r64_imm64  
  clc               #  2     0xa   1      OPC=clc             
  movsbq %cl, %rdi  #  3     0xb   4      OPC=movsbq_r64_r8   
  adcb %dil, %bl    #  4     0xf   3      OPC=adcb_r8_r8      
  retq              #  5     0x12  1      OPC=retq            
                                                              
.size target, .-target
