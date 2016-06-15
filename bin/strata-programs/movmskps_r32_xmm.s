  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  movq $0x0, %rbx         #  1     0     10     OPC=movq_r64_imm64     
  vmovmskps %xmm1, %r13d  #  2     0xa   4      OPC=vmovmskps_r32_xmm  
  xchgw %bx, %r13w        #  3     0xe   4      OPC=xchgw_r16_r16      
  retq                    #  4     0x12  1      OPC=retq               
                                                                       
.size target, .-target
