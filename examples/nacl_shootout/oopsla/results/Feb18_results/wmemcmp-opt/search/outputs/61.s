  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x18f2a0
#! rip-offset  0x14f2a0
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.wmemcmp:                       #        0x14f2a0  0      OPC=<label>        
  testl %edx, %edx              #  1     0x14f2a0  2      OPC=testl_r32_r32  
  nop                           #  2     0x14f2a2  1      OPC=nop            
  nop                           #  3     0x14f2a3  1      OPC=nop            
  nop                           #  4     0x14f2a4  1      OPC=nop            
  nop                           #  5     0x14f2a5  1      OPC=nop            
  nop                           #  6     0x14f2a6  1      OPC=nop            
  je .L_14f300                  #  7     0x14f2a7  2      OPC=je_label       
  nop                           #  8     0x14f2a9  1      OPC=nop            
  nop                           #  9     0x14f2aa  1      OPC=nop            
  nop                           #  10    0x14f2ab  1      OPC=nop            
  nop                           #  11    0x14f2ac  1      OPC=nop            
  movl %edi, %edi               #  12    0x14f2ad  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %r8d      #  13    0x14f2af  4      OPC=movl_r32_m32   
  nop                           #  14    0x14f2b3  1      OPC=nop            
  nop                           #  15    0x14f2b4  1      OPC=nop            
  movl %esi, %esi               #  16    0x14f2b5  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %ecx      #  17    0x14f2b7  4      OPC=movl_r32_m32   
  xorl %eax, %eax               #  18    0x14f2bb  2      OPC=xorl_r32_r32   
  cmpl %ecx, %r8d               #  19    0x14f2bd  3      OPC=cmpl_r32_r32   
  nop                           #  20    0x14f2c0  1      OPC=nop            
  nop                           #  21    0x14f2c1  1      OPC=nop            
  nop                           #  22    0x14f2c2  1      OPC=nop            
  je .L_14f2e0                  #  23    0x14f2c3  2      OPC=je_label       
  jmpq .L_14f320                #  24    0x14f2c5  2      OPC=jmpq_label     
  nop                           #  25    0x14f2c7  1      OPC=nop            
  nop                           #  26    0x14f2c8  1      OPC=nop            
.L_14f2c0:                      #        0x14f2c9  0      OPC=<label>        
  addl $0x4, %edi               #  27    0x14f2c9  3      OPC=addl_r32_imm8  
  addl $0x4, %esi               #  28    0x14f2cc  3      OPC=addl_r32_imm8  
  movl %edi, %edi               #  29    0x14f2cf  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %r8d      #  30    0x14f2d1  4      OPC=movl_r32_m32   
  movl %esi, %esi               #  31    0x14f2d5  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %ecx      #  32    0x14f2d7  4      OPC=movl_r32_m32   
  cmpl %ecx, %r8d               #  33    0x14f2db  3      OPC=cmpl_r32_r32   
  jne .L_14f320                 #  34    0x14f2de  2      OPC=jne_label      
.L_14f2e0:                      #        0x14f2e0  0      OPC=<label>        
  addl $0x1, %eax               #  35    0x14f2e0  3      OPC=addl_r32_imm8  
  cmpl %eax, %edx               #  36    0x14f2e3  2      OPC=cmpl_r32_r32   
  ja .L_14f2c0                  #  37    0x14f2e5  2      OPC=ja_label       
  nop                           #  38    0x14f2e7  1      OPC=nop            
  nopl %eax                     #  39    0x14f2e8  3      OPC=nopl_r32       
  nop                           #  40    0x14f2eb  1      OPC=nop            
  nop                           #  41    0x14f2ec  1      OPC=nop            
  nop                           #  42    0x14f2ed  1      OPC=nop            
.L_14f300:                      #        0x14f2ee  0      OPC=<label>        
  xorl %eax, %eax               #  43    0x14f2ee  2      OPC=xorl_r32_r32   
  retq                          #  44    0x14f2f0  1      OPC=retq           
  nop                           #  45    0x14f2f1  1      OPC=nop            
  nop                           #  46    0x14f2f2  1      OPC=nop            
  nop                           #  47    0x14f2f3  1      OPC=nop            
  nop                           #  48    0x14f2f4  1      OPC=nop            
  nop                           #  49    0x14f2f5  1      OPC=nop            
.L_14f320:                      #        0x14f2f6  0      OPC=<label>        
  xorl %eax, %eax               #  50    0x14f2f6  2      OPC=xorl_r32_r32   
  nop                           #  51    0x14f2f8  1      OPC=nop            
  cmpl %ecx, %r8d               #  52    0x14f2f9  3      OPC=cmpl_r32_r32   
  setg %al                      #  53    0x14f2fc  3      OPC=setg_r8        
  leal -0x1(%rax,%rax,1), %eax  #  54    0x14f2ff  4      OPC=leal_r32_m16   
  retq                          #  55    0x14f303  1      OPC=retq           
                                                                             
.size wmemcmp, .-wmemcmp
