  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x1841a0
#! rip-offset  0x1441a0
#! capacity    192 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
.wmemchr:                   #        0x1441a0  0      OPC=<label>        
  nop                       #  1     0x1441a0  1      OPC=nop            
  testl %edx, %edx          #  2     0x1441a1  2      OPC=testl_r32_r32  
  je .L_144200              #  3     0x1441a3  2      OPC=je_label       
  nop                       #  4     0x1441a5  1      OPC=nop            
  nop                       #  5     0x1441a6  1      OPC=nop            
  nop                       #  6     0x1441a7  1      OPC=nop            
  nop                       #  7     0x1441a8  1      OPC=nop            
  xorl %ecx, %ecx           #  8     0x1441a9  2      OPC=xorl_r32_r32   
  movl %edi, %eax           #  9     0x1441ab  2      OPC=movl_r32_r32   
  cmpl %esi, (%r15,%rax,1)  #  10    0x1441ad  4      OPC=cmpl_m32_r32   
  jne .L_1441e0             #  11    0x1441b1  2      OPC=jne_label      
  nopl %eax                 #  12    0x1441b3  3      OPC=nopl_r32       
  nop                       #  13    0x1441b6  1      OPC=nop            
  nop                       #  14    0x1441b7  1      OPC=nop            
  jmpq .L_144240            #  15    0x1441b8  5      OPC=jmpq_label_1   
  nop                       #  16    0x1441bd  1      OPC=nop            
  nop                       #  17    0x1441be  1      OPC=nop            
  nop                       #  18    0x1441bf  1      OPC=nop            
  nop                       #  19    0x1441c0  1      OPC=nop            
  nop                       #  20    0x1441c1  1      OPC=nop            
  nop                       #  21    0x1441c2  1      OPC=nop            
  nop                       #  22    0x1441c3  1      OPC=nop            
  nop                       #  23    0x1441c4  1      OPC=nop            
  nop                       #  24    0x1441c5  1      OPC=nop            
.L_1441c0:                  #        0x1441c6  0      OPC=<label>        
  nop                       #  25    0x1441c6  1      OPC=nop            
  nop                       #  26    0x1441c7  1      OPC=nop            
  addl $0x4, %eax           #  27    0x1441c8  3      OPC=addl_r32_imm8  
  cmpl %esi, (%r15,%rax,1)  #  28    0x1441cb  4      OPC=cmpl_m32_r32   
  je .L_144220              #  29    0x1441cf  2      OPC=je_label       
  nop                       #  30    0x1441d1  1      OPC=nop            
  nop                       #  31    0x1441d2  1      OPC=nop            
  nop                       #  32    0x1441d3  1      OPC=nop            
  nop                       #  33    0x1441d4  1      OPC=nop            
  nop                       #  34    0x1441d5  1      OPC=nop            
  nop                       #  35    0x1441d6  1      OPC=nop            
  nop                       #  36    0x1441d7  1      OPC=nop            
  nop                       #  37    0x1441d8  1      OPC=nop            
.L_1441e0:                  #        0x1441d9  0      OPC=<label>        
  addl $0x1, %ecx           #  38    0x1441d9  3      OPC=addl_r32_imm8  
  cmpl %ecx, %edx           #  39    0x1441dc  2      OPC=cmpl_r32_r32   
  ja .L_1441c0              #  40    0x1441de  2      OPC=ja_label       
  nop                       #  41    0x1441e0  1      OPC=nop            
  nop                       #  42    0x1441e1  1      OPC=nop            
  nop                       #  43    0x1441e2  1      OPC=nop            
  nop                       #  44    0x1441e3  1      OPC=nop            
  nop                       #  45    0x1441e4  1      OPC=nop            
  nop                       #  46    0x1441e5  1      OPC=nop            
  nop                       #  47    0x1441e6  1      OPC=nop            
  nop                       #  48    0x1441e7  1      OPC=nop            
  nop                       #  49    0x1441e8  1      OPC=nop            
  nop                       #  50    0x1441e9  1      OPC=nop            
  nop                       #  51    0x1441ea  1      OPC=nop            
  nop                       #  52    0x1441eb  1      OPC=nop            
  nop                       #  53    0x1441ec  1      OPC=nop            
  nop                       #  54    0x1441ed  1      OPC=nop            
  nop                       #  55    0x1441ee  1      OPC=nop            
.L_144200:                  #        0x1441ef  0      OPC=<label>        
  nop                       #  56    0x1441ef  1      OPC=nop            
  nop                       #  57    0x1441f0  1      OPC=nop            
  nop                       #  58    0x1441f1  1      OPC=nop            
  nop                       #  59    0x1441f2  1      OPC=nop            
  xorl %eax, %eax           #  60    0x1441f3  2      OPC=xorl_r32_r32   
.L_144220:                  #        0x1441f5  0      OPC=<label>        
  nop                       #  61    0x1441f5  1      OPC=nop            
  nop                       #  62    0x1441f6  1      OPC=nop            
  nopl %eax                 #  63    0x1441f7  3      OPC=nopl_r32       
  nop                       #  64    0x1441fa  1      OPC=nop            
  nop                       #  65    0x1441fb  1      OPC=nop            
  nop                       #  66    0x1441fc  1      OPC=nop            
  nop                       #  67    0x1441fd  1      OPC=nop            
.L_144240:                  #        0x1441fe  0      OPC=<label>        
  nop                       #  68    0x1441fe  1      OPC=nop            
  nop                       #  69    0x1441ff  1      OPC=nop            
  retq                      #  70    0x144200  1      OPC=retq           
                                                                         
.size wmemchr, .-wmemchr
