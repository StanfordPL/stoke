  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .move_032_016_ecx_r10w_r11w  #  1     0     5      OPC=callq_label      
  movl %ebx, %esi                    #  2     0x5   2      OPC=movl_r32_r32     
  callq .read_pf_into_rbx            #  3     0x7   5      OPC=callq_label      
  popcntw %bx, %bx                   #  4     0xc   5      OPC=popcntw_r16_r16  
  callq .move_016_032_r10w_r11w_ebx  #  5     0x11  5      OPC=callq_label      
  cmovnzl %esi, %ebx                 #  6     0x16  3      OPC=cmovnzl_r32_r32  
  retq                               #  7     0x19  1      OPC=retq             
                                                                                
.size target, .-target
