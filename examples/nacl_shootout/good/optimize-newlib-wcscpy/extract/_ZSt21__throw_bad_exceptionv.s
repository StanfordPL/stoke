  .text
  .globl _ZSt21__throw_bad_exceptionv
  .type _ZSt21__throw_bad_exceptionv, @function

#! file-offset 0x126800
#! rip-offset  0xe6800
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZSt21__throw_bad_exceptionv:     #        0xe6800  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe6800  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe6805  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe6808  3      OPC=addq_r64_r64    
  nop                              #  4     0xe680b  1      OPC=nop             
  nop                              #  5     0xe680c  1      OPC=nop             
  nop                              #  6     0xe680d  1      OPC=nop             
  nop                              #  7     0xe680e  1      OPC=nop             
  nop                              #  8     0xe680f  1      OPC=nop             
  nop                              #  9     0xe6810  1      OPC=nop             
  nop                              #  10    0xe6811  1      OPC=nop             
  nop                              #  11    0xe6812  1      OPC=nop             
  nop                              #  12    0xe6813  1      OPC=nop             
  nop                              #  13    0xe6814  1      OPC=nop             
  nop                              #  14    0xe6815  1      OPC=nop             
  nop                              #  15    0xe6816  1      OPC=nop             
  nop                              #  16    0xe6817  1      OPC=nop             
  nop                              #  17    0xe6818  1      OPC=nop             
  nop                              #  18    0xe6819  1      OPC=nop             
  nop                              #  19    0xe681a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe681b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe6820  2      OPC=movl_r32_r32    
  movl $0xe31e0, %edx              #  22    0xe6822  5      OPC=movl_r32_imm32  
  movl $0x1003d404, %esi           #  23    0xe6827  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe682c  2      OPC=movl_r32_r32    
  movl $0x1003d348, (%r15,%rdi,1)  #  25    0xe682e  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe6836  1      OPC=nop             
  nop                              #  27    0xe6837  1      OPC=nop             
  nop                              #  28    0xe6838  1      OPC=nop             
  nop                              #  29    0xe6839  1      OPC=nop             
  nop                              #  30    0xe683a  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe683b  5      OPC=callq_label     
                                                                                
.size _ZSt21__throw_bad_exceptionv, .-_ZSt21__throw_bad_exceptionv

