  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  callq .move_064_032_rbx_r8d_r9d  #  1     0     5      OPC=callq_label     
  xchgl %r8d, %r9d                 #  2     0x5   3      OPC=xchgl_r32_r32   
  bswap %r9d                       #  3     0x8   3      OPC=bswap_r32       
  xorb %bh, %bh                    #  4     0xb   2      OPC=xorb_rh_rh      
  cmovew %r8w, %r8w                #  5     0xd   5      OPC=cmovew_r16_r16  
  bswap %r8d                       #  6     0x12  3      OPC=bswap_r32       
  callq .move_032_064_r8d_r9d_rbx  #  7     0x15  5      OPC=callq_label     
  retq                             #  8     0x1a  1      OPC=retq            
                                                                             
.size target, .-target
