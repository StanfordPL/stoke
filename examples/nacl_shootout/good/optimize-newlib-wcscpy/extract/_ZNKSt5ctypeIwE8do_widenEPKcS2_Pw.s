  .text
  .globl _ZNKSt5ctypeIwE8do_widenEPKcS2_Pw
  .type _ZNKSt5ctypeIwE8do_widenEPKcS2_Pw, @function

#! file-offset 0x13ca00
#! rip-offset  0xfca00
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIwE8do_widenEPKcS2_Pw:  #        0xfca00  0      OPC=<label>         
  movl %esi, %esi                    #  1     0xfca00  2      OPC=movl_r32_r32    
  movl %edx, %eax                    #  2     0xfca02  2      OPC=movl_r32_r32    
  movl %edi, %edi                    #  3     0xfca04  2      OPC=movl_r32_r32    
  cmpl %eax, %esi                    #  4     0xfca06  2      OPC=cmpl_r32_r32    
  movl %ecx, %ecx                    #  5     0xfca08  2      OPC=movl_r32_r32    
  jae .L_fca60                       #  6     0xfca0a  2      OPC=jae_label       
  nop                                #  7     0xfca0c  1      OPC=nop             
  nop                                #  8     0xfca0d  1      OPC=nop             
  nop                                #  9     0xfca0e  1      OPC=nop             
  nop                                #  10    0xfca0f  1      OPC=nop             
  nop                                #  11    0xfca10  1      OPC=nop             
  nop                                #  12    0xfca11  1      OPC=nop             
  nop                                #  13    0xfca12  1      OPC=nop             
  nop                                #  14    0xfca13  1      OPC=nop             
  nop                                #  15    0xfca14  1      OPC=nop             
  nop                                #  16    0xfca15  1      OPC=nop             
  nop                                #  17    0xfca16  1      OPC=nop             
  nop                                #  18    0xfca17  1      OPC=nop             
  nop                                #  19    0xfca18  1      OPC=nop             
  nop                                #  20    0xfca19  1      OPC=nop             
  nop                                #  21    0xfca1a  1      OPC=nop             
  nop                                #  22    0xfca1b  1      OPC=nop             
  nop                                #  23    0xfca1c  1      OPC=nop             
  nop                                #  24    0xfca1d  1      OPC=nop             
  nop                                #  25    0xfca1e  1      OPC=nop             
  nop                                #  26    0xfca1f  1      OPC=nop             
.L_fca20:                            #        0xfca20  0      OPC=<label>         
  movl %esi, %esi                    #  27    0xfca20  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %r8d         #  28    0xfca22  5      OPC=movzbl_r32_m8   
  addl $0x1, %esi                    #  29    0xfca27  3      OPC=addl_r32_imm8   
  leaq 0x90(%rdi,%r8,4), %r8         #  30    0xfca2a  8      OPC=leaq_r64_m16    
  movl %r8d, %r8d                    #  31    0xfca32  3      OPC=movl_r32_r32    
  movl (%r15,%r8,1), %r8d            #  32    0xfca35  4      OPC=movl_r32_m32    
  movl %ecx, %ecx                    #  33    0xfca39  2      OPC=movl_r32_r32    
  movl %r8d, (%r15,%rcx,1)           #  34    0xfca3b  4      OPC=movl_m32_r32    
  nop                                #  35    0xfca3f  1      OPC=nop             
  addl $0x4, %ecx                    #  36    0xfca40  3      OPC=addl_r32_imm8   
  cmpl %esi, %eax                    #  37    0xfca43  2      OPC=cmpl_r32_r32    
  ja .L_fca20                        #  38    0xfca45  2      OPC=ja_label        
  nop                                #  39    0xfca47  1      OPC=nop             
  nop                                #  40    0xfca48  1      OPC=nop             
  nop                                #  41    0xfca49  1      OPC=nop             
  nop                                #  42    0xfca4a  1      OPC=nop             
  nop                                #  43    0xfca4b  1      OPC=nop             
  nop                                #  44    0xfca4c  1      OPC=nop             
  nop                                #  45    0xfca4d  1      OPC=nop             
  nop                                #  46    0xfca4e  1      OPC=nop             
  nop                                #  47    0xfca4f  1      OPC=nop             
  nop                                #  48    0xfca50  1      OPC=nop             
  nop                                #  49    0xfca51  1      OPC=nop             
  nop                                #  50    0xfca52  1      OPC=nop             
  nop                                #  51    0xfca53  1      OPC=nop             
  nop                                #  52    0xfca54  1      OPC=nop             
  nop                                #  53    0xfca55  1      OPC=nop             
  nop                                #  54    0xfca56  1      OPC=nop             
  nop                                #  55    0xfca57  1      OPC=nop             
  nop                                #  56    0xfca58  1      OPC=nop             
  nop                                #  57    0xfca59  1      OPC=nop             
  nop                                #  58    0xfca5a  1      OPC=nop             
  nop                                #  59    0xfca5b  1      OPC=nop             
  nop                                #  60    0xfca5c  1      OPC=nop             
  nop                                #  61    0xfca5d  1      OPC=nop             
  nop                                #  62    0xfca5e  1      OPC=nop             
  nop                                #  63    0xfca5f  1      OPC=nop             
.L_fca60:                            #        0xfca60  0      OPC=<label>         
  popq %r11                          #  64    0xfca60  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  65    0xfca62  7      OPC=andl_r32_imm32  
  nop                                #  66    0xfca69  1      OPC=nop             
  nop                                #  67    0xfca6a  1      OPC=nop             
  nop                                #  68    0xfca6b  1      OPC=nop             
  nop                                #  69    0xfca6c  1      OPC=nop             
  addq %r15, %r11                    #  70    0xfca6d  3      OPC=addq_r64_r64    
  jmpq %r11                          #  71    0xfca70  3      OPC=jmpq_r64        
  nop                                #  72    0xfca73  1      OPC=nop             
  nop                                #  73    0xfca74  1      OPC=nop             
  nop                                #  74    0xfca75  1      OPC=nop             
  nop                                #  75    0xfca76  1      OPC=nop             
  nop                                #  76    0xfca77  1      OPC=nop             
  nop                                #  77    0xfca78  1      OPC=nop             
  nop                                #  78    0xfca79  1      OPC=nop             
  nop                                #  79    0xfca7a  1      OPC=nop             
  nop                                #  80    0xfca7b  1      OPC=nop             
  nop                                #  81    0xfca7c  1      OPC=nop             
  nop                                #  82    0xfca7d  1      OPC=nop             
  nop                                #  83    0xfca7e  1      OPC=nop             
  nop                                #  84    0xfca7f  1      OPC=nop             
  nop                                #  85    0xfca80  1      OPC=nop             
  nop                                #  86    0xfca81  1      OPC=nop             
  nop                                #  87    0xfca82  1      OPC=nop             
  nop                                #  88    0xfca83  1      OPC=nop             
  nop                                #  89    0xfca84  1      OPC=nop             
  nop                                #  90    0xfca85  1      OPC=nop             
  nop                                #  91    0xfca86  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIwE8do_widenEPKcS2_Pw, .-_ZNKSt5ctypeIwE8do_widenEPKcS2_Pw

