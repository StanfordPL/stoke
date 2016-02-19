  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wcscpy:                        #        0     0      OPC=<label>         
  leal (%rsi), %edx             #  1     0     2      OPC=leal_r32_m64    
  movl (%r15,%rdx,1), %edx      #  2     0x2   4      OPC=movl_r32_m32    
  movl %edi, %eax               #  3     0x6   2      OPC=movl_r32_r32    
  movq %rax, %rcx               #  4     0x8   3      OPC=movq_r64_r64_1  
  testl %edx, %edx              #  5     0xb   2      OPC=testl_r32_r32   
  je .L_29                      #  6     0xd   2      OPC=je_label        
.L_18:                          #        0xf   0      OPC=<label>         
  addl $0x4, %ecx               #  7     0xf   3      OPC=addl_r32_imm8   
  movq %rdx, -0x4(%r15,%rcx,1)  #  8     0x12  5      OPC=movq_m64_r64    
  addl $0x4, %esi               #  9     0x17  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %edx      #  10    0x1a  4      OPC=movl_r32_m32    
  testl %edx, %edx              #  11    0x1e  2      OPC=testl_r32_r32   
  jne .L_18                     #  12    0x20  2      OPC=jne_label       
.L_29:                          #        0x22  0      OPC=<label>         
  leal (%rcx), %r8d             #  13    0x22  3      OPC=leal_r32_m16    
  andl $0x0, (%r15,%r8,1)       #  14    0x25  5      OPC=andl_m32_imm8   
  nop                           #  15    0x2a  1      OPC=nop             
  nop                           #  16    0x2b  1      OPC=nop             
  nop                           #  17    0x2c  1      OPC=nop             
  retq                          #  18    0x2d  1      OPC=retq            
                                                                          
.size wcscpy, .-wcscpy
