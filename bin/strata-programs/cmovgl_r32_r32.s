  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                  #  Line  RIP  Bytes  Opcode                
.target:                #        0    0      OPC=<label>           
  movl %ecx, %r11d      #  1     0    3      OPC=movl_r32_r32      
  cmovnlel %r11d, %ebx  #  2     0x3  4      OPC=cmovnlel_r32_r32  
  retq                  #  3     0x7  1      OPC=retq              
                                                                   
.size target, .-target
