  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_
  .type _ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_, @function

#! file-offset 0x116dc0
#! rip-offset  0xd6dc0
#! capacity    128 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_:       #        0xd6dc0  0      OPC=<label>         
  movl %edi, %edi                                             #  1     0xd6dc0  2      OPC=movl_r32_r32    
  movl %esi, %esi                                             #  2     0xd6dc2  2      OPC=movl_r32_r32    
  movl %edi, %edi                                             #  3     0xd6dc4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                                 #  4     0xd6dc6  5      OPC=movl_r32_m32    
  testl %eax, %eax                                            #  5     0xd6dcb  2      OPC=testl_r32_r32   
  js .L_d6e00                                                 #  6     0xd6dcd  2      OPC=js_label        
  cmpl $0x10073620, %edi                                      #  7     0xd6dcf  6      OPC=cmpl_r32_imm32  
  jne .L_d6e20                                                #  8     0xd6dd5  2      OPC=jne_label       
  nop                                                         #  9     0xd6dd7  1      OPC=nop             
  nop                                                         #  10    0xd6dd8  1      OPC=nop             
  nop                                                         #  11    0xd6dd9  1      OPC=nop             
  nop                                                         #  12    0xd6dda  1      OPC=nop             
  nop                                                         #  13    0xd6ddb  1      OPC=nop             
  nop                                                         #  14    0xd6ddc  1      OPC=nop             
  nop                                                         #  15    0xd6ddd  1      OPC=nop             
  nop                                                         #  16    0xd6dde  1      OPC=nop             
  nop                                                         #  17    0xd6ddf  1      OPC=nop             
.L_d6de0:                                                     #        0xd6de0  0      OPC=<label>         
  popq %r11                                                   #  18    0xd6de0  2      OPC=popq_r64_1      
  leal 0xc(%rdi), %eax                                        #  19    0xd6de2  3      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d                                     #  20    0xd6de5  7      OPC=andl_r32_imm32  
  nop                                                         #  21    0xd6dec  1      OPC=nop             
  nop                                                         #  22    0xd6ded  1      OPC=nop             
  nop                                                         #  23    0xd6dee  1      OPC=nop             
  nop                                                         #  24    0xd6def  1      OPC=nop             
  addq %r15, %r11                                             #  25    0xd6df0  3      OPC=addq_r64_r64    
  jmpq %r11                                                   #  26    0xd6df3  3      OPC=jmpq_r64        
  xchgw %ax, %ax                                              #  27    0xd6df6  2      OPC=xchgw_ax_r16    
  nop                                                         #  28    0xd6df8  1      OPC=nop             
  nop                                                         #  29    0xd6df9  1      OPC=nop             
  nop                                                         #  30    0xd6dfa  1      OPC=nop             
  nop                                                         #  31    0xd6dfb  1      OPC=nop             
  nop                                                         #  32    0xd6dfc  1      OPC=nop             
  nop                                                         #  33    0xd6dfd  1      OPC=nop             
  nop                                                         #  34    0xd6dfe  1      OPC=nop             
  nop                                                         #  35    0xd6dff  1      OPC=nop             
  nop                                                         #  36    0xd6e00  1      OPC=nop             
  nop                                                         #  37    0xd6e01  1      OPC=nop             
  nop                                                         #  38    0xd6e02  1      OPC=nop             
  nop                                                         #  39    0xd6e03  1      OPC=nop             
  nop                                                         #  40    0xd6e04  1      OPC=nop             
  nop                                                         #  41    0xd6e05  1      OPC=nop             
  nop                                                         #  42    0xd6e06  1      OPC=nop             
.L_d6e00:                                                     #        0xd6e07  0      OPC=<label>         
  xorl %edx, %edx                                             #  43    0xd6e07  2      OPC=xorl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep8_M_cloneERKS1_j  #  44    0xd6e09  5      OPC=jmpq_label_1    
  nop                                                         #  45    0xd6e0e  1      OPC=nop             
  nop                                                         #  46    0xd6e0f  1      OPC=nop             
  nop                                                         #  47    0xd6e10  1      OPC=nop             
  nop                                                         #  48    0xd6e11  1      OPC=nop             
  nop                                                         #  49    0xd6e12  1      OPC=nop             
  nop                                                         #  50    0xd6e13  1      OPC=nop             
  nop                                                         #  51    0xd6e14  1      OPC=nop             
  nop                                                         #  52    0xd6e15  1      OPC=nop             
  nop                                                         #  53    0xd6e16  1      OPC=nop             
  nop                                                         #  54    0xd6e17  1      OPC=nop             
  nop                                                         #  55    0xd6e18  1      OPC=nop             
  nop                                                         #  56    0xd6e19  1      OPC=nop             
  nop                                                         #  57    0xd6e1a  1      OPC=nop             
  nop                                                         #  58    0xd6e1b  1      OPC=nop             
  nop                                                         #  59    0xd6e1c  1      OPC=nop             
  nop                                                         #  60    0xd6e1d  1      OPC=nop             
  nop                                                         #  61    0xd6e1e  1      OPC=nop             
  nop                                                         #  62    0xd6e1f  1      OPC=nop             
  nop                                                         #  63    0xd6e20  1      OPC=nop             
  nop                                                         #  64    0xd6e21  1      OPC=nop             
  nop                                                         #  65    0xd6e22  1      OPC=nop             
  nop                                                         #  66    0xd6e23  1      OPC=nop             
  nop                                                         #  67    0xd6e24  1      OPC=nop             
  nop                                                         #  68    0xd6e25  1      OPC=nop             
  nop                                                         #  69    0xd6e26  1      OPC=nop             
.L_d6e20:                                                     #        0xd6e27  0      OPC=<label>         
  addl $0x1, %eax                                             #  70    0xd6e27  3      OPC=addl_r32_imm8   
  movl %edi, %edi                                             #  71    0xd6e2a  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)                                 #  72    0xd6e2c  5      OPC=movl_m32_r32    
  jmpq .L_d6de0                                               #  73    0xd6e31  2      OPC=jmpq_label      
  nop                                                         #  74    0xd6e33  1      OPC=nop             
  nop                                                         #  75    0xd6e34  1      OPC=nop             
  nop                                                         #  76    0xd6e35  1      OPC=nop             
  nop                                                         #  77    0xd6e36  1      OPC=nop             
  nop                                                         #  78    0xd6e37  1      OPC=nop             
  nop                                                         #  79    0xd6e38  1      OPC=nop             
  nop                                                         #  80    0xd6e39  1      OPC=nop             
  nop                                                         #  81    0xd6e3a  1      OPC=nop             
  nop                                                         #  82    0xd6e3b  1      OPC=nop             
  nop                                                         #  83    0xd6e3c  1      OPC=nop             
  nop                                                         #  84    0xd6e3d  1      OPC=nop             
  nop                                                         #  85    0xd6e3e  1      OPC=nop             
  nop                                                         #  86    0xd6e3f  1      OPC=nop             
  nop                                                         #  87    0xd6e40  1      OPC=nop             
  nop                                                         #  88    0xd6e41  1      OPC=nop             
  nop                                                         #  89    0xd6e42  1      OPC=nop             
  nop                                                         #  90    0xd6e43  1      OPC=nop             
  nop                                                         #  91    0xd6e44  1      OPC=nop             
  nop                                                         #  92    0xd6e45  1      OPC=nop             
  nop                                                         #  93    0xd6e46  1      OPC=nop             
                                                                                                           
.size _ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_, .-_ZNSbIwSt11char_traitsIwESaIwEE4_Rep7_M_grabERKS1_S5_

