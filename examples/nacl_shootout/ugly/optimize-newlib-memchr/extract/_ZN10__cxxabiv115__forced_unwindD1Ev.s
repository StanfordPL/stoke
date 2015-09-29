  .text
  .globl _ZN10__cxxabiv115__forced_unwindD1Ev
  .type _ZN10__cxxabiv115__forced_unwindD1Ev, @function

#! file-offset 0x123c40
#! rip-offset  0xe3c40
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZN10__cxxabiv115__forced_unwindD1Ev:  #        0xe3c40  0      OPC=<label>         
  popq %r11                             #  1     0xe3c40  2      OPC=popq_r64_1      
  movl %edi, %edi                       #  2     0xe3c42  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  3     0xe3c44  2      OPC=movl_r32_r32    
  movl $0x1003d328, (%r15,%rdi,1)       #  4     0xe3c46  8      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d               #  5     0xe3c4e  7      OPC=andl_r32_imm32  
  nop                                   #  6     0xe3c55  1      OPC=nop             
  nop                                   #  7     0xe3c56  1      OPC=nop             
  nop                                   #  8     0xe3c57  1      OPC=nop             
  nop                                   #  9     0xe3c58  1      OPC=nop             
  addq %r15, %r11                       #  10    0xe3c59  3      OPC=addq_r64_r64    
  jmpq %r11                             #  11    0xe3c5c  3      OPC=jmpq_r64        
  nop                                   #  12    0xe3c5f  1      OPC=nop             
  nop                                   #  13    0xe3c60  1      OPC=nop             
  nop                                   #  14    0xe3c61  1      OPC=nop             
  nop                                   #  15    0xe3c62  1      OPC=nop             
  nop                                   #  16    0xe3c63  1      OPC=nop             
  nop                                   #  17    0xe3c64  1      OPC=nop             
  nop                                   #  18    0xe3c65  1      OPC=nop             
  nop                                   #  19    0xe3c66  1      OPC=nop             
                                                                                     
.size _ZN10__cxxabiv115__forced_unwindD1Ev, .-_ZN10__cxxabiv115__forced_unwindD1Ev

