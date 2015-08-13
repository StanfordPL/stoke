  .text
  .globl _ZN10__cxxabiv119__foreign_exceptionD1Ev
  .type _ZN10__cxxabiv119__foreign_exceptionD1Ev, @function

#! file-offset 0x123260
#! rip-offset  0xe3260
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZN10__cxxabiv119__foreign_exceptionD1Ev:  #        0xe3260  0      OPC=<label>         
  popq %r11                                 #  1     0xe3260  2      OPC=popq_r64_1      
  movl %edi, %edi                           #  2     0xe3262  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  3     0xe3264  2      OPC=movl_r32_r32    
  movl $0x1003d308, (%r15,%rdi,1)           #  4     0xe3266  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d                   #  5     0xe326e  7      OPC=andl_r32_imm32  
  nop                                       #  6     0xe3275  1      OPC=nop             
  nop                                       #  7     0xe3276  1      OPC=nop             
  nop                                       #  8     0xe3277  1      OPC=nop             
  nop                                       #  9     0xe3278  1      OPC=nop             
  addq %r15, %r11                           #  10    0xe3279  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  11    0xe327c  3      OPC=jmpq_r64        
  nop                                       #  12    0xe327f  1      OPC=nop             
  nop                                       #  13    0xe3280  1      OPC=nop             
  nop                                       #  14    0xe3281  1      OPC=nop             
  nop                                       #  15    0xe3282  1      OPC=nop             
  nop                                       #  16    0xe3283  1      OPC=nop             
  nop                                       #  17    0xe3284  1      OPC=nop             
  nop                                       #  18    0xe3285  1      OPC=nop             
  nop                                       #  19    0xe3286  1      OPC=nop             
                                                                                         
.size _ZN10__cxxabiv119__foreign_exceptionD1Ev, .-_ZN10__cxxabiv119__foreign_exceptionD1Ev

