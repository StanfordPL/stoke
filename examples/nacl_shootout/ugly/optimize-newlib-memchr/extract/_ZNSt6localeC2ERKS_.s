  .text
  .globl _ZNSt6localeC2ERKS_
  .type _ZNSt6localeC2ERKS_, @function

#! file-offset 0x9db40
#! rip-offset  0x5db40
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNSt6localeC2ERKS_:       #        0x5db40  0      OPC=<label>         
  movl %esi, %esi           #  1     0x5db40  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  2     0x5db42  2      OPC=movl_r32_r32    
  movl %esi, %esi           #  3     0x5db44  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax  #  4     0x5db46  4      OPC=movl_r32_m32    
  movl %eax, %eax           #  5     0x5db4a  2      OPC=movl_r32_r32    
  addl $0x1, (%r15,%rax,1)  #  6     0x5db4c  5      OPC=addl_m32_imm8   
  movl %edi, %edi           #  7     0x5db51  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)  #  8     0x5db53  4      OPC=movl_m32_r32    
  popq %r11                 #  9     0x5db57  2      OPC=popq_r64_1      
  nop                       #  10    0x5db59  1      OPC=nop             
  nop                       #  11    0x5db5a  1      OPC=nop             
  nop                       #  12    0x5db5b  1      OPC=nop             
  nop                       #  13    0x5db5c  1      OPC=nop             
  nop                       #  14    0x5db5d  1      OPC=nop             
  nop                       #  15    0x5db5e  1      OPC=nop             
  nop                       #  16    0x5db5f  1      OPC=nop             
  andl $0xffffffe0, %r11d   #  17    0x5db60  7      OPC=andl_r32_imm32  
  nop                       #  18    0x5db67  1      OPC=nop             
  nop                       #  19    0x5db68  1      OPC=nop             
  nop                       #  20    0x5db69  1      OPC=nop             
  nop                       #  21    0x5db6a  1      OPC=nop             
  addq %r15, %r11           #  22    0x5db6b  3      OPC=addq_r64_r64    
  jmpq %r11                 #  23    0x5db6e  3      OPC=jmpq_r64        
  nop                       #  24    0x5db71  1      OPC=nop             
  nop                       #  25    0x5db72  1      OPC=nop             
  nop                       #  26    0x5db73  1      OPC=nop             
  nop                       #  27    0x5db74  1      OPC=nop             
  nop                       #  28    0x5db75  1      OPC=nop             
  nop                       #  29    0x5db76  1      OPC=nop             
  nop                       #  30    0x5db77  1      OPC=nop             
  nop                       #  31    0x5db78  1      OPC=nop             
  nop                       #  32    0x5db79  1      OPC=nop             
  nop                       #  33    0x5db7a  1      OPC=nop             
  nop                       #  34    0x5db7b  1      OPC=nop             
  nop                       #  35    0x5db7c  1      OPC=nop             
  nop                       #  36    0x5db7d  1      OPC=nop             
  nop                       #  37    0x5db7e  1      OPC=nop             
  nop                       #  38    0x5db7f  1      OPC=nop             
  nop                       #  39    0x5db80  1      OPC=nop             
  nop                       #  40    0x5db81  1      OPC=nop             
  nop                       #  41    0x5db82  1      OPC=nop             
  nop                       #  42    0x5db83  1      OPC=nop             
  nop                       #  43    0x5db84  1      OPC=nop             
  nop                       #  44    0x5db85  1      OPC=nop             
  nop                       #  45    0x5db86  1      OPC=nop             
                                                                         
.size _ZNSt6localeC2ERKS_, .-_ZNSt6localeC2ERKS_

