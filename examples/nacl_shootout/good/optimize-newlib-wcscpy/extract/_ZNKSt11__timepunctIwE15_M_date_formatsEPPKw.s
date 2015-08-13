  .text
  .globl _ZNKSt11__timepunctIwE15_M_date_formatsEPPKw
  .type _ZNKSt11__timepunctIwE15_M_date_formatsEPPKw, @function

#! file-offset 0xf0e40
#! rip-offset  0xb0e40
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE15_M_date_formatsEPPKw:  #        0xb0e40  0      OPC=<label>         
  movl %edi, %edi                               #  1     0xb0e40  2      OPC=movl_r32_r32    
  movl %esi, %esi                               #  2     0xb0e42  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  3     0xb0e44  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                   #  4     0xb0e46  5      OPC=movl_r32_m32    
  popq %r11                                     #  5     0xb0e4b  2      OPC=popq_r64_1      
  movl %eax, %eax                               #  6     0xb0e4d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %edx                   #  7     0xb0e4f  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  8     0xb0e54  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                      #  9     0xb0e56  4      OPC=movl_m32_r32    
  nop                                           #  10    0xb0e5a  1      OPC=nop             
  nop                                           #  11    0xb0e5b  1      OPC=nop             
  nop                                           #  12    0xb0e5c  1      OPC=nop             
  nop                                           #  13    0xb0e5d  1      OPC=nop             
  nop                                           #  14    0xb0e5e  1      OPC=nop             
  nop                                           #  15    0xb0e5f  1      OPC=nop             
  movl %eax, %eax                               #  16    0xb0e60  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                   #  17    0xb0e62  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  18    0xb0e67  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                   #  19    0xb0e69  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                       #  20    0xb0e6e  7      OPC=andl_r32_imm32  
  nop                                           #  21    0xb0e75  1      OPC=nop             
  nop                                           #  22    0xb0e76  1      OPC=nop             
  nop                                           #  23    0xb0e77  1      OPC=nop             
  nop                                           #  24    0xb0e78  1      OPC=nop             
  addq %r15, %r11                               #  25    0xb0e79  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  26    0xb0e7c  3      OPC=jmpq_r64        
  nop                                           #  27    0xb0e7f  1      OPC=nop             
  nop                                           #  28    0xb0e80  1      OPC=nop             
  nop                                           #  29    0xb0e81  1      OPC=nop             
  nop                                           #  30    0xb0e82  1      OPC=nop             
  nop                                           #  31    0xb0e83  1      OPC=nop             
  nop                                           #  32    0xb0e84  1      OPC=nop             
  nop                                           #  33    0xb0e85  1      OPC=nop             
  nop                                           #  34    0xb0e86  1      OPC=nop             
                                                                                             
.size _ZNKSt11__timepunctIwE15_M_date_formatsEPPKw, .-_ZNKSt11__timepunctIwE15_M_date_formatsEPPKw

