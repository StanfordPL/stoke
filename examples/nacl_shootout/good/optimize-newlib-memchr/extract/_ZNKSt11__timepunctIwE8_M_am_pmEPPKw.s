  .text
  .globl _ZNKSt11__timepunctIwE8_M_am_pmEPPKw
  .type _ZNKSt11__timepunctIwE8_M_am_pmEPPKw, @function

#! file-offset 0xf1940
#! rip-offset  0xb1940
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE8_M_am_pmEPPKw:  #        0xb1940  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xb1940  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  2     0xb1942  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  3     0xb1944  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax           #  4     0xb1946  5      OPC=movl_r32_m32    
  popq %r11                             #  5     0xb194b  2      OPC=popq_r64_1      
  movl %eax, %eax                       #  6     0xb194d  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %edx          #  7     0xb194f  5      OPC=movl_r32_m32    
  movl %esi, %esi                       #  8     0xb1954  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)              #  9     0xb1956  4      OPC=movl_m32_r32    
  nop                                   #  10    0xb195a  1      OPC=nop             
  nop                                   #  11    0xb195b  1      OPC=nop             
  nop                                   #  12    0xb195c  1      OPC=nop             
  nop                                   #  13    0xb195d  1      OPC=nop             
  nop                                   #  14    0xb195e  1      OPC=nop             
  nop                                   #  15    0xb195f  1      OPC=nop             
  movl %eax, %eax                       #  16    0xb1960  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax          #  17    0xb1962  5      OPC=movl_r32_m32    
  movl %esi, %esi                       #  18    0xb1967  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)           #  19    0xb1969  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d               #  20    0xb196e  7      OPC=andl_r32_imm32  
  nop                                   #  21    0xb1975  1      OPC=nop             
  nop                                   #  22    0xb1976  1      OPC=nop             
  nop                                   #  23    0xb1977  1      OPC=nop             
  nop                                   #  24    0xb1978  1      OPC=nop             
  addq %r15, %r11                       #  25    0xb1979  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0xb197c  3      OPC=jmpq_r64        
  nop                                   #  27    0xb197f  1      OPC=nop             
  nop                                   #  28    0xb1980  1      OPC=nop             
  nop                                   #  29    0xb1981  1      OPC=nop             
  nop                                   #  30    0xb1982  1      OPC=nop             
  nop                                   #  31    0xb1983  1      OPC=nop             
  nop                                   #  32    0xb1984  1      OPC=nop             
  nop                                   #  33    0xb1985  1      OPC=nop             
  nop                                   #  34    0xb1986  1      OPC=nop             
                                                                                     
.size _ZNKSt11__timepunctIwE8_M_am_pmEPPKw, .-_ZNKSt11__timepunctIwE8_M_am_pmEPPKw

