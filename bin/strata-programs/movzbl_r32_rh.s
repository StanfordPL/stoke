  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movq $0x40, %rbx  #  1     0    10     OPC=movq_r64_imm64  
  movb %ah, %bl     #  2     0xa  2      OPC=movb_r8_rh      
  retq              #  3     0xc  1      OPC=retq            
                                                             
.size target, .-target
