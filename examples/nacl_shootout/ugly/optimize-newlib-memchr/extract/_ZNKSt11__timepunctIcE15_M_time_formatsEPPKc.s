  .text
  .globl _ZNKSt11__timepunctIcE15_M_time_formatsEPPKc
  .type _ZNKSt11__timepunctIcE15_M_time_formatsEPPKc, @function

#! file-offset 0xb8900
#! rip-offset  0x78900
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIcE15_M_time_formatsEPPKc:  #        0x78900  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x78900  2      OPC=movl_r32_r32    
  movl %esi, %esi                               #  2     0x78902  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  3     0x78904  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                   #  4     0x78906  5      OPC=movl_r32_m32    
  popq %r11                                     #  5     0x7890b  2      OPC=popq_r64_1      
  movl %eax, %eax                               #  6     0x7890d  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %edx                  #  7     0x7890f  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  8     0x78914  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                      #  9     0x78916  4      OPC=movl_m32_r32    
  nop                                           #  10    0x7891a  1      OPC=nop             
  nop                                           #  11    0x7891b  1      OPC=nop             
  nop                                           #  12    0x7891c  1      OPC=nop             
  nop                                           #  13    0x7891d  1      OPC=nop             
  nop                                           #  14    0x7891e  1      OPC=nop             
  nop                                           #  15    0x7891f  1      OPC=nop             
  movl %eax, %eax                               #  16    0x78920  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                  #  17    0x78922  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  18    0x78927  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                   #  19    0x78929  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                       #  20    0x7892e  7      OPC=andl_r32_imm32  
  nop                                           #  21    0x78935  1      OPC=nop             
  nop                                           #  22    0x78936  1      OPC=nop             
  nop                                           #  23    0x78937  1      OPC=nop             
  nop                                           #  24    0x78938  1      OPC=nop             
  addq %r15, %r11                               #  25    0x78939  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  26    0x7893c  3      OPC=jmpq_r64        
  nop                                           #  27    0x7893f  1      OPC=nop             
  nop                                           #  28    0x78940  1      OPC=nop             
  nop                                           #  29    0x78941  1      OPC=nop             
  nop                                           #  30    0x78942  1      OPC=nop             
  nop                                           #  31    0x78943  1      OPC=nop             
  nop                                           #  32    0x78944  1      OPC=nop             
  nop                                           #  33    0x78945  1      OPC=nop             
  nop                                           #  34    0x78946  1      OPC=nop             
                                                                                             
.size _ZNKSt11__timepunctIcE15_M_time_formatsEPPKc, .-_ZNKSt11__timepunctIcE15_M_time_formatsEPPKc

