  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .read_sf_into_rcx            #  1     0     5      OPC=callq_label      
  callq .move_032_016_ecx_r12w_r13w  #  2     0x5   5      OPC=callq_label      
  callq .move_016_032_r12w_r13w_edx  #  3     0xa   5      OPC=callq_label      
  callq .move_032_016_edx_r10w_r11w  #  4     0xf   5      OPC=callq_label      
  popcntw %r10w, %r10w               #  5     0x14  6      OPC=popcntw_r16_r16  
  sete %bl                           #  6     0x1a  3      OPC=sete_r8          
  retq                               #  7     0x1d  1      OPC=retq             
                                                                                
.size target, .-target
