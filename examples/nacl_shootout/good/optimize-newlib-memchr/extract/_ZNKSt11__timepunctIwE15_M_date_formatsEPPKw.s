  .text
  .globl _ZNKSt11__timepunctIwE15_M_date_formatsEPPKw
  .type _ZNKSt11__timepunctIwE15_M_date_formatsEPPKw, @function

#! file-offset 0xf1860
#! rip-offset  0xb1860
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE15_M_date_formatsEPPKw:  #        0xb1860  0      OPC=<label>         
  movl %edi, %edi                               #  1     0xb1860  2      OPC=movl_r32_r32    
  movl %esi, %esi                               #  2     0xb1862  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  3     0xb1864  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                   #  4     0xb1866  5      OPC=movl_r32_m32    
  popq %r11                                     #  5     0xb186b  2      OPC=popq_r64_1      
  movl %eax, %eax                               #  6     0xb186d  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %edx                   #  7     0xb186f  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  8     0xb1874  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                      #  9     0xb1876  4      OPC=movl_m32_r32    
  nop                                           #  10    0xb187a  1      OPC=nop             
  nop                                           #  11    0xb187b  1      OPC=nop             
  nop                                           #  12    0xb187c  1      OPC=nop             
  nop                                           #  13    0xb187d  1      OPC=nop             
  nop                                           #  14    0xb187e  1      OPC=nop             
  nop                                           #  15    0xb187f  1      OPC=nop             
  movl %eax, %eax                               #  16    0xb1880  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                   #  17    0xb1882  5      OPC=movl_r32_m32    
  movl %esi, %esi                               #  18    0xb1887  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)                   #  19    0xb1889  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                       #  20    0xb188e  7      OPC=andl_r32_imm32  
  nop                                           #  21    0xb1895  1      OPC=nop             
  nop                                           #  22    0xb1896  1      OPC=nop             
  nop                                           #  23    0xb1897  1      OPC=nop             
  nop                                           #  24    0xb1898  1      OPC=nop             
  addq %r15, %r11                               #  25    0xb1899  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  26    0xb189c  3      OPC=jmpq_r64        
  nop                                           #  27    0xb189f  1      OPC=nop             
  nop                                           #  28    0xb18a0  1      OPC=nop             
  nop                                           #  29    0xb18a1  1      OPC=nop             
  nop                                           #  30    0xb18a2  1      OPC=nop             
  nop                                           #  31    0xb18a3  1      OPC=nop             
  nop                                           #  32    0xb18a4  1      OPC=nop             
  nop                                           #  33    0xb18a5  1      OPC=nop             
  nop                                           #  34    0xb18a6  1      OPC=nop             
                                                                                             
.size _ZNKSt11__timepunctIwE15_M_date_formatsEPPKw, .-_ZNKSt11__timepunctIwE15_M_date_formatsEPPKw

