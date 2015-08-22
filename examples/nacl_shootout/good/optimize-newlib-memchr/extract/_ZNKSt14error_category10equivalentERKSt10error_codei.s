  .text
  .globl _ZNKSt14error_category10equivalentERKSt10error_codei
  .type _ZNKSt14error_category10equivalentERKSt10error_codei, @function

#! file-offset 0x12a3e0
#! rip-offset  0xea3e0
#! capacity    64 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt14error_category10equivalentERKSt10error_codei:  #        0xea3e0  0      OPC=<label>         
  movl %esi, %esi                                       #  1     0xea3e0  2      OPC=movl_r32_r32    
  xorl %eax, %eax                                       #  2     0xea3e2  2      OPC=xorl_r32_r32    
  movl %esi, %esi                                       #  3     0xea3e4  2      OPC=movl_r32_r32    
  cmpl 0x4(%r15,%rsi,1), %edi                           #  4     0xea3e6  5      OPC=cmpl_r32_m32    
  je .L_ea400                                           #  5     0xea3eb  2      OPC=je_label        
  popq %r11                                             #  6     0xea3ed  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  7     0xea3ef  7      OPC=andl_r32_imm32  
  nop                                                   #  8     0xea3f6  1      OPC=nop             
  nop                                                   #  9     0xea3f7  1      OPC=nop             
  nop                                                   #  10    0xea3f8  1      OPC=nop             
  nop                                                   #  11    0xea3f9  1      OPC=nop             
  addq %r15, %r11                                       #  12    0xea3fa  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  13    0xea3fd  3      OPC=jmpq_r64        
  nop                                                   #  14    0xea400  1      OPC=nop             
  nop                                                   #  15    0xea401  1      OPC=nop             
  nop                                                   #  16    0xea402  1      OPC=nop             
  nop                                                   #  17    0xea403  1      OPC=nop             
  nop                                                   #  18    0xea404  1      OPC=nop             
  nop                                                   #  19    0xea405  1      OPC=nop             
  nop                                                   #  20    0xea406  1      OPC=nop             
.L_ea400:                                               #        0xea407  0      OPC=<label>         
  movl %esi, %esi                                       #  21    0xea407  2      OPC=movl_r32_r32    
  cmpl (%r15,%rsi,1), %edx                              #  22    0xea409  4      OPC=cmpl_r32_m32    
  sete %al                                              #  23    0xea40d  3      OPC=sete_r8         
  popq %r11                                             #  24    0xea410  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  25    0xea412  7      OPC=andl_r32_imm32  
  nop                                                   #  26    0xea419  1      OPC=nop             
  nop                                                   #  27    0xea41a  1      OPC=nop             
  nop                                                   #  28    0xea41b  1      OPC=nop             
  nop                                                   #  29    0xea41c  1      OPC=nop             
  addq %r15, %r11                                       #  30    0xea41d  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  31    0xea420  3      OPC=jmpq_r64        
  nop                                                   #  32    0xea423  1      OPC=nop             
  nop                                                   #  33    0xea424  1      OPC=nop             
  nop                                                   #  34    0xea425  1      OPC=nop             
  nop                                                   #  35    0xea426  1      OPC=nop             
  nop                                                   #  36    0xea427  1      OPC=nop             
  nop                                                   #  37    0xea428  1      OPC=nop             
  nop                                                   #  38    0xea429  1      OPC=nop             
  nop                                                   #  39    0xea42a  1      OPC=nop             
  nop                                                   #  40    0xea42b  1      OPC=nop             
  nop                                                   #  41    0xea42c  1      OPC=nop             
  nop                                                   #  42    0xea42d  1      OPC=nop             
                                                                                                     
.size _ZNKSt14error_category10equivalentERKSt10error_codei, .-_ZNKSt14error_category10equivalentERKSt10error_codei

