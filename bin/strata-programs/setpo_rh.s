  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  setpo %r14b                     #  1     0     4      OPC=setpo_r8        
  movzbl %r14b, %ecx              #  2     0x4   4      OPC=movzbl_r32_r8   
  movq $0xfffffffffffffff0, %rax  #  3     0x8   10     OPC=movq_r64_imm64  
  xaddb %ah, %cl                  #  4     0x12  3      OPC=xaddb_r8_rh     
  retq                            #  5     0x15  1      OPC=retq            
                                                                            
.size target, .-target
