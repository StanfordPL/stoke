  .text
  .globl wmemcmp
  .type wmemcmp, @function

#! file-offset 0x184260
#! rip-offset  0x144260
#! capacity    160 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.wmemcmp:                       #        0x144260  0      OPC=<label>         
  testl %edx, %edx              #  1     0x144260  2      OPC=testl_r32_r32   
  movl %edi, %edi               #  2     0x144262  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  3     0x144264  2      OPC=movl_r32_r32    
  je .L_1442c0                  #  4     0x144266  2      OPC=je_label        
  movl %edi, %edi               #  5     0x144268  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r8d      #  6     0x14426a  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  7     0x14426e  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx      #  8     0x144270  4      OPC=movl_r32_m32    
  xorl %eax, %eax               #  9     0x144274  2      OPC=xorl_r32_r32    
  cmpl %ecx, %r8d               #  10    0x144276  3      OPC=cmpl_r32_r32    
  je .L_1442a0                  #  11    0x144279  2      OPC=je_label        
  jmpq .L_1442e0                #  12    0x14427b  2      OPC=jmpq_label      
  nop                           #  13    0x14427d  1      OPC=nop             
  nop                           #  14    0x14427e  1      OPC=nop             
  nop                           #  15    0x14427f  1      OPC=nop             
.L_144280:                      #        0x144280  0      OPC=<label>         
  addl $0x4, %edi               #  16    0x144280  3      OPC=addl_r32_imm8   
  addl $0x4, %esi               #  17    0x144283  3      OPC=addl_r32_imm8   
  movl %edi, %edi               #  18    0x144286  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r8d      #  19    0x144288  4      OPC=movl_r32_m32    
  movl %esi, %esi               #  20    0x14428c  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %ecx      #  21    0x14428e  4      OPC=movl_r32_m32    
  cmpl %ecx, %r8d               #  22    0x144292  3      OPC=cmpl_r32_r32    
  jne .L_1442e0                 #  23    0x144295  2      OPC=jne_label       
  nop                           #  24    0x144297  1      OPC=nop             
  nop                           #  25    0x144298  1      OPC=nop             
  nop                           #  26    0x144299  1      OPC=nop             
  nop                           #  27    0x14429a  1      OPC=nop             
  nop                           #  28    0x14429b  1      OPC=nop             
  nop                           #  29    0x14429c  1      OPC=nop             
  nop                           #  30    0x14429d  1      OPC=nop             
  nop                           #  31    0x14429e  1      OPC=nop             
  nop                           #  32    0x14429f  1      OPC=nop             
.L_1442a0:                      #        0x1442a0  0      OPC=<label>         
  addl $0x1, %eax               #  33    0x1442a0  3      OPC=addl_r32_imm8   
  cmpl %eax, %edx               #  34    0x1442a3  2      OPC=cmpl_r32_r32    
  ja .L_144280                  #  35    0x1442a5  2      OPC=ja_label        
  nop                           #  36    0x1442a7  1      OPC=nop             
  nop                           #  37    0x1442a8  1      OPC=nop             
  nop                           #  38    0x1442a9  1      OPC=nop             
  nop                           #  39    0x1442aa  1      OPC=nop             
  nop                           #  40    0x1442ab  1      OPC=nop             
  nop                           #  41    0x1442ac  1      OPC=nop             
  nop                           #  42    0x1442ad  1      OPC=nop             
  nop                           #  43    0x1442ae  1      OPC=nop             
  nop                           #  44    0x1442af  1      OPC=nop             
  nop                           #  45    0x1442b0  1      OPC=nop             
  nop                           #  46    0x1442b1  1      OPC=nop             
  nop                           #  47    0x1442b2  1      OPC=nop             
  nop                           #  48    0x1442b3  1      OPC=nop             
  nop                           #  49    0x1442b4  1      OPC=nop             
  nop                           #  50    0x1442b5  1      OPC=nop             
  nop                           #  51    0x1442b6  1      OPC=nop             
  nop                           #  52    0x1442b7  1      OPC=nop             
  nop                           #  53    0x1442b8  1      OPC=nop             
  nop                           #  54    0x1442b9  1      OPC=nop             
  nop                           #  55    0x1442ba  1      OPC=nop             
  nop                           #  56    0x1442bb  1      OPC=nop             
  nop                           #  57    0x1442bc  1      OPC=nop             
  nop                           #  58    0x1442bd  1      OPC=nop             
  nop                           #  59    0x1442be  1      OPC=nop             
  nop                           #  60    0x1442bf  1      OPC=nop             
