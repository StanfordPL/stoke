  .text
  .globl _ZN10__cxxabiv115__forced_unwindD2Ev
  .type _ZN10__cxxabiv115__forced_unwindD2Ev, @function

#! file-offset 0x123500
#! rip-offset  0xe3500
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZN10__cxxabiv115__forced_unwindD2Ev:  #        0xe3500  0      OPC=<label>         
  popq %r11                             #  1     0xe3500  2      OPC=popq_r64_1      
  movl %edi, %edi                       #  2     0xe3502  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  3     0xe3504  2      OPC=movl_r32_r32    
  movl $0x1003d328, (%r15,%rdi,1)       #  4     0xe3506  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d               #  5     0xe350e  7      OPC=andl_r32_imm32  
  nop                                   #  6     0xe3515  1      OPC=nop             
  nop                                   #  7     0xe3516  1      OPC=nop             
  nop                                   #  8     0xe3517  1      OPC=nop             
  nop                                   #  9     0xe3518  1      OPC=nop             
  addq %r15, %r11                       #  10    0xe3519  3      OPC=addq_r64_r64    
  jmpq %r11                             #  11    0xe351c  3      OPC=jmpq_r64        
  nop                                   #  12    0xe351f  1      OPC=nop             
  nop                                   #  13    0xe3520  1      OPC=nop             
  nop                                   #  14    0xe3521  1      OPC=nop             
  nop                                   #  15    0xe3522  1      OPC=nop             
  nop                                   #  16    0xe3523  1      OPC=nop             
  nop                                   #  17    0xe3524  1      OPC=nop             
  nop                                   #  18    0xe3525  1      OPC=nop             
  nop                                   #  19    0xe3526  1      OPC=nop             
                                                                                     
.size _ZN10__cxxabiv115__forced_unwindD2Ev, .-_ZN10__cxxabiv115__forced_unwindD2Ev

