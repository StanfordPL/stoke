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
  nop                           #  3     0x14f2a2  1      OPC=nop             
  nop                           #  4     0x14f2a3  1      OPC=nop             
  nop                           #  5     0x14f2a4  1      OPC=nop             
  nop                           #  6     0x14f2a5  1      OPC=nop             
  nop                           #  7     0x14f2a6  1      OPC=nop             
  nop                           #  8     0x14f2a7  1      OPC=nop             
  testl %edx, %edx              #  9     0x14f2a8  2      OPC=testl_r32_r32   
  nop                           #  10    0x14f2aa  1      OPC=nop             
  je .L_14f300                  #  11    0x14f2ab  2      OPC=je_label        
  andl %edi, %edi               #  12    0x14f2ad  2      OPC=andl_r32_r32    
  movl (%r15,%rdi,1), %r8d      #  13    0x14f2af  4      OPC=movl_r32_m32    
  xorl %eax, %eax               #  14    0x14f2b3  2      OPC=xorl_r32_r32    
  nop                           #  15    0x14f2b5  1      OPC=nop             
  movl %esi, %esi               #  16    0x14f2b6  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %ecx      #  17    0x14f2b8  4      OPC=movl_r32_m32    
  nop                           #  18    0x14f2bc  1      OPC=nop             
  cmpl %ecx, %r8d               #  19    0x14f2bd  3      OPC=cmpl_r32_r32    
  je .L_14f2e0                  #  20    0x14f2c0  2      OPC=je_label        
  nopl %eax                     #  21    0x14f2c2  3      OPC=nopl_r32        
  nop                           #  22    0x14f2c5  1      OPC=nop             
  jmpq .L_14f320                #  23    0x14f2c6  2      OPC=jmpq_label      
  nop                           #  24    0x14f2c8  1      OPC=nop             
  nopl %eax                     #  25    0x14f2c9  3      OPC=nopl_r32        
  nop                           #  26    0x14f2cc  1      OPC=nop             
  nop                           #  27    0x14f2cd  1      OPC=nop             
.L_14f2c0:                      #        0x14f2ce  0      OPC=<label>         
  nop                           #  28    0x14f2ce  1      OPC=nop             
  nop                           #  29    0x14f2cf  1      OPC=nop             
  addl $0x4, %esi               #  30    0x14f2d0  3      OPC=addl_r32_imm8   
  addl $0x4, %edi               #  31    0x14f2d3  3      OPC=addl_r32_imm8   
  movl (%r15,%rdi,1), %r8d      #  32    0x14f2d6  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  33    0x14f2da  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx      #  34    0x14f2dc  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  35    0x14f2e0  3      OPC=cmpl_r32_r32    
  jne .L_14f320                 #  36    0x14f2e3  2      OPC=jne_label       
.L_14f2e0:                      #        0x14f2e5  0      OPC=<label>         
  addl $0x1, %eax               #  37    0x14f2e5  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx               #  38    0x14f2e8  2      OPC=cmpl_r32_r32    
  ja .L_14f2c0                  #  39    0x14f2ea  2      OPC=ja_label        
  nop                           #  40    0x14f2ec  1      OPC=nop             
  nop                           #  41    0x14f2ed  1      OPC=nop             
  nop                           #  42    0x14f2ee  1      OPC=nop             
  nopl %eax                     #  43    0x14f2ef  3      OPC=nopl_r32        
  nop                           #  44    0x14f2f2  1      OPC=nop             
  nop                           #  45    0x14f2f3  1      OPC=nop             
  nopl %eax                     #  46    0x14f2f4  3      OPC=nopl_r32        
  nop                           #  47    0x14f2f7  1      OPC=nop             
  nop                           #  48    0x14f2f8  1      OPC=nop             
  nop                           #  49    0x14f2f9  1      OPC=nop             
.L_14f300:                      #        0x14f2fa  0      OPC=<label>         
  nop                           #  50    0x14f2fa  1      OPC=nop             
  xorl %eax, %eax               #  51    0x14f2fb  2      OPC=xorl_r32_r32    
  nop                           #  52    0x14f2fd  1      OPC=nop             
  nop                           #  53    0x14f2fe  1      OPC=nop             
  nop                           #  54    0x14f2ff  1      OPC=nop             
  retq                          #  55    0x14f300  1      OPC=retq            
  nop                           #  56    0x14f301  1      OPC=nop             
.L_14f320:                      #        0x14f302  0      OPC=<label>         
  nop                           #  57    0x14f302  1      OPC=nop             
  nopl %eax                     #  58    0x14f303  3      OPC=nopl_r32        
  nop                           #  59    0x14f306  1      OPC=nop             
  xorl %eax, %eax               #  60    0x14f307  2      OPC=xorl_r32_r32    
  nop                           #  61    0x14f309  1      OPC=nop             
  nop                           #  62    0x14f30a  1      OPC=nop             
  nop                           #  63    0x14f30b  1      OPC=nop             
  cmpl %ecx, %r8d               #  64    0x14f30c  3      OPC=cmpl_r32_r32    
  nop                           #  65    0x14f30f  1      OPC=nop             
  nop                           #  66    0x14f310  1      OPC=nop             
  nop                           #  67    0x14f311  1      OPC=nop             
  setg %al                      #  68    0x14f312  3      OPC=setg_r8         
  nop                           #  69    0x14f315  1      OPC=nop             
  nop                           #  70    0x14f316  1      OPC=nop             
  nop                           #  71    0x14f317  1      OPC=nop             
  nop                           #  72    0x14f318  1      OPC=nop             
  nop                           #  73    0x14f319  1      OPC=nop             
  leal -0x1(%rax,%rax,1), %eax  #  74    0x14f31a  4      OPC=leal_r32_m64    
  nop                           #  75    0x14f31e  1      OPC=nop             
  nop                           #  76    0x14f31f  1      OPC=nop             
  nop                           #  77    0x14f320  1      OPC=nop             
  nop                           #  78    0x14f321  1      OPC=nop             
  nop                           #  79    0x14f322  1      OPC=nop             
  nop                           #  80    0x14f323  1      OPC=nop             
  nop                           #  81    0x14f324  1      OPC=nop             
  nop                           #  82    0x14f325  1      OPC=nop             
  nop                           #  83    0x14f326  1      OPC=nop             
  nop                           #  84    0x14f327  1      OPC=nop             
  retq                          #  85    0x14f328  1      OPC=retq            
                                                                              
.size wmemcmp, .-wmemcmp
