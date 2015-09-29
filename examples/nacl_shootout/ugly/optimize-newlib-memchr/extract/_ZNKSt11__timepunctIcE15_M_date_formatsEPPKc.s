  .text
  .globl _ZNKSt11__timepunctIcE15_M_date_formatsEPPKc
  .type _ZNKSt11__timepunctIcE15_M_date_formatsEPPKc, @function

#! file-offset 0xb88c0
#! rip-offset  0x788c0
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIcE15_M_date_formatsEPPKc:  #        0x788c0  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x788c0  2      OPC=movl_r32_r32    
  movl %esi, %esi                               #  2     0x788c2  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  3     0x788c4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                   #  4     0x788c6  5      OPC=movl_r32_m32    
  popq %r11                                     #  5     0x788cb  2      OPC=popq_r64_1      
  movl %eax, %eax                               #  6     0x788cd  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %edx                   #  7     0x788cf  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  8     0x788d4  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                      #  9     0x788d6  4      OPC=movl_m32_r32    
  nop                                           #  10    0x788da  1      OPC=nop             
  nop                                           #  11    0x788db  1      OPC=nop             
  nop                                           #  12    0x788dc  1      OPC=nop             
  nop                                           #  13    0x788dd  1      OPC=nop             
  nop                                           #  14    0x788de  1      OPC=nop             
  nop                                           #  15    0x788df  1      OPC=nop             
  movl %eax, %eax                               #  16    0x788e0  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                   #  17    0x788e2  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  18    0x788e7  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                   #  19    0x788e9  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                       #  20    0x788ee  7      OPC=andl_r32_imm32  
  nop                                           #  21    0x788f5  1      OPC=nop             
  nop                                           #  22    0x788f6  1      OPC=nop             
  nop                                           #  23    0x788f7  1      OPC=nop             
  nop                                           #  24    0x788f8  1      OPC=nop             
  addq %r15, %r11                               #  25    0x788f9  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  26    0x788fc  3      OPC=jmpq_r64        
  nop                                           #  27    0x788ff  1      OPC=nop             
  nop                                           #  28    0x78900  1      OPC=nop             
  nop                                           #  29    0x78901  1      OPC=nop             
  nop                                           #  30    0x78902  1      OPC=nop             
  nop                                           #  31    0x78903  1      OPC=nop             
  nop                                           #  32    0x78904  1      OPC=nop             
  nop                                           #  33    0x78905  1      OPC=nop             
  nop                                           #  34    0x78906  1      OPC=nop             
                                                                                             
.size _ZNKSt11__timepunctIcE15_M_date_formatsEPPKc, .-_ZNKSt11__timepunctIcE15_M_date_formatsEPPKc

