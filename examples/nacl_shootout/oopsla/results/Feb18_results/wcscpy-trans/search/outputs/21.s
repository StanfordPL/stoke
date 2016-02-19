  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wcscpy:                        #        0     0      OPC=<label>         
  leal (%rsi), %edx             #  1     0     2      OPC=leal_r32_m32    
  movq (%r15,%rdx,1), %rdx      #  2     0x2   4      OPC=movq_r64_m64    
  movq %rdi, %rcx               #  3     0x6   3      OPC=movq_r64_r64    
  testl %edx, %edx              #  4     0x9   2      OPC=testl_r32_r32   
  je .L_29                      #  5     0xb   2      OPC=je_label        
.L_18:                          #        0xd   0      OPC=<label>         
  addl $0x4, %ecx               #  6     0xd   3      OPC=addl_r32_imm8   
  movq %rdx, -0x4(%r15,%rcx,1)  #  7     0x10  5      OPC=movq_m64_r64    
  addl $0x4, %esi               #  8     0x15  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %edx      #  9     0x18  4      OPC=movl_r32_m32    
  orq $0x0, %rdx                #  10    0x1c  4      OPC=orq_r64_imm8    
  jne .L_18                     #  11    0x20  2      OPC=jne_label       
  nop                           #  12    0x22  1      OPC=nop             
  nop                           #  13    0x23  1      OPC=nop             
  nop                           #  14    0x24  1      OPC=nop             
  nop                           #  15    0x25  1      OPC=nop             
  nop                           #  16    0x26  1      OPC=nop             
  nop                           #  17    0x27  1      OPC=nop             
  nop                           #  18    0x28  1      OPC=nop             
  nop                           #  19    0x29  1      OPC=nop             
.L_29:                          #        0x2a  0      OPC=<label>         
  leal (%rcx), %r8d             #  20    0x2a  3      OPC=leal_r32_m16    
  movl $0x0, (%r15,%r8,1)       #  21    0x2d  8      OPC=movl_m32_imm32  
  nop                           #  22    0x35  1      OPC=nop             
  nop                           #  23    0x36  1      OPC=nop             
  movl %edi, %eax               #  24    0x37  2      OPC=movl_r32_r32_1  
  nop                           #  25    0x39  1      OPC=nop             
  nop                           #  26    0x3a  1      OPC=nop             
  nop                           #  27    0x3b  1      OPC=nop             
  nop                           #  28    0x3c  1      OPC=nop             
  nop                           #  29    0x3d  1      OPC=nop             
  nop                           #  30    0x3e  1      OPC=nop             
  nop                           #  31    0x3f  1      OPC=nop             
  nop                           #  32    0x40  1      OPC=nop             
  retq                          #  33    0x41  1      OPC=retq            
                                                                          
.size wcscpy, .-wcscpy
