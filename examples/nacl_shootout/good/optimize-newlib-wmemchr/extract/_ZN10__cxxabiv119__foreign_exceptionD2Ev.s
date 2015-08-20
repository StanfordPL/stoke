  .text
  .globl _ZN10__cxxabiv119__foreign_exceptionD2Ev
  .type _ZN10__cxxabiv119__foreign_exceptionD2Ev, @function

#! file-offset 0x123540
#! rip-offset  0xe3540
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZN10__cxxabiv119__foreign_exceptionD2Ev:  #        0xe3540  0      OPC=<label>         
  popq %r11                                 #  1     0xe3540  2      OPC=popq_r64_1      
  movl %edi, %edi                           #  2     0xe3542  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  3     0xe3544  2      OPC=movl_r32_r32    
  movl $0x1003d308, (%r15,%rdi,1)           #  4     0xe3546  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d                   #  5     0xe354e  7      OPC=andl_r32_imm32  
  nop                                       #  6     0xe3555  1      OPC=nop             
  nop                                       #  7     0xe3556  1      OPC=nop             
  nop                                       #  8     0xe3557  1      OPC=nop             
  nop                                       #  9     0xe3558  1      OPC=nop             
  addq %r15, %r11                           #  10    0xe3559  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  11    0xe355c  3      OPC=jmpq_r64        
  nop                                       #  12    0xe355f  1      OPC=nop             
  nop                                       #  13    0xe3560  1      OPC=nop             
  nop                                       #  14    0xe3561  1      OPC=nop             
  nop                                       #  15    0xe3562  1      OPC=nop             
  nop                                       #  16    0xe3563  1      OPC=nop             
  nop                                       #  17    0xe3564  1      OPC=nop             
  nop                                       #  18    0xe3565  1      OPC=nop             
  nop                                       #  19    0xe3566  1      OPC=nop             
                                                                                         
.size _ZN10__cxxabiv119__foreign_exceptionD2Ev, .-_ZN10__cxxabiv119__foreign_exceptionD2Ev

