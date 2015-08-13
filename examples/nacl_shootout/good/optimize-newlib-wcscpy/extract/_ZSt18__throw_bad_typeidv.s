  .text
  .globl _ZSt18__throw_bad_typeidv
  .type _ZSt18__throw_bad_typeidv, @function

#! file-offset 0x126740
#! rip-offset  0xe6740
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZSt18__throw_bad_typeidv:        #        0xe6740  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe6740  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe6745  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe6748  3      OPC=addq_r64_r64    
  nop                              #  4     0xe674b  1      OPC=nop             
  nop                              #  5     0xe674c  1      OPC=nop             
  nop                              #  6     0xe674d  1      OPC=nop             
  nop                              #  7     0xe674e  1      OPC=nop             
  nop                              #  8     0xe674f  1      OPC=nop             
  nop                              #  9     0xe6750  1      OPC=nop             
  nop                              #  10    0xe6751  1      OPC=nop             
  nop                              #  11    0xe6752  1      OPC=nop             
  nop                              #  12    0xe6753  1      OPC=nop             
  nop                              #  13    0xe6754  1      OPC=nop             
  nop                              #  14    0xe6755  1      OPC=nop             
  nop                              #  15    0xe6756  1      OPC=nop             
  nop                              #  16    0xe6757  1      OPC=nop             
  nop                              #  17    0xe6758  1      OPC=nop             
  nop                              #  18    0xe6759  1      OPC=nop             
  nop                              #  19    0xe675a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe675b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe6760  2      OPC=movl_r32_r32    
  movl $0xfd660, %edx              #  22    0xe6762  5      OPC=movl_r32_imm32  
  movl $0x1003e8c4, %esi           #  23    0xe6767  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe676c  2      OPC=movl_r32_r32    
  movl $0x1003e8a8, (%r15,%rdi,1)  #  25    0xe676e  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe6776  1      OPC=nop             
  nop                              #  27    0xe6777  1      OPC=nop             
  nop                              #  28    0xe6778  1      OPC=nop             
  nop                              #  29    0xe6779  1      OPC=nop             
  nop                              #  30    0xe677a  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe677b  5      OPC=callq_label     
                                                                                
.size _ZSt18__throw_bad_typeidv, .-_ZSt18__throw_bad_typeidv

