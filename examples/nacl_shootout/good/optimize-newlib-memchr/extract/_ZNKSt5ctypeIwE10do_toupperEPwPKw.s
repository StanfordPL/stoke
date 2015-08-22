  .text
  .globl _ZNKSt5ctypeIwE10do_toupperEPwPKw
  .type _ZNKSt5ctypeIwE10do_toupperEPwPKw, @function

#! file-offset 0x13d900
#! rip-offset  0xfd900
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIwE10do_toupperEPwPKw:  #        0xfd900  0      OPC=<label>         
  pushq %r12                         #  1     0xfd900  2      OPC=pushq_r64_1     
  movl %edx, %r12d                   #  2     0xfd902  3      OPC=movl_r32_r32    
  pushq %rbx                         #  3     0xfd905  1      OPC=pushq_r64_1     
  movl %esi, %ebx                    #  4     0xfd906  2      OPC=movl_r32_r32    
  subl $0x8, %esp                    #  5     0xfd908  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                    #  6     0xfd90b  3      OPC=addq_r64_r64    
  cmpl %r12d, %ebx                   #  7     0xfd90e  3      OPC=cmpl_r32_r32    
  jae .L_fd960                       #  8     0xfd911  2      OPC=jae_label       
  nop                                #  9     0xfd913  1      OPC=nop             
  nop                                #  10    0xfd914  1      OPC=nop             
  nop                                #  11    0xfd915  1      OPC=nop             
  nop                                #  12    0xfd916  1      OPC=nop             
  nop                                #  13    0xfd917  1      OPC=nop             
  nop                                #  14    0xfd918  1      OPC=nop             
  nop                                #  15    0xfd919  1      OPC=nop             
  nop                                #  16    0xfd91a  1      OPC=nop             
  nop                                #  17    0xfd91b  1      OPC=nop             
  nop                                #  18    0xfd91c  1      OPC=nop             
  nop                                #  19    0xfd91d  1      OPC=nop             
  nop                                #  20    0xfd91e  1      OPC=nop             
  nop                                #  21    0xfd91f  1      OPC=nop             
.L_fd920:                            #        0xfd920  0      OPC=<label>         
  movl %ebx, %ebx                    #  22    0xfd920  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edi           #  23    0xfd922  4      OPC=movl_r32_m32    
  nop                                #  24    0xfd926  1      OPC=nop             
  nop                                #  25    0xfd927  1      OPC=nop             
  nop                                #  26    0xfd928  1      OPC=nop             
  nop                                #  27    0xfd929  1      OPC=nop             
  nop                                #  28    0xfd92a  1      OPC=nop             
  nop                                #  29    0xfd92b  1      OPC=nop             
  nop                                #  30    0xfd92c  1      OPC=nop             
  nop                                #  31    0xfd92d  1      OPC=nop             
  nop                                #  32    0xfd92e  1      OPC=nop             
  nop                                #  33    0xfd92f  1      OPC=nop             
  nop                                #  34    0xfd930  1      OPC=nop             
  nop                                #  35    0xfd931  1      OPC=nop             
  nop                                #  36    0xfd932  1      OPC=nop             
  nop                                #  37    0xfd933  1      OPC=nop             
  nop                                #  38    0xfd934  1      OPC=nop             
  nop                                #  39    0xfd935  1      OPC=nop             
  nop                                #  40    0xfd936  1      OPC=nop             
  nop                                #  41    0xfd937  1      OPC=nop             
  nop                                #  42    0xfd938  1      OPC=nop             
  nop                                #  43    0xfd939  1      OPC=nop             
  nop                                #  44    0xfd93a  1      OPC=nop             
  callq .towupper                    #  45    0xfd93b  5      OPC=callq_label     
  movl %ebx, %ebx                    #  46    0xfd940  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)           #  47    0xfd942  4      OPC=movl_m32_r32    
  addl $0x4, %ebx                    #  48    0xfd946  3      OPC=addl_r32_imm8   
  cmpl %ebx, %r12d                   #  49    0xfd949  3      OPC=cmpl_r32_r32    
  ja .L_fd920                        #  50    0xfd94c  2      OPC=ja_label        
  nop                                #  51    0xfd94e  1      OPC=nop             
  nop                                #  52    0xfd94f  1      OPC=nop             
  nop                                #  53    0xfd950  1      OPC=nop             
  nop                                #  54    0xfd951  1      OPC=nop             
  nop                                #  55    0xfd952  1      OPC=nop             
  nop                                #  56    0xfd953  1      OPC=nop             
  nop                                #  57    0xfd954  1      OPC=nop             
  nop                                #  58    0xfd955  1      OPC=nop             
  nop                                #  59    0xfd956  1      OPC=nop             
  nop                                #  60    0xfd957  1      OPC=nop             
  nop                                #  61    0xfd958  1      OPC=nop             
  nop                                #  62    0xfd959  1      OPC=nop             
  nop                                #  63    0xfd95a  1      OPC=nop             
  nop                                #  64    0xfd95b  1      OPC=nop             
  nop                                #  65    0xfd95c  1      OPC=nop             
  nop                                #  66    0xfd95d  1      OPC=nop             
  nop                                #  67    0xfd95e  1      OPC=nop             
  nop                                #  68    0xfd95f  1      OPC=nop             
.L_fd960:                            #        0xfd960  0      OPC=<label>         
  addl $0x8, %esp                    #  69    0xfd960  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                    #  70    0xfd963  3      OPC=addq_r64_r64    
  movl %r12d, %eax                   #  71    0xfd966  3      OPC=movl_r32_r32    
  popq %rbx                          #  72    0xfd969  1      OPC=popq_r64_1      
  popq %r12                          #  73    0xfd96a  2      OPC=popq_r64_1      
  popq %r11                          #  74    0xfd96c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d            #  75    0xfd96e  7      OPC=andl_r32_imm32  
  nop                                #  76    0xfd975  1      OPC=nop             
  nop                                #  77    0xfd976  1      OPC=nop             
  nop                                #  78    0xfd977  1      OPC=nop             
  nop                                #  79    0xfd978  1      OPC=nop             
  addq %r15, %r11                    #  80    0xfd979  3      OPC=addq_r64_r64    
  jmpq %r11                          #  81    0xfd97c  3      OPC=jmpq_r64        
  nop                                #  82    0xfd97f  1      OPC=nop             
  nop                                #  83    0xfd980  1      OPC=nop             
  nop                                #  84    0xfd981  1      OPC=nop             
  nop                                #  85    0xfd982  1      OPC=nop             
  nop                                #  86    0xfd983  1      OPC=nop             
  nop                                #  87    0xfd984  1      OPC=nop             
  nop                                #  88    0xfd985  1      OPC=nop             
  nop                                #  89    0xfd986  1      OPC=nop             
                                                                                  
.size _ZNKSt5ctypeIwE10do_toupperEPwPKw, .-_ZNKSt5ctypeIwE10do_toupperEPwPKw

