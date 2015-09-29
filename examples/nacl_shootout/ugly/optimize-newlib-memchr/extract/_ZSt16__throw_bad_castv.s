  .text
  .globl _ZSt16__throw_bad_castv
  .type _ZSt16__throw_bad_castv, @function

#! file-offset 0x1271a0
#! rip-offset  0xe71a0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZSt16__throw_bad_castv:          #        0xe71a0  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe71a0  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe71a5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe71a8  3      OPC=addq_r64_r64    
  nop                              #  4     0xe71ab  1      OPC=nop             
  nop                              #  5     0xe71ac  1      OPC=nop             
  nop                              #  6     0xe71ad  1      OPC=nop             
  nop                              #  7     0xe71ae  1      OPC=nop             
  nop                              #  8     0xe71af  1      OPC=nop             
  nop                              #  9     0xe71b0  1      OPC=nop             
  nop                              #  10    0xe71b1  1      OPC=nop             
  nop                              #  11    0xe71b2  1      OPC=nop             
  nop                              #  12    0xe71b3  1      OPC=nop             
  nop                              #  13    0xe71b4  1      OPC=nop             
  nop                              #  14    0xe71b5  1      OPC=nop             
  nop                              #  15    0xe71b6  1      OPC=nop             
  nop                              #  16    0xe71b7  1      OPC=nop             
  nop                              #  17    0xe71b8  1      OPC=nop             
  nop                              #  18    0xe71b9  1      OPC=nop             
  nop                              #  19    0xe71ba  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe71bb  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe71c0  2      OPC=movl_r32_r32    
  movl $0xfe120, %edx              #  22    0xe71c2  5      OPC=movl_r32_imm32  
  movl $0x1003e900, %esi           #  23    0xe71c7  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe71cc  2      OPC=movl_r32_r32    
  movl $0x1003e8e8, (%r15,%rdi,1)  #  25    0xe71ce  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe71d6  1      OPC=nop             
  nop                              #  27    0xe71d7  1      OPC=nop             
  nop                              #  28    0xe71d8  1      OPC=nop             
  nop                              #  29    0xe71d9  1      OPC=nop             
  nop                              #  30    0xe71da  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe71db  5      OPC=callq_label     
                                                                                
.size _ZSt16__throw_bad_castv, .-_ZSt16__throw_bad_castv

