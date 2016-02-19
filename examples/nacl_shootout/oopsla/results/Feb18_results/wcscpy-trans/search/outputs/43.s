  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wcscpy:                        #        0     0      OPC=<label>         
  nop                           #  1     0     1      OPC=nop             
  movl %edi, %eax               #  2     0x1   2      OPC=movl_r32_r32    
  leal (%rsi), %edx             #  3     0x3   2      OPC=leal_r32_m32    
  movl (%r15,%rdx,1), %edx      #  4     0x5   4      OPC=movl_r32_m32    
  nop                           #  5     0x9   1      OPC=nop             
  nop                           #  6     0xa   1      OPC=nop             
  nop                           #  7     0xb   1      OPC=nop             
  nop                           #  8     0xc   1      OPC=nop             
  nop                           #  9     0xd   1      OPC=nop             
  testl %edx, %edx              #  10    0xe   2      OPC=testl_r32_r32   
  nop                           #  11    0x10  1      OPC=nop             
  nop                           #  12    0x11  1      OPC=nop             
  movq %rax, %rcx               #  13    0x12  3      OPC=movq_r64_r64_1  
  je .L_29                      #  14    0x15  2      OPC=je_label        
  nop                           #  15    0x17  1      OPC=nop             
.L_18:                          #        0x18  0      OPC=<label>         
  addl $0x4, %ecx               #  16    0x18  3      OPC=addl_r32_imm8   
  movq %rdx, -0x4(%r15,%rcx,1)  #  17    0x1b  5      OPC=movq_m64_r64    
  addl $0x4, %esi               #  18    0x20  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %edx      #  19    0x23  4      OPC=movl_r32_m32    
  testl %edx, %edx              #  20    0x27  2      OPC=testl_r32_r32   
  jne .L_18                     #  21    0x29  2      OPC=jne_label       
.L_29:                          #        0x2b  0      OPC=<label>         
  leal (%rcx), %r8d             #  22    0x2b  3      OPC=leal_r32_m64    
  andl $0x0, (%r15,%r8,1)       #  23    0x2e  5      OPC=andl_m32_imm8   
  retq                          #  24    0x33  1      OPC=retq            
                                                                          
.size wcscpy, .-wcscpy
