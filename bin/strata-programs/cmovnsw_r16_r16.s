  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movzwq %cx, %rsi     #  1     0    4      OPC=movzwq_r64_r16    
  cmovnsl %esi, %ebx   #  2     0x4  3      OPC=cmovnsl_r32_r32   
  xorq %r11, %r11      #  3     0x7  3      OPC=xorq_r64_r64      
  cmovnbel %esi, %ebx  #  4     0xa  3      OPC=cmovnbel_r32_r32  
  retq                 #  5     0xd  1      OPC=retq              
                                                                  
.size target, .-target
