  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x18f2a0
#! rip-offset  0x14f2a0
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.wmemcmp:                       #        0x14f2a0  0      OPC=<label>        
  nopl %eax                     #  1     0x14f2a0  3      OPC=nopl_r32       
  testl %edx, %edx              #  2     0x14f2a3  2      OPC=testl_r32_r32  
  je .L_14f300                  #  3     0x14f2a5  2      OPC=je_label       
  nop                           #  4     0x14f2a7  1      OPC=nop            
  movl %edi, %edi               #  5     0x14f2a8  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %r8d      #  6     0x14f2aa  4      OPC=movl_r32_m32   
  nop                           #  7     0x14f2ae  1      OPC=nop            
  movl %esi, %esi               #  8     0x14f2af  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %ecx      #  9     0x14f2b1  4      OPC=movl_r32_m32   
  xorl %eax, %eax               #  10    0x14f2b5  2      OPC=xorl_r32_r32   
  cmpl %ecx, %r8d               #  11    0x14f2b7  3      OPC=cmpl_r32_r32   
  je .L_14f2e0                  #  12    0x14f2ba  2      OPC=je_label       
  jmpq .L_14f320                #  13    0x14f2bc  2      OPC=jmpq_label     
  nop                           #  14    0x14f2be  1      OPC=nop            
  nop                           #  15    0x14f2bf  1      OPC=nop            
  nop                           #  16    0x14f2c0  1      OPC=nop            
.L_14f2c0:                      #        0x14f2c1  0      OPC=<label>        
  addl $0x4, %edi               #  17    0x14f2c1  3      OPC=addl_r32_imm8  
  addl $0x4, %esi               #  18    0x14f2c4  3      OPC=addl_r32_imm8  
  movl %edi, %edi               #  19    0x14f2c7  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %r8d      #  20    0x14f2c9  4      OPC=movl_r32_m32   
  movl %esi, %esi               #  21    0x14f2cd  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %ecx      #  22    0x14f2cf  4      OPC=movl_r32_m32   
  cmpl %ecx, %r8d               #  23    0x14f2d3  3      OPC=cmpl_r32_r32   
  jne .L_14f320                 #  24    0x14f2d6  2      OPC=jne_label      
  nop                           #  25    0x14f2d8  1      OPC=nop            
.L_14f2e0:                      #        0x14f2d9  0      OPC=<label>        
  addl $0x1, %eax               #  26    0x14f2d9  3      OPC=addl_r32_imm8  
  cmpl %eax, %edx               #  27    0x14f2dc  2      OPC=cmpl_r32_r32   
  ja .L_14f2c0                  #  28    0x14f2de  2      OPC=ja_label       
  nop                           #  29    0x14f2e0  1      OPC=nop            
  nop                           #  30    0x14f2e1  1      OPC=nop            
  nop                           #  31    0x14f2e2  1      OPC=nop            
  nop                           #  32    0x14f2e3  1      OPC=nop            
  nop                           #  33    0x14f2e4  1      OPC=nop            
  nop                           #  34    0x14f2e5  1      OPC=nop            
  nop                           #  35    0x14f2e6  1      OPC=nop            
  nop                           #  36    0x14f2e7  1      OPC=nop            
.L_14f300:                      #        0x14f2e8  0      OPC=<label>        
  nop                           #  37    0x14f2e8  1      OPC=nop            
  xorl %eax, %eax               #  38    0x14f2e9  2      OPC=xorl_r32_r32   
  retq                          #  39    0x14f2eb  1      OPC=retq           
  nop                           #  40    0x14f2ec  1      OPC=nop            
  nop                           #  41    0x14f2ed  1      OPC=nop            
  nop                           #  42    0x14f2ee  1      OPC=nop            
  nop                           #  43    0x14f2ef  1      OPC=nop            
  nop                           #  44    0x14f2f0  1      OPC=nop            
  nop                           #  45    0x14f2f1  1      OPC=nop            
  nop                           #  46    0x14f2f2  1      OPC=nop            
  nop                           #  47    0x14f2f3  1      OPC=nop            
  nop                           #  48    0x14f2f4  1      OPC=nop            
  nop                           #  49    0x14f2f5  1      OPC=nop            
  nop                           #  50    0x14f2f6  1      OPC=nop            
  nop                           #  51    0x14f2f7  1      OPC=nop            
  nop                           #  52    0x14f2f8  1      OPC=nop            
  nop                           #  53    0x14f2f9  1      OPC=nop            
.L_14f320:                      #        0x14f2fa  0      OPC=<label>        
  xorl %eax, %eax               #  54    0x14f2fa  2      OPC=xorl_r32_r32   
  nop                           #  55    0x14f2fc  1      OPC=nop            
  cmpl %ecx, %r8d               #  56    0x14f2fd  3      OPC=cmpl_r32_r32   
  setg %al                      #  57    0x14f300  3      OPC=setg_r8        
  leal -0x1(%rax,%rax,1), %eax  #  58    0x14f303  4      OPC=leal_r32_m16   
  retq                          #  59    0x14f307  1      OPC=retq           
                                                                             
.size wmemcmp, .-wmemcmp
