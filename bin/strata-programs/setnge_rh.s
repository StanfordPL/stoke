  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_of_into_rcx  #  1     0     5      OPC=callq_label     
  callq .read_sf_into_rbx  #  2     0x5   5      OPC=callq_label     
  xorw %bx, %cx            #  3     0xa   3      OPC=xorw_r16_r16    
  movslq %ecx, %rdx        #  4     0xd   3      OPC=movslq_r64_r32  
  movb %dl, %ah            #  5     0x10  2      OPC=movb_rh_r8      
  retq                     #  6     0x12  1      OPC=retq            
                                                                     
.size target, .-target
