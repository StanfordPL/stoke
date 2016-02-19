  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wcscpy:                        #        0     0      OPC=<label>         
  nop                           #  1     0     1      OPC=nop             
  movq %rdi, %rax               #  2     0x1   3      OPC=movq_r64_r64    
  shrl $0x40, %eax              #  3     0x4   3      OPC=shrl_r32_imm8   
  nop                           #  4     0x7   1      OPC=nop             
  nop                           #  5     0x8   1      OPC=nop             
  nop                           #  6     0x9   1      OPC=nop             
  leal (%rsi), %edx             #  7     0xa   2      OPC=leal_r32_m16    
  movl (%r15,%rdx,1), %edx      #  8     0xc   4      OPC=movl_r32_m32    
  nop                           #  9     0x10  1      OPC=nop             
  nop                           #  10    0x11  1      OPC=nop             
  nop                           #  11    0x12  1      OPC=nop             
  nop                           #  12    0x13  1      OPC=nop             
  movq %rax, %rcx               #  13    0x14  3      OPC=movq_r64_r64    
  nop                           #  14    0x17  1      OPC=nop             
  nop                           #  15    0x18  1      OPC=nop             
  nop                           #  16    0x19  1      OPC=nop             
  nop                           #  17    0x1a  1      OPC=nop             
  nop                           #  18    0x1b  1      OPC=nop             
  nop                           #  19    0x1c  1      OPC=nop             
  orq %rdx, %rdx                #  20    0x1d  3      OPC=orq_r64_r64_1   
  nop                           #  21    0x20  1      OPC=nop             
  nop                           #  22    0x21  1      OPC=nop             
  nop                           #  23    0x22  1      OPC=nop             
  nop                           #  24    0x23  1      OPC=nop             
  je .L_29                      #  25    0x24  2      OPC=je_label        
  nop                           #  26    0x26  1      OPC=nop             
  nop                           #  27    0x27  1      OPC=nop             
  nop                           #  28    0x28  1      OPC=nop             
.L_18:                          #        0x29  0      OPC=<label>         
  addl $0x4, %ecx               #  29    0x29  3      OPC=addl_r32_imm8   
  movl %edx, -0x4(%r15,%rcx,1)  #  30    0x2c  5      OPC=movl_m32_r32    
  addl $0x4, %esi               #  31    0x31  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %edx      #  32    0x34  4      OPC=movl_r32_m32    
  testl %edx, %edx              #  33    0x38  2      OPC=testl_r32_r32   
  jne .L_18                     #  34    0x3a  2      OPC=jne_label       
  nop                           #  35    0x3c  1      OPC=nop             
  nop                           #  36    0x3d  1      OPC=nop             
  nop                           #  37    0x3e  1      OPC=nop             
  nop                           #  38    0x3f  1      OPC=nop             
  nop                           #  39    0x40  1      OPC=nop             
.L_29:                          #        0x41  0      OPC=<label>         
  nop                           #  40    0x41  1      OPC=nop             
  nop                           #  41    0x42  1      OPC=nop             
  nop                           #  42    0x43  1      OPC=nop             
  nop                           #  43    0x44  1      OPC=nop             
  leal (%rcx), %r8d             #  44    0x45  3      OPC=leal_r32_m64    
  movl $0x0, (%r15,%r8,1)       #  45    0x48  8      OPC=movl_m32_imm32  
  nop                           #  46    0x50  1      OPC=nop             
  nop                           #  47    0x51  1      OPC=nop             
  retq                          #  48    0x52  1      OPC=retq            
                                                                          
.size wcscpy, .-wcscpy
