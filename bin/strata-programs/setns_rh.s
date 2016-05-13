  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  movq $0x2, %rax  #  1     0    10     OPC=movq_r64_imm64  
  roll $0x1, %eax  #  2     0xa  2      OPC=roll_r32_one    
  setnl %ah        #  3     0xc  3      OPC=setnl_rh        
  retq             #  4     0xf  1      OPC=retq            
                                                            
.size target, .-target
