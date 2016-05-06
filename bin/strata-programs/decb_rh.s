  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  xorb %al, %al            #  1     0     2      OPC=xorb_r8_r8     
  callq .read_of_into_rcx  #  2     0x2   5      OPC=callq_label    
  cwtl                     #  3     0x7   1      OPC=cwtl           
  movzbl %cl, %ebx         #  4     0x8   3      OPC=movzbl_r32_r8  
  decw %bx                 #  5     0xb   3      OPC=decw_r16       
  addb %bh, %ah            #  6     0xe   2      OPC=addb_rh_rh     
  retq                     #  7     0x10  1      OPC=retq           
                                                                    
.size target, .-target
