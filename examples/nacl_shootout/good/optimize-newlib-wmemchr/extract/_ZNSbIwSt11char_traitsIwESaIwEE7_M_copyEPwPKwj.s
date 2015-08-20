  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj
  .type _ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj, @function

#! file-offset 0x116b60
#! rip-offset  0xd6b60
#! capacity    64 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj:  #        0xd6b60  0      OPC=<label>         
  cmpl $0x1, %edx                                 #  1     0xd6b60  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi                                 #  2     0xd6b63  2      OPC=movl_r32_r32    
  movl %esi, %esi                                 #  3     0xd6b65  2      OPC=movl_r32_r32    
  je .L_d6b80                                     #  4     0xd6b67  2      OPC=je_label        
  jmpq .wmemcpy                                   #  5     0xd6b69  5      OPC=jmpq_label_1    
  nop                                             #  6     0xd6b6e  1      OPC=nop             
  nop                                             #  7     0xd6b6f  1      OPC=nop             
  nop                                             #  8     0xd6b70  1      OPC=nop             
  nop                                             #  9     0xd6b71  1      OPC=nop             
  nop                                             #  10    0xd6b72  1      OPC=nop             
  nop                                             #  11    0xd6b73  1      OPC=nop             
  nop                                             #  12    0xd6b74  1      OPC=nop             
  nop                                             #  13    0xd6b75  1      OPC=nop             
  nop                                             #  14    0xd6b76  1      OPC=nop             
  nop                                             #  15    0xd6b77  1      OPC=nop             
  nop                                             #  16    0xd6b78  1      OPC=nop             
  nop                                             #  17    0xd6b79  1      OPC=nop             
  nop                                             #  18    0xd6b7a  1      OPC=nop             
  nop                                             #  19    0xd6b7b  1      OPC=nop             
  nop                                             #  20    0xd6b7c  1      OPC=nop             
  nop                                             #  21    0xd6b7d  1      OPC=nop             
  nop                                             #  22    0xd6b7e  1      OPC=nop             
  nop                                             #  23    0xd6b7f  1      OPC=nop             
.L_d6b80:                                         #        0xd6b80  0      OPC=<label>         
  popq %r11                                       #  24    0xd6b80  2      OPC=popq_r64_1      
  movl %esi, %esi                                 #  25    0xd6b82  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                        #  26    0xd6b84  4      OPC=movl_r32_m32    
  movl %edi, %edi                                 #  27    0xd6b88  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                        #  28    0xd6b8a  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                         #  29    0xd6b8e  7      OPC=andl_r32_imm32  
  nop                                             #  30    0xd6b95  1      OPC=nop             
  nop                                             #  31    0xd6b96  1      OPC=nop             
  nop                                             #  32    0xd6b97  1      OPC=nop             
  nop                                             #  33    0xd6b98  1      OPC=nop             
  addq %r15, %r11                                 #  34    0xd6b99  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  35    0xd6b9c  3      OPC=jmpq_r64        
  nop                                             #  36    0xd6b9f  1      OPC=nop             
  nop                                             #  37    0xd6ba0  1      OPC=nop             
  nop                                             #  38    0xd6ba1  1      OPC=nop             
  nop                                             #  39    0xd6ba2  1      OPC=nop             
  nop                                             #  40    0xd6ba3  1      OPC=nop             
  nop                                             #  41    0xd6ba4  1      OPC=nop             
  nop                                             #  42    0xd6ba5  1      OPC=nop             
  nop                                             #  43    0xd6ba6  1      OPC=nop             
                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj, .-_ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj

