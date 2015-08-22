  .text
  .globl _ZNSt16invalid_argumentD1Ev
  .type _ZNSt16invalid_argumentD1Ev, @function

#! file-offset 0x127440
#! rip-offset  0xe7440
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt16invalid_argumentD1Ev:      #        0xe7440  0      OPC=<label>         
  movl %edi, %edi                  #  1     0xe7440  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  2     0xe7442  2      OPC=movl_r32_r32    
  movl $0x1003d808, (%r15,%rdi,1)  #  3     0xe7444  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt11logic_errorD2Ev     #  4     0xe744c  5      OPC=jmpq_label_1    
  nop                              #  5     0xe7451  1      OPC=nop             
  nop                              #  6     0xe7452  1      OPC=nop             
  nop                              #  7     0xe7453  1      OPC=nop             
  nop                              #  8     0xe7454  1      OPC=nop             
  nop                              #  9     0xe7455  1      OPC=nop             
  nop                              #  10    0xe7456  1      OPC=nop             
  nop                              #  11    0xe7457  1      OPC=nop             
  nop                              #  12    0xe7458  1      OPC=nop             
  nop                              #  13    0xe7459  1      OPC=nop             
  nop                              #  14    0xe745a  1      OPC=nop             
  nop                              #  15    0xe745b  1      OPC=nop             
  nop                              #  16    0xe745c  1      OPC=nop             
  nop                              #  17    0xe745d  1      OPC=nop             
  nop                              #  18    0xe745e  1      OPC=nop             
  nop                              #  19    0xe745f  1      OPC=nop             
                                                                                
.size _ZNSt16invalid_argumentD1Ev, .-_ZNSt16invalid_argumentD1Ev

