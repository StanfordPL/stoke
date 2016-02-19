  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wcscpy:                        #        0     0      OPC=<label>         
  leal (%rsi), %edx             #  1     0     2      OPC=leal_r32_m64    
  movq (%r15,%rdx,1), %rdx      #  2     0x2   4      OPC=movq_r64_m64    
  testl %edx, %edx              #  3     0x6   2      OPC=testl_r32_r32   
  movl %edi, %eax               #  4     0x8   2      OPC=movl_r32_r32_1  
  movq %rdi, %rcx               #  5     0xa   3      OPC=movq_r64_r64_1  
  nop                           #  6     0xd   1      OPC=nop             
  nop                           #  7     0xe   1      OPC=nop             
  nop                           #  8     0xf   1      OPC=nop             
  nop                           #  9     0x10  1      OPC=nop             
  nop                           #  10    0x11  1      OPC=nop             
  nop                           #  11    0x12  1      OPC=nop             
  nop                           #  12    0x13  1      OPC=nop             
  nop                           #  13    0x14  1      OPC=nop             
  nop                           #  14    0x15  1      OPC=nop             
  nop                           #  15    0x16  1      OPC=nop             
  nop                           #  16    0x17  1      OPC=nop             
  nop                           #  17    0x18  1      OPC=nop             
  nop                           #  18    0x19  1      OPC=nop             
  nop                           #  19    0x1a  1      OPC=nop             
  nop                           #  20    0x1b  1      OPC=nop             
  nop                           #  21    0x1c  1      OPC=nop             
  je .L_29                      #  22    0x1d  2      OPC=je_label        
  nop                           #  23    0x1f  1      OPC=nop             
  nop                           #  24    0x20  1      OPC=nop             
  nop                           #  25    0x21  1      OPC=nop             
  nop                           #  26    0x22  1      OPC=nop             
.L_18:                          #        0x23  0      OPC=<label>         
  addl $0x4, %ecx               #  27    0x23  6      OPC=addl_r32_imm32  
  movq %rdx, -0x4(%r15,%rcx,1)  #  28    0x29  5      OPC=movq_m64_r64    
  addl $0x4, %esi               #  29    0x2e  6      OPC=addl_r32_imm32  
  movl (%r15,%rsi,1), %edx      #  30    0x34  4      OPC=movl_r32_m32    
  testl %edx, %edx              #  31    0x38  2      OPC=testl_r32_r32   
  jne .L_18                     #  32    0x3a  2      OPC=jne_label       
  nop                           #  33    0x3c  1      OPC=nop             
  nop                           #  34    0x3d  1      OPC=nop             
  nop                           #  35    0x3e  1      OPC=nop             
  nop                           #  36    0x3f  1      OPC=nop             
.L_29:                          #        0x40  0      OPC=<label>         
  leal (%rcx), %r8d             #  37    0x40  3      OPC=leal_r32_m16    
  andl $0x0, (%r15,%r8,1)       #  38    0x43  5      OPC=andl_m32_imm8   
  retq                          #  39    0x48  1      OPC=retq            
                                                                          
.size wcscpy, .-wcscpy
