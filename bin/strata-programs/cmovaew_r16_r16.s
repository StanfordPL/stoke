  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movzwq %cx, %r13    #  1     0    4      OPC=movzwq_r64_r16   
  cmovnbw %r13w, %bx  #  2     0x4  5      OPC=cmovnbw_r16_r16  
  retq                #  3     0x9  1      OPC=retq             
                                                                
.size target, .-target
