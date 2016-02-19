  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x1841a0
#! rip-offset  0x1441a0
#! capacity    192 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.wmemchr:                   #        0x1441a0  0      OPC=<label>         
  nop                       #  1     0x1441a0  1      OPC=nop             
  nop                       #  2     0x1441a1  1      OPC=nop             
  nop                       #  3     0x1441a2  1      OPC=nop             
  nop                       #  4     0x1441a3  1      OPC=nop             
  nop                       #  5     0x1441a4  1      OPC=nop             
  nop                       #  6     0x1441a5  1      OPC=nop             
  testl %edx, %edx          #  7     0x1441a6  2      OPC=testl_r32_r32   
  je .L_144200              #  8     0x1441a8  2      OPC=je_label        
  xorl %ecx, %ecx           #  9     0x1441aa  2      OPC=xorl_r32_r32    
  movl %edi, %eax           #  10    0x1441ac  2      OPC=movl_r32_r32_1  
  cmpl %esi, (%r15,%rax,1)  #  11    0x1441ae  4      OPC=cmpl_m32_r32    
  nop                       #  12    0x1441b2  1      OPC=nop             
  nop                       #  13    0x1441b3  1      OPC=nop             
  nop                       #  14    0x1441b4  1      OPC=nop             
  nop                       #  15    0x1441b5  1      OPC=nop             
  nop                       #  16    0x1441b6  1      OPC=nop             
  nop                       #  17    0x1441b7  1      OPC=nop             
  nop                       #  18    0x1441b8  1      OPC=nop             
  nop                       #  19    0x1441b9  1      OPC=nop             
  jne .L_1441e0             #  20    0x1441ba  2      OPC=jne_label       
  nop                       #  21    0x1441bc  1      OPC=nop             
  nop                       #  22    0x1441bd  1      OPC=nop             
  nop                       #  23    0x1441be  1      OPC=nop             
  nop                       #  24    0x1441bf  1      OPC=nop             
  nop                       #  25    0x1441c0  1      OPC=nop             
  jmpq .L_144240            #  26    0x1441c1  5      OPC=jmpq_label_1    
  nop                       #  27    0x1441c6  1      OPC=nop             
.L_1441c0:                  #        0x1441c7  0      OPC=<label>         
  addl $0x4, %eax           #  28    0x1441c7  6      OPC=addl_r32_imm32  
  cmpl %esi, (%r15,%rax,1)  #  29    0x1441cd  4      OPC=cmpl_m32_r32    
  je .L_144220              #  30    0x1441d1  2      OPC=je_label        
.L_1441e0:                  #        0x1441d3  0      OPC=<label>         
  addl $0x1, %ecx           #  31    0x1441d3  3      OPC=addl_r32_imm8   
  cmpl %ecx, %edx           #  32    0x1441d6  2      OPC=cmpl_r32_r32    
  ja .L_1441c0              #  33    0x1441d8  2      OPC=ja_label        
  nop                       #  34    0x1441da  1      OPC=nop             
  nop                       #  35    0x1441db  1      OPC=nop             
  nop                       #  36    0x1441dc  1      OPC=nop             
  nop                       #  37    0x1441dd  1      OPC=nop             
  nop                       #  38    0x1441de  1      OPC=nop             
  nop                       #  39    0x1441df  1      OPC=nop             
  nop                       #  40    0x1441e0  1      OPC=nop             
  nop                       #  41    0x1441e1  1      OPC=nop             
  nopl %eax                 #  42    0x1441e2  3      OPC=nopl_r32        
.L_144200:                  #        0x1441e5  0      OPC=<label>         
  xorl %eax, %eax           #  43    0x1441e5  2      OPC=xorl_r32_r32    
  nop                       #  44    0x1441e7  1      OPC=nop             
  nop                       #  45    0x1441e8  1      OPC=nop             
  nop                       #  46    0x1441e9  1      OPC=nop             
  nop                       #  47    0x1441ea  1      OPC=nop             
  nop                       #  48    0x1441eb  1      OPC=nop             
  nop                       #  49    0x1441ec  1      OPC=nop             
.L_144220:                  #        0x1441ed  0      OPC=<label>         
.L_144240:                  #        0x1441ed  0      OPC=<label>         
  nop                       #  50    0x1441ed  1      OPC=nop             
  nop                       #  51    0x1441ee  1      OPC=nop             
  retq                      #  52    0x1441ef  1      OPC=retq            
                                                                          
.size wmemchr, .-wmemchr
