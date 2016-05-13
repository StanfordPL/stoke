  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label     
  decb %bl                 #  2     0x5   2      OPC=decb_r8         
  movq $0x4, %rax          #  3     0x7   10     OPC=movq_r64_imm64  
  addw %bx, %ax            #  4     0x11  3      OPC=addw_r16_r16    
  retq                     #  5     0x14  1      OPC=retq            
                                                                     
.size target, .-target
