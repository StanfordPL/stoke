  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %bl, %eax  #  1     0    3      OPC=movzbl_r32_r8  
  movq %rax, %rbx   #  2     0x3  3      OPC=movq_r64_r64   
  adcb %bl, %bl     #  3     0x6  2      OPC=adcb_r8_r8     
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
