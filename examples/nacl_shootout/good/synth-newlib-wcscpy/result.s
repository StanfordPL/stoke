  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wcscpy:                        #        0     0      OPC=<label>         
  leal (%rsi), %edx             #  1     0     2      OPC=leal_r32_m16    
  movq (%r15,%rdx,1), %rdx      #  2     0x2   4      OPC=movq_r64_m64    
  nop                           #  3     0x6   1      OPC=nop             
  nop                           #  4     0x7   1      OPC=nop             
  nop                           #  5     0x8   1      OPC=nop             
  nop                           #  6     0x9   1      OPC=nop             
  nop                           #  7     0xa   1      OPC=nop             
  nop                           #  8     0xb   1      OPC=nop             
  movq %rdi, %rcx               #  9     0xc   3      OPC=movq_r64_r64    
  movq %rcx, %rax               #  10    0xf   3      OPC=movq_r64_r64    
  testl %edx, %edx              #  11    0x12  2      OPC=testl_r32_r32   
  je .L_29                      #  12    0x14  2      OPC=je_label        
  nop                           #  13    0x16  1      OPC=nop             
  nop                           #  14    0x17  1      OPC=nop             
  nop                           #  15    0x18  1      OPC=nop             
  nop                           #  16    0x19  1      OPC=nop             
  nop                           #  17    0x1a  1      OPC=nop             
  nop                           #  18    0x1b  1      OPC=nop             
  nop                           #  19    0x1c  1      OPC=nop             
  nop                           #  20    0x1d  1      OPC=nop             
  nop                           #  21    0x1e  1      OPC=nop             
  nop                           #  22    0x1f  1      OPC=nop             
.L_18:                          #        0x20  0      OPC=<label>         
  addl $0x4, %ecx               #  23    0x20  3      OPC=addl_r32_imm8   
  movq %rdx, -0x4(%r15,%rcx,1)  #  24    0x23  5      OPC=movq_m64_r64    
  addl $0x4, %esi               #  25    0x28  6      OPC=addl_r32_imm32  
  movl (%r15,%rsi,1), %edx      #  26    0x2e  4      OPC=movl_r32_m32    
  testl %edx, %edx              #  27    0x32  2      OPC=testl_r32_r32   
  jne .L_18                     #  28    0x34  2      OPC=jne_label       
  nop                           #  29    0x36  1      OPC=nop             
  nop                           #  30    0x37  1      OPC=nop             
  nop                           #  31    0x38  1      OPC=nop             
  nop                           #  32    0x39  1      OPC=nop             
  nop                           #  33    0x3a  1      OPC=nop             
  nop                           #  34    0x3b  1      OPC=nop             
  nop                           #  35    0x3c  1      OPC=nop             
  nop                           #  36    0x3d  1      OPC=nop             
  nop                           #  37    0x3e  1      OPC=nop             
  nop                           #  38    0x3f  1      OPC=nop             
.L_29:                          #        0x40  0      OPC=<label>         
  nop                           #  39    0x40  1      OPC=nop             
  nop                           #  40    0x41  1      OPC=nop             
  nop                           #  41    0x42  1      OPC=nop             
  nop                           #  42    0x43  1      OPC=nop             
  nop                           #  43    0x44  1      OPC=nop             
  nop                           #  44    0x45  1      OPC=nop             
  leal (%rcx), %r8d             #  45    0x46  3      OPC=leal_r32_m16    
  movl $0x0, (%r15,%r8,1)       #  46    0x49  8      OPC=movl_m32_imm32  
  popq %r11                     #  47    0x51  2      OPC=popq_r64_1      
  andl $0xe0, %r11d             #  48    0x53  4      OPC=andl_r32_imm8   
  addq %r15, %r11               #  49    0x57  3      OPC=addq_r64_r64    
  jmpq %r11                     #  50    0x5a  3      OPC=jmpq_r64        
                                                                          
.size wcscpy, .-wcscpy
