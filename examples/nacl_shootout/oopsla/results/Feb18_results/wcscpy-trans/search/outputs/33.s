  .text
  .globl wcscpy
  .type wcscpy, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    48 bytes

# Text                          #  Line  RIP   Bytes  Opcode              
.wcscpy:                        #        0     0      OPC=<label>         
  movq %rdi, %rax               #  1     0     3      OPC=movq_r64_r64    
  nop                           #  2     0x3   1      OPC=nop             
  nop                           #  3     0x4   1      OPC=nop             
  nop                           #  4     0x5   1      OPC=nop             
  nop                           #  5     0x6   1      OPC=nop             
  nop                           #  6     0x7   1      OPC=nop             
  nop                           #  7     0x8   1      OPC=nop             
  nop                           #  8     0x9   1      OPC=nop             
  shll $0x40, %eax              #  9     0xa   3      OPC=shll_r32_imm8   
  nop                           #  10    0xd   1      OPC=nop             
  nop                           #  11    0xe   1      OPC=nop             
  nop                           #  12    0xf   1      OPC=nop             
  leal (%rsi), %edx             #  13    0x10  2      OPC=leal_r32_m16    
  movl (%r15,%rdx,1), %edx      #  14    0x12  4      OPC=movl_r32_m32    
  nop                           #  15    0x16  1      OPC=nop             
  nop                           #  16    0x17  1      OPC=nop             
  andl %edx, %edx               #  17    0x18  2      OPC=andl_r32_r32    
  movq %rax, %rcx               #  18    0x1a  3      OPC=movq_r64_r64    
  je .L_29                      #  19    0x1d  2      OPC=je_label        
  nop                           #  20    0x1f  1      OPC=nop             
  nop                           #  21    0x20  1      OPC=nop             
  nop                           #  22    0x21  1      OPC=nop             
  nop                           #  23    0x22  1      OPC=nop             
  nop                           #  24    0x23  1      OPC=nop             
  nop                           #  25    0x24  1      OPC=nop             
  nop                           #  26    0x25  1      OPC=nop             
  nop                           #  27    0x26  1      OPC=nop             
.L_18:                          #        0x27  0      OPC=<label>         
  addl $0x4, %ecx               #  28    0x27  3      OPC=addl_r32_imm8   
  movl %edx, -0x4(%r15,%rcx,1)  #  29    0x2a  5      OPC=movl_m32_r32    
  addl $0x4, %esi               #  30    0x2f  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %edx      #  31    0x32  4      OPC=movl_r32_m32    
  testl %edx, %edx              #  32    0x36  2      OPC=testl_r32_r32   
  jne .L_18                     #  33    0x38  2      OPC=jne_label       
  nop                           #  34    0x3a  1      OPC=nop             
  nop                           #  35    0x3b  1      OPC=nop             
  nop                           #  36    0x3c  1      OPC=nop             
  nop                           #  37    0x3d  1      OPC=nop             
  nop                           #  38    0x3e  1      OPC=nop             
  nop                           #  39    0x3f  1      OPC=nop             
  nop                           #  40    0x40  1      OPC=nop             
  nop                           #  41    0x41  1      OPC=nop             
  nop                           #  42    0x42  1      OPC=nop             
.L_29:                          #        0x43  0      OPC=<label>         
  leal (%rcx), %r8d             #  43    0x43  3      OPC=leal_r32_m64    
  movl $0x0, (%r15,%r8,1)       #  44    0x46  8      OPC=movl_m32_imm32  
  retq                          #  45    0x4e  1      OPC=retq            
                                                                          
.size wcscpy, .-wcscpy
