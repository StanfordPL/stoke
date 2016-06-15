  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setnl %al           #  1     0    3      OPC=setnl_r8         
  sarb $0x1, %al      #  2     0x3  2      OPC=sarb_r8_one      
  cmovnbq %rcx, %rbx  #  3     0x5  4      OPC=cmovnbq_r64_r64  
  retq                #  4     0x9  1      OPC=retq             
                                                                
.size target, .-target
