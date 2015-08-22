  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x184980
#! rip-offset  0x144980
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.wmemcmp:                       #        0x144980  0      OPC=<label>         
  testl %edx, %edx              #  1     0x144980  2      OPC=testl_r32_r32   
  movl %edi, %edi               #  2     0x144982  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  3     0x144984  2      OPC=movl_r32_r32    
  je .L_1449e0                  #  4     0x144986  2      OPC=je_label        
  movl %edi, %edi               #  5     0x144988  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r8d      #  6     0x14498a  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  7     0x14498e  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx      #  8     0x144990  4      OPC=movl_r32_m32    
  xorl %eax, %eax               #  9     0x144994  2      OPC=xorl_r32_r32    
  cmpl %ecx, %r8d               #  10    0x144996  3      OPC=cmpl_r32_r32    
  je .L_1449c0                  #  11    0x144999  2      OPC=je_label        
  jmpq .L_144a00                #  12    0x14499b  2      OPC=jmpq_label      
  nop                           #  13    0x14499d  1      OPC=nop             
  nop                           #  14    0x14499e  1      OPC=nop             
  nop                           #  15    0x14499f  1      OPC=nop             
.L_1449a0:                      #        0x1449a0  0      OPC=<label>         
  addl $0x4, %edi               #  16    0x1449a0  3      OPC=addl_r32_imm8   
  addl $0x4, %esi               #  17    0x1449a3  3      OPC=addl_r32_imm8   
  movl %edi, %edi               #  18    0x1449a6  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r8d      #  19    0x1449a8  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  20    0x1449ac  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx      #  21    0x1449ae  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  22    0x1449b2  3      OPC=cmpl_r32_r32    
  jne .L_144a00                 #  23    0x1449b5  2      OPC=jne_label       
  nop                           #  24    0x1449b7  1      OPC=nop             
  nop                           #  25    0x1449b8  1      OPC=nop             
  nop                           #  26    0x1449b9  1      OPC=nop             
  nop                           #  27    0x1449ba  1      OPC=nop             
  nop                           #  28    0x1449bb  1      OPC=nop             
  nop                           #  29    0x1449bc  1      OPC=nop             
  nop                           #  30    0x1449bd  1      OPC=nop             
  nop                           #  31    0x1449be  1      OPC=nop             
  nop                           #  32    0x1449bf  1      OPC=nop             
.L_1449c0:                      #        0x1449c0  0      OPC=<label>         
  addl $0x1, %eax               #  33    0x1449c0  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx               #  34    0x1449c3  2      OPC=cmpl_r32_r32    
  ja .L_1449a0                  #  35    0x1449c5  2      OPC=ja_label        
  nop                           #  36    0x1449c7  1      OPC=nop             
  nop                           #  37    0x1449c8  1      OPC=nop             
  nop                           #  38    0x1449c9  1      OPC=nop             
  nop                           #  39    0x1449ca  1      OPC=nop             
  nop                           #  40    0x1449cb  1      OPC=nop             
  nop                           #  41    0x1449cc  1      OPC=nop             
  nop                           #  42    0x1449cd  1      OPC=nop             
  nop                           #  43    0x1449ce  1      OPC=nop             
  nop                           #  44    0x1449cf  1      OPC=nop             
  nop                           #  45    0x1449d0  1      OPC=nop             
  nop                           #  46    0x1449d1  1      OPC=nop             
  nop                           #  47    0x1449d2  1      OPC=nop             
  nop                           #  48    0x1449d3  1      OPC=nop             
  nop                           #  49    0x1449d4  1      OPC=nop             
  nop                           #  50    0x1449d5  1      OPC=nop             
  nop                           #  51    0x1449d6  1      OPC=nop             
  nop                           #  52    0x1449d7  1      OPC=nop             
  nop                           #  53    0x1449d8  1      OPC=nop             
  nop                           #  54    0x1449d9  1      OPC=nop             
  nop                           #  55    0x1449da  1      OPC=nop             
  nop                           #  56    0x1449db  1      OPC=nop             
  nop                           #  57    0x1449dc  1      OPC=nop             
  nop                           #  58    0x1449dd  1      OPC=nop             
  nop                           #  59    0x1449de  1      OPC=nop             
  nop                           #  60    0x1449df  1      OPC=nop             
