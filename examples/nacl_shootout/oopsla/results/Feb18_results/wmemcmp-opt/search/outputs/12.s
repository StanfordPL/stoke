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
  je .L_14f300                  #  6     0x14f2a6  2      OPC=je_label        
  nop                           #  7     0x14f2a8  1      OPC=nop             
  nop                           #  8     0x14f2a9  1      OPC=nop             
  nop                           #  9     0x14f2aa  1      OPC=nop             
  nop                           #  10    0x14f2ab  1      OPC=nop             
  nop                           #  11    0x14f2ac  1      OPC=nop             
  nop                           #  12    0x14f2ad  1      OPC=nop             
  xorl %eax, %eax               #  13    0x14f2ae  2      OPC=xorl_r32_r32    
  nop                           #  14    0x14f2b0  1      OPC=nop             
  nop                           #  15    0x14f2b1  1      OPC=nop             
  nop                           #  16    0x14f2b2  1      OPC=nop             
  andl %edi, %edi               #  17    0x14f2b3  2      OPC=andl_r32_r32_1  
  movl (%r15,%rdi,1), %r8d      #  18    0x14f2b5  4      OPC=movl_r32_m32    
  orl %esi, %esi                #  19    0x14f2b9  2      OPC=orl_r32_r32_1   
  movl (%r15,%rsi,1), %ecx      #  20    0x14f2bb  4      OPC=movl_r32_m32    
  nop                           #  21    0x14f2bf  1      OPC=nop             
  nop                           #  22    0x14f2c0  1      OPC=nop             
  nop                           #  23    0x14f2c1  1      OPC=nop             
  nop                           #  24    0x14f2c2  1      OPC=nop             
  nop                           #  25    0x14f2c3  1      OPC=nop             
  cmpl %ecx, %r8d               #  26    0x14f2c4  3      OPC=cmpl_r32_r32    
  je .L_14f2e0                  #  27    0x14f2c7  2      OPC=je_label        
  orw $0x2, %ax                 #  28    0x14f2c9  4      OPC=orw_ax_imm16    
  jmpq .L_14f320                #  29    0x14f2cd  2      OPC=jmpq_label      
.L_14f2c0:                      #        0x14f2cf  0      OPC=<label>         
  addl $0x4, %edi               #  30    0x14f2cf  3      OPC=addl_r32_imm8   
  movl (%r15,%rdi,1), %r8d      #  31    0x14f2d2  4      OPC=movl_r32_m32    
  addl $0x4, %esi               #  32    0x14f2d6  3      OPC=addl_r32_imm8   
  movl (%r15,%rsi,1), %ecx      #  33    0x14f2d9  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  34    0x14f2dd  3      OPC=cmpl_r32_r32    
  jne .L_14f320                 #  35    0x14f2e0  2      OPC=jne_label       
  nop                           #  36    0x14f2e2  1      OPC=nop             
  nop                           #  37    0x14f2e3  1      OPC=nop             
  nop                           #  38    0x14f2e4  1      OPC=nop             
  nop                           #  39    0x14f2e5  1      OPC=nop             
  nop                           #  40    0x14f2e6  1      OPC=nop             
.L_14f2e0:                      #        0x14f2e7  0      OPC=<label>         
  addl $0x1, %eax               #  41    0x14f2e7  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx               #  42    0x14f2ea  2      OPC=cmpl_r32_r32    
  ja .L_14f2c0                  #  43    0x14f2ec  2      OPC=ja_label        
  nop                           #  44    0x14f2ee  1      OPC=nop             
  nop                           #  45    0x14f2ef  1      OPC=nop             
  nop                           #  46    0x14f2f0  1      OPC=nop             
  nop                           #  47    0x14f2f1  1      OPC=nop             
.L_14f300:                      #        0x14f2f2  0      OPC=<label>         
  nop                           #  48    0x14f2f2  1      OPC=nop             
  nop                           #  49    0x14f2f3  1      OPC=nop             
  nop                           #  50    0x14f2f4  1      OPC=nop             
  nop                           #  51    0x14f2f5  1      OPC=nop             
  nop                           #  52    0x14f2f6  1      OPC=nop             
  nop                           #  53    0x14f2f7  1      OPC=nop             
  nop                           #  54    0x14f2f8  1      OPC=nop             
  nop                           #  55    0x14f2f9  1      OPC=nop             
  xorl %eax, %eax               #  56    0x14f2fa  2      OPC=xorl_r32_r32    
  nop                           #  57    0x14f2fc  1      OPC=nop             
  nop                           #  58    0x14f2fd  1      OPC=nop             
  nop                           #  59    0x14f2fe  1      OPC=nop             
  nop                           #  60    0x14f2ff  1      OPC=nop             
  nop                           #  61    0x14f300  1      OPC=nop             
  nop                           #  62    0x14f301  1      OPC=nop             
  retq                          #  63    0x14f302  1      OPC=retq            
  nop                           #  64    0x14f303  1      OPC=nop             
  nop                           #  65    0x14f304  1      OPC=nop             
  nop                           #  66    0x14f305  1      OPC=nop             
  nop                           #  67    0x14f306  1      OPC=nop             
.L_14f320:                      #        0x14f307  0      OPC=<label>         
  nop                           #  68    0x14f307  1      OPC=nop             
  nop                           #  69    0x14f308  1      OPC=nop             
  nop                           #  70    0x14f309  1      OPC=nop             
  nop                           #  71    0x14f30a  1      OPC=nop             
  nop                           #  72    0x14f30b  1      OPC=nop             
  nop                           #  73    0x14f30c  1      OPC=nop             
  nop                           #  74    0x14f30d  1      OPC=nop             
  nop                           #  75    0x14f30e  1      OPC=nop             
  nop                           #  76    0x14f30f  1      OPC=nop             
  nop                           #  77    0x14f310  1      OPC=nop             
  subl %eax, %eax               #  78    0x14f311  2      OPC=subl_r32_r32_1  
  nop                           #  79    0x14f313  1      OPC=nop             
  nop                           #  80    0x14f314  1      OPC=nop             
  cmpl %ecx, %r8d               #  81    0x14f315  3      OPC=cmpl_r32_r32    
  nop                           #  82    0x14f318  1      OPC=nop             
  nop                           #  83    0x14f319  1      OPC=nop             
  nop                           #  84    0x14f31a  1      OPC=nop             
  nop                           #  85    0x14f31b  1      OPC=nop             
  nop                           #  86    0x14f31c  1      OPC=nop             
  nop                           #  87    0x14f31d  1      OPC=nop             
  nop                           #  88    0x14f31e  1      OPC=nop             
  nop                           #  89    0x14f31f  1      OPC=nop             
  setg %al                      #  90    0x14f320  3      OPC=setg_r8         
  leal -0x1(%rax,%rax,1), %eax  #  91    0x14f323  4      OPC=leal_r32_m32    
  retq                          #  92    0x14f327  1      OPC=retq            
                                                                              
.size wmemcmp, .-wmemcmp
