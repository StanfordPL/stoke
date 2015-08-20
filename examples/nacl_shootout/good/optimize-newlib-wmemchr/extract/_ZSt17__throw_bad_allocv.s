  .text
  .globl _ZSt17__throw_bad_allocv
  .type _ZSt17__throw_bad_allocv, @function

#! file-offset 0x126ac0
#! rip-offset  0xe6ac0
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZSt17__throw_bad_allocv:         #        0xe6ac0  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe6ac0  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe6ac5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe6ac8  3      OPC=addq_r64_r64    
  nop                              #  4     0xe6acb  1      OPC=nop             
  nop                              #  5     0xe6acc  1      OPC=nop             
  nop                              #  6     0xe6acd  1      OPC=nop             
  nop                              #  7     0xe6ace  1      OPC=nop             
  nop                              #  8     0xe6acf  1      OPC=nop             
  nop                              #  9     0xe6ad0  1      OPC=nop             
  nop                              #  10    0xe6ad1  1      OPC=nop             
  nop                              #  11    0xe6ad2  1      OPC=nop             
  nop                              #  12    0xe6ad3  1      OPC=nop             
  nop                              #  13    0xe6ad4  1      OPC=nop             
  nop                              #  14    0xe6ad5  1      OPC=nop             
  nop                              #  15    0xe6ad6  1      OPC=nop             
  nop                              #  16    0xe6ad7  1      OPC=nop             
  nop                              #  17    0xe6ad8  1      OPC=nop             
  nop                              #  18    0xe6ad9  1      OPC=nop             
  nop                              #  19    0xe6ada  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe6adb  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe6ae0  2      OPC=movl_r32_r32    
  movl $0xe0920, %edx              #  22    0xe6ae2  5      OPC=movl_r32_imm32  
  movl $0x1003d0e4, %esi           #  23    0xe6ae7  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe6aec  2      OPC=movl_r32_r32    
  movl $0x1003d0c8, (%r15,%rdi,1)  #  25    0xe6aee  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe6af6  1      OPC=nop             
  nop                              #  27    0xe6af7  1      OPC=nop             
  nop                              #  28    0xe6af8  1      OPC=nop             
  nop                              #  29    0xe6af9  1      OPC=nop             
  nop                              #  30    0xe6afa  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe6afb  5      OPC=callq_label     
                                                                                
.size _ZSt17__throw_bad_allocv, .-_ZSt17__throw_bad_allocv

