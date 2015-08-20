  .text
  .globl _ZNSt6localeC1ERKS_
  .type _ZNSt6localeC1ERKS_, @function

#! file-offset 0x9d460
#! rip-offset  0x5d460
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNSt6localeC1ERKS_:       #        0x5d460  0      OPC=<label>         
  movl %esi, %esi           #  1     0x5d460  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0x5d462  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  3     0x5d464  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax  #  4     0x5d466  4      OPC=movl_r32_m32    
  movl %eax, %eax           #  5     0x5d46a  2      OPC=movl_r32_r32    
  addl $0x1, (%r15,%rax,1)  #  6     0x5d46c  5      OPC=addl_m32_imm8   
  movl %edi, %edi           #  7     0x5d471  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)  #  8     0x5d473  4      OPC=movl_m32_r32    
  popq %r11                 #  9     0x5d477  2      OPC=popq_r64_1      
  nop                       #  10    0x5d479  1      OPC=nop             
  nop                       #  11    0x5d47a  1      OPC=nop             
  nop                       #  12    0x5d47b  1      OPC=nop             
  nop                       #  13    0x5d47c  1      OPC=nop             
  nop                       #  14    0x5d47d  1      OPC=nop             
  nop                       #  15    0x5d47e  1      OPC=nop             
  nop                       #  16    0x5d47f  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  17    0x5d480  7      OPC=andl_r32_imm32  
  nop                       #  18    0x5d487  1      OPC=nop             
  nop                       #  19    0x5d488  1      OPC=nop             
  nop                       #  20    0x5d489  1      OPC=nop             
  nop                       #  21    0x5d48a  1      OPC=nop             
  addq %r15, %r11           #  22    0x5d48b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  23    0x5d48e  3      OPC=jmpq_r64        
  nop                       #  24    0x5d491  1      OPC=nop             
  nop                       #  25    0x5d492  1      OPC=nop             
  nop                       #  26    0x5d493  1      OPC=nop             
  nop                       #  27    0x5d494  1      OPC=nop             
  nop                       #  28    0x5d495  1      OPC=nop             
  nop                       #  29    0x5d496  1      OPC=nop             
  nop                       #  30    0x5d497  1      OPC=nop             
  nop                       #  31    0x5d498  1      OPC=nop             
  nop                       #  32    0x5d499  1      OPC=nop             
  nop                       #  33    0x5d49a  1      OPC=nop             
  nop                       #  34    0x5d49b  1      OPC=nop             
  nop                       #  35    0x5d49c  1      OPC=nop             
  nop                       #  36    0x5d49d  1      OPC=nop             
  nop                       #  37    0x5d49e  1      OPC=nop             
  nop                       #  38    0x5d49f  1      OPC=nop             
  nop                       #  39    0x5d4a0  1      OPC=nop             
  nop                       #  40    0x5d4a1  1      OPC=nop             
  nop                       #  41    0x5d4a2  1      OPC=nop             
  nop                       #  42    0x5d4a3  1      OPC=nop             
  nop                       #  43    0x5d4a4  1      OPC=nop             
  nop                       #  44    0x5d4a5  1      OPC=nop             
  nop                       #  45    0x5d4a6  1      OPC=nop             
                                                                         
.size _ZNSt6localeC1ERKS_, .-_ZNSt6localeC1ERKS_

