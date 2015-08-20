  .text
  .globl __cxa_bad_cast
  .type __cxa_bad_cast, @function

#! file-offset 0x122140
#! rip-offset  0xe2140
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.__cxa_bad_cast:                   #        0xe2140  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe2140  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe2145  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe2148  3      OPC=addq_r64_r64    
  nop                              #  4     0xe214b  1      OPC=nop             
  nop                              #  5     0xe214c  1      OPC=nop             
  nop                              #  6     0xe214d  1      OPC=nop             
  nop                              #  7     0xe214e  1      OPC=nop             
  nop                              #  8     0xe214f  1      OPC=nop             
  nop                              #  9     0xe2150  1      OPC=nop             
  nop                              #  10    0xe2151  1      OPC=nop             
  nop                              #  11    0xe2152  1      OPC=nop             
  nop                              #  12    0xe2153  1      OPC=nop             
  nop                              #  13    0xe2154  1      OPC=nop             
  nop                              #  14    0xe2155  1      OPC=nop             
  nop                              #  15    0xe2156  1      OPC=nop             
  nop                              #  16    0xe2157  1      OPC=nop             
  nop                              #  17    0xe2158  1      OPC=nop             
  nop                              #  18    0xe2159  1      OPC=nop             
  nop                              #  19    0xe215a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe215b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe2160  2      OPC=movl_r32_r32    
  movl $0xfda00, %edx              #  22    0xe2162  5      OPC=movl_r32_imm32  
  movl $0x1003e900, %esi           #  23    0xe2167  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe216c  2      OPC=movl_r32_r32    
  movl $0x1003e8e8, (%r15,%rdi,1)  #  25    0xe216e  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe2176  1      OPC=nop             
  nop                              #  27    0xe2177  1      OPC=nop             
  nop                              #  28    0xe2178  1      OPC=nop             
  nop                              #  29    0xe2179  1      OPC=nop             
  nop                              #  30    0xe217a  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe217b  5      OPC=callq_label     
                                                                                
.size __cxa_bad_cast, .-__cxa_bad_cast

