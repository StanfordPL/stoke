  .text
  .globl _ZSt18__throw_bad_typeidv
  .type _ZSt18__throw_bad_typeidv, @function

#! file-offset 0x126a40
#! rip-offset  0xe6a40
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZSt18__throw_bad_typeidv:        #        0xe6a40  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe6a40  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe6a45  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe6a48  3      OPC=addq_r64_r64    
  nop                              #  4     0xe6a4b  1      OPC=nop             
  nop                              #  5     0xe6a4c  1      OPC=nop             
  nop                              #  6     0xe6a4d  1      OPC=nop             
  nop                              #  7     0xe6a4e  1      OPC=nop             
  nop                              #  8     0xe6a4f  1      OPC=nop             
  nop                              #  9     0xe6a50  1      OPC=nop             
  nop                              #  10    0xe6a51  1      OPC=nop             
  nop                              #  11    0xe6a52  1      OPC=nop             
  nop                              #  12    0xe6a53  1      OPC=nop             
  nop                              #  13    0xe6a54  1      OPC=nop             
  nop                              #  14    0xe6a55  1      OPC=nop             
  nop                              #  15    0xe6a56  1      OPC=nop             
  nop                              #  16    0xe6a57  1      OPC=nop             
  nop                              #  17    0xe6a58  1      OPC=nop             
  nop                              #  18    0xe6a59  1      OPC=nop             
  nop                              #  19    0xe6a5a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe6a5b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe6a60  2      OPC=movl_r32_r32    
  movl $0xfd960, %edx              #  22    0xe6a62  5      OPC=movl_r32_imm32  
  movl $0x1003e8c4, %esi           #  23    0xe6a67  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe6a6c  2      OPC=movl_r32_r32    
  movl $0x1003e8a8, (%r15,%rdi,1)  #  25    0xe6a6e  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe6a76  1      OPC=nop             
  nop                              #  27    0xe6a77  1      OPC=nop             
  nop                              #  28    0xe6a78  1      OPC=nop             
  nop                              #  29    0xe6a79  1      OPC=nop             
  nop                              #  30    0xe6a7a  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe6a7b  5      OPC=callq_label     
                                                                                
.size _ZSt18__throw_bad_typeidv, .-_ZSt18__throw_bad_typeidv

