  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x18f2a0
#! rip-offset  0x14f2a0
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.wmemcmp:                       #        0x14f2a0  0      OPC=<label>        
  nop                           #  1     0x14f2a0  1      OPC=nop            
  nop                           #  2     0x14f2a1  1      OPC=nop            
  testl %edx, %edx              #  3     0x14f2a2  2      OPC=testl_r32_r32  
  je .L_14f300                  #  4     0x14f2a4  2      OPC=je_label       
  nop                           #  5     0x14f2a6  1      OPC=nop            
  nop                           #  6     0x14f2a7  1      OPC=nop            
  nop                           #  7     0x14f2a8  1      OPC=nop            
  nop                           #  8     0x14f2a9  1      OPC=nop            
  nop                           #  9     0x14f2aa  1      OPC=nop            
  movl %edi, %edi               #  10    0x14f2ab  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %r8d      #  11    0x14f2ad  4      OPC=movl_r32_m32   
  nop                           #  12    0x14f2b1  1      OPC=nop            
  nop                           #  13    0x14f2b2  1      OPC=nop            
  nop                           #  14    0x14f2b3  1      OPC=nop            
  orl %esi, %esi                #  15    0x14f2b4  2      OPC=orl_r32_r32    
  movl (%r15,%rsi,1), %ecx      #  16    0x14f2b6  4      OPC=movl_r32_m32   
  nop                           #  17    0x14f2ba  1      OPC=nop            
  xorl %eax, %eax               #  18    0x14f2bb  2      OPC=xorl_r32_r32   
  cmpl %ecx, %r8d               #  19    0x14f2bd  3      OPC=cmpl_r32_r32   
  nop                           #  20    0x14f2c0  1      OPC=nop            
  nop                           #  21    0x14f2c1  1      OPC=nop            
  je .L_14f2e0                  #  22    0x14f2c2  2      OPC=je_label       
  jmpq .L_14f320                #  23    0x14f2c4  2      OPC=jmpq_label     
  nop                           #  24    0x14f2c6  1      OPC=nop            
  nop                           #  25    0x14f2c7  1      OPC=nop            
  nop                           #  26    0x14f2c8  1      OPC=nop            
  nop                           #  27    0x14f2c9  1      OPC=nop            
  nop                           #  28    0x14f2ca  1      OPC=nop            
  nop                           #  29    0x14f2cb  1      OPC=nop            
.L_14f2c0:                      #        0x14f2cc  0      OPC=<label>        
  addl $0x4, %edi               #  30    0x14f2cc  3      OPC=addl_r32_imm8  
  movl (%r15,%rdi,1), %r8d      #  31    0x14f2cf  4      OPC=movl_r32_m32   
  nop                           #  32    0x14f2d3  1      OPC=nop            
  addl $0x4, %esi               #  33    0x14f2d4  3      OPC=addl_r32_imm8  
  movl (%r15,%rsi,1), %ecx      #  34    0x14f2d7  4      OPC=movl_r32_m32   
  cmpl %ecx, %r8d               #  35    0x14f2db  3      OPC=cmpl_r32_r32   
  jne .L_14f320                 #  36    0x14f2de  2      OPC=jne_label      
.L_14f2e0:                      #        0x14f2e0  0      OPC=<label>        
  addl $0x1, %eax               #  37    0x14f2e0  3      OPC=addl_r32_imm8  
  cmpl %eax, %edx               #  38    0x14f2e3  2      OPC=cmpl_r32_r32   
  ja .L_14f2c0                  #  39    0x14f2e5  2      OPC=ja_label       
  nop                           #  40    0x14f2e7  1      OPC=nop            
  nop                           #  41    0x14f2e8  1      OPC=nop            
  nop                           #  42    0x14f2e9  1      OPC=nop            
  nop                           #  43    0x14f2ea  1      OPC=nop            
  nop                           #  44    0x14f2eb  1      OPC=nop            
  nop                           #  45    0x14f2ec  1      OPC=nop            
  nop                           #  46    0x14f2ed  1      OPC=nop            
  nop                           #  47    0x14f2ee  1      OPC=nop            
  nop                           #  48    0x14f2ef  1      OPC=nop            
  nopl %eax                     #  49    0x14f2f0  3      OPC=nopl_r32       
  nopl %eax                     #  50    0x14f2f3  3      OPC=nopl_r32       
  nop                           #  51    0x14f2f6  1      OPC=nop            
  nopl %eax                     #  52    0x14f2f7  3      OPC=nopl_r32       
  nop                           #  53    0x14f2fa  1      OPC=nop            
  nop                           #  54    0x14f2fb  1      OPC=nop            
  nop                           #  55    0x14f2fc  1      OPC=nop            
  nop                           #  56    0x14f2fd  1      OPC=nop            
  nop                           #  57    0x14f2fe  1      OPC=nop            
  nop                           #  58    0x14f2ff  1      OPC=nop            
  nop                           #  59    0x14f300  1      OPC=nop            
.L_14f300:                      #        0x14f301  0      OPC=<label>        
  nop                           #  60    0x14f301  1      OPC=nop            
  nop                           #  61    0x14f302  1      OPC=nop            
  xorl %eax, %eax               #  62    0x14f303  2      OPC=xorl_r32_r32   
  nop                           #  63    0x14f305  1      OPC=nop            
  nop                           #  64    0x14f306  1      OPC=nop            
  nop                           #  65    0x14f307  1      OPC=nop            
  nop                           #  66    0x14f308  1      OPC=nop            
  nop                           #  67    0x14f309  1      OPC=nop            
  nop                           #  68    0x14f30a  1      OPC=nop            
  nop                           #  69    0x14f30b  1      OPC=nop            
  nop                           #  70    0x14f30c  1      OPC=nop            
  nop                           #  71    0x14f30d  1      OPC=nop            
  nop                           #  72    0x14f30e  1      OPC=nop            
  shlw $0xfc, %ax               #  73    0x14f30f  4      OPC=shlw_r16_imm8  
  retq                          #  74    0x14f313  1      OPC=retq           
  nop                           #  75    0x14f314  1      OPC=nop            
  nop                           #  76    0x14f315  1      OPC=nop            
.L_14f320:                      #        0x14f316  0      OPC=<label>        
  xorl %eax, %eax               #  77    0x14f316  2      OPC=xorl_r32_r32   
  nop                           #  78    0x14f318  1      OPC=nop            
  nop                           #  79    0x14f319  1      OPC=nop            
  cmpl %ecx, %r8d               #  80    0x14f31a  3      OPC=cmpl_r32_r32   
  setg %al                      #  81    0x14f31d  3      OPC=setg_r8        
  nop                           #  82    0x14f320  1      OPC=nop            
  nop                           #  83    0x14f321  1      OPC=nop            
  nop                           #  84    0x14f322  1      OPC=nop            
  nop                           #  85    0x14f323  1      OPC=nop            
  leal -0x1(%rax,%rax,1), %eax  #  86    0x14f324  4      OPC=leal_r32_m16   
  retq                          #  87    0x14f328  1      OPC=retq           
                                                                             
.size wmemcmp, .-wmemcmp
