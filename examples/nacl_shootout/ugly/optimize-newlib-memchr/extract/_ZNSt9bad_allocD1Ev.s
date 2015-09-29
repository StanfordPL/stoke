  .text
  .globl _ZNSt9bad_allocD1Ev
  .type _ZNSt9bad_allocD1Ev, @function

#! file-offset 0x121040
#! rip-offset  0xe1040
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt9bad_allocD1Ev:              #        0xe1040  0      OPC=<label>         
  movl %edi, %edi                  #  1     0xe1040  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  2     0xe1042  2      OPC=movl_r32_r32    
  movl $0x1003d0c8, (%r15,%rdi,1)  #  3     0xe1044  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt9exceptionD2Ev        #  4     0xe104c  5      OPC=jmpq_label_1    
  nop                              #  5     0xe1051  1      OPC=nop             
  nop                              #  6     0xe1052  1      OPC=nop             
  nop                              #  7     0xe1053  1      OPC=nop             
  nop                              #  8     0xe1054  1      OPC=nop             
  nop                              #  9     0xe1055  1      OPC=nop             
  nop                              #  10    0xe1056  1      OPC=nop             
  nop                              #  11    0xe1057  1      OPC=nop             
  nop                              #  12    0xe1058  1      OPC=nop             
  nop                              #  13    0xe1059  1      OPC=nop             
  nop                              #  14    0xe105a  1      OPC=nop             
  nop                              #  15    0xe105b  1      OPC=nop             
  nop                              #  16    0xe105c  1      OPC=nop             
  nop                              #  17    0xe105d  1      OPC=nop             
  nop                              #  18    0xe105e  1      OPC=nop             
  nop                              #  19    0xe105f  1      OPC=nop             
                                                                                
.size _ZNSt9bad_allocD1Ev, .-_ZNSt9bad_allocD1Ev

