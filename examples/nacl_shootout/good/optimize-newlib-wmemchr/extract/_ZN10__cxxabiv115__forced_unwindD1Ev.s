  .text
  .globl _ZN10__cxxabiv115__forced_unwindD1Ev
  .type _ZN10__cxxabiv115__forced_unwindD1Ev, @function

#! file-offset 0x123520
#! rip-offset  0xe3520
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZN10__cxxabiv115__forced_unwindD1Ev:  #        0xe3520  0      OPC=<label>         
  popq %r11                             #  1     0xe3520  2      OPC=popq_r64_1      
  movl %edi, %edi                       #  2     0xe3522  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  3     0xe3524  2      OPC=movl_r32_r32    
  movl $0x1003d328, (%r15,%rdi,1)       #  4     0xe3526  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d               #  5     0xe352e  7      OPC=andl_r32_imm32  
  nop                                   #  6     0xe3535  1      OPC=nop             
  nop                                   #  7     0xe3536  1      OPC=nop             
  nop                                   #  8     0xe3537  1      OPC=nop             
  nop                                   #  9     0xe3538  1      OPC=nop             
  addq %r15, %r11                       #  10    0xe3539  3      OPC=addq_r64_r64    
  jmpq %r11                             #  11    0xe353c  3      OPC=jmpq_r64        
  nop                                   #  12    0xe353f  1      OPC=nop             
  nop                                   #  13    0xe3540  1      OPC=nop             
  nop                                   #  14    0xe3541  1      OPC=nop             
  nop                                   #  15    0xe3542  1      OPC=nop             
  nop                                   #  16    0xe3543  1      OPC=nop             
  nop                                   #  17    0xe3544  1      OPC=nop             
  nop                                   #  18    0xe3545  1      OPC=nop             
  nop                                   #  19    0xe3546  1      OPC=nop             
                                                                                     
.size _ZN10__cxxabiv115__forced_unwindD1Ev, .-_ZN10__cxxabiv115__forced_unwindD1Ev

