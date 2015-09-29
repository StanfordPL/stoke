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
  nop                           #  4     0x3   1      OPC=nop             
  nop                           #  5     0x4   1      OPC=nop             
  nop                           #  6     0x5   1      OPC=nop             
  nop                           #  7     0x6   1      OPC=nop             
  nop                           #  8     0x7   1      OPC=nop             
  nop                           #  9     0x8   1      OPC=nop             
  nop                           #  10    0x9   1      OPC=nop             
  nop                           #  11    0xa   1      OPC=nop             
  nop                           #  12    0xb   1      OPC=nop             
  nop                           #  13    0xc   1      OPC=nop             
  nop                           #  14    0xd   1      OPC=nop             
  leal (%rsi), %edx             #  15    0xe   2      OPC=leal_r32_m32    
  movl (%r15,%rdx,1), %edx      #  16    0x10  4      OPC=movl_r32_m32    
  movq %rdi, %rcx               #  17    0x14  3      OPC=movq_r64_r64    
  testl %edx, %edx              #  18    0x17  2      OPC=testl_r32_r32   
  nop                           #  19    0x19  1      OPC=nop             
  nop                           #  20    0x1a  1      OPC=nop             
  movq %rdi, %rax               #  21    0x1b  3      OPC=movq_r64_r64_1  
  je .L_29                      #  22    0x1e  2      OPC=je_label        
.L_18:                          #        0x20  0      OPC=<label>         
  addl $0x4, %ecx               #  23    0x20  3      OPC=addl_r32_imm8   
  movq %rdx, -0x4(%r15,%rcx,1)  #  24    0x23  5      OPC=movq_m64_r64    
  addl $0x4, %esi               #  25    0x28  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %edx      #  26    0x2b  4      OPC=movl_r32_m32    
  testl %edx, %edx              #  27    0x2f  2      OPC=testl_r32_r32   
  jne .L_18                     #  28    0x31  2      OPC=jne_label       
  nop                           #  29    0x33  1      OPC=nop             
  nop                           #  30    0x34  1      OPC=nop             
  nop                           #  31    0x35  1      OPC=nop             
  nop                           #  32    0x36  1      OPC=nop             
  nop                           #  33    0x37  1      OPC=nop             
  nop                           #  34    0x38  1      OPC=nop             
  nop                           #  35    0x39  1      OPC=nop             
  nop                           #  36    0x3a  1      OPC=nop             
  nop                           #  37    0x3b  1      OPC=nop             
  nop                           #  38    0x3c  1      OPC=nop             
  nop                           #  39    0x3d  1      OPC=nop             
  nop                           #  40    0x3e  1      OPC=nop             
  nop                           #  41    0x3f  1      OPC=nop             
.L_29:                          #        0x40  0      OPC=<label>         
  leal (%rcx), %r8d             #  42    0x40  3      OPC=leal_r32_m16    
  movl $0x0, (%r15,%r8,1)       #  43    0x43  8      OPC=movl_m32_imm32  
  retq
                                                                          
.size wcscpy, .-wcscpy
