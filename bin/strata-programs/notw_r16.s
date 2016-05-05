  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %r14  #  1     0     10     OPC=movq_r64_imm64  
  movswq %bx, %r12                #  2     0xa   4      OPC=movswq_r64_r16  
  xorw %r14w, %r12w               #  3     0xe   4      OPC=xorw_r16_r16    
  movslq %r12d, %rbx              #  4     0x12  3      OPC=movslq_r64_r32  
  retq                            #  5     0x15  1      OPC=retq            
                                                                            
.size target, .-target
