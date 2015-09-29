  .text
  .globl _ZNKSt5ctypeIwE8do_widenEPKcS2_Pw
  .type _ZNKSt5ctypeIwE8do_widenEPKcS2_Pw, @function

#! file-offset 0x13d420
#! rip-offset  0xfd420
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIwE8do_widenEPKcS2_Pw:  #        0xfd420  0      OPC=<label>         
  movl %esi, %esi                    #  1     0xfd420  2      OPC=movl_r32_r32    
  movl %edx, %eax                    #  2     0xfd422  2      OPC=movl_r32_r32    
  movl %edi, %edi                    #  3     0xfd424  2      OPC=movl_r32_r32    
  cmpl %eax, %esi                    #  4     0xfd426  2      OPC=cmpl_r32_r32    
  movl %ecx, %ecx                    #  5     0xfd428  2      OPC=movl_r32_r32    
  jae .L_fd480                       #  6     0xfd42a  2      OPC=jae_label       
  nop                                #  7     0xfd42c  1      OPC=nop             
  nop                                #  8     0xfd42d  1      OPC=nop             
  nop                                #  9     0xfd42e  1      OPC=nop             
  nop                                #  10    0xfd42f  1      OPC=nop             
  nop                                #  11    0xfd430  1      OPC=nop             
  nop                                #  12    0xfd431  1      OPC=nop             
  nop                                #  13    0xfd432  1      OPC=nop             
  nop                                #  14    0xfd433  1      OPC=nop             
  nop                                #  15    0xfd434  1      OPC=nop             
  nop                                #  16    0xfd435  1      OPC=nop             
  nop                                #  17    0xfd436  1      OPC=nop             
  nop                                #  18    0xfd437  1      OPC=nop             
  nop                                #  19    0xfd438  1      OPC=nop             
  nop                                #  20    0xfd439  1      OPC=nop             
  nop                                #  21    0xfd43a  1      OPC=nop             
  nop                                #  22    0xfd43b  1      OPC=nop             
  nop                                #  23    0xfd43c  1      OPC=nop             
  nop                                #  24    0xfd43d  1      OPC=nop             
  nop                                #  25    0xfd43e  1      OPC=nop             
  nop                                #  26    0xfd43f  1      OPC=nop             
.L_fd440:                            #        0xfd440  0      OPC=<label>         
  movl %esi, %esi                    #  27    0xfd440  2      OPC=movl_r32_r32    
  movzbl (%r15,%rsi,1), %r8d         #  28    0xfd442  5      OPC=movzbl_r32_m8   
  addl $0x1, %esi                    #  29    0xfd447  3      OPC=addl_r32_imm8   
  leaq 0x90(%rdi,%r8,4), %r8         #  30    0xfd44a  8      OPC=leaq_r64_m16    
  movl %r8d, %r8d                    #  31    0xfd452  3      OPC=movl_r32_r32    
  movl (%r15,%r8,1), %r8d            #  32    0xfd455  4      OPC=movl_r32_m32    
  movl %ecx, %ecx                    #  33    0xfd459  2      OPC=movl_r32_r32    
  movl %r8d, (%r15,%rcx,1)           #  34    0xfd45b  4      OPC=movl_m32_r32    
  nop                                #  35    0xfd45f  1      OPC=nop             
  addl $0x4, %ecx                    #  36    0xfd460  3      OPC=addl_r32_imm8   
  cmpl %esi, %eax                    #  37    0xfd463  2      OPC=cmpl_r32_r32    
  ja .L_fd440                        #  38    0xfd465  2      OPC=ja_label        
  nop                                #  39    0xfd467  1      OPC=nop             
  nop                                #  40    0xfd468  1      OPC=nop             
  nop                                #  41    0xfd469  1      OPC=nop             
  nop                                #  42    0xfd46a  1      OPC=nop             
  nop                                #  43    0xfd46b  1      OPC=nop             
  nop                                #  44    0xfd46c  1      OPC=nop             
  nop                                #  45    0xfd46d  1      OPC=nop             
  nop                                #  46    0xfd46e  1      OPC=nop             
  nop                                #  47    0xfd46f  1      OPC=nop             
  nop                                #  48    0xfd470  1      OPC=nop             
  nop                                #  49    0xfd471  1      OPC=nop             
  nop                                #  50    0xfd472  1      OPC=nop             
  nop                                #  51    0xfd473  1      OPC=nop             
  nop                                #  52    0xfd474  1      OPC=nop             
  nop                                #  53    0xfd475  1      OPC=nop             
  nop                                #  54    0xfd476  1      OPC=nop             
  nop                                #  55    0xfd477  1      OPC=nop             
  nop                                #  56    0xfd478  1      OPC=nop             
  nop                                #  57    0xfd479  1      OPC=nop             
  nop                                #  58    0xfd47a  1      OPC=nop             
  nop                                #  59    0xfd47b  1      OPC=nop             
  nop                                #  60    0xfd47c  1      OPC=nop             
  nop                                #  61    0xfd47d  1      OPC=nop             
  nop                                #  62    0xfd47e  1      OPC=nop             
  nop                                #  63    0xfd47f  1      OPC=nop             
.L_fd480:                            #        0xfd480  0      OPC=<label>         
  popq %r11                          #  64    0xfd480  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  65    0xfd482  7      OPC=andl_r32_imm32  
  nop                                #  66    0xfd489  1      OPC=nop             
  nop                                #  67    0xfd48a  1      OPC=nop             
  nop                                #  68    0xfd48b  1      OPC=nop             
  nop                                #  69    0xfd48c  1      OPC=nop             
  addq %r15, %r11                    #  70    0xfd48d  3      OPC=addq_r64_r64    
  jmpq %r11                          #  71    0xfd490  3      OPC=jmpq_r64        
  nop                                #  72    0xfd493  1      OPC=nop             
  nop                                #  73    0xfd494  1      OPC=nop             
  nop                                #  74    0xfd495  1      OPC=nop             
  nop                                #  75    0xfd496  1      OPC=nop             
  nop                                #  76    0xfd497  1      OPC=nop             
  nop                                #  77    0xfd498  1      OPC=nop             
  nop                                #  78    0xfd499  1      OPC=nop             
  nop                                #  79    0xfd49a  1      OPC=nop             
  nop                                #  80    0xfd49b  1      OPC=nop             
  nop                                #  81    0xfd49c  1      OPC=nop             
  nop                                #  82    0xfd49d  1      OPC=nop             
  nop                                #  83    0xfd49e  1      OPC=nop             
  nop                                #  84    0xfd49f  1      OPC=nop             
  nop                                #  85    0xfd4a0  1      OPC=nop             
  nop                                #  86    0xfd4a1  1      OPC=nop             
  nop                                #  87    0xfd4a2  1      OPC=nop             
  nop                                #  88    0xfd4a3  1      OPC=nop             
  nop                                #  89    0xfd4a4  1      OPC=nop             
  nop                                #  90    0xfd4a5  1      OPC=nop             
  nop                                #  91    0xfd4a6  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIwE8do_widenEPKcS2_Pw, .-_ZNKSt5ctypeIwE8do_widenEPKcS2_Pw

