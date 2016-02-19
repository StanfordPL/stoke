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
  movl %edi, %ecx               #  3     0x2   2      OPC=movl_r32_r32    
  nop                           #  4     0x4   1      OPC=nop             
  nop                           #  5     0x5   1      OPC=nop             
  nop                           #  6     0x6   1      OPC=nop             
  nop                           #  7     0x7   1      OPC=nop             
  nop                           #  8     0x8   1      OPC=nop             
  leal (%rsi), %edx             #  9     0x9   2      OPC=leal_r32_m16    
  movq (%r15,%rdx,1), %rdx      #  10    0xb   4      OPC=movq_r64_m64    
  nop                           #  11    0xf   1      OPC=nop             
  nop                           #  12    0x10  1      OPC=nop             
  nop                           #  13    0x11  1      OPC=nop             
  nop                           #  14    0x12  1      OPC=nop             
  movl %ecx, %eax               #  15    0x13  2      OPC=movl_r32_r32    
  nop                           #  16    0x15  1      OPC=nop             
  nop                           #  17    0x16  1      OPC=nop             
  nop                           #  18    0x17  1      OPC=nop             
  nop                           #  19    0x18  1      OPC=nop             
  testl %edx, %edx              #  20    0x19  2      OPC=testl_r32_r32   
  nop                           #  21    0x1b  1      OPC=nop             
  nop                           #  22    0x1c  1      OPC=nop             
  nop                           #  23    0x1d  1      OPC=nop             
  nop                           #  24    0x1e  1      OPC=nop             
  nop                           #  25    0x1f  1      OPC=nop             
  nop                           #  26    0x20  1      OPC=nop             
  je .L_29                      #  27    0x21  2      OPC=je_label        
.L_18:                          #        0x23  0      OPC=<label>         
  addl $0x4, %ecx               #  28    0x23  3      OPC=addl_r32_imm8   
  movl %edx, -0x4(%r15,%rcx,1)  #  29    0x26  5      OPC=movl_m32_r32    
  addl $0x4, %esi               #  30    0x2b  6      OPC=addl_r32_imm32  
  movl (%r15,%rsi,1), %edx      #  31    0x31  4      OPC=movl_r32_m32    
  testl %edx, %edx              #  32    0x35  2      OPC=testl_r32_r32   
  jne .L_18                     #  33    0x37  2      OPC=jne_label       
  nop                           #  34    0x39  1      OPC=nop             
  nop                           #  35    0x3a  1      OPC=nop             
  nop                           #  36    0x3b  1      OPC=nop             
  nop                           #  37    0x3c  1      OPC=nop             
  nop                           #  38    0x3d  1      OPC=nop             
  nop                           #  39    0x3e  1      OPC=nop             
  nop                           #  40    0x3f  1      OPC=nop             
.L_29:                          #        0x40  0      OPC=<label>         
  leal (%rcx), %r8d             #  41    0x40  3      OPC=leal_r32_m64    
  andl $0x0, (%r15,%r8,1)       #  42    0x43  8      OPC=andl_m32_imm32  
  retq                          #  43    0x4b  1      OPC=retq            
                                                                          
.size wcscpy, .-wcscpy
