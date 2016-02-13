  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x18f2a0
#! rip-offset  0x14f2a0
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.wmemcmp:                       #        0x14f2a0  0      OPC=<label>         
  xorl %eax, %eax               #  1     0x14f2a0  2      OPC=xorl_r32_r32    
  orl %edx, %edx                #  2     0x14f2a2  2      OPC=orl_r32_r32     
  je .L_14f300                  #  3     0x14f2a4  2      OPC=je_label        
  addl $0x0, %edi               #  4     0x14f2a6  6      OPC=addl_r32_imm32  
  movl (%r15,%rdi,1), %r8d      #  5     0x14f2ac  4      OPC=movl_r32_m32    
  nop                           #  6     0x14f2b0  1      OPC=nop             
  nop                           #  7     0x14f2b1  1      OPC=nop             
  subl $0x0, %esi               #  8     0x14f2b2  3      OPC=subl_r32_imm8   
  movl (%r15,%rsi,1), %ecx      #  9     0x14f2b5  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  10    0x14f2b9  3      OPC=cmpl_r32_r32    
  je .L_14f2e0                  #  11    0x14f2bc  2      OPC=je_label        
  jmpq .L_14f320                #  12    0x14f2be  2      OPC=jmpq_label      
.L_14f2c0:                      #        0x14f2c0  0      OPC=<label>         
  nop                           #  13    0x14f2c0  1      OPC=nop             
  nop                           #  14    0x14f2c1  1      OPC=nop             
  nop                           #  15    0x14f2c2  1      OPC=nop             
  nop                           #  16    0x14f2c3  1      OPC=nop             
  nop                           #  17    0x14f2c4  1      OPC=nop             
  nop                           #  18    0x14f2c5  1      OPC=nop             
  nop                           #  19    0x14f2c6  1      OPC=nop             
  nop                           #  20    0x14f2c7  1      OPC=nop             
  nop                           #  21    0x14f2c8  1      OPC=nop             
  nop                           #  22    0x14f2c9  1      OPC=nop             
  orl $0x4, %edi                #  23    0x14f2ca  6      OPC=orl_r32_imm32   
  orl (%r15,%rdi,1), %r8d       #  24    0x14f2d0  4      OPC=orl_r32_m32     
  addl $0x4, %esi               #  25    0x14f2d4  3      OPC=addl_r32_imm8   
  orl (%r15,%rsi,1), %ecx       #  26    0x14f2d7  4      OPC=orl_r32_m32     
  cmpl %ecx, %r8d               #  27    0x14f2db  3      OPC=cmpl_r32_r32    
  jne .L_14f320                 #  28    0x14f2de  2      OPC=jne_label       
.L_14f2e0:                      #        0x14f2e0  0      OPC=<label>         
  nop                           #  29    0x14f2e0  1      OPC=nop             
  nop                           #  30    0x14f2e1  1      OPC=nop             
  decq %rdx                     #  31    0x14f2e2  3      OPC=decq_r64        
  nop                           #  32    0x14f2e5  1      OPC=nop             
  nop                           #  33    0x14f2e6  1      OPC=nop             
  nop                           #  34    0x14f2e7  1      OPC=nop             
  nop                           #  35    0x14f2e8  1      OPC=nop             
  nop                           #  36    0x14f2e9  1      OPC=nop             
  ja .L_14f2c0                  #  37    0x14f2ea  2      OPC=ja_label        
  nop                           #  38    0x14f2ec  1      OPC=nop             
  nop                           #  39    0x14f2ed  1      OPC=nop             
  nop                           #  40    0x14f2ee  1      OPC=nop             
  nop                           #  41    0x14f2ef  1      OPC=nop             
  nop                           #  42    0x14f2f0  1      OPC=nop             
  nop                           #  43    0x14f2f1  1      OPC=nop             
  nop                           #  44    0x14f2f2  1      OPC=nop             
  nop                           #  45    0x14f2f3  1      OPC=nop             
  nop                           #  46    0x14f2f4  1      OPC=nop             
  nop                           #  47    0x14f2f5  1      OPC=nop             
  nop                           #  48    0x14f2f6  1      OPC=nop             
  nop                           #  49    0x14f2f7  1      OPC=nop             
  nop                           #  50    0x14f2f8  1      OPC=nop             
  nop                           #  51    0x14f2f9  1      OPC=nop             
  nop                           #  52    0x14f2fa  1      OPC=nop             
  nop                           #  53    0x14f2fb  1      OPC=nop             
  nop                           #  54    0x14f2fc  1      OPC=nop             
  nop                           #  55    0x14f2fd  1      OPC=nop             
  nop                           #  56    0x14f2fe  1      OPC=nop             
  nop                           #  57    0x14f2ff  1      OPC=nop             
