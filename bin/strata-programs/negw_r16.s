  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %rbp  #  1     0     10     OPC=movq_r64_imm64  
  addw %bx, %bp                   #  2     0xa   3      OPC=addw_r16_r16    
  notw %bx                        #  3     0xd   3      OPC=notw_r16        
  incw %bx                        #  4     0x10  3      OPC=incw_r16        
  retq                            #  5     0x13  1      OPC=retq            
                                                                            
.size target, .-target
