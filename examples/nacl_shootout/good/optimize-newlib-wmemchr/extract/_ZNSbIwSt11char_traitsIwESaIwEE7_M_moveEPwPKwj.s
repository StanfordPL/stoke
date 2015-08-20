  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj
  .type _ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj, @function

#! file-offset 0x116b20
#! rip-offset  0xd6b20
#! capacity    64 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj:  #        0xd6b20  0      OPC=<label>         
  cmpl $0x1, %edx                                 #  1     0xd6b20  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi                                 #  2     0xd6b23  2      OPC=movl_r32_r32    
  movl %esi, %esi                                 #  3     0xd6b25  2      OPC=movl_r32_r32    
  je .L_d6b40                                     #  4     0xd6b27  2      OPC=je_label        
  jmpq .wmemmove                                  #  5     0xd6b29  5      OPC=jmpq_label_1    
  nop                                             #  6     0xd6b2e  1      OPC=nop             
  nop                                             #  7     0xd6b2f  1      OPC=nop             
  nop                                             #  8     0xd6b30  1      OPC=nop             
  nop                                             #  9     0xd6b31  1      OPC=nop             
  nop                                             #  10    0xd6b32  1      OPC=nop             
  nop                                             #  11    0xd6b33  1      OPC=nop             
  nop                                             #  12    0xd6b34  1      OPC=nop             
  nop                                             #  13    0xd6b35  1      OPC=nop             
  nop                                             #  14    0xd6b36  1      OPC=nop             
  nop                                             #  15    0xd6b37  1      OPC=nop             
  nop                                             #  16    0xd6b38  1      OPC=nop             
  nop                                             #  17    0xd6b39  1      OPC=nop             
  nop                                             #  18    0xd6b3a  1      OPC=nop             
  nop                                             #  19    0xd6b3b  1      OPC=nop             
  nop                                             #  20    0xd6b3c  1      OPC=nop             
  nop                                             #  21    0xd6b3d  1      OPC=nop             
  nop                                             #  22    0xd6b3e  1      OPC=nop             
  nop                                             #  23    0xd6b3f  1      OPC=nop             
.L_d6b40:                                         #        0xd6b40  0      OPC=<label>         
  popq %r11                                       #  24    0xd6b40  2      OPC=popq_r64_1      
  movl %esi, %esi                                 #  25    0xd6b42  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                        #  26    0xd6b44  4      OPC=movl_r32_m32    
  movl %edi, %edi                                 #  27    0xd6b48  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                        #  28    0xd6b4a  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                         #  29    0xd6b4e  7      OPC=andl_r32_imm32  
  nop                                             #  30    0xd6b55  1      OPC=nop             
  nop                                             #  31    0xd6b56  1      OPC=nop             
  nop                                             #  32    0xd6b57  1      OPC=nop             
  nop                                             #  33    0xd6b58  1      OPC=nop             
  addq %r15, %r11                                 #  34    0xd6b59  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  35    0xd6b5c  3      OPC=jmpq_r64        
  nop                                             #  36    0xd6b5f  1      OPC=nop             
  nop                                             #  37    0xd6b60  1      OPC=nop             
  nop                                             #  38    0xd6b61  1      OPC=nop             
  nop                                             #  39    0xd6b62  1      OPC=nop             
  nop                                             #  40    0xd6b63  1      OPC=nop             
  nop                                             #  41    0xd6b64  1      OPC=nop             
  nop                                             #  42    0xd6b65  1      OPC=nop             
  nop                                             #  43    0xd6b66  1      OPC=nop             
                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj, .-_ZNSbIwSt11char_traitsIwESaIwEE7_M_moveEPwPKwj

