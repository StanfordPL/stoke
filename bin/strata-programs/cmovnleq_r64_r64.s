  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  setnle %r14b         #  1     0    4      OPC=setnle_r8         
  sarb $0x1, %r14b     #  2     0x4  3      OPC=sarb_r8_one       
  cmovnaeq %rcx, %rbx  #  3     0x7  4      OPC=cmovnaeq_r64_r64  
  retq                 #  4     0xb  1      OPC=retq              
                                                                  
.size target, .-target
