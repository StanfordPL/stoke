  .text
  .globl _ZSt17__throw_bad_allocv
  .type _ZSt17__throw_bad_allocv, @function

#! file-offset 0x1271e0
#! rip-offset  0xe71e0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZSt17__throw_bad_allocv:         #        0xe71e0  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe71e0  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe71e5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe71e8  3      OPC=addq_r64_r64    
  nop                              #  4     0xe71eb  1      OPC=nop             
  nop                              #  5     0xe71ec  1      OPC=nop             
  nop                              #  6     0xe71ed  1      OPC=nop             
  nop                              #  7     0xe71ee  1      OPC=nop             
  nop                              #  8     0xe71ef  1      OPC=nop             
  nop                              #  9     0xe71f0  1      OPC=nop             
  nop                              #  10    0xe71f1  1      OPC=nop             
  nop                              #  11    0xe71f2  1      OPC=nop             
  nop                              #  12    0xe71f3  1      OPC=nop             
  nop                              #  13    0xe71f4  1      OPC=nop             
  nop                              #  14    0xe71f5  1      OPC=nop             
  nop                              #  15    0xe71f6  1      OPC=nop             
  nop                              #  16    0xe71f7  1      OPC=nop             
  nop                              #  17    0xe71f8  1      OPC=nop             
  nop                              #  18    0xe71f9  1      OPC=nop             
  nop                              #  19    0xe71fa  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe71fb  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe7200  2      OPC=movl_r32_r32    
  movl $0xe1040, %edx              #  22    0xe7202  5      OPC=movl_r32_imm32  
  movl $0x1003d0e4, %esi           #  23    0xe7207  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe720c  2      OPC=movl_r32_r32    
  movl $0x1003d0c8, (%r15,%rdi,1)  #  25    0xe720e  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe7216  1      OPC=nop             
  nop                              #  27    0xe7217  1      OPC=nop             
  nop                              #  28    0xe7218  1      OPC=nop             
  nop                              #  29    0xe7219  1      OPC=nop             
  nop                              #  30    0xe721a  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe721b  5      OPC=callq_label     
                                                                                
.size _ZSt17__throw_bad_allocv, .-_ZSt17__throw_bad_allocv

