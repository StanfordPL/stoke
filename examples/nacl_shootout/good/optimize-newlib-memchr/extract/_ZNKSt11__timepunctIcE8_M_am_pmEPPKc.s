  .text
  .globl _ZNKSt11__timepunctIcE8_M_am_pmEPPKc
  .type _ZNKSt11__timepunctIcE8_M_am_pmEPPKc, @function

#! file-offset 0xb89a0
#! rip-offset  0x789a0
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIcE8_M_am_pmEPPKc:  #        0x789a0  0      OPC=<label>         
  movl %edi, %edi                       #  1     0x789a0  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  2     0x789a2  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  3     0x789a4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax           #  4     0x789a6  5      OPC=movl_r32_m32    
  popq %r11                             #  5     0x789ab  2      OPC=popq_r64_1      
  movl %eax, %eax                       #  6     0x789ad  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %edx          #  7     0x789af  5      OPC=movl_r32_m32    
  movl %esi, %esi                       #  8     0x789b4  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)              #  9     0x789b6  4      OPC=movl_m32_r32    
  nop                                   #  10    0x789ba  1      OPC=nop             
  nop                                   #  11    0x789bb  1      OPC=nop             
  nop                                   #  12    0x789bc  1      OPC=nop             
  nop                                   #  13    0x789bd  1      OPC=nop             
  nop                                   #  14    0x789be  1      OPC=nop             
  nop                                   #  15    0x789bf  1      OPC=nop             
  movl %eax, %eax                       #  16    0x789c0  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax          #  17    0x789c2  5      OPC=movl_r32_m32    
  movl %esi, %esi                       #  18    0x789c7  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)           #  19    0x789c9  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d               #  20    0x789ce  7      OPC=andl_r32_imm32  
  nop                                   #  21    0x789d5  1      OPC=nop             
  nop                                   #  22    0x789d6  1      OPC=nop             
  nop                                   #  23    0x789d7  1      OPC=nop             
  nop                                   #  24    0x789d8  1      OPC=nop             
  addq %r15, %r11                       #  25    0x789d9  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0x789dc  3      OPC=jmpq_r64        
  nop                                   #  27    0x789df  1      OPC=nop             
  nop                                   #  28    0x789e0  1      OPC=nop             
  nop                                   #  29    0x789e1  1      OPC=nop             
  nop                                   #  30    0x789e2  1      OPC=nop             
  nop                                   #  31    0x789e3  1      OPC=nop             
  nop                                   #  32    0x789e4  1      OPC=nop             
  nop                                   #  33    0x789e5  1      OPC=nop             
  nop                                   #  34    0x789e6  1      OPC=nop             
                                                                                     
.size _ZNKSt11__timepunctIcE8_M_am_pmEPPKc, .-_ZNKSt11__timepunctIcE8_M_am_pmEPPKc

