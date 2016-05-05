  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  shrxl %ecx, %ebx, %esi  #  1     0    5      OPC=shrxl_r32_r32_r32  
  sarq $0x1, %rsi         #  2     0x5  3      OPC=sarq_r64_one       
  retq                    #  3     0x8  1      OPC=retq               
                                                                      
.size target, .-target
