  .text
  .globl _ZNSt14overflow_errorD1Ev
  .type _ZNSt14overflow_errorD1Ev, @function

#! file-offset 0x126860
#! rip-offset  0xe6860
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt14overflow_errorD1Ev:        #        0xe6860  0      OPC=<label>         
  movl %edi, %edi                  #  1     0xe6860  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  2     0xe6862  2      OPC=movl_r32_r32    
  movl $0x1003d718, (%r15,%rdi,1)  #  3     0xe6864  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt13runtime_errorD2Ev   #  4     0xe686c  5      OPC=jmpq_label_1    
  nop                              #  5     0xe6871  1      OPC=nop             
  nop                              #  6     0xe6872  1      OPC=nop             
  nop                              #  7     0xe6873  1      OPC=nop             
  nop                              #  8     0xe6874  1      OPC=nop             
  nop                              #  9     0xe6875  1      OPC=nop             
  nop                              #  10    0xe6876  1      OPC=nop             
  nop                              #  11    0xe6877  1      OPC=nop             
  nop                              #  12    0xe6878  1      OPC=nop             
  nop                              #  13    0xe6879  1      OPC=nop             
  nop                              #  14    0xe687a  1      OPC=nop             
  nop                              #  15    0xe687b  1      OPC=nop             
  nop                              #  16    0xe687c  1      OPC=nop             
  nop                              #  17    0xe687d  1      OPC=nop             
  nop                              #  18    0xe687e  1      OPC=nop             
  nop                              #  19    0xe687f  1      OPC=nop             
                                                                                
.size _ZNSt14overflow_errorD1Ev, .-_ZNSt14overflow_errorD1Ev

