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
  leal (%rsi), %edx             #  3     0x2   2      OPC=leal_r32_m16    
  movl (%r15,%rdx,1), %edx      #  4     0x4   4      OPC=movl_r32_m32    
  movl %edi, %ecx               #  5     0x8   2      OPC=movl_r32_r32    
  nop                           #  6     0xa   1      OPC=nop             
  movl %edi, %eax               #  7     0xb   2      OPC=movl_r32_r32_1  
  nop                           #  8     0xd   1      OPC=nop             
  nop                           #  9     0xe   1      OPC=nop             
  nop                           #  10    0xf   1      OPC=nop             
  nopl %eax                     #  11    0x10  3      OPC=nopl_r32        
  nop                           #  12    0x13  1      OPC=nop             
  testl %edx, %edx              #  13    0x14  2      OPC=testl_r32_r32   
  je .L_29                      #  14    0x16  2      OPC=je_label        
.L_18:                          #        0x18  0      OPC=<label>         
  addl $0x4, %ecx               #  15    0x18  3      OPC=addl_r32_imm8   
  movl %edx, -0x4(%r15,%rcx,1)  #  16    0x1b  5      OPC=movl_m32_r32    
  addl $0x4, %esi               #  17    0x20  6      OPC=addl_r32_imm32  
  movl (%r15,%rsi,1), %edx      #  18    0x26  4      OPC=movl_r32_m32    
  testl %edx, %edx              #  19    0x2a  2      OPC=testl_r32_r32   
  jne .L_18                     #  20    0x2c  2      OPC=jne_label       
  nop                           #  21    0x2e  1      OPC=nop             
  nop                           #  22    0x2f  1      OPC=nop             
  nop                           #  23    0x30  1      OPC=nop             
  nop                           #  24    0x31  1      OPC=nop             
  nop                           #  25    0x32  1      OPC=nop             
  nop                           #  26    0x33  1      OPC=nop             
.L_29:                          #        0x34  0      OPC=<label>         
  leal (%rcx), %r8d             #  27    0x34  3      OPC=leal_r32_m32    
  andl $0x0, (%r15,%r8,1)       #  28    0x37  8      OPC=andl_m32_imm32  
  nop                           #  29    0x3f  1      OPC=nop             
  nop                           #  30    0x40  1      OPC=nop             
  retq                          #  31    0x41  1      OPC=retq            
                                                                          
.size wcscpy, .-wcscpy
