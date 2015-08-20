  .text
  .globl _ZN10__cxxabiv119__foreign_exceptionD1Ev
  .type _ZN10__cxxabiv119__foreign_exceptionD1Ev, @function

#! file-offset 0x123560
#! rip-offset  0xe3560
#! capacity    32 bytes

# Text                                      #  Line  RIP      Bytes  Opcode              
._ZN10__cxxabiv119__foreign_exceptionD1Ev:  #        0xe3560  0      OPC=<label>         
  popq %r11                                 #  1     0xe3560  2      OPC=popq_r64_1      
  movl %edi, %edi                           #  2     0xe3562  2      OPC=movl_r32_r32    
  movl %edi, %edi                           #  3     0xe3564  2      OPC=movl_r32_r32    
  movl $0x1003d308, (%r15,%rdi,1)           #  4     0xe3566  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d                   #  5     0xe356e  7      OPC=andl_r32_imm32  
  nop                                       #  6     0xe3575  1      OPC=nop             
  nop                                       #  7     0xe3576  1      OPC=nop             
  nop                                       #  8     0xe3577  1      OPC=nop             
  nop                                       #  9     0xe3578  1      OPC=nop             
  addq %r15, %r11                           #  10    0xe3579  3      OPC=addq_r64_r64    
  jmpq %r11                                 #  11    0xe357c  3      OPC=jmpq_r64        
  nop                                       #  12    0xe357f  1      OPC=nop             
  nop                                       #  13    0xe3580  1      OPC=nop             
  nop                                       #  14    0xe3581  1      OPC=nop             
  nop                                       #  15    0xe3582  1      OPC=nop             
  nop                                       #  16    0xe3583  1      OPC=nop             
  nop                                       #  17    0xe3584  1      OPC=nop             
  nop                                       #  18    0xe3585  1      OPC=nop             
  nop                                       #  19    0xe3586  1      OPC=nop             
                                                                                         
.size _ZN10__cxxabiv119__foreign_exceptionD1Ev, .-_ZN10__cxxabiv119__foreign_exceptionD1Ev

