  .text
  .globl _ZNKSt11__timepunctIcE15_M_date_formatsEPPKc
  .type _ZNKSt11__timepunctIcE15_M_date_formatsEPPKc, @function

#! file-offset 0xb81a0
#! rip-offset  0x781a0
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIcE15_M_date_formatsEPPKc:  #        0x781a0  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x781a0  2      OPC=movl_r32_r32    
  movl %esi, %esi                               #  2     0x781a2  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  3     0x781a4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                   #  4     0x781a6  5      OPC=movl_r32_m32    
  popq %r11                                     #  5     0x781ab  2      OPC=popq_r64_1      
  movl %eax, %eax                               #  6     0x781ad  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %edx                   #  7     0x781af  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  8     0x781b4  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                      #  9     0x781b6  4      OPC=movl_m32_r32    
  nop                                           #  10    0x781ba  1      OPC=nop             
  nop                                           #  11    0x781bb  1      OPC=nop             
  nop                                           #  12    0x781bc  1      OPC=nop             
  nop                                           #  13    0x781bd  1      OPC=nop             
  nop                                           #  14    0x781be  1      OPC=nop             
  nop                                           #  15    0x781bf  1      OPC=nop             
  movl %eax, %eax                               #  16    0x781c0  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                   #  17    0x781c2  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  18    0x781c7  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                   #  19    0x781c9  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                       #  20    0x781ce  7      OPC=andl_r32_imm32  
  nop                                           #  21    0x781d5  1      OPC=nop             
  nop                                           #  22    0x781d6  1      OPC=nop             
  nop                                           #  23    0x781d7  1      OPC=nop             
  nop                                           #  24    0x781d8  1      OPC=nop             
  addq %r15, %r11                               #  25    0x781d9  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  26    0x781dc  3      OPC=jmpq_r64        
  nop                                           #  27    0x781df  1      OPC=nop             
  nop                                           #  28    0x781e0  1      OPC=nop             
  nop                                           #  29    0x781e1  1      OPC=nop             
  nop                                           #  30    0x781e2  1      OPC=nop             
  nop                                           #  31    0x781e3  1      OPC=nop             
  nop                                           #  32    0x781e4  1      OPC=nop             
  nop                                           #  33    0x781e5  1      OPC=nop             
  nop                                           #  34    0x781e6  1      OPC=nop             
                                                                                             
.size _ZNKSt11__timepunctIcE15_M_date_formatsEPPKc, .-_ZNKSt11__timepunctIcE15_M_date_formatsEPPKc

