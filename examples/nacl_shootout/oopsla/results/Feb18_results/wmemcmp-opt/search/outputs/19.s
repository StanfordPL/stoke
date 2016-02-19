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
  testl %edx, %edx              #  7     0x14f2a6  2      OPC=testl_r32_r32   
  je .L_14f300                  #  8     0x14f2a8  2      OPC=je_label        
  andl %edi, %edi               #  9     0x14f2aa  2      OPC=andl_r32_r32    
  movl (%r15,%rdi,1), %r8d      #  10    0x14f2ac  4      OPC=movl_r32_m32    
  nop                           #  11    0x14f2b0  1      OPC=nop             
  nop                           #  12    0x14f2b1  1      OPC=nop             
  movl %esi, %esi               #  13    0x14f2b2  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %ecx      #  14    0x14f2b4  4      OPC=movl_r32_m32    
  nop                           #  15    0x14f2b8  1      OPC=nop             
  xorl %eax, %eax               #  16    0x14f2b9  2      OPC=xorl_r32_r32    
  cmpl %ecx, %r8d               #  17    0x14f2bb  3      OPC=cmpl_r32_r32    
  je .L_14f2e0                  #  18    0x14f2be  2      OPC=je_label        
  nopl %eax                     #  19    0x14f2c0  3      OPC=nopl_r32        
  nop                           #  20    0x14f2c3  1      OPC=nop             
  jmpq .L_14f320                #  21    0x14f2c4  2      OPC=jmpq_label      
  nop                           #  22    0x14f2c6  1      OPC=nop             
  nop                           #  23    0x14f2c7  1      OPC=nop             
  nop                           #  24    0x14f2c8  1      OPC=nop             
  nop                           #  25    0x14f2c9  1      OPC=nop             
  nop                           #  26    0x14f2ca  1      OPC=nop             
  nop                           #  27    0x14f2cb  1      OPC=nop             
.L_14f2c0:                      #        0x14f2cc  0      OPC=<label>         
  nop                           #  28    0x14f2cc  1      OPC=nop             
  addl $0x4, %esi               #  29    0x14f2cd  3      OPC=addl_r32_imm8   
  addl $0x4, %edi               #  30    0x14f2d0  3      OPC=addl_r32_imm8   
  movl (%r15,%rdi,1), %r8d      #  31    0x14f2d3  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  32    0x14f2d7  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx      #  33    0x14f2d9  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  34    0x14f2dd  3      OPC=cmpl_r32_r32    
  jne .L_14f320                 #  35    0x14f2e0  2      OPC=jne_label       
.L_14f2e0:                      #        0x14f2e2  0      OPC=<label>         
  addl $0x1, %eax               #  36    0x14f2e2  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx               #  37    0x14f2e5  2      OPC=cmpl_r32_r32    
  ja .L_14f2c0                  #  38    0x14f2e7  2      OPC=ja_label        
  nop                           #  39    0x14f2e9  1      OPC=nop             
  nop                           #  40    0x14f2ea  1      OPC=nop             
  nop                           #  41    0x14f2eb  1      OPC=nop             
  nop                           #  42    0x14f2ec  1      OPC=nop             
  nop                           #  43    0x14f2ed  1      OPC=nop             
  nop                           #  44    0x14f2ee  1      OPC=nop             
  nop                           #  45    0x14f2ef  1      OPC=nop             
  nop                           #  46    0x14f2f0  1      OPC=nop             
  nop                           #  47    0x14f2f1  1      OPC=nop             
  nop                           #  48    0x14f2f2  1      OPC=nop             
  nop                           #  49    0x14f2f3  1      OPC=nop             
  nop                           #  50    0x14f2f4  1      OPC=nop             
  nop                           #  51    0x14f2f5  1      OPC=nop             
  nop                           #  52    0x14f2f6  1      OPC=nop             
  nop                           #  53    0x14f2f7  1      OPC=nop             
.L_14f300:                      #        0x14f2f8  0      OPC=<label>         
  xorl %eax, %eax               #  54    0x14f2f8  2      OPC=xorl_r32_r32    
  nopl %eax                     #  55    0x14f2fa  3      OPC=nopl_r32        
  nop                           #  56    0x14f2fd  1      OPC=nop             
  nop                           #  57    0x14f2fe  1      OPC=nop             
  nop                           #  58    0x14f2ff  1      OPC=nop             
  retq                          #  59    0x14f300  1      OPC=retq            
.L_14f320:                      #        0x14f301  0      OPC=<label>         
  nopl %eax                     #  60    0x14f301  3      OPC=nopl_r32        
  nop                           #  61    0x14f304  1      OPC=nop             
  nop                           #  62    0x14f305  1      OPC=nop             
  nop                           #  63    0x14f306  1      OPC=nop             
  nop                           #  64    0x14f307  1      OPC=nop             
  nop                           #  65    0x14f308  1      OPC=nop             
  nop                           #  66    0x14f309  1      OPC=nop             
  nop                           #  67    0x14f30a  1      OPC=nop             
  nop                           #  68    0x14f30b  1      OPC=nop             
  xorl %eax, %eax               #  69    0x14f30c  2      OPC=xorl_r32_r32    
  nop                           #  70    0x14f30e  1      OPC=nop             
  nop                           #  71    0x14f30f  1      OPC=nop             
  nop                           #  72    0x14f310  1      OPC=nop             
  nop                           #  73    0x14f311  1      OPC=nop             
  cmpl %ecx, %r8d               #  74    0x14f312  3      OPC=cmpl_r32_r32    
  nop                           #  75    0x14f315  1      OPC=nop             
  setg %al                      #  76    0x14f316  3      OPC=setg_r8         
  nop                           #  77    0x14f319  1      OPC=nop             
  nop                           #  78    0x14f31a  1      OPC=nop             
  nop                           #  79    0x14f31b  1      OPC=nop             
  nop                           #  80    0x14f31c  1      OPC=nop             
  leal -0x1(%rax,%rax,1), %eax  #  81    0x14f31d  4      OPC=leal_r32_m64    
  nop                           #  82    0x14f321  1      OPC=nop             
  nop                           #  83    0x14f322  1      OPC=nop             
  nop                           #  84    0x14f323  1      OPC=nop             
  nop                           #  85    0x14f324  1      OPC=nop             
  nop                           #  86    0x14f325  1      OPC=nop             
  nop                           #  87    0x14f326  1      OPC=nop             
  nop                           #  88    0x14f327  1      OPC=nop             
  nop                           #  89    0x14f328  1      OPC=nop             
  retq                          #  90    0x14f329  1      OPC=retq            
                                                                              
.size wmemcmp, .-wmemcmp
