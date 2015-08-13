  .text
  .globl _ZNSs4_Rep7_M_grabERKSaIcES2_
  .type _ZNSs4_Rep7_M_grabERKSaIcES2_, @function

#! file-offset 0xebfe0
#! rip-offset  0xabfe0
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSs4_Rep7_M_grabERKSaIcES2_:       #        0xabfe0  0      OPC=<label>         
  movl %edi, %edi                     #  1     0xabfe0  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  2     0xabfe2  2      OPC=movl_r32_r32    
  movl %edi, %edi                     #  3     0xabfe4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax         #  4     0xabfe6  5      OPC=movl_r32_m32    
  testl %eax, %eax                    #  5     0xabfeb  2      OPC=testl_r32_r32   
  js .L_ac020                         #  6     0xabfed  2      OPC=js_label        
  cmpl $0x10073580, %edi              #  7     0xabfef  6      OPC=cmpl_r32_imm32  
  jne .L_ac040                        #  8     0xabff5  2      OPC=jne_label       
  nop                                 #  9     0xabff7  1      OPC=nop             
  nop                                 #  10    0xabff8  1      OPC=nop             
  nop                                 #  11    0xabff9  1      OPC=nop             
  nop                                 #  12    0xabffa  1      OPC=nop             
  nop                                 #  13    0xabffb  1      OPC=nop             
  nop                                 #  14    0xabffc  1      OPC=nop             
  nop                                 #  15    0xabffd  1      OPC=nop             
  nop                                 #  16    0xabffe  1      OPC=nop             
  nop                                 #  17    0xabfff  1      OPC=nop             
.L_ac000:                             #        0xac000  0      OPC=<label>         
  popq %r11                           #  18    0xac000  2      OPC=popq_r64_1      
  leal 0xc(%rdi), %eax                #  19    0xac002  3      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d             #  20    0xac005  7      OPC=andl_r32_imm32  
  nop                                 #  21    0xac00c  1      OPC=nop             
  nop                                 #  22    0xac00d  1      OPC=nop             
  nop                                 #  23    0xac00e  1      OPC=nop             
  nop                                 #  24    0xac00f  1      OPC=nop             
  addq %r15, %r11                     #  25    0xac010  3      OPC=addq_r64_r64    
  jmpq %r11                           #  26    0xac013  3      OPC=jmpq_r64        
  xchgw %ax, %ax                      #  27    0xac016  2      OPC=xchgw_ax_r16    
  nop                                 #  28    0xac018  1      OPC=nop             
  nop                                 #  29    0xac019  1      OPC=nop             
  nop                                 #  30    0xac01a  1      OPC=nop             
  nop                                 #  31    0xac01b  1      OPC=nop             
  nop                                 #  32    0xac01c  1      OPC=nop             
  nop                                 #  33    0xac01d  1      OPC=nop             
  nop                                 #  34    0xac01e  1      OPC=nop             
  nop                                 #  35    0xac01f  1      OPC=nop             
  nop                                 #  36    0xac020  1      OPC=nop             
  nop                                 #  37    0xac021  1      OPC=nop             
  nop                                 #  38    0xac022  1      OPC=nop             
  nop                                 #  39    0xac023  1      OPC=nop             
  nop                                 #  40    0xac024  1      OPC=nop             
  nop                                 #  41    0xac025  1      OPC=nop             
  nop                                 #  42    0xac026  1      OPC=nop             
.L_ac020:                             #        0xac027  0      OPC=<label>         
  xorl %edx, %edx                     #  43    0xac027  2      OPC=xorl_r32_r32    
  jmpq ._ZNSs4_Rep8_M_cloneERKSaIcEj  #  44    0xac029  5      OPC=jmpq_label_1    
  nop                                 #  45    0xac02e  1      OPC=nop             
  nop                                 #  46    0xac02f  1      OPC=nop             
  nop                                 #  47    0xac030  1      OPC=nop             
  nop                                 #  48    0xac031  1      OPC=nop             
  nop                                 #  49    0xac032  1      OPC=nop             
  nop                                 #  50    0xac033  1      OPC=nop             
  nop                                 #  51    0xac034  1      OPC=nop             
  nop                                 #  52    0xac035  1      OPC=nop             
  nop                                 #  53    0xac036  1      OPC=nop             
  nop                                 #  54    0xac037  1      OPC=nop             
  nop                                 #  55    0xac038  1      OPC=nop             
  nop                                 #  56    0xac039  1      OPC=nop             
  nop                                 #  57    0xac03a  1      OPC=nop             
  nop                                 #  58    0xac03b  1      OPC=nop             
  nop                                 #  59    0xac03c  1      OPC=nop             
  nop                                 #  60    0xac03d  1      OPC=nop             
  nop                                 #  61    0xac03e  1      OPC=nop             
  nop                                 #  62    0xac03f  1      OPC=nop             
  nop                                 #  63    0xac040  1      OPC=nop             
  nop                                 #  64    0xac041  1      OPC=nop             
  nop                                 #  65    0xac042  1      OPC=nop             
  nop                                 #  66    0xac043  1      OPC=nop             
  nop                                 #  67    0xac044  1      OPC=nop             
  nop                                 #  68    0xac045  1      OPC=nop             
  nop                                 #  69    0xac046  1      OPC=nop             
.L_ac040:                             #        0xac047  0      OPC=<label>         
  addl $0x1, %eax                     #  70    0xac047  3      OPC=addl_r32_imm8   
  movl %edi, %edi                     #  71    0xac04a  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)         #  72    0xac04c  5      OPC=movl_m32_r32    
  jmpq .L_ac000                       #  73    0xac051  2      OPC=jmpq_label      
  nop                                 #  74    0xac053  1      OPC=nop             
  nop                                 #  75    0xac054  1      OPC=nop             
  nop                                 #  76    0xac055  1      OPC=nop             
  nop                                 #  77    0xac056  1      OPC=nop             
  nop                                 #  78    0xac057  1      OPC=nop             
  nop                                 #  79    0xac058  1      OPC=nop             
  nop                                 #  80    0xac059  1      OPC=nop             
  nop                                 #  81    0xac05a  1      OPC=nop             
  nop                                 #  82    0xac05b  1      OPC=nop             
  nop                                 #  83    0xac05c  1      OPC=nop             
  nop                                 #  84    0xac05d  1      OPC=nop             
  nop                                 #  85    0xac05e  1      OPC=nop             
  nop                                 #  86    0xac05f  1      OPC=nop             
  nop                                 #  87    0xac060  1      OPC=nop             
  nop                                 #  88    0xac061  1      OPC=nop             
  nop                                 #  89    0xac062  1      OPC=nop             
  nop                                 #  90    0xac063  1      OPC=nop             
  nop                                 #  91    0xac064  1      OPC=nop             
  nop                                 #  92    0xac065  1      OPC=nop             
  nop                                 #  93    0xac066  1      OPC=nop             
                                                                                   
.size _ZNSs4_Rep7_M_grabERKSaIcES2_, .-_ZNSs4_Rep7_M_grabERKSaIcES2_

