  .text
  .globl _ZNSt6localeC2ERKS_
  .type _ZNSt6localeC2ERKS_, @function

#! file-offset 0x9d120
#! rip-offset  0x5d120
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNSt6localeC2ERKS_:       #        0x5d120  0      OPC=<label>         
  movl %esi, %esi           #  1     0x5d120  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0x5d122  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  3     0x5d124  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax  #  4     0x5d126  4      OPC=movl_r32_m32    
  movl %eax, %eax           #  5     0x5d12a  2      OPC=movl_r32_r32    
  addl $0x1, (%r15,%rax,1)  #  6     0x5d12c  5      OPC=addl_m32_imm8   
  movl %edi, %edi           #  7     0x5d131  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)  #  8     0x5d133  4      OPC=movl_m32_r32    
  popq %r11                 #  9     0x5d137  2      OPC=popq_r64_1      
  nop                       #  10    0x5d139  1      OPC=nop             
  nop                       #  11    0x5d13a  1      OPC=nop             
  nop                       #  12    0x5d13b  1      OPC=nop             
  nop                       #  13    0x5d13c  1      OPC=nop             
  nop                       #  14    0x5d13d  1      OPC=nop             
  nop                       #  15    0x5d13e  1      OPC=nop             
  nop                       #  16    0x5d13f  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  17    0x5d140  7      OPC=andl_r32_imm32  
  nop                       #  18    0x5d147  1      OPC=nop             
  nop                       #  19    0x5d148  1      OPC=nop             
  nop                       #  20    0x5d149  1      OPC=nop             
  nop                       #  21    0x5d14a  1      OPC=nop             
  addq %r15, %r11           #  22    0x5d14b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  23    0x5d14e  3      OPC=jmpq_r64        
  nop                       #  24    0x5d151  1      OPC=nop             
  nop                       #  25    0x5d152  1      OPC=nop             
  nop                       #  26    0x5d153  1      OPC=nop             
  nop                       #  27    0x5d154  1      OPC=nop             
  nop                       #  28    0x5d155  1      OPC=nop             
  nop                       #  29    0x5d156  1      OPC=nop             
  nop                       #  30    0x5d157  1      OPC=nop             
  nop                       #  31    0x5d158  1      OPC=nop             
  nop                       #  32    0x5d159  1      OPC=nop             
  nop                       #  33    0x5d15a  1      OPC=nop             
  nop                       #  34    0x5d15b  1      OPC=nop             
  nop                       #  35    0x5d15c  1      OPC=nop             
  nop                       #  36    0x5d15d  1      OPC=nop             
  nop                       #  37    0x5d15e  1      OPC=nop             
  nop                       #  38    0x5d15f  1      OPC=nop             
  nop                       #  39    0x5d160  1      OPC=nop             
  nop                       #  40    0x5d161  1      OPC=nop             
  nop                       #  41    0x5d162  1      OPC=nop             
  nop                       #  42    0x5d163  1      OPC=nop             
  nop                       #  43    0x5d164  1      OPC=nop             
  nop                       #  44    0x5d165  1      OPC=nop             
  nop                       #  45    0x5d166  1      OPC=nop             
                                                                         
.size _ZNSt6localeC2ERKS_, .-_ZNSt6localeC2ERKS_

