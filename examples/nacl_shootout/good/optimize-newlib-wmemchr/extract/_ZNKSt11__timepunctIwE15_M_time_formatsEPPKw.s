  .text
  .globl _ZNKSt11__timepunctIwE15_M_time_formatsEPPKw
  .type _ZNKSt11__timepunctIwE15_M_time_formatsEPPKw, @function

#! file-offset 0xf1180
#! rip-offset  0xb1180
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE15_M_time_formatsEPPKw:  #        0xb1180  0      OPC=<label>         
  movl %edi, %edi                               #  1     0xb1180  2      OPC=movl_r32_r32    
  movl %esi, %esi                               #  2     0xb1182  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  3     0xb1184  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                   #  4     0xb1186  5      OPC=movl_r32_m32    
  popq %r11                                     #  5     0xb118b  2      OPC=popq_r64_1      
  movl %eax, %eax                               #  6     0xb118d  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %edx                  #  7     0xb118f  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  8     0xb1194  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                      #  9     0xb1196  4      OPC=movl_m32_r32    
  nop                                           #  10    0xb119a  1      OPC=nop             
  nop                                           #  11    0xb119b  1      OPC=nop             
  nop                                           #  12    0xb119c  1      OPC=nop             
  nop                                           #  13    0xb119d  1      OPC=nop             
  nop                                           #  14    0xb119e  1      OPC=nop             
  nop                                           #  15    0xb119f  1      OPC=nop             
  movl %eax, %eax                               #  16    0xb11a0  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                  #  17    0xb11a2  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  18    0xb11a7  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                   #  19    0xb11a9  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                       #  20    0xb11ae  7      OPC=andl_r32_imm32  
  nop                                           #  21    0xb11b5  1      OPC=nop             
  nop                                           #  22    0xb11b6  1      OPC=nop             
  nop                                           #  23    0xb11b7  1      OPC=nop             
  nop                                           #  24    0xb11b8  1      OPC=nop             
  addq %r15, %r11                               #  25    0xb11b9  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  26    0xb11bc  3      OPC=jmpq_r64        
  nop                                           #  27    0xb11bf  1      OPC=nop             
  nop                                           #  28    0xb11c0  1      OPC=nop             
  nop                                           #  29    0xb11c1  1      OPC=nop             
  nop                                           #  30    0xb11c2  1      OPC=nop             
  nop                                           #  31    0xb11c3  1      OPC=nop             
  nop                                           #  32    0xb11c4  1      OPC=nop             
  nop                                           #  33    0xb11c5  1      OPC=nop             
  nop                                           #  34    0xb11c6  1      OPC=nop             
                                                                                             
.size _ZNKSt11__timepunctIwE15_M_time_formatsEPPKw, .-_ZNKSt11__timepunctIwE15_M_time_formatsEPPKw

