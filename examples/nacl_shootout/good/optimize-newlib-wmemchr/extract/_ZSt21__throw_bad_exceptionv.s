  .text
  .globl _ZSt21__throw_bad_exceptionv
  .type _ZSt21__throw_bad_exceptionv, @function

#! file-offset 0x126b00
#! rip-offset  0xe6b00
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZSt21__throw_bad_exceptionv:     #        0xe6b00  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe6b00  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe6b05  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe6b08  3      OPC=addq_r64_r64    
  nop                              #  4     0xe6b0b  1      OPC=nop             
  nop                              #  5     0xe6b0c  1      OPC=nop             
  nop                              #  6     0xe6b0d  1      OPC=nop             
  nop                              #  7     0xe6b0e  1      OPC=nop             
  nop                              #  8     0xe6b0f  1      OPC=nop             
  nop                              #  9     0xe6b10  1      OPC=nop             
  nop                              #  10    0xe6b11  1      OPC=nop             
  nop                              #  11    0xe6b12  1      OPC=nop             
  nop                              #  12    0xe6b13  1      OPC=nop             
  nop                              #  13    0xe6b14  1      OPC=nop             
  nop                              #  14    0xe6b15  1      OPC=nop             
  nop                              #  15    0xe6b16  1      OPC=nop             
  nop                              #  16    0xe6b17  1      OPC=nop             
  nop                              #  17    0xe6b18  1      OPC=nop             
  nop                              #  18    0xe6b19  1      OPC=nop             
  nop                              #  19    0xe6b1a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe6b1b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe6b20  2      OPC=movl_r32_r32    
  movl $0xe34e0, %edx              #  22    0xe6b22  5      OPC=movl_r32_imm32  
  movl $0x1003d404, %esi           #  23    0xe6b27  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe6b2c  2      OPC=movl_r32_r32    
  movl $0x1003d348, (%r15,%rdi,1)  #  25    0xe6b2e  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe6b36  1      OPC=nop             
  nop                              #  27    0xe6b37  1      OPC=nop             
  nop                              #  28    0xe6b38  1      OPC=nop             
  nop                              #  29    0xe6b39  1      OPC=nop             
  nop                              #  30    0xe6b3a  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe6b3b  5      OPC=callq_label     
                                                                                
.size _ZSt21__throw_bad_exceptionv, .-_ZSt21__throw_bad_exceptionv

