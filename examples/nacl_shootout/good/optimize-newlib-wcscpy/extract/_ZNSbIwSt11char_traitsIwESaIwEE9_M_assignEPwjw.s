  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw, @function

#! file-offset 0x1167e0
#! rip-offset  0xd67e0
#! capacity    64 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw:  #        0xd67e0  0      OPC=<label>         
  cmpl $0x1, %esi                                 #  1     0xd67e0  3      OPC=cmpl_r32_imm8   
  movl %edx, %eax                                 #  2     0xd67e3  2      OPC=movl_r32_r32    
  movl %edi, %edi                                 #  3     0xd67e5  2      OPC=movl_r32_r32    
  je .L_d6800                                     #  4     0xd67e7  2      OPC=je_label        
  movl %esi, %edx                                 #  5     0xd67e9  2      OPC=movl_r32_r32    
  movl %eax, %esi                                 #  6     0xd67eb  2      OPC=movl_r32_r32    
  jmpq .wmemset                                   #  7     0xd67ed  5      OPC=jmpq_label_1    
  nop                                             #  8     0xd67f2  1      OPC=nop             
  nop                                             #  9     0xd67f3  1      OPC=nop             
  nop                                             #  10    0xd67f4  1      OPC=nop             
  nop                                             #  11    0xd67f5  1      OPC=nop             
  nop                                             #  12    0xd67f6  1      OPC=nop             
  nop                                             #  13    0xd67f7  1      OPC=nop             
  nop                                             #  14    0xd67f8  1      OPC=nop             
  nop                                             #  15    0xd67f9  1      OPC=nop             
  nop                                             #  16    0xd67fa  1      OPC=nop             
  nop                                             #  17    0xd67fb  1      OPC=nop             
  nop                                             #  18    0xd67fc  1      OPC=nop             
  nop                                             #  19    0xd67fd  1      OPC=nop             
  nop                                             #  20    0xd67fe  1      OPC=nop             
  nop                                             #  21    0xd67ff  1      OPC=nop             
.L_d6800:                                         #        0xd6800  0      OPC=<label>         
  popq %r11                                       #  22    0xd6800  2      OPC=popq_r64_1      
  movl %edi, %edi                                 #  23    0xd6802  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rdi,1)                        #  24    0xd6804  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                         #  25    0xd6808  7      OPC=andl_r32_imm32  
  nop                                             #  26    0xd680f  1      OPC=nop             
  nop                                             #  27    0xd6810  1      OPC=nop             
  nop                                             #  28    0xd6811  1      OPC=nop             
  nop                                             #  29    0xd6812  1      OPC=nop             
  addq %r15, %r11                                 #  30    0xd6813  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  31    0xd6816  3      OPC=jmpq_r64        
  nop                                             #  32    0xd6819  1      OPC=nop             
  nop                                             #  33    0xd681a  1      OPC=nop             
  nop                                             #  34    0xd681b  1      OPC=nop             
  nop                                             #  35    0xd681c  1      OPC=nop             
  nop                                             #  36    0xd681d  1      OPC=nop             
  nop                                             #  37    0xd681e  1      OPC=nop             
  nop                                             #  38    0xd681f  1      OPC=nop             
  nop                                             #  39    0xd6820  1      OPC=nop             
  nop                                             #  40    0xd6821  1      OPC=nop             
  nop                                             #  41    0xd6822  1      OPC=nop             
  nop                                             #  42    0xd6823  1      OPC=nop             
  nop                                             #  43    0xd6824  1      OPC=nop             
  nop                                             #  44    0xd6825  1      OPC=nop             
  nop                                             #  45    0xd6826  1      OPC=nop             
                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw, .-_ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw

