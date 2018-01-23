  .text
  .globl simple
  .type simple, @function

#! file-offset 0x84
#! rip-offset  0x44
#! capacity    19 bytes

# Text             #  Line  RIP   Bytes  Opcode             
.simple:           #        0x44  0      OPC=<label>        
  movq %rdi, %rax  #  1     0x44  3      OPC=movq_r64_r64   
  cmpq %rsi, %rdi  #  2     0x47  3      OPC=cmpq_r64_r64   
  jae .L_55        #  3     0x4a  2      OPC=jae_label      
.L_4c:             #        0x4c  0      OPC=<label>        
  addq $0x1, %rax  #  4     0x4c  4      OPC=addq_r64_imm8  
  cmpq %rsi, %rax  #  5     0x50  3      OPC=cmpq_r64_r64   
  jne .L_4c        #  6     0x53  2      OPC=jne_label      
.L_55:             #        0x55  0      OPC=<label>        
  nop              #  7     0x55  1      OPC=nop            
  retq             #  8     0x56  1      OPC=retq           
                                                            
.size simple, .-simple

