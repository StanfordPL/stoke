  .text
  .globl __cxa_bad_typeid
  .type __cxa_bad_typeid, @function

#! file-offset 0x122100
#! rip-offset  0xe2100
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.__cxa_bad_typeid:                 #        0xe2100  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe2100  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe2105  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe2108  3      OPC=addq_r64_r64    
  nop                              #  4     0xe210b  1      OPC=nop             
  nop                              #  5     0xe210c  1      OPC=nop             
  nop                              #  6     0xe210d  1      OPC=nop             
  nop                              #  7     0xe210e  1      OPC=nop             
  nop                              #  8     0xe210f  1      OPC=nop             
  nop                              #  9     0xe2110  1      OPC=nop             
  nop                              #  10    0xe2111  1      OPC=nop             
  nop                              #  11    0xe2112  1      OPC=nop             
  nop                              #  12    0xe2113  1      OPC=nop             
  nop                              #  13    0xe2114  1      OPC=nop             
  nop                              #  14    0xe2115  1      OPC=nop             
  nop                              #  15    0xe2116  1      OPC=nop             
  nop                              #  16    0xe2117  1      OPC=nop             
  nop                              #  17    0xe2118  1      OPC=nop             
  nop                              #  18    0xe2119  1      OPC=nop             
  nop                              #  19    0xe211a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe211b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe2120  2      OPC=movl_r32_r32    
  movl $0xfd960, %edx              #  22    0xe2122  5      OPC=movl_r32_imm32  
  movl $0x1003e8c4, %esi           #  23    0xe2127  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe212c  2      OPC=movl_r32_r32    
  movl $0x1003e8a8, (%r15,%rdi,1)  #  25    0xe212e  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe2136  1      OPC=nop             
  nop                              #  27    0xe2137  1      OPC=nop             
  nop                              #  28    0xe2138  1      OPC=nop             
  nop                              #  29    0xe2139  1      OPC=nop             
  nop                              #  30    0xe213a  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe213b  5      OPC=callq_label     
                                                                                
.size __cxa_bad_typeid, .-__cxa_bad_typeid

