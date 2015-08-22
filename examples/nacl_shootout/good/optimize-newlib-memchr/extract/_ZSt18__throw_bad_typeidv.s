  .text
  .globl _ZSt18__throw_bad_typeidv
  .type _ZSt18__throw_bad_typeidv, @function

#! file-offset 0x127160
#! rip-offset  0xe7160
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZSt18__throw_bad_typeidv:        #        0xe7160  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe7160  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe7165  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe7168  3      OPC=addq_r64_r64    
  nop                              #  4     0xe716b  1      OPC=nop             
  nop                              #  5     0xe716c  1      OPC=nop             
  nop                              #  6     0xe716d  1      OPC=nop             
  nop                              #  7     0xe716e  1      OPC=nop             
  nop                              #  8     0xe716f  1      OPC=nop             
  nop                              #  9     0xe7170  1      OPC=nop             
  nop                              #  10    0xe7171  1      OPC=nop             
  nop                              #  11    0xe7172  1      OPC=nop             
  nop                              #  12    0xe7173  1      OPC=nop             
  nop                              #  13    0xe7174  1      OPC=nop             
  nop                              #  14    0xe7175  1      OPC=nop             
  nop                              #  15    0xe7176  1      OPC=nop             
  nop                              #  16    0xe7177  1      OPC=nop             
  nop                              #  17    0xe7178  1      OPC=nop             
  nop                              #  18    0xe7179  1      OPC=nop             
  nop                              #  19    0xe717a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe717b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe7180  2      OPC=movl_r32_r32    
  movl $0xfe080, %edx              #  22    0xe7182  5      OPC=movl_r32_imm32  
  movl $0x1003e8c4, %esi           #  23    0xe7187  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe718c  2      OPC=movl_r32_r32    
  movl $0x1003e8a8, (%r15,%rdi,1)  #  25    0xe718e  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe7196  1      OPC=nop             
  nop                              #  27    0xe7197  1      OPC=nop             
  nop                              #  28    0xe7198  1      OPC=nop             
  nop                              #  29    0xe7199  1      OPC=nop             
  nop                              #  30    0xe719a  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe719b  5      OPC=callq_label     
                                                                                
.size _ZSt18__throw_bad_typeidv, .-_ZSt18__throw_bad_typeidv

