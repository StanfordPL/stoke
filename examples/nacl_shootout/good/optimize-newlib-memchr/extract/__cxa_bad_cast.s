  .text
  .globl __cxa_bad_cast
  .type __cxa_bad_cast, @function

#! file-offset 0x122860
#! rip-offset  0xe2860
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.__cxa_bad_cast:                   #        0xe2860  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe2860  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe2865  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe2868  3      OPC=addq_r64_r64    
  nop                              #  4     0xe286b  1      OPC=nop             
  nop                              #  5     0xe286c  1      OPC=nop             
  nop                              #  6     0xe286d  1      OPC=nop             
  nop                              #  7     0xe286e  1      OPC=nop             
  nop                              #  8     0xe286f  1      OPC=nop             
  nop                              #  9     0xe2870  1      OPC=nop             
  nop                              #  10    0xe2871  1      OPC=nop             
  nop                              #  11    0xe2872  1      OPC=nop             
  nop                              #  12    0xe2873  1      OPC=nop             
  nop                              #  13    0xe2874  1      OPC=nop             
  nop                              #  14    0xe2875  1      OPC=nop             
  nop                              #  15    0xe2876  1      OPC=nop             
  nop                              #  16    0xe2877  1      OPC=nop             
  nop                              #  17    0xe2878  1      OPC=nop             
  nop                              #  18    0xe2879  1      OPC=nop             
  nop                              #  19    0xe287a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe287b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe2880  2      OPC=movl_r32_r32    
  movl $0xfe120, %edx              #  22    0xe2882  5      OPC=movl_r32_imm32  
  movl $0x1003e900, %esi           #  23    0xe2887  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe288c  2      OPC=movl_r32_r32    
  movl $0x1003e8e8, (%r15,%rdi,1)  #  25    0xe288e  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe2896  1      OPC=nop             
  nop                              #  27    0xe2897  1      OPC=nop             
  nop                              #  28    0xe2898  1      OPC=nop             
  nop                              #  29    0xe2899  1      OPC=nop             
  nop                              #  30    0xe289a  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe289b  5      OPC=callq_label     
                                                                                
.size __cxa_bad_cast, .-__cxa_bad_cast

