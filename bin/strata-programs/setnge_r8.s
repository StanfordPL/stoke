  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .read_of_into_rbx            #  1     0     5      OPC=callq_label    
  callq .move_032_016_ebx_r12w_r13w  #  2     0x5   5      OPC=callq_label    
  callq .move_032_016_ebx_r8w_r9w    #  3     0xa   5      OPC=callq_label    
  callq .read_sf_into_rcx            #  4     0xf   5      OPC=callq_label    
  rolb $0x1, %r13b                   #  5     0x14  3      OPC=rolb_r8_one    
  xorl %ecx, %ebx                    #  6     0x17  2      OPC=xorl_r32_r32   
  xaddw %r9w, %r13w                  #  7     0x19  5      OPC=xaddw_r16_r16  
  callq .move_r9b_to_byte_5_of_rbx   #  8     0x1e  5      OPC=callq_label    
  retq                               #  9     0x23  1      OPC=retq           
                                                                              
.size target, .-target
