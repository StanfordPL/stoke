  .text
  .globl _ZNSt14overflow_errorD1Ev
  .type _ZNSt14overflow_errorD1Ev, @function

#! file-offset 0x126b60
#! rip-offset  0xe6b60
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt14overflow_errorD1Ev:        #        0xe6b60  0      OPC=<label>         
  movl %edi, %edi                  #  1     0xe6b60  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  2     0xe6b62  2      OPC=movl_r32_r32    
  movl $0x1003d718, (%r15,%rdi,1)  #  3     0xe6b64  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt13runtime_errorD2Ev   #  4     0xe6b6c  5      OPC=jmpq_label_1    
  nop                              #  5     0xe6b71  1      OPC=nop             
  nop                              #  6     0xe6b72  1      OPC=nop             
  nop                              #  7     0xe6b73  1      OPC=nop             
  nop                              #  8     0xe6b74  1      OPC=nop             
  nop                              #  9     0xe6b75  1      OPC=nop             
  nop                              #  10    0xe6b76  1      OPC=nop             
  nop                              #  11    0xe6b77  1      OPC=nop             
  nop                              #  12    0xe6b78  1      OPC=nop             
  nop                              #  13    0xe6b79  1      OPC=nop             
  nop                              #  14    0xe6b7a  1      OPC=nop             
  nop                              #  15    0xe6b7b  1      OPC=nop             
  nop                              #  16    0xe6b7c  1      OPC=nop             
  nop                              #  17    0xe6b7d  1      OPC=nop             
  nop                              #  18    0xe6b7e  1      OPC=nop             
  nop                              #  19    0xe6b7f  1      OPC=nop             
                                                                                
.size _ZNSt14overflow_errorD1Ev, .-_ZNSt14overflow_errorD1Ev

