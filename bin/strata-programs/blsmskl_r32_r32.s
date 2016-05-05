  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode            
.target:                            #        0    0      OPC=<label>       
  movl %ecx, %ebx                   #  1     0    2      OPC=movl_r32_r32  
  decq %rbx                         #  2     0x2  3      OPC=decq_r64      
  callq .move_byte_5_of_rbx_to_r9b  #  3     0x5  5      OPC=callq_label   
  xorl %ecx, %ebx                   #  4     0xa  2      OPC=xorl_r32_r32  
  rclb $0x1, %r9b                   #  5     0xc  3      OPC=rclb_r8_one   
  retq                              #  6     0xf  1      OPC=retq          
                                                                           
.size target, .-target
