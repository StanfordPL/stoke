  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw, @function

#! file-offset 0x116ae0
#! rip-offset  0xd6ae0
#! capacity    64 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw:  #        0xd6ae0  0      OPC=<label>         
  cmpl $0x1, %esi                                 #  1     0xd6ae0  3      OPC=cmpl_r32_imm8   
  movl %edx, %eax                                 #  2     0xd6ae3  2      OPC=movl_r32_r32    
  movl %edi, %edi                                 #  3     0xd6ae5  2      OPC=movl_r32_r32    
  je .L_d6b00                                     #  4     0xd6ae7  2      OPC=je_label        
  movl %esi, %edx                                 #  5     0xd6ae9  2      OPC=movl_r32_r32    
  movl %eax, %esi                                 #  6     0xd6aeb  2      OPC=movl_r32_r32    
  jmpq .wmemset                                   #  7     0xd6aed  5      OPC=jmpq_label_1    
  nop                                             #  8     0xd6af2  1      OPC=nop             
  nop                                             #  9     0xd6af3  1      OPC=nop             
  nop                                             #  10    0xd6af4  1      OPC=nop             
  nop                                             #  11    0xd6af5  1      OPC=nop             
  nop                                             #  12    0xd6af6  1      OPC=nop             
  nop                                             #  13    0xd6af7  1      OPC=nop             
  nop                                             #  14    0xd6af8  1      OPC=nop             
  nop                                             #  15    0xd6af9  1      OPC=nop             
  nop                                             #  16    0xd6afa  1      OPC=nop             
  nop                                             #  17    0xd6afb  1      OPC=nop             
  nop                                             #  18    0xd6afc  1      OPC=nop             
  nop                                             #  19    0xd6afd  1      OPC=nop             
  nop                                             #  20    0xd6afe  1      OPC=nop             
  nop                                             #  21    0xd6aff  1      OPC=nop             
.L_d6b00:                                         #        0xd6b00  0      OPC=<label>         
  popq %r11                                       #  22    0xd6b00  2      OPC=popq_r64_1      
  movl %edi, %edi                                 #  23    0xd6b02  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rdi,1)                        #  24    0xd6b04  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                         #  25    0xd6b08  7      OPC=andl_r32_imm32  
  nop                                             #  26    0xd6b0f  1      OPC=nop             
  nop                                             #  27    0xd6b10  1      OPC=nop             
  nop                                             #  28    0xd6b11  1      OPC=nop             
  nop                                             #  29    0xd6b12  1      OPC=nop             
  addq %r15, %r11                                 #  30    0xd6b13  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  31    0xd6b16  3      OPC=jmpq_r64        
  nop                                             #  32    0xd6b19  1      OPC=nop             
  nop                                             #  33    0xd6b1a  1      OPC=nop             
  nop                                             #  34    0xd6b1b  1      OPC=nop             
  nop                                             #  35    0xd6b1c  1      OPC=nop             
  nop                                             #  36    0xd6b1d  1      OPC=nop             
  nop                                             #  37    0xd6b1e  1      OPC=nop             
  nop                                             #  38    0xd6b1f  1      OPC=nop             
  nop                                             #  39    0xd6b20  1      OPC=nop             
  nop                                             #  40    0xd6b21  1      OPC=nop             
  nop                                             #  41    0xd6b22  1      OPC=nop             
  nop                                             #  42    0xd6b23  1      OPC=nop             
  nop                                             #  43    0xd6b24  1      OPC=nop             
  nop                                             #  44    0xd6b25  1      OPC=nop             
  nop                                             #  45    0xd6b26  1      OPC=nop             
                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw, .-_ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw

