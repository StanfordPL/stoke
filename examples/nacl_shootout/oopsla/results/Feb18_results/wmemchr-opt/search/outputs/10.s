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
  testl %edx, %edx          #  3     0x1441a3  2      OPC=testl_r32_r32   
  nop                       #  4     0x1441a5  1      OPC=nop             
  nop                       #  5     0x1441a6  1      OPC=nop             
  nop                       #  6     0x1441a7  1      OPC=nop             
  nop                       #  7     0x1441a8  1      OPC=nop             
  je .L_144200              #  8     0x1441a9  2      OPC=je_label        
  nop                       #  9     0x1441ab  1      OPC=nop             
  xorl %ecx, %ecx           #  10    0x1441ac  2      OPC=xorl_r32_r32    
  nop                       #  11    0x1441ae  1      OPC=nop             
  sarb $0x1, %cl            #  12    0x1441af  3      OPC=sarb_r8_imm8    
  addl %ecx, %eax           #  13    0x1441b2  2      OPC=addl_r32_r32    
  cmpl %esi, (%r15,%rax,1)  #  14    0x1441b4  4      OPC=cmpl_m32_r32    
  nop                       #  15    0x1441b8  1      OPC=nop             
  nop                       #  16    0x1441b9  1      OPC=nop             
  jne .L_1441e0             #  17    0x1441ba  2      OPC=jne_label       
  nop                       #  18    0x1441bc  1      OPC=nop             
  nop                       #  19    0x1441bd  1      OPC=nop             
  nop                       #  20    0x1441be  1      OPC=nop             
  nop                       #  21    0x1441bf  1      OPC=nop             
  nopl %eax                 #  22    0x1441c0  3      OPC=nopl_r32        
  jmpq .L_144240            #  23    0x1441c3  5      OPC=jmpq_label_1    
  nop                       #  24    0x1441c8  1      OPC=nop             
.L_1441c0:                  #        0x1441c9  0      OPC=<label>         
  addl $0x4, %eax           #  25    0x1441c9  3      OPC=addl_r32_imm8   
  cmpl %esi, (%r15,%rax,1)  #  26    0x1441cc  4      OPC=cmpl_m32_r32    
  je .L_144220              #  27    0x1441d0  2      OPC=je_label        
.L_1441e0:                  #        0x1441d2  0      OPC=<label>         
  addl $0x1, %ecx           #  28    0x1441d2  6      OPC=addl_r32_imm32  
  cmpl %ecx, %edx           #  29    0x1441d8  2      OPC=cmpl_r32_r32    
  ja .L_1441c0              #  30    0x1441da  2      OPC=ja_label        
  nop                       #  31    0x1441dc  1      OPC=nop             
  nop                       #  32    0x1441dd  1      OPC=nop             
  nop                       #  33    0x1441de  1      OPC=nop             
  nop                       #  34    0x1441df  1      OPC=nop             
  nop                       #  35    0x1441e0  1      OPC=nop             
  nopl %eax                 #  36    0x1441e1  3      OPC=nopl_r32        
  nop                       #  37    0x1441e4  1      OPC=nop             
.L_144200:                  #        0x1441e5  0      OPC=<label>         
  nop                       #  38    0x1441e5  1      OPC=nop             
  nop                       #  39    0x1441e6  1      OPC=nop             
  nop                       #  40    0x1441e7  1      OPC=nop             
  subl %eax, %eax           #  41    0x1441e8  2      OPC=subl_r32_r32    
  nop                       #  42    0x1441ea  1      OPC=nop             
  nop                       #  43    0x1441eb  1      OPC=nop             
  nop                       #  44    0x1441ec  1      OPC=nop             
  nop                       #  45    0x1441ed  1      OPC=nop             
.L_144220:                  #        0x1441ee  0      OPC=<label>         
  retq                      #  46    0x1441ee  1      OPC=retq            
  nop                       #  47    0x1441ef  1      OPC=nop             
.L_144240:                  #        0x1441f0  0      OPC=<label>         
  nop                       #  48    0x1441f0  1      OPC=nop             
  nop                       #  49    0x1441f1  1      OPC=nop             
  nop                       #  50    0x1441f2  1      OPC=nop             
  nop                       #  51    0x1441f3  1      OPC=nop             
  nop                       #  52    0x1441f4  1      OPC=nop             
  retq                      #  53    0x1441f5  1      OPC=retq            
                                                                          
.size wmemchr, .-wmemchr
