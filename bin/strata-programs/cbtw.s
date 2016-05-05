  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  movsbq %al, %r8                           #  1     0     4      OPC=movsbq_r64_r8   
  movq $0x10, %r9                           #  2     0x4   10     OPC=movq_r64_imm64  
  callq .move_064_128_r8_r9_xmm1            #  3     0xe   5      OPC=callq_label     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0x13  5      OPC=callq_label     
  retq                                      #  5     0x18  1      OPC=retq            
                                                                                      
.size target, .-target
