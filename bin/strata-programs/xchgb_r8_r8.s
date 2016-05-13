  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode             
.target:           #        0     0      OPC=<label>        
  movzbq %bl, %r8  #  1     0     4      OPC=movzbq_r64_r8  
  movzbw %cl, %cx  #  2     0x4   4      OPC=movzbw_r16_r8  
  movb %ch, %bh    #  3     0x8   2      OPC=movb_rh_rh     
  xaddb %bl, %ch   #  4     0xa   3      OPC=xaddb_rh_r8    
  xaddw %bx, %cx   #  5     0xd   4      OPC=xaddw_r16_r16  
  xchgw %cx, %r8w  #  6     0x11  4      OPC=xchgw_r16_r16  
  retq             #  7     0x15  1      OPC=retq           
                                                            
.size target, .-target
