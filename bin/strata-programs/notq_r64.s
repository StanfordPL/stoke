  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP  Bytes  Opcode              
.target:                          #        0    0      OPC=<label>         
  movq $0xfffffffffffffffe, %rdx  #  1     0    10     OPC=movq_r64_imm64  
  incb %dl                        #  2     0xa  2      OPC=incb_r8         
  xorq %rdx, %rbx                 #  3     0xc  3      OPC=xorq_r64_r64    
  retq                            #  4     0xf  1      OPC=retq            
                                                                           
.size target, .-target
