  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  callq .clear_cf     #  1     0     5      OPC=callq_label     
  movsbl %cl, %r13d   #  2     0x5   4      OPC=movsbl_r32_r8   
  movsbl %bl, %r15d   #  3     0x9   4      OPC=movsbl_r32_r8   
  movsbq %r15b, %rcx  #  4     0xd   4      OPC=movsbq_r64_r8   
  adcb %cl, %r13b     #  5     0x11  3      OPC=adcb_r8_r8      
  movslq %r13d, %rbx  #  6     0x14  3      OPC=movslq_r64_r32  
  retq                #  7     0x17  1      OPC=retq            
                                                                
.size target, .-target