.L_14f300:                      #        0x14f300  0      OPC=<label>         
  nop                           #  58    0x14f300  1      OPC=nop             
  nop                           #  59    0x14f301  1      OPC=nop             
  nopl %eax                     #  60    0x14f302  3      OPC=nopl_r32        
  popq %r11                     #  61    0x14f305  2      OPC=popq_r64_1      
  andl $0xe0, %r11d             #  62    0x14f307  4      OPC=andl_r32_imm8   
  addq %r15, %r11               #  63    0x14f30b  3      OPC=addq_r64_r64    
  jmpq %r11                     #  64    0x14f30e  3      OPC=jmpq_r64        
  nop                           #  65    0x14f311  1      OPC=nop             
  nop                           #  66    0x14f312  1      OPC=nop             
  nop                           #  67    0x14f313  1      OPC=nop             
  nop                           #  68    0x14f314  1      OPC=nop             
  nop                           #  69    0x14f315  1      OPC=nop             
  nop                           #  70    0x14f316  1      OPC=nop             
  nop                           #  71    0x14f317  1      OPC=nop             
  nop                           #  72    0x14f318  1      OPC=nop             
  nop                           #  73    0x14f319  1      OPC=nop             
  nop                           #  74    0x14f31a  1      OPC=nop             
  nop                           #  75    0x14f31b  1      OPC=nop             
  nop                           #  76    0x14f31c  1      OPC=nop             
  nop                           #  77    0x14f31d  1      OPC=nop             
  nop                           #  78    0x14f31e  1      OPC=nop             
  nop                           #  79    0x14f31f  1      OPC=nop             
.L_14f320:                      #        0x14f320  0      OPC=<label>         
  setg %al                      #  80    0x14f320  3      OPC=setg_r8         
  leal -0x1(%rax,%rax,1), %eax  #  81    0x14f323  4      OPC=leal_r32_m16    
  nop                           #  82    0x14f327  1      OPC=nop             
  nop                           #  83    0x14f328  1      OPC=nop             
  nop                           #  84    0x14f329  1      OPC=nop             
  nop                           #  85    0x14f32a  1      OPC=nop             
  nop                           #  86    0x14f32b  1      OPC=nop             
  nop                           #  87    0x14f32c  1      OPC=nop             
  nop                           #  88    0x14f32d  1      OPC=nop             
  nop                           #  89    0x14f32e  1      OPC=nop             
  nop                           #  90    0x14f32f  1      OPC=nop             
  nop                           #  91    0x14f330  1      OPC=nop             
  nop                           #  92    0x14f331  1      OPC=nop             
  popq %r11                     #  93    0x14f332  2      OPC=popq_r64_1      
  andl $0xe0, %r11d             #  94    0x14f334  4      OPC=andl_r32_imm8   
  addq %r15, %r11               #  95    0x14f338  3      OPC=addq_r64_r64    
  jmpq %r11                     #  96    0x14f33b  3      OPC=jmpq_r64        
                                                                              
.size wmemcmp, .-wmemcmp
