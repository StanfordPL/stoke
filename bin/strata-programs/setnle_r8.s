  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label      
  setnl %r9b               #  2     0x5   4      OPC=setnl_r8         
  xchgb %bh, %bl           #  3     0x9   2      OPC=xchgb_r8_rh      
  movzbl %r9b, %edi        #  4     0xb   4      OPC=movzbl_r32_r8    
  cmovnel %edi, %ebx       #  5     0xf   3      OPC=cmovnel_r32_r32  
  retq                     #  6     0x12  1      OPC=retq             
                                                                      
.size target, .-target
