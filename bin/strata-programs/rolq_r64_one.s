  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_064_032_rbx_r12d_r13d  #  1     0     5      OPC=callq_label    
  callq .move_032_064_r12d_r13d_rcx  #  2     0x5   5      OPC=callq_label    
  movq %rcx, %r9                     #  3     0xa   3      OPC=movq_r64_r64   
  addq %rcx, %r9                     #  4     0xd   3      OPC=addq_r64_r64   
  xchgw %bx, %bx                     #  5     0x10  3      OPC=xchgw_r16_r16  
  adcq %rbx, %rbx                    #  6     0x13  3      OPC=adcq_r64_r64   
  retq                               #  7     0x16  1      OPC=retq           
                                                                              
.size target, .-target
