  .text
  .globl _ZNSt14overflow_errorD1Ev
  .type _ZNSt14overflow_errorD1Ev, @function

#! file-offset 0x127280
#! rip-offset  0xe7280
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt14overflow_errorD1Ev:        #        0xe7280  0      OPC=<label>         
  movl %edi, %edi                  #  1     0xe7280  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  2     0xe7282  2      OPC=movl_r32_r32    
  movl $0x1003d718, (%r15,%rdi,1)  #  3     0xe7284  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt13runtime_errorD2Ev   #  4     0xe728c  5      OPC=jmpq_label_1    
  nop                              #  5     0xe7291  1      OPC=nop             
  nop                              #  6     0xe7292  1      OPC=nop             
  nop                              #  7     0xe7293  1      OPC=nop             
  nop                              #  8     0xe7294  1      OPC=nop             
  nop                              #  9     0xe7295  1      OPC=nop             
  nop                              #  10    0xe7296  1      OPC=nop             
  nop                              #  11    0xe7297  1      OPC=nop             
  nop                              #  12    0xe7298  1      OPC=nop             
  nop                              #  13    0xe7299  1      OPC=nop             
  nop                              #  14    0xe729a  1      OPC=nop             
  nop                              #  15    0xe729b  1      OPC=nop             
  nop                              #  16    0xe729c  1      OPC=nop             
  nop                              #  17    0xe729d  1      OPC=nop             
  nop                              #  18    0xe729e  1      OPC=nop             
  nop                              #  19    0xe729f  1      OPC=nop             
                                                                                
.size _ZNSt14overflow_errorD1Ev, .-_ZNSt14overflow_errorD1Ev

