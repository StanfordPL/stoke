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
  movl %edi, %eax           #  3     0x1441a3  2      OPC=movl_r32_r32   
  je .L_144200              #  4     0x1441a5  2      OPC=je_label       
  xorl %ecx, %ecx           #  5     0x1441a7  2      OPC=xorl_r32_r32   
  nop                       #  6     0x1441a9  1      OPC=nop            
  movl %eax, %eax           #  7     0x1441aa  2      OPC=movl_r32_r32   
  cmpl %esi, (%r15,%rax,1)  #  8     0x1441ac  4      OPC=cmpl_m32_r32   
  jne .L_1441e0             #  9     0x1441b0  2      OPC=jne_label      
  jmpq .L_144240            #  10    0x1441b2  5      OPC=jmpq_label_1   
  nop                       #  11    0x1441b7  1      OPC=nop            
  nop                       #  12    0x1441b8  1      OPC=nop            
  nop                       #  13    0x1441b9  1      OPC=nop            
  nop                       #  14    0x1441ba  1      OPC=nop            
  nop                       #  15    0x1441bb  1      OPC=nop            
  nop                       #  16    0x1441bc  1      OPC=nop            
  nop                       #  17    0x1441bd  1      OPC=nop            
  nop                       #  18    0x1441be  1      OPC=nop            
  nop                       #  19    0x1441bf  1      OPC=nop            
.L_1441c0:                  #        0x1441c0  0      OPC=<label>        
  addl $0x4, %eax           #  20    0x1441c0  3      OPC=addl_r32_imm8  
  movl %eax, %eax           #  21    0x1441c3  2      OPC=movl_r32_r32   
  cmpl %esi, (%r15,%rax,1)  #  22    0x1441c5  4      OPC=cmpl_m32_r32   
  je .L_144220              #  23    0x1441c9  2      OPC=je_label       
  nop                       #  24    0x1441cb  1      OPC=nop            
  nop                       #  25    0x1441cc  1      OPC=nop            
  nop                       #  26    0x1441cd  1      OPC=nop            
  nop                       #  27    0x1441ce  1      OPC=nop            
  nop                       #  28    0x1441cf  1      OPC=nop            
  nop                       #  29    0x1441d0  1      OPC=nop            
  nop                       #  30    0x1441d1  1      OPC=nop            
.L_1441e0:                  #        0x1441d2  0      OPC=<label>        
  addl $0x1, %ecx           #  31    0x1441d2  3      OPC=addl_r32_imm8  
  cmpl %ecx, %edx           #  32    0x1441d5  2      OPC=cmpl_r32_r32   
  ja .L_1441c0              #  33    0x1441d7  2      OPC=ja_label       
  nop                       #  34    0x1441d9  1      OPC=nop            
  nop                       #  35    0x1441da  1      OPC=nop            
  nop                       #  36    0x1441db  1      OPC=nop            
  nop                       #  37    0x1441dc  1      OPC=nop            
  nop                       #  38    0x1441dd  1      OPC=nop            
  nop                       #  39    0x1441de  1      OPC=nop            
  nop                       #  40    0x1441df  1      OPC=nop            
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
.L_144200:                  #        0x1441ea  0      OPC=<label>        
  xorl %eax, %eax           #  51    0x1441ea  2      OPC=xorl_r32_r32   
.L_144220:                  #        0x1441ec  0      OPC=<label>        
  retq                      #  52    0x1441ec  1      OPC=retq           
  nop                       #  53    0x1441ed  1      OPC=nop            
  nop                       #  54    0x1441ee  1      OPC=nop            
  nop                       #  55    0x1441ef  1      OPC=nop            
  nop                       #  56    0x1441f0  1      OPC=nop            
  nop                       #  57    0x1441f1  1      OPC=nop            
  nop                       #  58    0x1441f2  1      OPC=nop            
  nop                       #  59    0x1441f3  1      OPC=nop            
  nop                       #  60    0x1441f4  1      OPC=nop            
  nop                       #  61    0x1441f5  1      OPC=nop            
  nop                       #  62    0x1441f6  1      OPC=nop            
  nop                       #  63    0x1441f7  1      OPC=nop            
  nop                       #  64    0x1441f8  1      OPC=nop            
.L_144240:                  #        0x1441f9  0      OPC=<label>        
  retq                      #  65    0x1441f9  1      OPC=retq           
                                                                         
.size wmemchr, .-wmemchr
