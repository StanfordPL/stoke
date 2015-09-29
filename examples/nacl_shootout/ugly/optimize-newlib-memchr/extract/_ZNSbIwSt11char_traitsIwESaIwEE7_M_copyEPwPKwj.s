  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj
  .type _ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj, @function

#! file-offset 0x117280
#! rip-offset  0xd7280
#! capacity    64 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj:  #        0xd7280  0      OPC=<label>         
  cmpl $0x1, %edx                                 #  1     0xd7280  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi                                 #  2     0xd7283  2      OPC=movl_r32_r32    
  movl %esi, %esi                                 #  3     0xd7285  2      OPC=movl_r32_r32    
  je .L_d72a0                                     #  4     0xd7287  2      OPC=je_label        
  jmpq .wmemcpy                                   #  5     0xd7289  5      OPC=jmpq_label_1    
  nop                                             #  6     0xd728e  1      OPC=nop             
  nop                                             #  7     0xd728f  1      OPC=nop             
  nop                                             #  8     0xd7290  1      OPC=nop             
  nop                                             #  9     0xd7291  1      OPC=nop             
  nop                                             #  10    0xd7292  1      OPC=nop             
  nop                                             #  11    0xd7293  1      OPC=nop             
  nop                                             #  12    0xd7294  1      OPC=nop             
  nop                                             #  13    0xd7295  1      OPC=nop             
  nop                                             #  14    0xd7296  1      OPC=nop             
  nop                                             #  15    0xd7297  1      OPC=nop             
  nop                                             #  16    0xd7298  1      OPC=nop             
  nop                                             #  17    0xd7299  1      OPC=nop             
  nop                                             #  18    0xd729a  1      OPC=nop             
  nop                                             #  19    0xd729b  1      OPC=nop             
  nop                                             #  20    0xd729c  1      OPC=nop             
  nop                                             #  21    0xd729d  1      OPC=nop             
  nop                                             #  22    0xd729e  1      OPC=nop             
  nop                                             #  23    0xd729f  1      OPC=nop             
.L_d72a0:                                         #        0xd72a0  0      OPC=<label>         
  popq %r11                                       #  24    0xd72a0  2      OPC=popq_r64_1      
  movl %esi, %esi                                 #  25    0xd72a2  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                        #  26    0xd72a4  4      OPC=movl_r32_m32    
  movl %edi, %edi                                 #  27    0xd72a8  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                        #  28    0xd72aa  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                         #  29    0xd72ae  7      OPC=andl_r32_imm32  
  nop                                             #  30    0xd72b5  1      OPC=nop             
  nop                                             #  31    0xd72b6  1      OPC=nop             
  nop                                             #  32    0xd72b7  1      OPC=nop             
  nop                                             #  33    0xd72b8  1      OPC=nop             
  addq %r15, %r11                                 #  34    0xd72b9  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  35    0xd72bc  3      OPC=jmpq_r64        
  nop                                             #  36    0xd72bf  1      OPC=nop             
  nop                                             #  37    0xd72c0  1      OPC=nop             
  nop                                             #  38    0xd72c1  1      OPC=nop             
  nop                                             #  39    0xd72c2  1      OPC=nop             
  nop                                             #  40    0xd72c3  1      OPC=nop             
  nop                                             #  41    0xd72c4  1      OPC=nop             
  nop                                             #  42    0xd72c5  1      OPC=nop             
  nop                                             #  43    0xd72c6  1      OPC=nop             
                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj, .-_ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj

