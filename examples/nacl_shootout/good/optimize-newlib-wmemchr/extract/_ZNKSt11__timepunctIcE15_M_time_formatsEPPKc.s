  .text
  .globl _ZNKSt11__timepunctIcE15_M_time_formatsEPPKc
  .type _ZNKSt11__timepunctIcE15_M_time_formatsEPPKc, @function

#! file-offset 0xb81e0
#! rip-offset  0x781e0
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIcE15_M_time_formatsEPPKc:  #        0x781e0  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x781e0  2      OPC=movl_r32_r32    
  movl %esi, %esi                               #  2     0x781e2  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  3     0x781e4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                   #  4     0x781e6  5      OPC=movl_r32_m32    
  popq %r11                                     #  5     0x781eb  2      OPC=popq_r64_1      
  movl %eax, %eax                               #  6     0x781ed  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %edx                  #  7     0x781ef  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  8     0x781f4  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                      #  9     0x781f6  4      OPC=movl_m32_r32    
  nop                                           #  10    0x781fa  1      OPC=nop             
  nop                                           #  11    0x781fb  1      OPC=nop             
  nop                                           #  12    0x781fc  1      OPC=nop             
  nop                                           #  13    0x781fd  1      OPC=nop             
  nop                                           #  14    0x781fe  1      OPC=nop             
  nop                                           #  15    0x781ff  1      OPC=nop             
  movl %eax, %eax                               #  16    0x78200  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                  #  17    0x78202  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  18    0x78207  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                   #  19    0x78209  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                       #  20    0x7820e  7      OPC=andl_r32_imm32  
  nop                                           #  21    0x78215  1      OPC=nop             
  nop                                           #  22    0x78216  1      OPC=nop             
  nop                                           #  23    0x78217  1      OPC=nop             
  nop                                           #  24    0x78218  1      OPC=nop             
  addq %r15, %r11                               #  25    0x78219  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  26    0x7821c  3      OPC=jmpq_r64        
  nop                                           #  27    0x7821f  1      OPC=nop             
  nop                                           #  28    0x78220  1      OPC=nop             
  nop                                           #  29    0x78221  1      OPC=nop             
  nop                                           #  30    0x78222  1      OPC=nop             
  nop                                           #  31    0x78223  1      OPC=nop             
  nop                                           #  32    0x78224  1      OPC=nop             
  nop                                           #  33    0x78225  1      OPC=nop             
  nop                                           #  34    0x78226  1      OPC=nop             
                                                                                             
.size _ZNKSt11__timepunctIcE15_M_time_formatsEPPKc, .-_ZNKSt11__timepunctIcE15_M_time_formatsEPPKc

