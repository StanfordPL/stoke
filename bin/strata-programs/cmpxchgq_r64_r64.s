  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  cmpq %rbx, %rax     #  1     0    3      OPC=cmpq_r64_r64     
  cmovneq %rbx, %rax  #  2     0x3  4      OPC=cmovneq_r64_r64  
  cmoveq %rcx, %rbx   #  3     0x7  4      OPC=cmoveq_r64_r64   
  retq                #  4     0xb  1      OPC=retq             
                                                                
.size target, .-target
