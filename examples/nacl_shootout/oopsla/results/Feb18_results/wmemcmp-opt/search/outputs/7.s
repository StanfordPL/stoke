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
  nop                           #  7     0x14f2a7  1      OPC=nop            
  je .L_14f300                  #  8     0x14f2a8  2      OPC=je_label       
  nop                           #  9     0x14f2aa  1      OPC=nop            
  movl %edi, %edi               #  10    0x14f2ab  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %r8d      #  11    0x14f2ad  4      OPC=movl_r32_m32   
  movl %esi, %esi               #  12    0x14f2b1  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %ecx      #  13    0x14f2b3  4      OPC=movl_r32_m32   
  xorl %eax, %eax               #  14    0x14f2b7  2      OPC=xorl_r32_r32   
  cmpl %ecx, %r8d               #  15    0x14f2b9  3      OPC=cmpl_r32_r32   
  je .L_14f2e0                  #  16    0x14f2bc  2      OPC=je_label       
  jmpq .L_14f320                #  17    0x14f2be  2      OPC=jmpq_label     
  nop                           #  18    0x14f2c0  1      OPC=nop            
  nop                           #  19    0x14f2c1  1      OPC=nop            
  nop                           #  20    0x14f2c2  1      OPC=nop            
.L_14f2c0:                      #        0x14f2c3  0      OPC=<label>        
  addl $0x4, %edi               #  21    0x14f2c3  3      OPC=addl_r32_imm8  
  addl $0x4, %esi               #  22    0x14f2c6  3      OPC=addl_r32_imm8  
  movl %edi, %edi               #  23    0x14f2c9  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %r8d      #  24    0x14f2cb  4      OPC=movl_r32_m32   
  movl %esi, %esi               #  25    0x14f2cf  2      OPC=movl_r32_r32   
  movl (%r15,%rsi,1), %ecx      #  26    0x14f2d1  4      OPC=movl_r32_m32   
  cmpl %ecx, %r8d               #  27    0x14f2d5  3      OPC=cmpl_r32_r32   
  jne .L_14f320                 #  28    0x14f2d8  2      OPC=jne_label      
  nop                           #  29    0x14f2da  1      OPC=nop            
  nop                           #  30    0x14f2db  1      OPC=nop            
  nop                           #  31    0x14f2dc  1      OPC=nop            
  nop                           #  32    0x14f2dd  1      OPC=nop            
  nop                           #  33    0x14f2de  1      OPC=nop            
  nop                           #  34    0x14f2df  1      OPC=nop            
.L_14f2e0:                      #        0x14f2e0  0      OPC=<label>        
  addl $0x1, %eax               #  35    0x14f2e0  3      OPC=addl_r32_imm8  
  cmpl %eax, %edx               #  36    0x14f2e3  2      OPC=cmpl_r32_r32   
  ja .L_14f2c0                  #  37    0x14f2e5  2      OPC=ja_label       
  nop                           #  38    0x14f2e7  1      OPC=nop            
  nop                           #  39    0x14f2e8  1      OPC=nop            
  nop                           #  40    0x14f2e9  1      OPC=nop            
  nop                           #  41    0x14f2ea  1      OPC=nop            
  nop                           #  42    0x14f2eb  1      OPC=nop            
  nop                           #  43    0x14f2ec  1      OPC=nop            
  nop                           #  44    0x14f2ed  1      OPC=nop            
  nop                           #  45    0x14f2ee  1      OPC=nop            
  nop                           #  46    0x14f2ef  1      OPC=nop            
  nop                           #  47    0x14f2f0  1      OPC=nop            
.L_14f300:                      #        0x14f2f1  0      OPC=<label>        
  xorl %eax, %eax               #  48    0x14f2f1  2      OPC=xorl_r32_r32   
  nop                           #  49    0x14f2f3  1      OPC=nop            
  retq                          #  50    0x14f2f4  1      OPC=retq           
  nop                           #  51    0x14f2f5  1      OPC=nop            
  nop                           #  52    0x14f2f6  1      OPC=nop            
  nop                           #  53    0x14f2f7  1      OPC=nop            
  nop                           #  54    0x14f2f8  1      OPC=nop            
  nop                           #  55    0x14f2f9  1      OPC=nop            
  nop                           #  56    0x14f2fa  1      OPC=nop            
  nop                           #  57    0x14f2fb  1      OPC=nop            
  nop                           #  58    0x14f2fc  1      OPC=nop            
  nop                           #  59    0x14f2fd  1      OPC=nop            
  nop                           #  60    0x14f2fe  1      OPC=nop            
  nop                           #  61    0x14f2ff  1      OPC=nop            
  nop                           #  62    0x14f300  1      OPC=nop            
  nop                           #  63    0x14f301  1      OPC=nop            
  nop                           #  64    0x14f302  1      OPC=nop            
  nop                           #  65    0x14f303  1      OPC=nop            
  nop                           #  66    0x14f304  1      OPC=nop            
  nop                           #  67    0x14f305  1      OPC=nop            
  nop                           #  68    0x14f306  1      OPC=nop            
  nop                           #  69    0x14f307  1      OPC=nop            
  nop                           #  70    0x14f308  1      OPC=nop            
  nop                           #  71    0x14f309  1      OPC=nop            
  nop                           #  72    0x14f30a  1      OPC=nop            
  nop                           #  73    0x14f30b  1      OPC=nop            
  nop                           #  74    0x14f30c  1      OPC=nop            
.L_14f320:                      #        0x14f30d  0      OPC=<label>        
  xorl %eax, %eax               #  75    0x14f30d  2      OPC=xorl_r32_r32   
  cmpl %ecx, %r8d               #  76    0x14f30f  3      OPC=cmpl_r32_r32   
  setg %al                      #  77    0x14f312  3      OPC=setg_r8        
  leal -0x1(%rax,%rax,1), %eax  #  78    0x14f315  4      OPC=leal_r32_m16   
  nop                           #  79    0x14f319  1      OPC=nop            
  nop                           #  80    0x14f31a  1      OPC=nop            
  retq                          #  81    0x14f31b  1      OPC=retq           
                                                                             
.size wmemcmp, .-wmemcmp
