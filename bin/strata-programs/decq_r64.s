  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP  Bytes  Opcode              
.target:                          #        0    0      OPC=<label>         
  movq $0xffffffffffffffff, %rax  #  1     0    10     OPC=movq_r64_imm64  
  addq %rax, %rbx                 #  2     0xa  3      OPC=addq_r64_r64    
  retq                            #  3     0xd  1      OPC=retq            
                                                                           
.size target, .-target