.L_1442c0:                      #        0x1442c0  0      OPC=<label>         
  xorl %eax, %eax               #  61    0x1442c0  2      OPC=xorl_r32_r32    
  popq %r11                     #  62    0x1442c2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  63    0x1442c4  7      OPC=andl_r32_imm32  
  nop                           #  64    0x1442cb  1      OPC=nop             
  nop                           #  65    0x1442cc  1      OPC=nop             
  nop                           #  66    0x1442cd  1      OPC=nop             
  nop                           #  67    0x1442ce  1      OPC=nop             
  addq %r15, %r11               #  68    0x1442cf  3      OPC=addq_r64_r64    
  jmpq %r11                     #  69    0x1442d2  3      OPC=jmpq_r64        
  nop                           #  70    0x1442d5  1      OPC=nop             
  nop                           #  71    0x1442d6  1      OPC=nop             
  nop                           #  72    0x1442d7  1      OPC=nop             
  nop                           #  73    0x1442d8  1      OPC=nop             
  nop                           #  74    0x1442d9  1      OPC=nop             
  nop                           #  75    0x1442da  1      OPC=nop             
  nop                           #  76    0x1442db  1      OPC=nop             
  nop                           #  77    0x1442dc  1      OPC=nop             
  nop                           #  78    0x1442dd  1      OPC=nop             
  nop                           #  79    0x1442de  1      OPC=nop             
  nop                           #  80    0x1442df  1      OPC=nop             
  nop                           #  81    0x1442e0  1      OPC=nop             
  nop                           #  82    0x1442e1  1      OPC=nop             
  nop                           #  83    0x1442e2  1      OPC=nop             
  nop                           #  84    0x1442e3  1      OPC=nop             
  nop                           #  85    0x1442e4  1      OPC=nop             
  nop                           #  86    0x1442e5  1      OPC=nop             
  nop                           #  87    0x1442e6  1      OPC=nop             
.L_1442e0:                      #        0x1442e7  0      OPC=<label>         
  xorl %eax, %eax               #  88    0x1442e7  2      OPC=xorl_r32_r32    
  cmpl %ecx, %r8d               #  89    0x1442e9  3      OPC=cmpl_r32_r32    
  setg %al                      #  90    0x1442ec  3      OPC=setg_r8         
  leal -0x1(%rax,%rax,1), %eax  #  91    0x1442ef  4      OPC=leal_r32_m16    
  popq %r11                     #  92    0x1442f3  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  93    0x1442f5  7      OPC=andl_r32_imm32  
  nop                           #  94    0x1442fc  1      OPC=nop             
  nop                           #  95    0x1442fd  1      OPC=nop             
  nop                           #  96    0x1442fe  1      OPC=nop             
  nop                           #  97    0x1442ff  1      OPC=nop             
  addq %r15, %r11               #  98    0x144300  3      OPC=addq_r64_r64    
  jmpq %r11                     #  99    0x144303  3      OPC=jmpq_r64        
  nop                           #  100   0x144306  1      OPC=nop             
  nop                           #  101   0x144307  1      OPC=nop             
  nop                           #  102   0x144308  1      OPC=nop             
  nop                           #  103   0x144309  1      OPC=nop             
  nop                           #  104   0x14430a  1      OPC=nop             
  nop                           #  105   0x14430b  1      OPC=nop             
  nop                           #  106   0x14430c  1      OPC=nop             
  nop                           #  107   0x14430d  1      OPC=nop             
                                                                              
.size wmemcmp, .-wmemcmp

