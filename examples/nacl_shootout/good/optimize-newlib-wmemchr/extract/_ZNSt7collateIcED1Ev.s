  .text
  .globl _ZNSt7collateIcED1Ev
  .type _ZNSt7collateIcED1Ev, @function

#! file-offset 0xbb920
#! rip-offset  0x7b920
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcED1Ev:                                #        0x7b920  0      OPC=<label>         
  pushq %rbx                                          #  1     0x7b920  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x7b921  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x7b923  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x7b926  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x7b929  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x7b92c  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x7b92e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x7b936  1      OPC=nop             
  nop                                                 #  9     0x7b937  1      OPC=nop             
  nop                                                 #  10    0x7b938  1      OPC=nop             
  nop                                                 #  11    0x7b939  1      OPC=nop             
  nop                                                 #  12    0x7b93a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x7b93b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x7b940  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x7b942  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x7b945  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x7b948  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x7b949  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x7b94e  1      OPC=nop             
  nop                                                 #  20    0x7b94f  1      OPC=nop             
  nop                                                 #  21    0x7b950  1      OPC=nop             
  nop                                                 #  22    0x7b951  1      OPC=nop             
  nop                                                 #  23    0x7b952  1      OPC=nop             
  nop                                                 #  24    0x7b953  1      OPC=nop             
  nop                                                 #  25    0x7b954  1      OPC=nop             
  nop                                                 #  26    0x7b955  1      OPC=nop             
  nop                                                 #  27    0x7b956  1      OPC=nop             
  nop                                                 #  28    0x7b957  1      OPC=nop             
  nop                                                 #  29    0x7b958  1      OPC=nop             
  nop                                                 #  30    0x7b959  1      OPC=nop             
  nop                                                 #  31    0x7b95a  1      OPC=nop             
  nop                                                 #  32    0x7b95b  1      OPC=nop             
  nop                                                 #  33    0x7b95c  1      OPC=nop             
  nop                                                 #  34    0x7b95d  1      OPC=nop             
  nop                                                 #  35    0x7b95e  1      OPC=nop             
  nop                                                 #  36    0x7b95f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x7b960  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x7b962  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x7b966  1      OPC=nop             
  nop                                                 #  40    0x7b967  1      OPC=nop             
  nop                                                 #  41    0x7b968  1      OPC=nop             
  nop                                                 #  42    0x7b969  1      OPC=nop             
  nop                                                 #  43    0x7b96a  1      OPC=nop             
  nop                                                 #  44    0x7b96b  1      OPC=nop             
  nop                                                 #  45    0x7b96c  1      OPC=nop             
  nop                                                 #  46    0x7b96d  1      OPC=nop             
  nop                                                 #  47    0x7b96e  1      OPC=nop             
  nop                                                 #  48    0x7b96f  1      OPC=nop             
  nop                                                 #  49    0x7b970  1      OPC=nop             
  nop                                                 #  50    0x7b971  1      OPC=nop             
  nop                                                 #  51    0x7b972  1      OPC=nop             
  nop                                                 #  52    0x7b973  1      OPC=nop             
  nop                                                 #  53    0x7b974  1      OPC=nop             
  nop                                                 #  54    0x7b975  1      OPC=nop             
  nop                                                 #  55    0x7b976  1      OPC=nop             
  nop                                                 #  56    0x7b977  1      OPC=nop             
  nop                                                 #  57    0x7b978  1      OPC=nop             
  nop                                                 #  58    0x7b979  1      OPC=nop             
  nop                                                 #  59    0x7b97a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x7b97b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x7b980  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x7b984  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x7b986  1      OPC=nop             
  nop                                                 #  64    0x7b987  1      OPC=nop             
  nop                                                 #  65    0x7b988  1      OPC=nop             
  nop                                                 #  66    0x7b989  1      OPC=nop             
  nop                                                 #  67    0x7b98a  1      OPC=nop             
  nop                                                 #  68    0x7b98b  1      OPC=nop             
  nop                                                 #  69    0x7b98c  1      OPC=nop             
  nop                                                 #  70    0x7b98d  1      OPC=nop             
  nop                                                 #  71    0x7b98e  1      OPC=nop             
  nop                                                 #  72    0x7b98f  1      OPC=nop             
  nop                                                 #  73    0x7b990  1      OPC=nop             
  nop                                                 #  74    0x7b991  1      OPC=nop             
  nop                                                 #  75    0x7b992  1      OPC=nop             
  nop                                                 #  76    0x7b993  1      OPC=nop             
  nop                                                 #  77    0x7b994  1      OPC=nop             
  nop                                                 #  78    0x7b995  1      OPC=nop             
  nop                                                 #  79    0x7b996  1      OPC=nop             
  nop                                                 #  80    0x7b997  1      OPC=nop             
  nop                                                 #  81    0x7b998  1      OPC=nop             
  nop                                                 #  82    0x7b999  1      OPC=nop             
  nop                                                 #  83    0x7b99a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x7b99b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIcED1Ev, .-_ZNSt7collateIcED1Ev

