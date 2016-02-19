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
  leal (%rsi), %edx             #  3     0x2   2      OPC=leal_r32_m32    
  movq (%r15,%rdx,1), %rdx      #  4     0x4   4      OPC=movq_r64_m64    
  movl %edi, %eax               #  5     0x8   2      OPC=movl_r32_r32_1  
  movq %rdi, %rcx               #  6     0xa   3      OPC=movq_r64_r64    
  testl %edx, %edx              #  7     0xd   2      OPC=testl_r32_r32   
  je .L_29                      #  8     0xf   2      OPC=je_label        
.L_18:                          #        0x11  0      OPC=<label>         
  addl $0x4, %ecx               #  9     0x11  3      OPC=addl_r32_imm8   
  movq %rdx, -0x4(%r15,%rcx,1)  #  10    0x14  5      OPC=movq_m64_r64    
  addl $0x4, %esi               #  11    0x19  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %edx      #  12    0x1c  4      OPC=movl_r32_m32    
  orl %edx, %edx                #  13    0x20  2      OPC=orl_r32_r32     
  jne .L_18                     #  14    0x22  2      OPC=jne_label       
.L_29:                          #        0x24  0      OPC=<label>         
  leal (%rcx), %r8d             #  15    0x24  3      OPC=leal_r32_m64    
  andl $0x0, (%r15,%r8,1)       #  16    0x27  5      OPC=andl_m32_imm8   
  retq                          #  17    0x2c  1      OPC=retq            
                                                                          
.size wcscpy, .-wcscpy
