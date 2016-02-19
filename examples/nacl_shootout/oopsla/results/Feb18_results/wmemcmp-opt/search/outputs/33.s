  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x18f2a0
#! rip-offset  0x14f2a0
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.wmemcmp:                       #        0x14f2a0  0      OPC=<label>         
  xorl %eax, %eax               #  1     0x14f2a0  2      OPC=xorl_r32_r32    
  testl %edx, %edx              #  2     0x14f2a2  2      OPC=testl_r32_r32   
  nop                           #  3     0x14f2a4  1      OPC=nop             
  nop                           #  4     0x14f2a5  1      OPC=nop             
  nop                           #  5     0x14f2a6  1      OPC=nop             
  nop                           #  6     0x14f2a7  1      OPC=nop             
  nop                           #  7     0x14f2a8  1      OPC=nop             
  movl %edi, %edi               #  8     0x14f2a9  2      OPC=movl_r32_r32_1  
  nopl %eax                     #  9     0x14f2ab  3      OPC=nopl_r32        
  je .L_14f300                  #  10    0x14f2ae  2      OPC=je_label        
  movl %edi, %edi               #  11    0x14f2b0  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r8d      #  12    0x14f2b2  4      OPC=movl_r32_m32    
  nop                           #  13    0x14f2b6  1      OPC=nop             
  nop                           #  14    0x14f2b7  1      OPC=nop             
  nop                           #  15    0x14f2b8  1      OPC=nop             
  nop                           #  16    0x14f2b9  1      OPC=nop             
  andl %esi, %esi               #  17    0x14f2ba  2      OPC=andl_r32_r32_1  
  movl (%r15,%rsi,1), %ecx      #  18    0x14f2bc  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  19    0x14f2c0  3      OPC=cmpl_r32_r32    
  je .L_14f2e0                  #  20    0x14f2c3  2      OPC=je_label        
  nop                           #  21    0x14f2c5  1      OPC=nop             
  jmpq .L_14f320                #  22    0x14f2c6  2      OPC=jmpq_label      
.L_14f2c0:                      #        0x14f2c8  0      OPC=<label>         
  addl $0x4, %edi               #  23    0x14f2c8  3      OPC=addl_r32_imm8   
  movl (%r15,%rdi,1), %r8d      #  24    0x14f2cb  4      OPC=movl_r32_m32    
  addl $0x4, %esi               #  25    0x14f2cf  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %ecx      #  26    0x14f2d2  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  27    0x14f2d6  3      OPC=cmpl_r32_r32    
  jne .L_14f320                 #  28    0x14f2d9  2      OPC=jne_label       
  nop                           #  29    0x14f2db  1      OPC=nop             
  nop                           #  30    0x14f2dc  1      OPC=nop             
  nop                           #  31    0x14f2dd  1      OPC=nop             
  nop                           #  32    0x14f2de  1      OPC=nop             
  nop                           #  33    0x14f2df  1      OPC=nop             
  nop                           #  34    0x14f2e0  1      OPC=nop             
  nop                           #  35    0x14f2e1  1      OPC=nop             
.L_14f2e0:                      #        0x14f2e2  0      OPC=<label>         
  addl $0x1, %eax               #  36    0x14f2e2  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx               #  37    0x14f2e5  2      OPC=cmpl_r32_r32    
  ja .L_14f2c0                  #  38    0x14f2e7  2      OPC=ja_label        
  nopl %eax                     #  39    0x14f2e9  3      OPC=nopl_r32        
  nop                           #  40    0x14f2ec  1      OPC=nop             
  nop                           #  41    0x14f2ed  1      OPC=nop             
  nop                           #  42    0x14f2ee  1      OPC=nop             
  nop                           #  43    0x14f2ef  1      OPC=nop             
  nop                           #  44    0x14f2f0  1      OPC=nop             
  nopl %eax                     #  45    0x14f2f1  3      OPC=nopl_r32        
  nop                           #  46    0x14f2f4  1      OPC=nop             
  xorl %eax, %eax               #  47    0x14f2f5  2      OPC=xorl_r32_r32    
  nop                           #  48    0x14f2f7  1      OPC=nop             
  nop                           #  49    0x14f2f8  1      OPC=nop             
  nop                           #  50    0x14f2f9  1      OPC=nop             
  nop                           #  51    0x14f2fa  1      OPC=nop             
  nop                           #  52    0x14f2fb  1      OPC=nop             
  nop                           #  53    0x14f2fc  1      OPC=nop             
  nop                           #  54    0x14f2fd  1      OPC=nop             
  nop                           #  55    0x14f2fe  1      OPC=nop             
  nop                           #  56    0x14f2ff  1      OPC=nop             
  nop                           #  57    0x14f300  1      OPC=nop             
  nop                           #  58    0x14f301  1      OPC=nop             
.L_14f300:                      #        0x14f302  0      OPC=<label>         
  nop                           #  59    0x14f302  1      OPC=nop             
  nop                           #  60    0x14f303  1      OPC=nop             
  nop                           #  61    0x14f304  1      OPC=nop             
  nop                           #  62    0x14f305  1      OPC=nop             
  nop                           #  63    0x14f306  1      OPC=nop             
  retq                          #  64    0x14f307  1      OPC=retq            
  nop                           #  65    0x14f308  1      OPC=nop             
  nop                           #  66    0x14f309  1      OPC=nop             
  nop                           #  67    0x14f30a  1      OPC=nop             
  nop                           #  68    0x14f30b  1      OPC=nop             
  nop                           #  69    0x14f30c  1      OPC=nop             
  nop                           #  70    0x14f30d  1      OPC=nop             
  nop                           #  71    0x14f30e  1      OPC=nop             
  nop                           #  72    0x14f30f  1      OPC=nop             
  nop                           #  73    0x14f310  1      OPC=nop             
.L_14f320:                      #        0x14f311  0      OPC=<label>         
  xorl %eax, %eax               #  74    0x14f311  2      OPC=xorl_r32_r32    
  nop                           #  75    0x14f313  1      OPC=nop             
  nop                           #  76    0x14f314  1      OPC=nop             
  nop                           #  77    0x14f315  1      OPC=nop             
  nopl %eax                     #  78    0x14f316  3      OPC=nopl_r32        
  nopl %eax                     #  79    0x14f319  3      OPC=nopl_r32        
  cmpl %ecx, %r8d               #  80    0x14f31c  3      OPC=cmpl_r32_r32    
  setg %al                      #  81    0x14f31f  3      OPC=setg_r8         
  nop                           #  82    0x14f322  1      OPC=nop             
  leal -0x1(%rax,%rax,1), %eax  #  83    0x14f323  4      OPC=leal_r32_m16    
  retq                          #  84    0x14f327  1      OPC=retq            
                                                                              
.size wmemcmp, .-wmemcmp
