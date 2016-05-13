  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP   Bytes  Opcode            
.target:                 #        0     0      OPC=<label>       
  xorq %rax, %rax        #  1     0     3      OPC=xorq_r64_r64  
  callq .set_cf          #  2     0x3   5      OPC=callq_label   
  adcw %ax, %bx          #  3     0x8   3      OPC=adcw_r16_r16  
  callq .set_szp_for_bx  #  4     0xb   5      OPC=callq_label   
  retq                   #  5     0x10  1      OPC=retq          
                                                                 
.size target, .-target
