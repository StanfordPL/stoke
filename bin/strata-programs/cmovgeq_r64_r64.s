  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  setnge %dh          #  1     0    3      OPC=setnge_rh        
  negb %dh            #  2     0x3  2      OPC=negb_rh          
  cmovaw %cx, %cx     #  3     0x5  4      OPC=cmovaw_r16_r16   
  cmovaeq %rcx, %rbx  #  4     0x9  4      OPC=cmovaeq_r64_r64  
  retq                #  5     0xd  1      OPC=retq             
                                                                
.size target, .-target
