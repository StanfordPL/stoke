  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_of_into_rcx  #  1     0     5      OPC=callq_label     
  callq .set_cf            #  2     0x5   5      OPC=callq_label     
  callq .read_cf_into_rbx  #  3     0xa   5      OPC=callq_label     
  movslq %ecx, %r8         #  4     0xf   3      OPC=movslq_r64_r32  
  xorw %r8w, %bx           #  5     0x12  4      OPC=xorw_r16_r16    
  retq                     #  6     0x16  1      OPC=retq            
                                                                     
.size target, .-target