.L_1449e0:                      #        0x1449e0  0      OPC=<label>         
  xorl %eax, %eax               #  61    0x1449e0  2      OPC=xorl_r32_r32    
  popq %r11                     #  62    0x1449e2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  63    0x1449e4  7      OPC=andl_r32_imm32  
  nop                           #  64    0x1449eb  1      OPC=nop             
  nop                           #  65    0x1449ec  1      OPC=nop             
  nop                           #  66    0x1449ed  1      OPC=nop             
  nop                           #  67    0x1449ee  1      OPC=nop             
  addq %r15, %r11               #  68    0x1449ef  3      OPC=addq_r64_r64    
  jmpq %r11                     #  69    0x1449f2  3      OPC=jmpq_r64        
  nop                           #  70    0x1449f5  1      OPC=nop             
  nop                           #  71    0x1449f6  1      OPC=nop             
  nop                           #  72    0x1449f7  1      OPC=nop             
  nop                           #  73    0x1449f8  1      OPC=nop             
  nop                           #  74    0x1449f9  1      OPC=nop             
  nop                           #  75    0x1449fa  1      OPC=nop             
  nop                           #  76    0x1449fb  1      OPC=nop             
  nop                           #  77    0x1449fc  1      OPC=nop             
  nop                           #  78    0x1449fd  1      OPC=nop             
  nop                           #  79    0x1449fe  1      OPC=nop             
  nop                           #  80    0x1449ff  1      OPC=nop             
  nop                           #  81    0x144a00  1      OPC=nop             
  nop                           #  82    0x144a01  1      OPC=nop             
  nop                           #  83    0x144a02  1      OPC=nop             
  nop                           #  84    0x144a03  1      OPC=nop             
  nop                           #  85    0x144a04  1      OPC=nop             
  nop                           #  86    0x144a05  1      OPC=nop             
  nop                           #  87    0x144a06  1      OPC=nop             
.L_144a00:                      #        0x144a07  0      OPC=<label>         
  xorl %eax, %eax               #  88    0x144a07  2      OPC=xorl_r32_r32    
  cmpl %ecx, %r8d               #  89    0x144a09  3      OPC=cmpl_r32_r32    
  setg %al                      #  90    0x144a0c  3      OPC=setg_r8         
  leal -0x1(%rax,%rax,1), %eax  #  91    0x144a0f  4      OPC=leal_r32_m16    
  popq %r11                     #  92    0x144a13  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  93    0x144a15  7      OPC=andl_r32_imm32  
  nop                           #  94    0x144a1c  1      OPC=nop             
  nop                           #  95    0x144a1d  1      OPC=nop             
  nop                           #  96    0x144a1e  1      OPC=nop             
  nop                           #  97    0x144a1f  1      OPC=nop             
  addq %r15, %r11               #  98    0x144a20  3      OPC=addq_r64_r64    
  jmpq %r11                     #  99    0x144a23  3      OPC=jmpq_r64        
  nop                           #  100   0x144a26  1      OPC=nop             
  nop                           #  101   0x144a27  1      OPC=nop             
  nop                           #  102   0x144a28  1      OPC=nop             
  nop                           #  103   0x144a29  1      OPC=nop             
  nop                           #  104   0x144a2a  1      OPC=nop             
  nop                           #  105   0x144a2b  1      OPC=nop             
  nop                           #  106   0x144a2c  1      OPC=nop             
  nop                           #  107   0x144a2d  1      OPC=nop             
                                                                              
.size wmemcmp, .-wmemcmp

