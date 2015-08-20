  .text
  .globl _ZNSt9bad_allocD1Ev
  .type _ZNSt9bad_allocD1Ev, @function

#! file-offset 0x120920
#! rip-offset  0xe0920
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt9bad_allocD1Ev:              #        0xe0920  0      OPC=<label>         
  movl %edi, %edi                  #  1     0xe0920  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  2     0xe0922  2      OPC=movl_r32_r32    
  movl $0x1003d0c8, (%r15,%rdi,1)  #  3     0xe0924  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt9exceptionD2Ev        #  4     0xe092c  5      OPC=jmpq_label_1    
  nop                              #  5     0xe0931  1      OPC=nop             
  nop                              #  6     0xe0932  1      OPC=nop             
  nop                              #  7     0xe0933  1      OPC=nop             
  nop                              #  8     0xe0934  1      OPC=nop             
  nop                              #  9     0xe0935  1      OPC=nop             
  nop                              #  10    0xe0936  1      OPC=nop             
  nop                              #  11    0xe0937  1      OPC=nop             
  nop                              #  12    0xe0938  1      OPC=nop             
  nop                              #  13    0xe0939  1      OPC=nop             
  nop                              #  14    0xe093a  1      OPC=nop             
  nop                              #  15    0xe093b  1      OPC=nop             
  nop                              #  16    0xe093c  1      OPC=nop             
  nop                              #  17    0xe093d  1      OPC=nop             
  nop                              #  18    0xe093e  1      OPC=nop             
  nop                              #  19    0xe093f  1      OPC=nop             
                                                                                
.size _ZNSt9bad_allocD1Ev, .-_ZNSt9bad_allocD1Ev

