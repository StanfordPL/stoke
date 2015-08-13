  .text
  .globl _ZNKSt11__timepunctIwE15_M_time_formatsEPPKw
  .type _ZNKSt11__timepunctIwE15_M_time_formatsEPPKw, @function

#! file-offset 0xf0e80
#! rip-offset  0xb0e80
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE15_M_time_formatsEPPKw:  #        0xb0e80  0      OPC=<label>         
  movl %edi, %edi                               #  1     0xb0e80  2      OPC=movl_r32_r32    
  movl %esi, %esi                               #  2     0xb0e82  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  3     0xb0e84  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                   #  4     0xb0e86  5      OPC=movl_r32_m32    
  popq %r11                                     #  5     0xb0e8b  2      OPC=popq_r64_1      
  movl %eax, %eax                               #  6     0xb0e8d  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %edx                  #  7     0xb0e8f  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  8     0xb0e94  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                      #  9     0xb0e96  4      OPC=movl_m32_r32    
  nop                                           #  10    0xb0e9a  1      OPC=nop             
  nop                                           #  11    0xb0e9b  1      OPC=nop             
  nop                                           #  12    0xb0e9c  1      OPC=nop             
  nop                                           #  13    0xb0e9d  1      OPC=nop             
  nop                                           #  14    0xb0e9e  1      OPC=nop             
  nop                                           #  15    0xb0e9f  1      OPC=nop             
  movl %eax, %eax                               #  16    0xb0ea0  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                  #  17    0xb0ea2  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  18    0xb0ea7  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                   #  19    0xb0ea9  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                       #  20    0xb0eae  7      OPC=andl_r32_imm32  
  nop                                           #  21    0xb0eb5  1      OPC=nop             
  nop                                           #  22    0xb0eb6  1      OPC=nop             
  nop                                           #  23    0xb0eb7  1      OPC=nop             
  nop                                           #  24    0xb0eb8  1      OPC=nop             
  addq %r15, %r11                               #  25    0xb0eb9  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  26    0xb0ebc  3      OPC=jmpq_r64        
  nop                                           #  27    0xb0ebf  1      OPC=nop             
  nop                                           #  28    0xb0ec0  1      OPC=nop             
  nop                                           #  29    0xb0ec1  1      OPC=nop             
  nop                                           #  30    0xb0ec2  1      OPC=nop             
  nop                                           #  31    0xb0ec3  1      OPC=nop             
  nop                                           #  32    0xb0ec4  1      OPC=nop             
  nop                                           #  33    0xb0ec5  1      OPC=nop             
  nop                                           #  34    0xb0ec6  1      OPC=nop             
                                                                                             
.size _ZNKSt11__timepunctIwE15_M_time_formatsEPPKw, .-_ZNKSt11__timepunctIwE15_M_time_formatsEPPKw

