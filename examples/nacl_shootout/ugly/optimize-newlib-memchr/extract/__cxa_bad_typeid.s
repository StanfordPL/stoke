  .text
  .globl __cxa_bad_typeid
  .type __cxa_bad_typeid, @function

#! file-offset 0x122820
#! rip-offset  0xe2820
#! capacity    64 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
.__cxa_bad_typeid:                 #        0xe2820  0      OPC=<label>         
  movl $0x4, %edi                  #  1     0xe2820  5      OPC=movl_r32_imm32  
  subl $0x8, %esp                  #  2     0xe2825  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  3     0xe2828  3      OPC=addq_r64_r64    
  nop                              #  4     0xe282b  1      OPC=nop             
  nop                              #  5     0xe282c  1      OPC=nop             
  nop                              #  6     0xe282d  1      OPC=nop             
  nop                              #  7     0xe282e  1      OPC=nop             
  nop                              #  8     0xe282f  1      OPC=nop             
  nop                              #  9     0xe2830  1      OPC=nop             
  nop                              #  10    0xe2831  1      OPC=nop             
  nop                              #  11    0xe2832  1      OPC=nop             
  nop                              #  12    0xe2833  1      OPC=nop             
  nop                              #  13    0xe2834  1      OPC=nop             
  nop                              #  14    0xe2835  1      OPC=nop             
  nop                              #  15    0xe2836  1      OPC=nop             
  nop                              #  16    0xe2837  1      OPC=nop             
  nop                              #  17    0xe2838  1      OPC=nop             
  nop                              #  18    0xe2839  1      OPC=nop             
  nop                              #  19    0xe283a  1      OPC=nop             
  callq .__cxa_allocate_exception  #  20    0xe283b  5      OPC=callq_label     
  movl %eax, %edi                  #  21    0xe2840  2      OPC=movl_r32_r32    
  movl $0xfe080, %edx              #  22    0xe2842  5      OPC=movl_r32_imm32  
  movl $0x1003e8c4, %esi           #  23    0xe2847  5      OPC=movl_r32_imm32  
  movl %edi, %edi                  #  24    0xe284c  2      OPC=movl_r32_r32    
  movl $0x1003e8a8, (%r15,%rdi,1)  #  25    0xe284e  8      OPC=movl_m32_imm32  
  nop                              #  26    0xe2856  1      OPC=nop             
  nop                              #  27    0xe2857  1      OPC=nop             
  nop                              #  28    0xe2858  1      OPC=nop             
  nop                              #  29    0xe2859  1      OPC=nop             
  nop                              #  30    0xe285a  1      OPC=nop             
  callq .__cxa_throw               #  31    0xe285b  5      OPC=callq_label     
                                                                                
.size __cxa_bad_typeid, .-__cxa_bad_typeid

