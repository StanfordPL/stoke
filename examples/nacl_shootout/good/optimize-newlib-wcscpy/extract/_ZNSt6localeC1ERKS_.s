  .text
  .globl _ZNSt6localeC1ERKS_
  .type _ZNSt6localeC1ERKS_, @function

#! file-offset 0x9d160
#! rip-offset  0x5d160
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNSt6localeC1ERKS_:       #        0x5d160  0      OPC=<label>         
  movl %esi, %esi           #  1     0x5d160  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0x5d162  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  3     0x5d164  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax  #  4     0x5d166  4      OPC=movl_r32_m32    
  movl %eax, %eax           #  5     0x5d16a  2      OPC=movl_r32_r32    
  addl $0x1, (%r15,%rax,1)  #  6     0x5d16c  5      OPC=addl_m32_imm8   
  movl %edi, %edi           #  7     0x5d171  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)  #  8     0x5d173  4      OPC=movl_m32_r32    
  popq %r11                 #  9     0x5d177  2      OPC=popq_r64_1      
  nop                       #  10    0x5d179  1      OPC=nop             
  nop                       #  11    0x5d17a  1      OPC=nop             
  nop                       #  12    0x5d17b  1      OPC=nop             
  nop                       #  13    0x5d17c  1      OPC=nop             
  nop                       #  14    0x5d17d  1      OPC=nop             
  nop                       #  15    0x5d17e  1      OPC=nop             
  nop                       #  16    0x5d17f  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  17    0x5d180  7      OPC=andl_r32_imm32  
  nop                       #  18    0x5d187  1      OPC=nop             
  nop                       #  19    0x5d188  1      OPC=nop             
  nop                       #  20    0x5d189  1      OPC=nop             
  nop                       #  21    0x5d18a  1      OPC=nop             
  addq %r15, %r11           #  22    0x5d18b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  23    0x5d18e  3      OPC=jmpq_r64        
  nop                       #  24    0x5d191  1      OPC=nop             
  nop                       #  25    0x5d192  1      OPC=nop             
  nop                       #  26    0x5d193  1      OPC=nop             
  nop                       #  27    0x5d194  1      OPC=nop             
  nop                       #  28    0x5d195  1      OPC=nop             
  nop                       #  29    0x5d196  1      OPC=nop             
  nop                       #  30    0x5d197  1      OPC=nop             
  nop                       #  31    0x5d198  1      OPC=nop             
  nop                       #  32    0x5d199  1      OPC=nop             
  nop                       #  33    0x5d19a  1      OPC=nop             
  nop                       #  34    0x5d19b  1      OPC=nop             
  nop                       #  35    0x5d19c  1      OPC=nop             
  nop                       #  36    0x5d19d  1      OPC=nop             
  nop                       #  37    0x5d19e  1      OPC=nop             
  nop                       #  38    0x5d19f  1      OPC=nop             
  nop                       #  39    0x5d1a0  1      OPC=nop             
  nop                       #  40    0x5d1a1  1      OPC=nop             
  nop                       #  41    0x5d1a2  1      OPC=nop             
  nop                       #  42    0x5d1a3  1      OPC=nop             
  nop                       #  43    0x5d1a4  1      OPC=nop             
  nop                       #  44    0x5d1a5  1      OPC=nop             
  nop                       #  45    0x5d1a6  1      OPC=nop             
                                                                         
.size _ZNSt6localeC1ERKS_, .-_ZNSt6localeC1ERKS_

