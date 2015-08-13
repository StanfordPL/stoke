  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj
  .type _ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj, @function

#! file-offset 0x116860
#! rip-offset  0xd6860
#! capacity    64 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj:  #        0xd6860  0      OPC=<label>         
  cmpl $0x1, %edx                                 #  1     0xd6860  3      OPC=cmpl_r32_imm8   
  movl %edi, %edi                                 #  2     0xd6863  2      OPC=movl_r32_r32    
  movl %esi, %esi                                 #  3     0xd6865  2      OPC=movl_r32_r32    
  je .L_d6880                                     #  4     0xd6867  2      OPC=je_label        
  jmpq .wmemcpy                                   #  5     0xd6869  5      OPC=jmpq_label_1    
  nop                                             #  6     0xd686e  1      OPC=nop             
  nop                                             #  7     0xd686f  1      OPC=nop             
  nop                                             #  8     0xd6870  1      OPC=nop             
  nop                                             #  9     0xd6871  1      OPC=nop             
  nop                                             #  10    0xd6872  1      OPC=nop             
  nop                                             #  11    0xd6873  1      OPC=nop             
  nop                                             #  12    0xd6874  1      OPC=nop             
  nop                                             #  13    0xd6875  1      OPC=nop             
  nop                                             #  14    0xd6876  1      OPC=nop             
  nop                                             #  15    0xd6877  1      OPC=nop             
  nop                                             #  16    0xd6878  1      OPC=nop             
  nop                                             #  17    0xd6879  1      OPC=nop             
  nop                                             #  18    0xd687a  1      OPC=nop             
  nop                                             #  19    0xd687b  1      OPC=nop             
  nop                                             #  20    0xd687c  1      OPC=nop             
  nop                                             #  21    0xd687d  1      OPC=nop             
  nop                                             #  22    0xd687e  1      OPC=nop             
  nop                                             #  23    0xd687f  1      OPC=nop             
.L_d6880:                                         #        0xd6880  0      OPC=<label>         
  popq %r11                                       #  24    0xd6880  2      OPC=popq_r64_1      
  movl %esi, %esi                                 #  25    0xd6882  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                        #  26    0xd6884  4      OPC=movl_r32_m32    
  movl %edi, %edi                                 #  27    0xd6888  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                        #  28    0xd688a  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                         #  29    0xd688e  7      OPC=andl_r32_imm32  
  nop                                             #  30    0xd6895  1      OPC=nop             
  nop                                             #  31    0xd6896  1      OPC=nop             
  nop                                             #  32    0xd6897  1      OPC=nop             
  nop                                             #  33    0xd6898  1      OPC=nop             
  addq %r15, %r11                                 #  34    0xd6899  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  35    0xd689c  3      OPC=jmpq_r64        
  nop                                             #  36    0xd689f  1      OPC=nop             
  nop                                             #  37    0xd68a0  1      OPC=nop             
  nop                                             #  38    0xd68a1  1      OPC=nop             
  nop                                             #  39    0xd68a2  1      OPC=nop             
  nop                                             #  40    0xd68a3  1      OPC=nop             
  nop                                             #  41    0xd68a4  1      OPC=nop             
  nop                                             #  42    0xd68a5  1      OPC=nop             
  nop                                             #  43    0xd68a6  1      OPC=nop             
                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj, .-_ZNSbIwSt11char_traitsIwESaIwEE7_M_copyEPwPKwj

