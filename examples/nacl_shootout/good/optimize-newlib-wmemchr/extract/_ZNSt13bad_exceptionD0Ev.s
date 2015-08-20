  .text
  .globl _ZNSt13bad_exceptionD0Ev
  .type _ZNSt13bad_exceptionD0Ev, @function

#! file-offset 0x123620
#! rip-offset  0xe3620
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt13bad_exceptionD0Ev:         #        0xe3620  0      OPC=<label>         
  movl %edi, %edi                  #  1     0xe3620  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  2     0xe3622  2      OPC=movl_r32_r32    
  movl $0x1003d368, (%r15,%rdi,1)  #  3     0xe3624  8      OPC=movl_m32_imm32  
  jmpq ._ZdlPv                     #  4     0xe362c  5      OPC=jmpq_label_1    
  nop                              #  5     0xe3631  1      OPC=nop             
  nop                              #  6     0xe3632  1      OPC=nop             
  nop                              #  7     0xe3633  1      OPC=nop             
  nop                              #  8     0xe3634  1      OPC=nop             
  nop                              #  9     0xe3635  1      OPC=nop             
  nop                              #  10    0xe3636  1      OPC=nop             
  nop                              #  11    0xe3637  1      OPC=nop             
  nop                              #  12    0xe3638  1      OPC=nop             
  nop                              #  13    0xe3639  1      OPC=nop             
  nop                              #  14    0xe363a  1      OPC=nop             
  nop                              #  15    0xe363b  1      OPC=nop             
  nop                              #  16    0xe363c  1      OPC=nop             
  nop                              #  17    0xe363d  1      OPC=nop             
  nop                              #  18    0xe363e  1      OPC=nop             
  nop                              #  19    0xe363f  1      OPC=nop             
                                                                                
.size _ZNSt13bad_exceptionD0Ev, .-_ZNSt13bad_exceptionD0Ev

