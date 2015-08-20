  .text
  .globl _ZNSt6localeC2ERKS_
  .type _ZNSt6localeC2ERKS_, @function

#! file-offset 0x9d420
#! rip-offset  0x5d420
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNSt6localeC2ERKS_:       #        0x5d420  0      OPC=<label>         
  movl %esi, %esi           #  1     0x5d420  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0x5d422  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  3     0x5d424  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax  #  4     0x5d426  4      OPC=movl_r32_m32    
  movl %eax, %eax           #  5     0x5d42a  2      OPC=movl_r32_r32    
  addl $0x1, (%r15,%rax,1)  #  6     0x5d42c  5      OPC=addl_m32_imm8   
  movl %edi, %edi           #  7     0x5d431  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)  #  8     0x5d433  4      OPC=movl_m32_r32    
  popq %r11                 #  9     0x5d437  2      OPC=popq_r64_1      
  nop                       #  10    0x5d439  1      OPC=nop             
  nop                       #  11    0x5d43a  1      OPC=nop             
  nop                       #  12    0x5d43b  1      OPC=nop             
  nop                       #  13    0x5d43c  1      OPC=nop             
  nop                       #  14    0x5d43d  1      OPC=nop             
  nop                       #  15    0x5d43e  1      OPC=nop             
  nop                       #  16    0x5d43f  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  17    0x5d440  7      OPC=andl_r32_imm32  
  nop                       #  18    0x5d447  1      OPC=nop             
  nop                       #  19    0x5d448  1      OPC=nop             
  nop                       #  20    0x5d449  1      OPC=nop             
  nop                       #  21    0x5d44a  1      OPC=nop             
  addq %r15, %r11           #  22    0x5d44b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  23    0x5d44e  3      OPC=jmpq_r64        
  nop                       #  24    0x5d451  1      OPC=nop             
  nop                       #  25    0x5d452  1      OPC=nop             
  nop                       #  26    0x5d453  1      OPC=nop             
  nop                       #  27    0x5d454  1      OPC=nop             
  nop                       #  28    0x5d455  1      OPC=nop             
  nop                       #  29    0x5d456  1      OPC=nop             
  nop                       #  30    0x5d457  1      OPC=nop             
  nop                       #  31    0x5d458  1      OPC=nop             
  nop                       #  32    0x5d459  1      OPC=nop             
  nop                       #  33    0x5d45a  1      OPC=nop             
  nop                       #  34    0x5d45b  1      OPC=nop             
  nop                       #  35    0x5d45c  1      OPC=nop             
  nop                       #  36    0x5d45d  1      OPC=nop             
  nop                       #  37    0x5d45e  1      OPC=nop             
  nop                       #  38    0x5d45f  1      OPC=nop             
  nop                       #  39    0x5d460  1      OPC=nop             
  nop                       #  40    0x5d461  1      OPC=nop             
  nop                       #  41    0x5d462  1      OPC=nop             
  nop                       #  42    0x5d463  1      OPC=nop             
  nop                       #  43    0x5d464  1      OPC=nop             
  nop                       #  44    0x5d465  1      OPC=nop             
  nop                       #  45    0x5d466  1      OPC=nop             
                                                                         
.size _ZNSt6localeC2ERKS_, .-_ZNSt6localeC2ERKS_

