  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wcscpy:                        #        0     0      OPC=<label>         
  nop                           #  1     0     1      OPC=nop             
  nop                           #  2     0x1   1      OPC=nop             
  nop                           #  3     0x2   1      OPC=nop             
  leal (%rsi), %edx             #  4     0x3   2      OPC=leal_r32_m16    
  movl (%r15,%rdx,1), %edx      #  5     0x5   4      OPC=movl_r32_m32    
  nop                           #  6     0x9   1      OPC=nop             
  nop                           #  7     0xa   1      OPC=nop             
  nop                           #  8     0xb   1      OPC=nop             
  nop                           #  9     0xc   1      OPC=nop             
  nop                           #  10    0xd   1      OPC=nop             
  movl %edi, %eax               #  11    0xe   2      OPC=movl_r32_r32    
  nop                           #  12    0x10  1      OPC=nop             
  nop                           #  13    0x11  1      OPC=nop             
  nop                           #  14    0x12  1      OPC=nop             
  nop                           #  15    0x13  1      OPC=nop             
  nop                           #  16    0x14  1      OPC=nop             
  nop                           #  17    0x15  1      OPC=nop             
  nop                           #  18    0x16  1      OPC=nop             
  movl %edi, %ecx               #  19    0x17  2      OPC=movl_r32_r32_1  
  testl %edx, %edx              #  20    0x19  2      OPC=testl_r32_r32   
  nop                           #  21    0x1b  1      OPC=nop             
  nop                           #  22    0x1c  1      OPC=nop             
  nop                           #  23    0x1d  1      OPC=nop             
  je .L_29                      #  24    0x1e  2      OPC=je_label        
.L_18:                          #        0x20  0      OPC=<label>         
  addl $0x4, %ecx               #  25    0x20  6      OPC=addl_r32_imm32  
  movq %rdx, -0x4(%r15,%rcx,1)  #  26    0x26  5      OPC=movq_m64_r64    
  addl $0x4, %esi               #  27    0x2b  6      OPC=addl_r32_imm32  
  movl (%r15,%rsi,1), %edx      #  28    0x31  4      OPC=movl_r32_m32    
  testl %edx, %edx              #  29    0x35  2      OPC=testl_r32_r32   
  jne .L_18                     #  30    0x37  2      OPC=jne_label       
  nop                           #  31    0x39  1      OPC=nop             
  nop                           #  32    0x3a  1      OPC=nop             
  nop                           #  33    0x3b  1      OPC=nop             
  nop                           #  34    0x3c  1      OPC=nop             
  nop                           #  35    0x3d  1      OPC=nop             
  nop                           #  36    0x3e  1      OPC=nop             
  nop                           #  37    0x3f  1      OPC=nop             
.L_29:                          #        0x40  0      OPC=<label>         
  xorl %edx, %ecx               #  38    0x40  2      OPC=xorl_r32_r32_1  
  andl $0x0, (%r15,%rcx,1)      #  39    0x42  8      OPC=andl_m32_imm32  
  nop                           #  40    0x4a  1      OPC=nop             
  nop                           #  41    0x4b  1      OPC=nop             
  nop                           #  42    0x4c  1      OPC=nop             
  retq                          #  43    0x4d  1      OPC=retq            
                                                                          
.size wcscpy, .-wcscpy
