  .text
  .globl d_make_name
  .type d_make_name, @function

#! file-offset 0x13e140
#! rip-offset  0xfe140
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.d_make_name:                   #        0xfe140  0      OPC=<label>         
  movl %edi, %edi               #  1     0xfe140  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0xfe142  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0xfe144  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %ecx  #  4     0xfe146  5      OPC=movl_r32_m32    
  movl %edi, %edi               #  5     0xfe14b  2      OPC=movl_r32_r32    
  cmpl 0x18(%r15,%rdi,1), %ecx  #  6     0xfe14d  5      OPC=cmpl_r32_m32    
  jge .L_fe180                  #  7     0xfe152  2      OPC=jge_label       
  leal (%rcx,%rcx,2), %eax      #  8     0xfe154  3      OPC=leal_r32_m16    
  addl $0x1, %ecx               #  9     0xfe157  3      OPC=addl_r32_imm8   
  nop                           #  10    0xfe15a  1      OPC=nop             
  nop                           #  11    0xfe15b  1      OPC=nop             
  nop                           #  12    0xfe15c  1      OPC=nop             
  nop                           #  13    0xfe15d  1      OPC=nop             
  nop                           #  14    0xfe15e  1      OPC=nop             
  nop                           #  15    0xfe15f  1      OPC=nop             
  movl %edi, %edi               #  16    0xfe160  2      OPC=movl_r32_r32    
  movl %ecx, 0x14(%r15,%rdi,1)  #  17    0xfe162  5      OPC=movl_m32_r32    
  shll $0x2, %eax               #  18    0xfe167  3      OPC=shll_r32_imm8   
  movl %edi, %edi               #  19    0xfe16a  2      OPC=movl_r32_r32    
  addl 0x10(%r15,%rdi,1), %eax  #  20    0xfe16c  5      OPC=addl_r32_m32    
  testq %rax, %rax              #  21    0xfe171  3      OPC=testq_r64_r64   
  jne .L_fe1a0                  #  22    0xfe174  2      OPC=jne_label       
  nop                           #  23    0xfe176  1      OPC=nop             
  nop                           #  24    0xfe177  1      OPC=nop             
  nop                           #  25    0xfe178  1      OPC=nop             
  nop                           #  26    0xfe179  1      OPC=nop             
  nop                           #  27    0xfe17a  1      OPC=nop             
  nop                           #  28    0xfe17b  1      OPC=nop             
  nop                           #  29    0xfe17c  1      OPC=nop             
  nop                           #  30    0xfe17d  1      OPC=nop             
  nop                           #  31    0xfe17e  1      OPC=nop             
  nop                           #  32    0xfe17f  1      OPC=nop             
.L_fe180:                       #        0xfe180  0      OPC=<label>         
  xorl %eax, %eax               #  33    0xfe180  2      OPC=xorl_r32_r32    
  popq %r11                     #  34    0xfe182  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  35    0xfe184  7      OPC=andl_r32_imm32  
  nop                           #  36    0xfe18b  1      OPC=nop             
  nop                           #  37    0xfe18c  1      OPC=nop             
  nop                           #  38    0xfe18d  1      OPC=nop             
  nop                           #  39    0xfe18e  1      OPC=nop             
  addq %r15, %r11               #  40    0xfe18f  3      OPC=addq_r64_r64    
  jmpq %r11                     #  41    0xfe192  3      OPC=jmpq_r64        
  nop                           #  42    0xfe195  1      OPC=nop             
  nop                           #  43    0xfe196  1      OPC=nop             
  nop                           #  44    0xfe197  1      OPC=nop             
  nop                           #  45    0xfe198  1      OPC=nop             
  nop                           #  46    0xfe199  1      OPC=nop             
  nop                           #  47    0xfe19a  1      OPC=nop             
  nop                           #  48    0xfe19b  1      OPC=nop             
  nop                           #  49    0xfe19c  1      OPC=nop             
  nop                           #  50    0xfe19d  1      OPC=nop             
  nop                           #  51    0xfe19e  1      OPC=nop             
  nop                           #  52    0xfe19f  1      OPC=nop             
  nop                           #  53    0xfe1a0  1      OPC=nop             
  nop                           #  54    0xfe1a1  1      OPC=nop             
  nop                           #  55    0xfe1a2  1      OPC=nop             
  nop                           #  56    0xfe1a3  1      OPC=nop             
  nop                           #  57    0xfe1a4  1      OPC=nop             
  nop                           #  58    0xfe1a5  1      OPC=nop             
  nop                           #  59    0xfe1a6  1      OPC=nop             
.L_fe1a0:                       #        0xfe1a7  0      OPC=<label>         
  testq %rsi, %rsi              #  60    0xfe1a7  3      OPC=testq_r64_r64   
  je .L_fe180                   #  61    0xfe1aa  2      OPC=je_label        
  testl %edx, %edx              #  62    0xfe1ac  2      OPC=testl_r32_r32   
  je .L_fe180                   #  63    0xfe1ae  2      OPC=je_label        
  movl %eax, %eax               #  64    0xfe1b0  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rax,1)      #  65    0xfe1b2  8      OPC=movl_m32_imm32  
  movl %eax, %eax               #  66    0xfe1ba  2      OPC=movl_r32_r32    
  movl %esi, 0x4(%r15,%rax,1)   #  67    0xfe1bc  5      OPC=movl_m32_r32    
  nop                           #  68    0xfe1c1  1      OPC=nop             
  nop                           #  69    0xfe1c2  1      OPC=nop             
  nop                           #  70    0xfe1c3  1      OPC=nop             
  nop                           #  71    0xfe1c4  1      OPC=nop             
  nop                           #  72    0xfe1c5  1      OPC=nop             
  nop                           #  73    0xfe1c6  1      OPC=nop             
  movl %eax, %eax               #  74    0xfe1c7  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rax,1)   #  75    0xfe1c9  5      OPC=movl_m32_r32    
  popq %r11                     #  76    0xfe1ce  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  77    0xfe1d0  7      OPC=andl_r32_imm32  
  nop                           #  78    0xfe1d7  1      OPC=nop             
  nop                           #  79    0xfe1d8  1      OPC=nop             
  nop                           #  80    0xfe1d9  1      OPC=nop             
  nop                           #  81    0xfe1da  1      OPC=nop             
  addq %r15, %r11               #  82    0xfe1db  3      OPC=addq_r64_r64    
  jmpq %r11                     #  83    0xfe1de  3      OPC=jmpq_r64        
  nop                           #  84    0xfe1e1  1      OPC=nop             
  nop                           #  85    0xfe1e2  1      OPC=nop             
  nop                           #  86    0xfe1e3  1      OPC=nop             
  nop                           #  87    0xfe1e4  1      OPC=nop             
  nop                           #  88    0xfe1e5  1      OPC=nop             
  nop                           #  89    0xfe1e6  1      OPC=nop             
  nop                           #  90    0xfe1e7  1      OPC=nop             
  nop                           #  91    0xfe1e8  1      OPC=nop             
  nop                           #  92    0xfe1e9  1      OPC=nop             
  nop                           #  93    0xfe1ea  1      OPC=nop             
  nop                           #  94    0xfe1eb  1      OPC=nop             
  nop                           #  95    0xfe1ec  1      OPC=nop             
  nop                           #  96    0xfe1ed  1      OPC=nop             
                                                                             
.size d_make_name, .-d_make_name

