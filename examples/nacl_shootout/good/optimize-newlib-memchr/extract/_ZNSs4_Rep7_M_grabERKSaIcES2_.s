  .text
  .globl _ZNSs4_Rep7_M_grabERKSaIcES2_
  .type _ZNSs4_Rep7_M_grabERKSaIcES2_, @function

#! file-offset 0xeca00
#! rip-offset  0xaca00
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSs4_Rep7_M_grabERKSaIcES2_:       #        0xaca00  0      OPC=<label>         
  movl %edi, %edi                     #  1     0xaca00  2      OPC=movl_r32_r32    
  movl %esi, %esi                     #  2     0xaca02  2      OPC=movl_r32_r32    
  movl %edi, %edi                     #  3     0xaca04  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax         #  4     0xaca06  5      OPC=movl_r32_m32    
  testl %eax, %eax                    #  5     0xaca0b  2      OPC=testl_r32_r32   
  js .L_aca40                         #  6     0xaca0d  2      OPC=js_label        
  cmpl $0x10073580, %edi              #  7     0xaca0f  6      OPC=cmpl_r32_imm32  
  jne .L_aca60                        #  8     0xaca15  2      OPC=jne_label       
  nop                                 #  9     0xaca17  1      OPC=nop             
  nop                                 #  10    0xaca18  1      OPC=nop             
  nop                                 #  11    0xaca19  1      OPC=nop             
  nop                                 #  12    0xaca1a  1      OPC=nop             
  nop                                 #  13    0xaca1b  1      OPC=nop             
  nop                                 #  14    0xaca1c  1      OPC=nop             
  nop                                 #  15    0xaca1d  1      OPC=nop             
  nop                                 #  16    0xaca1e  1      OPC=nop             
  nop                                 #  17    0xaca1f  1      OPC=nop             
.L_aca20:                             #        0xaca20  0      OPC=<label>         
  popq %r11                           #  18    0xaca20  2      OPC=popq_r64_1      
  leal 0xc(%rdi), %eax                #  19    0xaca22  3      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d             #  20    0xaca25  7      OPC=andl_r32_imm32  
  nop                                 #  21    0xaca2c  1      OPC=nop             
  nop                                 #  22    0xaca2d  1      OPC=nop             
  nop                                 #  23    0xaca2e  1      OPC=nop             
  nop                                 #  24    0xaca2f  1      OPC=nop             
  addq %r15, %r11                     #  25    0xaca30  3      OPC=addq_r64_r64    
  jmpq %r11                           #  26    0xaca33  3      OPC=jmpq_r64        
  xchgw %ax, %ax                      #  27    0xaca36  2      OPC=xchgw_ax_r16    
  nop                                 #  28    0xaca38  1      OPC=nop             
  nop                                 #  29    0xaca39  1      OPC=nop             
  nop                                 #  30    0xaca3a  1      OPC=nop             
  nop                                 #  31    0xaca3b  1      OPC=nop             
  nop                                 #  32    0xaca3c  1      OPC=nop             
  nop                                 #  33    0xaca3d  1      OPC=nop             
  nop                                 #  34    0xaca3e  1      OPC=nop             
  nop                                 #  35    0xaca3f  1      OPC=nop             
  nop                                 #  36    0xaca40  1      OPC=nop             
  nop                                 #  37    0xaca41  1      OPC=nop             
  nop                                 #  38    0xaca42  1      OPC=nop             
  nop                                 #  39    0xaca43  1      OPC=nop             
  nop                                 #  40    0xaca44  1      OPC=nop             
  nop                                 #  41    0xaca45  1      OPC=nop             
  nop                                 #  42    0xaca46  1      OPC=nop             
.L_aca40:                             #        0xaca47  0      OPC=<label>         
  xorl %edx, %edx                     #  43    0xaca47  2      OPC=xorl_r32_r32    
  jmpq ._ZNSs4_Rep8_M_cloneERKSaIcEj  #  44    0xaca49  5      OPC=jmpq_label_1    
  nop                                 #  45    0xaca4e  1      OPC=nop             
  nop                                 #  46    0xaca4f  1      OPC=nop             
  nop                                 #  47    0xaca50  1      OPC=nop             
  nop                                 #  48    0xaca51  1      OPC=nop             
  nop                                 #  49    0xaca52  1      OPC=nop             
  nop                                 #  50    0xaca53  1      OPC=nop             
  nop                                 #  51    0xaca54  1      OPC=nop             
  nop                                 #  52    0xaca55  1      OPC=nop             
  nop                                 #  53    0xaca56  1      OPC=nop             
  nop                                 #  54    0xaca57  1      OPC=nop             
  nop                                 #  55    0xaca58  1      OPC=nop             
  nop                                 #  56    0xaca59  1      OPC=nop             
  nop                                 #  57    0xaca5a  1      OPC=nop             
  nop                                 #  58    0xaca5b  1      OPC=nop             
  nop                                 #  59    0xaca5c  1      OPC=nop             
  nop                                 #  60    0xaca5d  1      OPC=nop             
  nop                                 #  61    0xaca5e  1      OPC=nop             
  nop                                 #  62    0xaca5f  1      OPC=nop             
  nop                                 #  63    0xaca60  1      OPC=nop             
  nop                                 #  64    0xaca61  1      OPC=nop             
  nop                                 #  65    0xaca62  1      OPC=nop             
  nop                                 #  66    0xaca63  1      OPC=nop             
  nop                                 #  67    0xaca64  1      OPC=nop             
  nop                                 #  68    0xaca65  1      OPC=nop             
  nop                                 #  69    0xaca66  1      OPC=nop             
.L_aca60:                             #        0xaca67  0      OPC=<label>         
  addl $0x1, %eax                     #  70    0xaca67  3      OPC=addl_r32_imm8   
  movl %edi, %edi                     #  71    0xaca6a  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rdi,1)         #  72    0xaca6c  5      OPC=movl_m32_r32    
  jmpq .L_aca20                       #  73    0xaca71  2      OPC=jmpq_label      
  nop                                 #  74    0xaca73  1      OPC=nop             
  nop                                 #  75    0xaca74  1      OPC=nop             
  nop                                 #  76    0xaca75  1      OPC=nop             
  nop                                 #  77    0xaca76  1      OPC=nop             
  nop                                 #  78    0xaca77  1      OPC=nop             
  nop                                 #  79    0xaca78  1      OPC=nop             
  nop                                 #  80    0xaca79  1      OPC=nop             
  nop                                 #  81    0xaca7a  1      OPC=nop             
  nop                                 #  82    0xaca7b  1      OPC=nop             
  nop                                 #  83    0xaca7c  1      OPC=nop             
  nop                                 #  84    0xaca7d  1      OPC=nop             
  nop                                 #  85    0xaca7e  1      OPC=nop             
  nop                                 #  86    0xaca7f  1      OPC=nop             
  nop                                 #  87    0xaca80  1      OPC=nop             
  nop                                 #  88    0xaca81  1      OPC=nop             
  nop                                 #  89    0xaca82  1      OPC=nop             
  nop                                 #  90    0xaca83  1      OPC=nop             
  nop                                 #  91    0xaca84  1      OPC=nop             
  nop                                 #  92    0xaca85  1      OPC=nop             
  nop                                 #  93    0xaca86  1      OPC=nop             
                                                                                   
.size _ZNSs4_Rep7_M_grabERKSaIcES2_, .-_ZNSs4_Rep7_M_grabERKSaIcES2_

