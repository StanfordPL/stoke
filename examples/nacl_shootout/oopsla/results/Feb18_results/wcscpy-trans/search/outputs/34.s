  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wcscpy:                        #        0     0      OPC=<label>         
  nop                           #  1     0     1      OPC=nop             
  movl %edi, %ecx               #  2     0x1   2      OPC=movl_r32_r32    
  nop                           #  3     0x3   1      OPC=nop             
  nop                           #  4     0x4   1      OPC=nop             
  nop                           #  5     0x5   1      OPC=nop             
  nop                           #  6     0x6   1      OPC=nop             
  leal (%rsi), %edx             #  7     0x7   2      OPC=leal_r32_m16    
  movl (%r15,%rdx,1), %edx      #  8     0x9   4      OPC=movl_r32_m32    
  testl %edx, %edx              #  9     0xd   2      OPC=testl_r32_r32   
  je .L_29                      #  10    0xf   2      OPC=je_label        
.L_18:                          #        0x11  0      OPC=<label>         
  addl $0x4, %ecx               #  11    0x11  3      OPC=addl_r32_imm8   
  movq %rdx, -0x4(%r15,%rcx,1)  #  12    0x14  5      OPC=movq_m64_r64    
  addl $0x4, %esi               #  13    0x19  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %edx      #  14    0x1c  4      OPC=movl_r32_m32    
  andq %rdx, %rdx               #  15    0x20  3      OPC=andq_r64_r64    
  jne .L_18                     #  16    0x23  2      OPC=jne_label       
  nop                           #  17    0x25  1      OPC=nop             
  nop                           #  18    0x26  1      OPC=nop             
.L_29:                          #        0x27  0      OPC=<label>         
  leal (%rcx), %r8d             #  19    0x27  3      OPC=leal_r32_m32    
  andl $0x0, (%r15,%r8,1)       #  20    0x2a  8      OPC=andl_m32_imm32  
  movl %edi, %eax               #  21    0x32  2      OPC=movl_r32_r32_1  
  retq                          #  22    0x34  1      OPC=retq            
                                                                          
.size wcscpy, .-wcscpy
