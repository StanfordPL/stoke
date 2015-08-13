  .text
  .globl __cxa_bad_typeid
  .type __cxa_bad_typeid, @function

#! file-offset 0x121e00
#! rip-offset  0xe1e00
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.__cxa_bad_typeid:                 #        0xe1e00  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe1e00  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe1e05  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe1e08  3      OPC=addq_r64_r64    
  nop                              #  4     0xe1e0b  1      OPC=nop             
  nop                              #  5     0xe1e0c  1      OPC=nop             
  nop                              #  6     0xe1e0d  1      OPC=nop             
  nop                              #  7     0xe1e0e  1      OPC=nop             
  nop                              #  8     0xe1e0f  1      OPC=nop             
  nop                              #  9     0xe1e10  1      OPC=nop             
  nop                              #  10    0xe1e11  1      OPC=nop             
  nop                              #  11    0xe1e12  1      OPC=nop             
  nop                              #  12    0xe1e13  1      OPC=nop             
  nop                              #  13    0xe1e14  1      OPC=nop             
  nop                              #  14    0xe1e15  1      OPC=nop             
  nop                              #  15    0xe1e16  1      OPC=nop             
  nop                              #  16    0xe1e17  1      OPC=nop             
  nop                              #  17    0xe1e18  1      OPC=nop             
  nop                              #  18    0xe1e19  1      OPC=nop             
  nop                              #  19    0xe1e1a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe1e1b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe1e20  2      OPC=movl_r32_r32    
  movl $0xfd660, %edx              #  22    0xe1e22  5      OPC=movl_r32_imm32  
  movl $0x1003e8c4, %esi           #  23    0xe1e27  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe1e2c  2      OPC=movl_r32_r32    
  movl $0x1003e8a8, (%r15,%rdi,1)  #  25    0xe1e2e  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe1e36  1      OPC=nop             
  nop                              #  27    0xe1e37  1      OPC=nop             
  nop                              #  28    0xe1e38  1      OPC=nop             
  nop                              #  29    0xe1e39  1      OPC=nop             
  nop                              #  30    0xe1e3a  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe1e3b  5      OPC=callq_label     
                                                                                
.size __cxa_bad_typeid, .-__cxa_bad_typeid

