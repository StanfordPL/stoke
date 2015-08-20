  .text
  .globl _ZNKSt5ctypeIwE8do_widenEPKcS2_Pw
  .type _ZNKSt5ctypeIwE8do_widenEPKcS2_Pw, @function

#! file-offset 0x13cd00
#! rip-offset  0xfcd00
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIwE8do_widenEPKcS2_Pw:  #        0xfcd00  0      OPC=<label>         
  movl %esi, %esi                    #  1     0xfcd00  2      OPC=movl_r32_r32    
  movl %edx, %eax                    #  2     0xfcd02  2      OPC=movl_r32_r32    
  movl %edi, %edi                    #  3     0xfcd04  2      OPC=movl_r32_r32    
  cmpl %eax, %esi                    #  4     0xfcd06  2      OPC=cmpl_r32_r32    
  movl %ecx, %ecx                    #  5     0xfcd08  2      OPC=movl_r32_r32    
  jae .L_fcd60                       #  6     0xfcd0a  2      OPC=jae_label       
  nop                                #  7     0xfcd0c  1      OPC=nop             
  nop                                #  8     0xfcd0d  1      OPC=nop             
  nop                                #  9     0xfcd0e  1      OPC=nop             
  nop                                #  10    0xfcd0f  1      OPC=nop             
  nop                                #  11    0xfcd10  1      OPC=nop             
  nop                                #  12    0xfcd11  1      OPC=nop             
  nop                                #  13    0xfcd12  1      OPC=nop             
  nop                                #  14    0xfcd13  1      OPC=nop             
  nop                                #  15    0xfcd14  1      OPC=nop             
  nop                                #  16    0xfcd15  1      OPC=nop             
  nop                                #  17    0xfcd16  1      OPC=nop             
  nop                                #  18    0xfcd17  1      OPC=nop             
  nop                                #  19    0xfcd18  1      OPC=nop             
  nop                                #  20    0xfcd19  1      OPC=nop             
  nop                                #  21    0xfcd1a  1      OPC=nop             
  nop                                #  22    0xfcd1b  1      OPC=nop             
  nop                                #  23    0xfcd1c  1      OPC=nop             
  nop                                #  24    0xfcd1d  1      OPC=nop             
  nop                                #  25    0xfcd1e  1      OPC=nop             
  nop                                #  26    0xfcd1f  1      OPC=nop             
.L_fcd20:                            #        0xfcd20  0      OPC=<label>         
  movl %esi, %esi                    #  27    0xfcd20  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %r8d         #  28    0xfcd22  5      OPC=movzbl_r32_m8   
  addl $0x1, %esi                    #  29    0xfcd27  3      OPC=addl_r32_imm8   
  leaq 0x90(%rdi,%r8,4), %r8         #  30    0xfcd2a  8      OPC=leaq_r64_m16    
  movl %r8d, %r8d                    #  31    0xfcd32  3      OPC=movl_r32_r32    
  movl (%r15,%r8,1), %r8d            #  32    0xfcd35  4      OPC=movl_r32_m32    
  movl %ecx, %ecx                    #  33    0xfcd39  2      OPC=movl_r32_r32    
  movl %r8d, (%r15,%rcx,1)           #  34    0xfcd3b  4      OPC=movl_m32_r32    
  nop                                #  35    0xfcd3f  1      OPC=nop             
  addl $0x4, %ecx                    #  36    0xfcd40  3      OPC=addl_r32_imm8   
  cmpl %esi, %eax                    #  37    0xfcd43  2      OPC=cmpl_r32_r32    
  ja .L_fcd20                        #  38    0xfcd45  2      OPC=ja_label        
  nop                                #  39    0xfcd47  1      OPC=nop             
  nop                                #  40    0xfcd48  1      OPC=nop             
  nop                                #  41    0xfcd49  1      OPC=nop             
  nop                                #  42    0xfcd4a  1      OPC=nop             
  nop                                #  43    0xfcd4b  1      OPC=nop             
  nop                                #  44    0xfcd4c  1      OPC=nop             
  nop                                #  45    0xfcd4d  1      OPC=nop             
  nop                                #  46    0xfcd4e  1      OPC=nop             
  nop                                #  47    0xfcd4f  1      OPC=nop             
  nop                                #  48    0xfcd50  1      OPC=nop             
  nop                                #  49    0xfcd51  1      OPC=nop             
  nop                                #  50    0xfcd52  1      OPC=nop             
  nop                                #  51    0xfcd53  1      OPC=nop             
  nop                                #  52    0xfcd54  1      OPC=nop             
  nop                                #  53    0xfcd55  1      OPC=nop             
  nop                                #  54    0xfcd56  1      OPC=nop             
  nop                                #  55    0xfcd57  1      OPC=nop             
  nop                                #  56    0xfcd58  1      OPC=nop             
  nop                                #  57    0xfcd59  1      OPC=nop             
  nop                                #  58    0xfcd5a  1      OPC=nop             
  nop                                #  59    0xfcd5b  1      OPC=nop             
  nop                                #  60    0xfcd5c  1      OPC=nop             
  nop                                #  61    0xfcd5d  1      OPC=nop             
  nop                                #  62    0xfcd5e  1      OPC=nop             
  nop                                #  63    0xfcd5f  1      OPC=nop             
.L_fcd60:                            #        0xfcd60  0      OPC=<label>         
  popq %r11                          #  64    0xfcd60  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  65    0xfcd62  7      OPC=andl_r32_imm32  
  nop                                #  66    0xfcd69  1      OPC=nop             
  nop                                #  67    0xfcd6a  1      OPC=nop             
  nop                                #  68    0xfcd6b  1      OPC=nop             
  nop                                #  69    0xfcd6c  1      OPC=nop             
  addq %r15, %r11                    #  70    0xfcd6d  3      OPC=addq_r64_r64    
  jmpq %r11                          #  71    0xfcd70  3      OPC=jmpq_r64        
  nop                                #  72    0xfcd73  1      OPC=nop             
  nop                                #  73    0xfcd74  1      OPC=nop             
  nop                                #  74    0xfcd75  1      OPC=nop             
  nop                                #  75    0xfcd76  1      OPC=nop             
  nop                                #  76    0xfcd77  1      OPC=nop             
  nop                                #  77    0xfcd78  1      OPC=nop             
  nop                                #  78    0xfcd79  1      OPC=nop             
  nop                                #  79    0xfcd7a  1      OPC=nop             
  nop                                #  80    0xfcd7b  1      OPC=nop             
  nop                                #  81    0xfcd7c  1      OPC=nop             
  nop                                #  82    0xfcd7d  1      OPC=nop             
  nop                                #  83    0xfcd7e  1      OPC=nop             
  nop                                #  84    0xfcd7f  1      OPC=nop             
  nop                                #  85    0xfcd80  1      OPC=nop             
  nop                                #  86    0xfcd81  1      OPC=nop             
  nop                                #  87    0xfcd82  1      OPC=nop             
  nop                                #  88    0xfcd83  1      OPC=nop             
  nop                                #  89    0xfcd84  1      OPC=nop             
  nop                                #  90    0xfcd85  1      OPC=nop             
  nop                                #  91    0xfcd86  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIwE8do_widenEPKcS2_Pw, .-_ZNKSt5ctypeIwE8do_widenEPKcS2_Pw

