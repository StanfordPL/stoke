  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x1841a0
#! rip-offset  0x1441a0
#! capacity    192 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wmemchr:                   #        0x1441a0  0      OPC=<label>         
  testl %edx, %edx          #  1     0x1441a0  2      OPC=testl_r32_r32   
  nop                       #  2     0x1441a2  1      OPC=nop             
  nop                       #  3     0x1441a3  1      OPC=nop             
  nop                       #  4     0x1441a4  1      OPC=nop             
  nop                       #  5     0x1441a5  1      OPC=nop             
  nop                       #  6     0x1441a6  1      OPC=nop             
  nop                       #  7     0x1441a7  1      OPC=nop             
  movl %edi, %eax           #  8     0x1441a8  2      OPC=movl_r32_r32    
  nop                       #  9     0x1441aa  1      OPC=nop             
  nop                       #  10    0x1441ab  1      OPC=nop             
  nop                       #  11    0x1441ac  1      OPC=nop             
  nop                       #  12    0x1441ad  1      OPC=nop             
  je .L_144200              #  13    0x1441ae  2      OPC=je_label        
  nop                       #  14    0x1441b0  1      OPC=nop             
  xorl %ecx, %ecx           #  15    0x1441b1  2      OPC=xorl_r32_r32    
  nop                       #  16    0x1441b3  1      OPC=nop             
  movl %edi, %eax           #  17    0x1441b4  2      OPC=movl_r32_r32    
  cmpl %esi, (%r15,%rax,1)  #  18    0x1441b6  4      OPC=cmpl_m32_r32    
  jne .L_1441e0             #  19    0x1441ba  2      OPC=jne_label       
  nop                       #  20    0x1441bc  1      OPC=nop             
  nopl %eax                 #  21    0x1441bd  3      OPC=nopl_r32        
  jmpq .L_144240            #  22    0x1441c0  5      OPC=jmpq_label_1    
  nop                       #  23    0x1441c5  1      OPC=nop             
  nop                       #  24    0x1441c6  1      OPC=nop             
  nop                       #  25    0x1441c7  1      OPC=nop             
  nop                       #  26    0x1441c8  1      OPC=nop             
  nop                       #  27    0x1441c9  1      OPC=nop             
.L_1441c0:                  #        0x1441ca  0      OPC=<label>         
  addl $0x4, %eax           #  28    0x1441ca  3      OPC=addl_r32_imm8   
  cmpl %esi, (%r15,%rax,1)  #  29    0x1441cd  4      OPC=cmpl_m32_r32    
  je .L_144220              #  30    0x1441d1  2      OPC=je_label        
  nop                       #  31    0x1441d3  1      OPC=nop             
  nop                       #  32    0x1441d4  1      OPC=nop             
  nop                       #  33    0x1441d5  1      OPC=nop             
  nop                       #  34    0x1441d6  1      OPC=nop             
  nop                       #  35    0x1441d7  1      OPC=nop             
  nop                       #  36    0x1441d8  1      OPC=nop             
  nop                       #  37    0x1441d9  1      OPC=nop             
  nop                       #  38    0x1441da  1      OPC=nop             
.L_1441e0:                  #        0x1441db  0      OPC=<label>         
  addl $0x1, %ecx           #  39    0x1441db  3      OPC=addl_r32_imm8   
  cmpl %ecx, %edx           #  40    0x1441de  2      OPC=cmpl_r32_r32    
  ja .L_1441c0              #  41    0x1441e0  2      OPC=ja_label        
  subb %ah, %ah             #  42    0x1441e2  2      OPC=subb_rh_rh_1    
  nopl %eax                 #  43    0x1441e4  3      OPC=nopl_r32        
  nop                       #  44    0x1441e7  1      OPC=nop             
  nop                       #  45    0x1441e8  1      OPC=nop             
  nop                       #  46    0x1441e9  1      OPC=nop             
  nop                       #  47    0x1441ea  1      OPC=nop             
  nop                       #  48    0x1441eb  1      OPC=nop             
.L_144200:                  #        0x1441ec  0      OPC=<label>         
  nop                       #  49    0x1441ec  1      OPC=nop             
  nop                       #  50    0x1441ed  1      OPC=nop             
  nop                       #  51    0x1441ee  1      OPC=nop             
  subl %eax, %eax           #  52    0x1441ef  2      OPC=subl_r32_r32_1  
  nop                       #  53    0x1441f1  1      OPC=nop             
  nop                       #  54    0x1441f2  1      OPC=nop             
  nopl %eax                 #  55    0x1441f3  3      OPC=nopl_r32        
  nop                       #  56    0x1441f6  1      OPC=nop             
  nop                       #  57    0x1441f7  1      OPC=nop             
  nop                       #  58    0x1441f8  1      OPC=nop             
  nop                       #  59    0x1441f9  1      OPC=nop             
  nop                       #  60    0x1441fa  1      OPC=nop             
  nop                       #  61    0x1441fb  1      OPC=nop             
  nop                       #  62    0x1441fc  1      OPC=nop             
  nop                       #  63    0x1441fd  1      OPC=nop             
  nop                       #  64    0x1441fe  1      OPC=nop             
  nop                       #  65    0x1441ff  1      OPC=nop             
  nop                       #  66    0x144200  1      OPC=nop             
.L_144220:                  #        0x144201  0      OPC=<label>         
  retq                      #  67    0x144201  1      OPC=retq            
  nop                       #  68    0x144202  1      OPC=nop             
  nop                       #  69    0x144203  1      OPC=nop             
  nop                       #  70    0x144204  1      OPC=nop             
  nop                       #  71    0x144205  1      OPC=nop             
  nop                       #  72    0x144206  1      OPC=nop             
.L_144240:                  #        0x144207  0      OPC=<label>         
  nop                       #  73    0x144207  1      OPC=nop             
  nop                       #  74    0x144208  1      OPC=nop             
  retq                      #  75    0x144209  1      OPC=retq            
                                                                          
.size wmemchr, .-wmemchr
