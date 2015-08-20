  .text
  .globl _ZSt16__throw_bad_castv
  .type _ZSt16__throw_bad_castv, @function

#! file-offset 0x126a80
#! rip-offset  0xe6a80
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZSt16__throw_bad_castv:          #        0xe6a80  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe6a80  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe6a85  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe6a88  3      OPC=addq_r64_r64    
  nop                              #  4     0xe6a8b  1      OPC=nop             
  nop                              #  5     0xe6a8c  1      OPC=nop             
  nop                              #  6     0xe6a8d  1      OPC=nop             
  nop                              #  7     0xe6a8e  1      OPC=nop             
  nop                              #  8     0xe6a8f  1      OPC=nop             
  nop                              #  9     0xe6a90  1      OPC=nop             
  nop                              #  10    0xe6a91  1      OPC=nop             
  nop                              #  11    0xe6a92  1      OPC=nop             
  nop                              #  12    0xe6a93  1      OPC=nop             
  nop                              #  13    0xe6a94  1      OPC=nop             
  nop                              #  14    0xe6a95  1      OPC=nop             
  nop                              #  15    0xe6a96  1      OPC=nop             
  nop                              #  16    0xe6a97  1      OPC=nop             
  nop                              #  17    0xe6a98  1      OPC=nop             
  nop                              #  18    0xe6a99  1      OPC=nop             
  nop                              #  19    0xe6a9a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe6a9b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe6aa0  2      OPC=movl_r32_r32    
  movl $0xfda00, %edx              #  22    0xe6aa2  5      OPC=movl_r32_imm32  
  movl $0x1003e900, %esi           #  23    0xe6aa7  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe6aac  2      OPC=movl_r32_r32    
  movl $0x1003e8e8, (%r15,%rdi,1)  #  25    0xe6aae  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe6ab6  1      OPC=nop             
  nop                              #  27    0xe6ab7  1      OPC=nop             
  nop                              #  28    0xe6ab8  1      OPC=nop             
  nop                              #  29    0xe6ab9  1      OPC=nop             
  nop                              #  30    0xe6aba  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe6abb  5      OPC=callq_label     
                                                                                
.size _ZSt16__throw_bad_castv, .-_ZSt16__throw_bad_castv

