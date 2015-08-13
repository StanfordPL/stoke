  .text
  .globl _ZNSt9bad_allocD2Ev
  .type _ZNSt9bad_allocD2Ev, @function

#! file-offset 0x120640
#! rip-offset  0xe0640
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt9bad_allocD2Ev:              #        0xe0640  0      OPC=<label>         
  movl %edi, %edi                  #  1     0xe0640  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  2     0xe0642  2      OPC=movl_r32_r32    
  movl $0x1003d0c8, (%r15,%rdi,1)  #  3     0xe0644  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt9exceptionD2Ev        #  4     0xe064c  5      OPC=jmpq_label_1    
  nop                              #  5     0xe0651  1      OPC=nop             
  nop                              #  6     0xe0652  1      OPC=nop             
  nop                              #  7     0xe0653  1      OPC=nop             
  nop                              #  8     0xe0654  1      OPC=nop             
  nop                              #  9     0xe0655  1      OPC=nop             
  nop                              #  10    0xe0656  1      OPC=nop             
  nop                              #  11    0xe0657  1      OPC=nop             
  nop                              #  12    0xe0658  1      OPC=nop             
  nop                              #  13    0xe0659  1      OPC=nop             
  nop                              #  14    0xe065a  1      OPC=nop             
  nop                              #  15    0xe065b  1      OPC=nop             
  nop                              #  16    0xe065c  1      OPC=nop             
  nop                              #  17    0xe065d  1      OPC=nop             
  nop                              #  18    0xe065e  1      OPC=nop             
  nop                              #  19    0xe065f  1      OPC=nop             
                                                                                
.size _ZNSt9bad_allocD2Ev, .-_ZNSt9bad_allocD2Ev

