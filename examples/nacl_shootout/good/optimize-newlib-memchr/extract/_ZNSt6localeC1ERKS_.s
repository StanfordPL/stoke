  .text
  .globl _ZNSt6localeC1ERKS_
  .type _ZNSt6localeC1ERKS_, @function

#! file-offset 0x9db80
#! rip-offset  0x5db80
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNSt6localeC1ERKS_:       #        0x5db80  0      OPC=<label>         
  movl %esi, %esi           #  1     0x5db80  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0x5db82  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  3     0x5db84  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax  #  4     0x5db86  4      OPC=movl_r32_m32    
  movl %eax, %eax           #  5     0x5db8a  2      OPC=movl_r32_r32    
  addl $0x1, (%r15,%rax,1)  #  6     0x5db8c  5      OPC=addl_m32_imm8   
  movl %edi, %edi           #  7     0x5db91  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)  #  8     0x5db93  4      OPC=movl_m32_r32    
  popq %r11                 #  9     0x5db97  2      OPC=popq_r64_1      
  nop                       #  10    0x5db99  1      OPC=nop             
  nop                       #  11    0x5db9a  1      OPC=nop             
  nop                       #  12    0x5db9b  1      OPC=nop             
  nop                       #  13    0x5db9c  1      OPC=nop             
  nop                       #  14    0x5db9d  1      OPC=nop             
  nop                       #  15    0x5db9e  1      OPC=nop             
  nop                       #  16    0x5db9f  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  17    0x5dba0  7      OPC=andl_r32_imm32  
  nop                       #  18    0x5dba7  1      OPC=nop             
  nop                       #  19    0x5dba8  1      OPC=nop             
  nop                       #  20    0x5dba9  1      OPC=nop             
  nop                       #  21    0x5dbaa  1      OPC=nop             
  addq %r15, %r11           #  22    0x5dbab  3      OPC=addq_r64_r64    
  jmpq %r11                 #  23    0x5dbae  3      OPC=jmpq_r64        
  nop                       #  24    0x5dbb1  1      OPC=nop             
  nop                       #  25    0x5dbb2  1      OPC=nop             
  nop                       #  26    0x5dbb3  1      OPC=nop             
  nop                       #  27    0x5dbb4  1      OPC=nop             
  nop                       #  28    0x5dbb5  1      OPC=nop             
  nop                       #  29    0x5dbb6  1      OPC=nop             
  nop                       #  30    0x5dbb7  1      OPC=nop             
  nop                       #  31    0x5dbb8  1      OPC=nop             
  nop                       #  32    0x5dbb9  1      OPC=nop             
  nop                       #  33    0x5dbba  1      OPC=nop             
  nop                       #  34    0x5dbbb  1      OPC=nop             
  nop                       #  35    0x5dbbc  1      OPC=nop             
  nop                       #  36    0x5dbbd  1      OPC=nop             
  nop                       #  37    0x5dbbe  1      OPC=nop             
  nop                       #  38    0x5dbbf  1      OPC=nop             
  nop                       #  39    0x5dbc0  1      OPC=nop             
  nop                       #  40    0x5dbc1  1      OPC=nop             
  nop                       #  41    0x5dbc2  1      OPC=nop             
  nop                       #  42    0x5dbc3  1      OPC=nop             
  nop                       #  43    0x5dbc4  1      OPC=nop             
  nop                       #  44    0x5dbc5  1      OPC=nop             
  nop                       #  45    0x5dbc6  1      OPC=nop             
                                                                         
.size _ZNSt6localeC1ERKS_, .-_ZNSt6localeC1ERKS_

