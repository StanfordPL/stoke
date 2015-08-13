  .text
  .globl __cxa_bad_cast
  .type __cxa_bad_cast, @function

#! file-offset 0x121e40
#! rip-offset  0xe1e40
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.__cxa_bad_cast:                   #        0xe1e40  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe1e40  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe1e45  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe1e48  3      OPC=addq_r64_r64    
  nop                              #  4     0xe1e4b  1      OPC=nop             
  nop                              #  5     0xe1e4c  1      OPC=nop             
  nop                              #  6     0xe1e4d  1      OPC=nop             
  nop                              #  7     0xe1e4e  1      OPC=nop             
  nop                              #  8     0xe1e4f  1      OPC=nop             
  nop                              #  9     0xe1e50  1      OPC=nop             
  nop                              #  10    0xe1e51  1      OPC=nop             
  nop                              #  11    0xe1e52  1      OPC=nop             
  nop                              #  12    0xe1e53  1      OPC=nop             
  nop                              #  13    0xe1e54  1      OPC=nop             
  nop                              #  14    0xe1e55  1      OPC=nop             
  nop                              #  15    0xe1e56  1      OPC=nop             
  nop                              #  16    0xe1e57  1      OPC=nop             
  nop                              #  17    0xe1e58  1      OPC=nop             
  nop                              #  18    0xe1e59  1      OPC=nop             
  nop                              #  19    0xe1e5a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe1e5b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe1e60  2      OPC=movl_r32_r32    
  movl $0xfd700, %edx              #  22    0xe1e62  5      OPC=movl_r32_imm32  
  movl $0x1003e900, %esi           #  23    0xe1e67  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe1e6c  2      OPC=movl_r32_r32    
  movl $0x1003e8e8, (%r15,%rdi,1)  #  25    0xe1e6e  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe1e76  1      OPC=nop             
  nop                              #  27    0xe1e77  1      OPC=nop             
  nop                              #  28    0xe1e78  1      OPC=nop             
  nop                              #  29    0xe1e79  1      OPC=nop             
  nop                              #  30    0xe1e7a  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe1e7b  5      OPC=callq_label     
                                                                                
.size __cxa_bad_cast, .-__cxa_bad_cast

