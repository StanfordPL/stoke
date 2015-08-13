  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x133020
#! rip-offset  0xf3020
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode:         #        0xf3020  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xf3020  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xf3021  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  3     0xf3023  2      OPC=movl_r32_r32   
  leal 0xc(%rbx), %edi                                                        #  4     0xf3025  3      OPC=leal_r32_m16   
  nop                                                                         #  5     0xf3028  1      OPC=nop            
  nop                                                                         #  6     0xf3029  1      OPC=nop            
  nop                                                                         #  7     0xf302a  1      OPC=nop            
  nop                                                                         #  8     0xf302b  1      OPC=nop            
  nop                                                                         #  9     0xf302c  1      OPC=nop            
  nop                                                                         #  10    0xf302d  1      OPC=nop            
  nop                                                                         #  11    0xf302e  1      OPC=nop            
  nop                                                                         #  12    0xf302f  1      OPC=nop            
  nop                                                                         #  13    0xf3030  1      OPC=nop            
  nop                                                                         #  14    0xf3031  1      OPC=nop            
  nop                                                                         #  15    0xf3032  1      OPC=nop            
  nop                                                                         #  16    0xf3033  1      OPC=nop            
  nop                                                                         #  17    0xf3034  1      OPC=nop            
  nop                                                                         #  18    0xf3035  1      OPC=nop            
  nop                                                                         #  19    0xf3036  1      OPC=nop            
  nop                                                                         #  20    0xf3037  1      OPC=nop            
  nop                                                                         #  21    0xf3038  1      OPC=nop            
  nop                                                                         #  22    0xf3039  1      OPC=nop            
  nop                                                                         #  23    0xf303a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  24    0xf303b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  25    0xf3040  2      OPC=testl_r32_r32  
  je .L_f3060                                                                 #  26    0xf3042  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  27    0xf3044  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  28    0xf3046  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  29    0xf304a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  30    0xf304c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  31    0xf304f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  32    0xf3051  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  33    0xf3055  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  34    0xf3057  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  35    0xf3058  5      OPC=jmpq_label_1   
  nop                                                                         #  36    0xf305d  1      OPC=nop            
  nop                                                                         #  37    0xf305e  1      OPC=nop            
  nop                                                                         #  38    0xf305f  1      OPC=nop            
.L_f3060:                                                                     #        0xf3060  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  39    0xf3060  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  40    0xf3062  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  41    0xf3066  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  42    0xf3069  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  43    0xf306b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  44    0xf306f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  45    0xf3071  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  46    0xf3073  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  47    0xf3078  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  48    0xf3079  3      OPC=orl_r32_imm8   
  nop                                                                         #  49    0xf307c  1      OPC=nop            
  nop                                                                         #  50    0xf307d  1      OPC=nop            
  nop                                                                         #  51    0xf307e  1      OPC=nop            
  nop                                                                         #  52    0xf307f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  53    0xf3080  5      OPC=jmpq_label_1   
  nop                                                                         #  54    0xf3085  1      OPC=nop            
  nop                                                                         #  55    0xf3086  1      OPC=nop            
  nop                                                                         #  56    0xf3087  1      OPC=nop            
  nop                                                                         #  57    0xf3088  1      OPC=nop            
  nop                                                                         #  58    0xf3089  1      OPC=nop            
  nop                                                                         #  59    0xf308a  1      OPC=nop            
  nop                                                                         #  60    0xf308b  1      OPC=nop            
  nop                                                                         #  61    0xf308c  1      OPC=nop            
  nop                                                                         #  62    0xf308d  1      OPC=nop            
  nop                                                                         #  63    0xf308e  1      OPC=nop            
  nop                                                                         #  64    0xf308f  1      OPC=nop            
  nop                                                                         #  65    0xf3090  1      OPC=nop            
  nop                                                                         #  66    0xf3091  1      OPC=nop            
  nop                                                                         #  67    0xf3092  1      OPC=nop            
  nop                                                                         #  68    0xf3093  1      OPC=nop            
  nop                                                                         #  69    0xf3094  1      OPC=nop            
  nop                                                                         #  70    0xf3095  1      OPC=nop            
  nop                                                                         #  71    0xf3096  1      OPC=nop            
  nop                                                                         #  72    0xf3097  1      OPC=nop            
  nop                                                                         #  73    0xf3098  1      OPC=nop            
  nop                                                                         #  74    0xf3099  1      OPC=nop            
  nop                                                                         #  75    0xf309a  1      OPC=nop            
  nop                                                                         #  76    0xf309b  1      OPC=nop            
  nop                                                                         #  77    0xf309c  1      OPC=nop            
  nop                                                                         #  78    0xf309d  1      OPC=nop            
  nop                                                                         #  79    0xf309e  1      OPC=nop            
  nop                                                                         #  80    0xf309f  1      OPC=nop            
                                                                                                                          
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode

