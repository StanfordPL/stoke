  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x1841a0
#! rip-offset  0x1441a0
#! capacity    192 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wmemchr:                   #        0x1441a0  0      OPC=<label>         
  testl %edx, %edx          #  1     0x1441a0  2      OPC=testl_r32_r32   
  movq %rdi, %rax           #  2     0x1441a2  3      OPC=movq_r64_r64_1  
  je .wmemchr               #  3     0x1441a5  2      OPC=je_label        
  xorl %ecx, %ecx           #  4     0x1441a7  2      OPC=xorl_r32_r32    
  movl %eax, %eax           #  5     0x1441a9  2      OPC=movl_r32_r32    
  cmpl %esi, (%r15,%rax,1)  #  6     0x1441ab  4      OPC=cmpl_m32_r32    
  jne .L_1441e0             #  7     0x1441af  2      OPC=jne_label       
  jmpq .L_144220            #  8     0x1441b1  5      OPC=jmpq_label_1    
  nop                       #  9     0x1441b6  1      OPC=nop             
  nop                       #  10    0x1441b7  1      OPC=nop             
  nop                       #  11    0x1441b8  1      OPC=nop             
  nop                       #  12    0x1441b9  1      OPC=nop             
  nop                       #  13    0x1441ba  1      OPC=nop             
  nop                       #  14    0x1441bb  1      OPC=nop             
  nop                       #  15    0x1441bc  1      OPC=nop             
  nop                       #  16    0x1441bd  1      OPC=nop             
  nop                       #  17    0x1441be  1      OPC=nop             
  nop                       #  18    0x1441bf  1      OPC=nop             
.L_1441c0:                  #        0x1441c0  0      OPC=<label>         
  addl $0x4, %eax           #  19    0x1441c0  3      OPC=addl_r32_imm8   
  cmpl %esi, (%r15,%rax,1)  #  20    0x1441c3  4      OPC=cmpl_m32_r32    
  je .L_144220              #  21    0x1441c7  2      OPC=je_label        
  nop                       #  22    0x1441c9  1      OPC=nop             
  nop                       #  23    0x1441ca  1      OPC=nop             
  nop                       #  24    0x1441cb  1      OPC=nop             
  nop                       #  25    0x1441cc  1      OPC=nop             
  nop                       #  26    0x1441cd  1      OPC=nop             
  nop                       #  27    0x1441ce  1      OPC=nop             
  nop                       #  28    0x1441cf  1      OPC=nop             
  nop                       #  29    0x1441d0  1      OPC=nop             
  nop                       #  30    0x1441d1  1      OPC=nop             
  nop                       #  31    0x1441d2  1      OPC=nop             
  nop                       #  32    0x1441d3  1      OPC=nop             
  nop                       #  33    0x1441d4  1      OPC=nop             
  nop                       #  34    0x1441d5  1      OPC=nop             
  nop                       #  35    0x1441d6  1      OPC=nop             
  nop                       #  36    0x1441d7  1      OPC=nop             
  nop                       #  37    0x1441d8  1      OPC=nop             
  nop                       #  38    0x1441d9  1      OPC=nop             
  nop                       #  39    0x1441da  1      OPC=nop             
  nop                       #  40    0x1441db  1      OPC=nop             
  nop                       #  41    0x1441dc  1      OPC=nop             
  nop                       #  42    0x1441dd  1      OPC=nop             
  nop                       #  43    0x1441de  1      OPC=nop             
  nop                       #  44    0x1441df  1      OPC=nop             
.L_1441e0:                  #        0x1441e0  0      OPC=<label>         
  addl $0x1, %ecx           #  45    0x1441e0  3      OPC=addl_r32_imm8   
  cmpl %ecx, %edx           #  46    0x1441e3  2      OPC=cmpl_r32_r32    
  ja .L_1441c0              #  47    0x1441e5  2      OPC=ja_label        
  nop                       #  48    0x1441e7  1      OPC=nop             
  nop                       #  49    0x1441e8  1      OPC=nop             
  nop                       #  50    0x1441e9  1      OPC=nop             
  nop                       #  51    0x1441ea  1      OPC=nop             
  nop                       #  52    0x1441eb  1      OPC=nop             
  nop                       #  53    0x1441ec  1      OPC=nop             
  nop                       #  54    0x1441ed  1      OPC=nop             
  nop                       #  55    0x1441ee  1      OPC=nop             
  nop                       #  56    0x1441ef  1      OPC=nop             
  nop                       #  57    0x1441f0  1      OPC=nop             
  nop                       #  58    0x1441f1  1      OPC=nop             
  nop                       #  59    0x1441f2  1      OPC=nop             
  nop                       #  60    0x1441f3  1      OPC=nop             
  nop                       #  61    0x1441f4  1      OPC=nop             
  nop                       #  62    0x1441f5  1      OPC=nop             
  nop                       #  63    0x1441f6  1      OPC=nop             
  nop                       #  64    0x1441f7  1      OPC=nop             
  nop                       #  65    0x1441f8  1      OPC=nop             
  nop                       #  66    0x1441f9  1      OPC=nop             
  nop                       #  67    0x1441fa  1      OPC=nop             
  nop                       #  68    0x1441fb  1      OPC=nop             
  nop                       #  69    0x1441fc  1      OPC=nop             
.L_144240:                  #        0x1441fd  0      OPC=<label>         
  nop                       #  70    0x1441fd  1      OPC=nop             
  nop                       #  71    0x1441fe  1      OPC=nop             
  nop                       #  72    0x1441ff  1      OPC=nop             
  nop                       #  73    0x144200  1      OPC=nop             
  nop                       #  74    0x144201  1      OPC=nop             
  nop                       #  75    0x144202  1      OPC=nop             
  nop                       #  76    0x144203  1      OPC=nop             
  nop                       #  77    0x144204  1      OPC=nop             
  nop                       #  78    0x144205  1      OPC=nop             
  nop                       #  79    0x144206  1      OPC=nop             
  nop                       #  80    0x144207  1      OPC=nop             
  nop                       #  81    0x144208  1      OPC=nop             
  xorl %eax, %eax           #  82    0x144209  2      OPC=xorl_r32_r32    
  nop                       #  83    0x14420b  1      OPC=nop             
  nop                       #  84    0x14420c  1      OPC=nop             
  nop                       #  85    0x14420d  1      OPC=nop             
  nop                       #  86    0x14420e  1      OPC=nop             
  nop                       #  87    0x14420f  1      OPC=nop             
  nop                       #  88    0x144210  1      OPC=nop             
  nop                       #  89    0x144211  1      OPC=nop             
  nop                       #  90    0x144212  1      OPC=nop             
  nop                       #  91    0x144213  1      OPC=nop             
  nop                       #  92    0x144214  1      OPC=nop             
  nop                       #  93    0x144215  1      OPC=nop             
  nop                       #  94    0x144216  1      OPC=nop             
  nop                       #  95    0x144217  1      OPC=nop             
  nop                       #  96    0x144218  1      OPC=nop             
  nop                       #  97    0x144219  1      OPC=nop             
  nop                       #  98    0x14421a  1      OPC=nop             
  nop                       #  99    0x14421b  1      OPC=nop             
  nop                       #  100   0x14421c  1      OPC=nop             
  nop                       #  101   0x14421d  1      OPC=nop             
  nop                       #  102   0x14421e  1      OPC=nop             
  nop                       #  103   0x14421f  1      OPC=nop             
.L_144220:                  #        0x144220  0      OPC=<label>         
  retq
                                                                          
.size wmemchr, .-wmemchr
