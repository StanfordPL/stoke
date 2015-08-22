  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw, @function

#! file-offset 0x117200
#! rip-offset  0xd7200
#! capacity    64 bytes

# Text                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw:  #        0xd7200  0      OPC=<label>         
  cmpl $0x1, %esi                                 #  1     0xd7200  3      OPC=cmpl_r32_imm8   
  movl %edx, %eax                                 #  2     0xd7203  2      OPC=movl_r32_r32    
  movl %edi, %edi                                 #  3     0xd7205  2      OPC=movl_r32_r32    
  je .L_d7220                                     #  4     0xd7207  2      OPC=je_label        
  movl %esi, %edx                                 #  5     0xd7209  2      OPC=movl_r32_r32    
  movl %eax, %esi                                 #  6     0xd720b  2      OPC=movl_r32_r32    
  jmpq .wmemset                                   #  7     0xd720d  5      OPC=jmpq_label_1    
  nop                                             #  8     0xd7212  1      OPC=nop             
  nop                                             #  9     0xd7213  1      OPC=nop             
  nop                                             #  10    0xd7214  1      OPC=nop             
  nop                                             #  11    0xd7215  1      OPC=nop             
  nop                                             #  12    0xd7216  1      OPC=nop             
  nop                                             #  13    0xd7217  1      OPC=nop             
  nop                                             #  14    0xd7218  1      OPC=nop             
  nop                                             #  15    0xd7219  1      OPC=nop             
  nop                                             #  16    0xd721a  1      OPC=nop             
  nop                                             #  17    0xd721b  1      OPC=nop             
  nop                                             #  18    0xd721c  1      OPC=nop             
  nop                                             #  19    0xd721d  1      OPC=nop             
  nop                                             #  20    0xd721e  1      OPC=nop             
  nop                                             #  21    0xd721f  1      OPC=nop             
.L_d7220:                                         #        0xd7220  0      OPC=<label>         
  popq %r11                                       #  22    0xd7220  2      OPC=popq_r64_1      
  movl %edi, %edi                                 #  23    0xd7222  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rdi,1)                        #  24    0xd7224  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                         #  25    0xd7228  7      OPC=andl_r32_imm32  
  nop                                             #  26    0xd722f  1      OPC=nop             
  nop                                             #  27    0xd7230  1      OPC=nop             
  nop                                             #  28    0xd7231  1      OPC=nop             
  nop                                             #  29    0xd7232  1      OPC=nop             
  addq %r15, %r11                                 #  30    0xd7233  3      OPC=addq_r64_r64    
  jmpq %r11                                       #  31    0xd7236  3      OPC=jmpq_r64        
  nop                                             #  32    0xd7239  1      OPC=nop             
  nop                                             #  33    0xd723a  1      OPC=nop             
  nop                                             #  34    0xd723b  1      OPC=nop             
  nop                                             #  35    0xd723c  1      OPC=nop             
  nop                                             #  36    0xd723d  1      OPC=nop             
  nop                                             #  37    0xd723e  1      OPC=nop             
  nop                                             #  38    0xd723f  1      OPC=nop             
  nop                                             #  39    0xd7240  1      OPC=nop             
  nop                                             #  40    0xd7241  1      OPC=nop             
  nop                                             #  41    0xd7242  1      OPC=nop             
  nop                                             #  42    0xd7243  1      OPC=nop             
  nop                                             #  43    0xd7244  1      OPC=nop             
  nop                                             #  44    0xd7245  1      OPC=nop             
  nop                                             #  45    0xd7246  1      OPC=nop             
                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw, .-_ZNSbIwSt11char_traitsIwESaIwEE9_M_assignEPwjw

