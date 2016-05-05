  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode               
.target:                  #        0     0      OPC=<label>          
  movl %ecx, %ebx         #  1     0     2      OPC=movl_r32_r32     
  decq %rbx               #  2     0x2   3      OPC=decq_r64         
  andl %ecx, %ebx         #  3     0x5   2      OPC=andl_r32_r32     
  blsmskl %ecx, %ecx      #  4     0x7   5      OPC=blsmskl_r32_r32  
  callq .set_szp_for_ebx  #  5     0xc   5      OPC=callq_label      
  retq                    #  6     0x11  1      OPC=retq             
                                                                     
.size target, .-target
