  .text
  .globl _ZN10__cxxabiv119__foreign_exceptionD2Ev
  .type _ZN10__cxxabiv119__foreign_exceptionD2Ev, @function

#! file-offset 0x123c60
#! rip-offset  0xe3c60
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZN10__cxxabiv119__foreign_exceptionD2Ev:  #        0xe3c60  0      OPC=<label>         
  popq %r11                                 #  1     0xe3c60  2      OPC=popq_r64_1      
  movl %edi, %edi                           #  2     0xe3c62  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  3     0xe3c64  2      OPC=movl_r32_r32    
  movl $0x1003d308, (%r15,%rdi,1)           #  4     0xe3c66  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d                   #  5     0xe3c6e  7      OPC=andl_r32_imm32  
  nop                                       #  6     0xe3c75  1      OPC=nop             
  nop                                       #  7     0xe3c76  1      OPC=nop             
  nop                                       #  8     0xe3c77  1      OPC=nop             
  nop                                       #  9     0xe3c78  1      OPC=nop             
  addq %r15, %r11                           #  10    0xe3c79  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  11    0xe3c7c  3      OPC=jmpq_r64        
  nop                                       #  12    0xe3c7f  1      OPC=nop             
  nop                                       #  13    0xe3c80  1      OPC=nop             
  nop                                       #  14    0xe3c81  1      OPC=nop             
  nop                                       #  15    0xe3c82  1      OPC=nop             
  nop                                       #  16    0xe3c83  1      OPC=nop             
  nop                                       #  17    0xe3c84  1      OPC=nop             
  nop                                       #  18    0xe3c85  1      OPC=nop             
  nop                                       #  19    0xe3c86  1      OPC=nop             
                                                                                         
.size _ZN10__cxxabiv119__foreign_exceptionD2Ev, .-_ZN10__cxxabiv119__foreign_exceptionD2Ev

