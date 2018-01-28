  .text
  .globl simple
  .type simple, @function

#! file-offset 0xa7
#! rip-offset  0x67
#! capacity    19 bytes

# Text             #  Line  RIP   Bytes  Opcode             
.simple:           #        0x67  0      OPC=<label>        
  movq %rdi, %rax  #  1     0x67  3      OPC=movq_r64_r64   
  cmpq %rsi, %rdi  #  2     0x6a  3      OPC=cmpq_r64_r64   
  jae .L_78        #  3     0x6d  2      OPC=jae_label      
.L_6f:             #        0x6f  0      OPC=<label>        
  addq $0x1, %rax  #  4     0x6f  4      OPC=addq_r64_imm8  
  cmpq %rsi, %rax  #  5     0x73  3      OPC=cmpq_r64_r64   
  jne .L_6f        #  6     0x76  2      OPC=jne_label      
.L_78:             #        0x78  0      OPC=<label>        
  nop              #  7     0x78  1      OPC=nop            
  retq             #  8     0x79  1      OPC=retq           
                                                            
.size simple, .-simple

