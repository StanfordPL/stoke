  .text
  .globl _ZNKSt11__timepunctIcE8_M_am_pmEPPKc
  .type _ZNKSt11__timepunctIcE8_M_am_pmEPPKc, @function

#! file-offset 0xb8280
#! rip-offset  0x78280
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIcE8_M_am_pmEPPKc:  #        0x78280  0      OPC=<label>         
  movl %edi, %edi                       #  1     0x78280  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  2     0x78282  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  3     0x78284  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax           #  4     0x78286  5      OPC=movl_r32_m32    
  popq %r11                             #  5     0x7828b  2      OPC=popq_r64_1      
  movl %eax, %eax                       #  6     0x7828d  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %edx          #  7     0x7828f  5      OPC=movl_r32_m32    
  movl %esi, %esi                       #  8     0x78294  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)              #  9     0x78296  4      OPC=movl_m32_r32    
  nop                                   #  10    0x7829a  1      OPC=nop             
  nop                                   #  11    0x7829b  1      OPC=nop             
  nop                                   #  12    0x7829c  1      OPC=nop             
  nop                                   #  13    0x7829d  1      OPC=nop             
  nop                                   #  14    0x7829e  1      OPC=nop             
  nop                                   #  15    0x7829f  1      OPC=nop             
  movl %eax, %eax                       #  16    0x782a0  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax          #  17    0x782a2  5      OPC=movl_r32_m32    
  movl %esi, %esi                       #  18    0x782a7  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)           #  19    0x782a9  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d               #  20    0x782ae  7      OPC=andl_r32_imm32  
  nop                                   #  21    0x782b5  1      OPC=nop             
  nop                                   #  22    0x782b6  1      OPC=nop             
  nop                                   #  23    0x782b7  1      OPC=nop             
  nop                                   #  24    0x782b8  1      OPC=nop             
  addq %r15, %r11                       #  25    0x782b9  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0x782bc  3      OPC=jmpq_r64        
  nop                                   #  27    0x782bf  1      OPC=nop             
  nop                                   #  28    0x782c0  1      OPC=nop             
  nop                                   #  29    0x782c1  1      OPC=nop             
  nop                                   #  30    0x782c2  1      OPC=nop             
  nop                                   #  31    0x782c3  1      OPC=nop             
  nop                                   #  32    0x782c4  1      OPC=nop             
  nop                                   #  33    0x782c5  1      OPC=nop             
  nop                                   #  34    0x782c6  1      OPC=nop             
                                                                                     
.size _ZNKSt11__timepunctIcE8_M_am_pmEPPKc, .-_ZNKSt11__timepunctIcE8_M_am_pmEPPKc

