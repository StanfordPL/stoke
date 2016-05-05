  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                           #  Line  RIP   Bytes  Opcode              
.target:                         #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %r9  #  1     0     10     OPC=movq_r64_imm64  
  xorq %rcx, %rcx                #  2     0xa   3      OPC=xorq_r64_r64    
  adcb %r9b, %bl                 #  3     0xd   3      OPC=adcb_r8_r8      
  retq                           #  4     0x10  1      OPC=retq            
                                                                           
.size target, .-target
