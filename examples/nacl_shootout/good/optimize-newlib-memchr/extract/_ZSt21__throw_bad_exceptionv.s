  .text
  .globl _ZSt21__throw_bad_exceptionv
  .type _ZSt21__throw_bad_exceptionv, @function

#! file-offset 0x127220
#! rip-offset  0xe7220
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZSt21__throw_bad_exceptionv:     #        0xe7220  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe7220  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe7225  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe7228  3      OPC=addq_r64_r64    
  nop                              #  4     0xe722b  1      OPC=nop             
  nop                              #  5     0xe722c  1      OPC=nop             
  nop                              #  6     0xe722d  1      OPC=nop             
  nop                              #  7     0xe722e  1      OPC=nop             
  nop                              #  8     0xe722f  1      OPC=nop             
  nop                              #  9     0xe7230  1      OPC=nop             
  nop                              #  10    0xe7231  1      OPC=nop             
  nop                              #  11    0xe7232  1      OPC=nop             
  nop                              #  12    0xe7233  1      OPC=nop             
  nop                              #  13    0xe7234  1      OPC=nop             
  nop                              #  14    0xe7235  1      OPC=nop             
  nop                              #  15    0xe7236  1      OPC=nop             
  nop                              #  16    0xe7237  1      OPC=nop             
  nop                              #  17    0xe7238  1      OPC=nop             
  nop                              #  18    0xe7239  1      OPC=nop             
  nop                              #  19    0xe723a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe723b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe7240  2      OPC=movl_r32_r32    
  movl $0xe3c00, %edx              #  22    0xe7242  5      OPC=movl_r32_imm32  
  movl $0x1003d404, %esi           #  23    0xe7247  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe724c  2      OPC=movl_r32_r32    
  movl $0x1003d348, (%r15,%rdi,1)  #  25    0xe724e  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe7256  1      OPC=nop             
  nop                              #  27    0xe7257  1      OPC=nop             
  nop                              #  28    0xe7258  1      OPC=nop             
  nop                              #  29    0xe7259  1      OPC=nop             
  nop                              #  30    0xe725a  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe725b  5      OPC=callq_label     
                                                                                
.size _ZSt21__throw_bad_exceptionv, .-_ZSt21__throw_bad_exceptionv

