  .text
  .globl _ZNKSt11__timepunctIwE15_M_time_formatsEPPKw
  .type _ZNKSt11__timepunctIwE15_M_time_formatsEPPKw, @function

#! file-offset 0xf18a0
#! rip-offset  0xb18a0
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE15_M_time_formatsEPPKw:  #        0xb18a0  0      OPC=<label>         
  movl %edi, %edi                               #  1     0xb18a0  2      OPC=movl_r32_r32    
  movl %esi, %esi                               #  2     0xb18a2  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  3     0xb18a4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                   #  4     0xb18a6  5      OPC=movl_r32_m32    
  popq %r11                                     #  5     0xb18ab  2      OPC=popq_r64_1      
  movl %eax, %eax                               #  6     0xb18ad  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %edx                  #  7     0xb18af  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  8     0xb18b4  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                      #  9     0xb18b6  4      OPC=movl_m32_r32    
  nop                                           #  10    0xb18ba  1      OPC=nop             
  nop                                           #  11    0xb18bb  1      OPC=nop             
  nop                                           #  12    0xb18bc  1      OPC=nop             
  nop                                           #  13    0xb18bd  1      OPC=nop             
  nop                                           #  14    0xb18be  1      OPC=nop             
  nop                                           #  15    0xb18bf  1      OPC=nop             
  movl %eax, %eax                               #  16    0xb18c0  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                  #  17    0xb18c2  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  18    0xb18c7  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                   #  19    0xb18c9  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                       #  20    0xb18ce  7      OPC=andl_r32_imm32  
  nop                                           #  21    0xb18d5  1      OPC=nop             
  nop                                           #  22    0xb18d6  1      OPC=nop             
  nop                                           #  23    0xb18d7  1      OPC=nop             
  nop                                           #  24    0xb18d8  1      OPC=nop             
  addq %r15, %r11                               #  25    0xb18d9  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  26    0xb18dc  3      OPC=jmpq_r64        
  nop                                           #  27    0xb18df  1      OPC=nop             
  nop                                           #  28    0xb18e0  1      OPC=nop             
  nop                                           #  29    0xb18e1  1      OPC=nop             
  nop                                           #  30    0xb18e2  1      OPC=nop             
  nop                                           #  31    0xb18e3  1      OPC=nop             
  nop                                           #  32    0xb18e4  1      OPC=nop             
  nop                                           #  33    0xb18e5  1      OPC=nop             
  nop                                           #  34    0xb18e6  1      OPC=nop             
                                                                                             
.size _ZNKSt11__timepunctIwE15_M_time_formatsEPPKw, .-_ZNKSt11__timepunctIwE15_M_time_formatsEPPKw

