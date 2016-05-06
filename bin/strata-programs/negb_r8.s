  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP   Bytes  Opcode             
.target:                 #        0     0      OPC=<label>        
  movzbl %bl, %r14d      #  1     0     4      OPC=movzbl_r32_r8  
  negw %r14w             #  2     0x4   4      OPC=negw_r16       
  xaddb %bl, %r14b       #  3     0x8   4      OPC=xaddb_r8_r8    
  callq .set_szp_for_bl  #  4     0xc   5      OPC=callq_label    
  retq                   #  5     0x11  1      OPC=retq           
                                                                  
.size target, .-target
