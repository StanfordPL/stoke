  .text
  .globl _ZNSt9bad_allocD2Ev
  .type _ZNSt9bad_allocD2Ev, @function

#! file-offset 0x121060
#! rip-offset  0xe1060
#! capacity    32 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt9bad_allocD2Ev:              #        0xe1060  0      OPC=<label>         
  movl %edi, %edi                  #  1     0xe1060  2      OPC=movl_r32_r32    
  movl %edi, %edi                  #  2     0xe1062  2      OPC=movl_r32_r32    
  movl $0x1003d0c8, (%r15,%rdi,1)  #  3     0xe1064  8      OPC=movl_m32_imm32  
  jmpq ._ZNSt9exceptionD2Ev        #  4     0xe106c  5      OPC=jmpq_label_1    
  nop                              #  5     0xe1071  1      OPC=nop             
  nop                              #  6     0xe1072  1      OPC=nop             
  nop                              #  7     0xe1073  1      OPC=nop             
  nop                              #  8     0xe1074  1      OPC=nop             
  nop                              #  9     0xe1075  1      OPC=nop             
  nop                              #  10    0xe1076  1      OPC=nop             
  nop                              #  11    0xe1077  1      OPC=nop             
  nop                              #  12    0xe1078  1      OPC=nop             
  nop                              #  13    0xe1079  1      OPC=nop             
  nop                              #  14    0xe107a  1      OPC=nop             
  nop                              #  15    0xe107b  1      OPC=nop             
  nop                              #  16    0xe107c  1      OPC=nop             
  nop                              #  17    0xe107d  1      OPC=nop             
  nop                              #  18    0xe107e  1      OPC=nop             
  nop                              #  19    0xe107f  1      OPC=nop             
                                                                                
.size _ZNSt9bad_allocD2Ev, .-_ZNSt9bad_allocD2Ev

