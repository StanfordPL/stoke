  .text
  .globl _ZNKSt11__timepunctIcE8_M_am_pmEPPKc
  .type _ZNKSt11__timepunctIcE8_M_am_pmEPPKc, @function

#! file-offset 0xb7f80
#! rip-offset  0x77f80
#! capacity    64 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIcE8_M_am_pmEPPKc:  #        0x77f80  0      OPC=<label>         
  movl %edi, %edi                       #  1     0x77f80  2      OPC=movl_r32_r32    
  movl %esi, %esi                       #  2     0x77f82  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  3     0x77f84  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax           #  4     0x77f86  5      OPC=movl_r32_m32    
  popq %r11                             #  5     0x77f8b  2      OPC=popq_r64_1      
  movl %eax, %eax                       #  6     0x77f8d  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %edx          #  7     0x77f8f  5      OPC=movl_r32_m32    
  movl %esi, %esi                       #  8     0x77f94  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)              #  9     0x77f96  4      OPC=movl_m32_r32    
  nop                                   #  10    0x77f9a  1      OPC=nop             
  nop                                   #  11    0x77f9b  1      OPC=nop             
  nop                                   #  12    0x77f9c  1      OPC=nop             
  nop                                   #  13    0x77f9d  1      OPC=nop             
  nop                                   #  14    0x77f9e  1      OPC=nop             
  nop                                   #  15    0x77f9f  1      OPC=nop             
  movl %eax, %eax                       #  16    0x77fa0  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax          #  17    0x77fa2  5      OPC=movl_r32_m32    
  movl %esi, %esi                       #  18    0x77fa7  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rsi,1)           #  19    0x77fa9  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d               #  20    0x77fae  7      OPC=andl_r32_imm32  
  nop                                   #  21    0x77fb5  1      OPC=nop             
  nop                                   #  22    0x77fb6  1      OPC=nop             
  nop                                   #  23    0x77fb7  1      OPC=nop             
  nop                                   #  24    0x77fb8  1      OPC=nop             
  addq %r15, %r11                       #  25    0x77fb9  3      OPC=addq_r64_r64    
  jmpq %r11                             #  26    0x77fbc  3      OPC=jmpq_r64        
  nop                                   #  27    0x77fbf  1      OPC=nop             
  nop                                   #  28    0x77fc0  1      OPC=nop             
  nop                                   #  29    0x77fc1  1      OPC=nop             
  nop                                   #  30    0x77fc2  1      OPC=nop             
  nop                                   #  31    0x77fc3  1      OPC=nop             
  nop                                   #  32    0x77fc4  1      OPC=nop             
  nop                                   #  33    0x77fc5  1      OPC=nop             
  nop                                   #  34    0x77fc6  1      OPC=nop             
                                                                                     
.size _ZNKSt11__timepunctIcE8_M_am_pmEPPKc, .-_ZNKSt11__timepunctIcE8_M_am_pmEPPKc

