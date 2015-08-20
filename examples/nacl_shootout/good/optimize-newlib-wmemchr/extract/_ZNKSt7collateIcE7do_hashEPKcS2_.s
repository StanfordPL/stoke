  .text
  .globl _ZNKSt7collateIcE7do_hashEPKcS2_
  .type _ZNKSt7collateIcE7do_hashEPKcS2_, @function

#! file-offset 0xb91e0
#! rip-offset  0x791e0
#! capacity    96 bytes

# Text                              #  Line  RIP      Bytes  Opcode              
._ZNKSt7collateIcE7do_hashEPKcS2_:  #        0x791e0  0      OPC=<label>         
  movl %esi, %esi                   #  1     0x791e0  2      OPC=movl_r32_r32    
  movl %edx, %edx                   #  2     0x791e2  2      OPC=movl_r32_r32    
  xorl %ecx, %ecx                   #  3     0x791e4  2      OPC=xorl_r32_r32    
  xorl %eax, %eax                   #  4     0x791e6  2      OPC=xorl_r32_r32    
  cmpl %edx, %esi                   #  5     0x791e8  2      OPC=cmpl_r32_r32    
  jae .L_79220                      #  6     0x791ea  2      OPC=jae_label       
  nop                               #  7     0x791ec  1      OPC=nop             
  nop                               #  8     0x791ed  1      OPC=nop             
  nop                               #  9     0x791ee  1      OPC=nop             
  nop                               #  10    0x791ef  1      OPC=nop             
  nop                               #  11    0x791f0  1      OPC=nop             
  nop                               #  12    0x791f1  1      OPC=nop             
  nop                               #  13    0x791f2  1      OPC=nop             
  nop                               #  14    0x791f3  1      OPC=nop             
  nop                               #  15    0x791f4  1      OPC=nop             
  nop                               #  16    0x791f5  1      OPC=nop             
  nop                               #  17    0x791f6  1      OPC=nop             
  nop                               #  18    0x791f7  1      OPC=nop             
  nop                               #  19    0x791f8  1      OPC=nop             
  nop                               #  20    0x791f9  1      OPC=nop             
  nop                               #  21    0x791fa  1      OPC=nop             
  nop                               #  22    0x791fb  1      OPC=nop             
  nop                               #  23    0x791fc  1      OPC=nop             
  nop                               #  24    0x791fd  1      OPC=nop             
  nop                               #  25    0x791fe  1      OPC=nop             
  nop                               #  26    0x791ff  1      OPC=nop             
.L_79200:                           #        0x79200  0      OPC=<label>         
  movl %esi, %esi                   #  27    0x79200  2      OPC=movl_r32_r32    
  movsbl (%r15,%rsi,1), %eax        #  28    0x79202  5      OPC=movsbl_r32_m8   
  rorl $0x19, %ecx                  #  29    0x79207  3      OPC=rorl_r32_imm8   
  addl $0x1, %esi                   #  30    0x7920a  3      OPC=addl_r32_imm8   
  addl %eax, %ecx                   #  31    0x7920d  2      OPC=addl_r32_r32    
  cmpl %esi, %edx                   #  32    0x7920f  2      OPC=cmpl_r32_r32    
  ja .L_79200                       #  33    0x79211  2      OPC=ja_label        
  movl %ecx, %eax                   #  34    0x79213  2      OPC=movl_r32_r32    
  nop                               #  35    0x79215  1      OPC=nop             
  nop                               #  36    0x79216  1      OPC=nop             
  nop                               #  37    0x79217  1      OPC=nop             
  nop                               #  38    0x79218  1      OPC=nop             
  nop                               #  39    0x79219  1      OPC=nop             
  nop                               #  40    0x7921a  1      OPC=nop             
  nop                               #  41    0x7921b  1      OPC=nop             
  nop                               #  42    0x7921c  1      OPC=nop             
  nop                               #  43    0x7921d  1      OPC=nop             
  nop                               #  44    0x7921e  1      OPC=nop             
  nop                               #  45    0x7921f  1      OPC=nop             
.L_79220:                           #        0x79220  0      OPC=<label>         
  popq %r11                         #  46    0x79220  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d           #  47    0x79222  7      OPC=andl_r32_imm32  
  nop                               #  48    0x79229  1      OPC=nop             
  nop                               #  49    0x7922a  1      OPC=nop             
  nop                               #  50    0x7922b  1      OPC=nop             
  nop                               #  51    0x7922c  1      OPC=nop             
  addq %r15, %r11                   #  52    0x7922d  3      OPC=addq_r64_r64    
  jmpq %r11                         #  53    0x79230  3      OPC=jmpq_r64        
  nop                               #  54    0x79233  1      OPC=nop             
  nop                               #  55    0x79234  1      OPC=nop             
  nop                               #  56    0x79235  1      OPC=nop             
  nop                               #  57    0x79236  1      OPC=nop             
  nop                               #  58    0x79237  1      OPC=nop             
  nop                               #  59    0x79238  1      OPC=nop             
  nop                               #  60    0x79239  1      OPC=nop             
  nop                               #  61    0x7923a  1      OPC=nop             
  nop                               #  62    0x7923b  1      OPC=nop             
  nop                               #  63    0x7923c  1      OPC=nop             
  nop                               #  64    0x7923d  1      OPC=nop             
  nop                               #  65    0x7923e  1      OPC=nop             
  nop                               #  66    0x7923f  1      OPC=nop             
  nop                               #  67    0x79240  1      OPC=nop             
  nop                               #  68    0x79241  1      OPC=nop             
  nop                               #  69    0x79242  1      OPC=nop             
  nop                               #  70    0x79243  1      OPC=nop             
  nop                               #  71    0x79244  1      OPC=nop             
  nop                               #  72    0x79245  1      OPC=nop             
  nop                               #  73    0x79246  1      OPC=nop             
                                                                                 
.size _ZNKSt7collateIcE7do_hashEPKcS2_, .-_ZNKSt7collateIcE7do_hashEPKcS2_

