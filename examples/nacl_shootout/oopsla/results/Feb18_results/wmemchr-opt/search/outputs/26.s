  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x1841a0
#! rip-offset  0x1441a0
#! capacity    192 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wmemchr:                   #        0x1441a0  0      OPC=<label>         
  movl %edi, %eax           #  1     0x1441a0  2      OPC=movl_r32_r32    
  nop                       #  2     0x1441a2  1      OPC=nop             
  nop                       #  3     0x1441a3  1      OPC=nop             
  testl %edx, %edx          #  4     0x1441a4  2      OPC=testl_r32_r32   
  nop                       #  5     0x1441a6  1      OPC=nop             
  nop                       #  6     0x1441a7  1      OPC=nop             
  nop                       #  7     0x1441a8  1      OPC=nop             
  je .L_144200              #  8     0x1441a9  2      OPC=je_label        
  nop                       #  9     0x1441ab  1      OPC=nop             
  nop                       #  10    0x1441ac  1      OPC=nop             
  nop                       #  11    0x1441ad  1      OPC=nop             
  nop                       #  12    0x1441ae  1      OPC=nop             
  nop                       #  13    0x1441af  1      OPC=nop             
  nop                       #  14    0x1441b0  1      OPC=nop             
  nop                       #  15    0x1441b1  1      OPC=nop             
  xorl %ecx, %ecx           #  16    0x1441b2  2      OPC=xorl_r32_r32    
  nop                       #  17    0x1441b4  1      OPC=nop             
  nop                       #  18    0x1441b5  1      OPC=nop             
  nop                       #  19    0x1441b6  1      OPC=nop             
  orl $0x0, %eax            #  20    0x1441b7  5      OPC=orl_eax_imm32   
  cmpl %esi, (%r15,%rax,1)  #  21    0x1441bc  4      OPC=cmpl_m32_r32    
  jne .L_1441e0             #  22    0x1441c0  2      OPC=jne_label       
  nop                       #  23    0x1441c2  1      OPC=nop             
  nop                       #  24    0x1441c3  1      OPC=nop             
  nop                       #  25    0x1441c4  1      OPC=nop             
  nop                       #  26    0x1441c5  1      OPC=nop             
  nop                       #  27    0x1441c6  1      OPC=nop             
  jmpq .L_144240            #  28    0x1441c7  5      OPC=jmpq_label_1    
  nop                       #  29    0x1441cc  1      OPC=nop             
  nop                       #  30    0x1441cd  1      OPC=nop             
  nop                       #  31    0x1441ce  1      OPC=nop             
  nop                       #  32    0x1441cf  1      OPC=nop             
  nop                       #  33    0x1441d0  1      OPC=nop             
  nop                       #  34    0x1441d1  1      OPC=nop             
  nop                       #  35    0x1441d2  1      OPC=nop             
  nop                       #  36    0x1441d3  1      OPC=nop             
  nop                       #  37    0x1441d4  1      OPC=nop             
  nop                       #  38    0x1441d5  1      OPC=nop             
  nop                       #  39    0x1441d6  1      OPC=nop             
  nop                       #  40    0x1441d7  1      OPC=nop             
  nop                       #  41    0x1441d8  1      OPC=nop             
.L_1441c0:                  #        0x1441d9  0      OPC=<label>         
  addl $0x4, %eax           #  42    0x1441d9  3      OPC=addl_r32_imm8   
  cmpl %esi, (%r15,%rax,1)  #  43    0x1441dc  4      OPC=cmpl_m32_r32    
  je .L_144220              #  44    0x1441e0  2      OPC=je_label        
.L_1441e0:                  #        0x1441e2  0      OPC=<label>         
  addl $0x1, %ecx           #  45    0x1441e2  3      OPC=addl_r32_imm8   
  cmpl %ecx, %edx           #  46    0x1441e5  2      OPC=cmpl_r32_r32    
  ja .L_1441c0              #  47    0x1441e7  2      OPC=ja_label        
  nop                       #  48    0x1441e9  1      OPC=nop             
  nop                       #  49    0x1441ea  1      OPC=nop             
  nop                       #  50    0x1441eb  1      OPC=nop             
  nop                       #  51    0x1441ec  1      OPC=nop             
  nop                       #  52    0x1441ed  1      OPC=nop             
  nop                       #  53    0x1441ee  1      OPC=nop             
  nop                       #  54    0x1441ef  1      OPC=nop             
  nop                       #  55    0x1441f0  1      OPC=nop             
  nop                       #  56    0x1441f1  1      OPC=nop             
  nop                       #  57    0x1441f2  1      OPC=nop             
  nop                       #  58    0x1441f3  1      OPC=nop             
.L_144200:                  #        0x1441f4  0      OPC=<label>         
  nop                       #  59    0x1441f4  1      OPC=nop             
  nop                       #  60    0x1441f5  1      OPC=nop             
  nop                       #  61    0x1441f6  1      OPC=nop             
  nop                       #  62    0x1441f7  1      OPC=nop             
  nop                       #  63    0x1441f8  1      OPC=nop             
  nop                       #  64    0x1441f9  1      OPC=nop             
  nopl %eax                 #  65    0x1441fa  3      OPC=nopl_r32        
  nop                       #  66    0x1441fd  1      OPC=nop             
  subl %eax, %eax           #  67    0x1441fe  2      OPC=subl_r32_r32_1  
  nop                       #  68    0x144200  1      OPC=nop             
  shrb $0x80, %al           #  69    0x144201  3      OPC=shrb_r8_imm8    
  nop                       #  70    0x144204  1      OPC=nop             
  nop                       #  71    0x144205  1      OPC=nop             
  nop                       #  72    0x144206  1      OPC=nop             
  nop                       #  73    0x144207  1      OPC=nop             
  nop                       #  74    0x144208  1      OPC=nop             
  nop                       #  75    0x144209  1      OPC=nop             
  nop                       #  76    0x14420a  1      OPC=nop             
  nop                       #  77    0x14420b  1      OPC=nop             
  nop                       #  78    0x14420c  1      OPC=nop             
  nop                       #  79    0x14420d  1      OPC=nop             
.L_144220:                  #        0x14420e  0      OPC=<label>         
  retq                      #  80    0x14420e  1      OPC=retq            
  nop                       #  81    0x14420f  1      OPC=nop             
  nop                       #  82    0x144210  1      OPC=nop             
  nop                       #  83    0x144211  1      OPC=nop             
  nop                       #  84    0x144212  1      OPC=nop             
  nop                       #  85    0x144213  1      OPC=nop             
  nop                       #  86    0x144214  1      OPC=nop             
  nop                       #  87    0x144215  1      OPC=nop             
  nopl %eax                 #  88    0x144216  3      OPC=nopl_r32        
  nop                       #  89    0x144219  1      OPC=nop             
  nop                       #  90    0x14421a  1      OPC=nop             
  nop                       #  91    0x14421b  1      OPC=nop             
  nop                       #  92    0x14421c  1      OPC=nop             
  nop                       #  93    0x14421d  1      OPC=nop             
.L_144240:                  #        0x14421e  0      OPC=<label>         
  nop                       #  94    0x14421e  1      OPC=nop             
  retq                      #  95    0x14421f  1      OPC=retq            
                                                                          
.size wmemchr, .-wmemchr
