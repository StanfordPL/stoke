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
  orl %esi, %esi                #  14    0x14f2b3  2      OPC=orl_r32_r32    
  movl (%r15,%rsi,1), %ecx      #  15    0x14f2b5  4      OPC=movl_r32_m32   
  nop                           #  16    0x14f2b9  1      OPC=nop            
  xorl %eax, %eax               #  17    0x14f2ba  2      OPC=xorl_r32_r32   
  cmpl %ecx, %r8d               #  18    0x14f2bc  3      OPC=cmpl_r32_r32   
  nop                           #  19    0x14f2bf  1      OPC=nop            
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
  nop                           #  30    0x14f2cc  1      OPC=nop            
  nop                           #  31    0x14f2cd  1      OPC=nop            
  nop                           #  32    0x14f2ce  1      OPC=nop            
.L_14f2c0:                      #        0x14f2cf  0      OPC=<label>        
  addl $0x4, %edi               #  33    0x14f2cf  3      OPC=addl_r32_imm8  
  movl (%r15,%rdi,1), %r8d      #  34    0x14f2d2  4      OPC=movl_r32_m32   
  addl $0x4, %esi               #  35    0x14f2d6  3      OPC=addl_r32_imm8  
  movl (%r15,%rsi,1), %ecx      #  36    0x14f2d9  4      OPC=movl_r32_m32   
  cmpl %ecx, %r8d               #  37    0x14f2dd  3      OPC=cmpl_r32_r32   
  jne .L_14f320                 #  38    0x14f2e0  2      OPC=jne_label      
.L_14f2e0:                      #        0x14f2e2  0      OPC=<label>        
  addl $0x1, %eax               #  39    0x14f2e2  3      OPC=addl_r32_imm8  
  cmpl %eax, %edx               #  40    0x14f2e5  2      OPC=cmpl_r32_r32   
  ja .L_14f2c0                  #  41    0x14f2e7  2      OPC=ja_label       
  nop                           #  42    0x14f2e9  1      OPC=nop            
  nop                           #  43    0x14f2ea  1      OPC=nop            
  nop                           #  44    0x14f2eb  1      OPC=nop            
  nop                           #  45    0x14f2ec  1      OPC=nop            
  nop                           #  46    0x14f2ed  1      OPC=nop            
  nop                           #  47    0x14f2ee  1      OPC=nop            
  nop                           #  48    0x14f2ef  1      OPC=nop            
.L_14f300:                      #        0x14f2f0  0      OPC=<label>        
  nop                           #  49    0x14f2f0  1      OPC=nop            
  nop                           #  50    0x14f2f1  1      OPC=nop            
  xorl %eax, %eax               #  51    0x14f2f2  2      OPC=xorl_r32_r32   
  nop                           #  52    0x14f2f4  1      OPC=nop            
  nop                           #  53    0x14f2f5  1      OPC=nop            
  nop                           #  54    0x14f2f6  1      OPC=nop            
  nop                           #  55    0x14f2f7  1      OPC=nop            
  nop                           #  56    0x14f2f8  1      OPC=nop            
  nop                           #  57    0x14f2f9  1      OPC=nop            
  nop                           #  58    0x14f2fa  1      OPC=nop            
  nop                           #  59    0x14f2fb  1      OPC=nop            
  nop                           #  60    0x14f2fc  1      OPC=nop            
  nop                           #  61    0x14f2fd  1      OPC=nop            
  nop                           #  62    0x14f2fe  1      OPC=nop            
  nop                           #  63    0x14f2ff  1      OPC=nop            
  nop                           #  64    0x14f300  1      OPC=nop            
  retq                          #  65    0x14f301  1      OPC=retq           
  nop                           #  66    0x14f302  1      OPC=nop            
  nop                           #  67    0x14f303  1      OPC=nop            
.L_14f320:                      #        0x14f304  0      OPC=<label>        
  xorl %eax, %eax               #  68    0x14f304  2      OPC=xorl_r32_r32   
  nop                           #  69    0x14f306  1      OPC=nop            
  cmpl %ecx, %r8d               #  70    0x14f307  3      OPC=cmpl_r32_r32   
  setg %al                      #  71    0x14f30a  3      OPC=setg_r8        
  nop                           #  72    0x14f30d  1      OPC=nop            
  nop                           #  73    0x14f30e  1      OPC=nop            
  nop                           #  74    0x14f30f  1      OPC=nop            
  nop                           #  75    0x14f310  1      OPC=nop            
  leal -0x1(%rax,%rax,1), %eax  #  76    0x14f311  4      OPC=leal_r32_m16   
  nop                           #  77    0x14f315  1      OPC=nop            
  nop                           #  78    0x14f316  1      OPC=nop            
  retq                          #  79    0x14f317  1      OPC=retq           
                                                                             
.size wmemcmp, .-wmemcmp
