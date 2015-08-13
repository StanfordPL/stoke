  .text
  .globl _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x133120
#! rip-offset  0xf3120
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode:        #        0xf3120  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xf3120  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xf3121  2      OPC=movl_r32_r32   
  orl $0x8, %edx                                                              #  3     0xf3123  3      OPC=orl_r32_imm8   
  leal 0x8(%rbx), %edi                                                        #  4     0xf3126  3      OPC=leal_r32_m16   
  movl %esi, %esi                                                             #  5     0xf3129  2      OPC=movl_r32_r32   
  nop                                                                         #  6     0xf312b  1      OPC=nop            
  nop                                                                         #  7     0xf312c  1      OPC=nop            
  nop                                                                         #  8     0xf312d  1      OPC=nop            
  nop                                                                         #  9     0xf312e  1      OPC=nop            
  nop                                                                         #  10    0xf312f  1      OPC=nop            
  nop                                                                         #  11    0xf3130  1      OPC=nop            
  nop                                                                         #  12    0xf3131  1      OPC=nop            
  nop                                                                         #  13    0xf3132  1      OPC=nop            
  nop                                                                         #  14    0xf3133  1      OPC=nop            
  nop                                                                         #  15    0xf3134  1      OPC=nop            
  nop                                                                         #  16    0xf3135  1      OPC=nop            
  nop                                                                         #  17    0xf3136  1      OPC=nop            
  nop                                                                         #  18    0xf3137  1      OPC=nop            
  nop                                                                         #  19    0xf3138  1      OPC=nop            
  nop                                                                         #  20    0xf3139  1      OPC=nop            
  nop                                                                         #  21    0xf313a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  22    0xf313b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  23    0xf3140  2      OPC=testl_r32_r32  
  je .L_f3160                                                                 #  24    0xf3142  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  25    0xf3144  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  26    0xf3146  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  27    0xf314a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  28    0xf314c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  29    0xf314f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  30    0xf3151  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  31    0xf3155  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  32    0xf3157  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  33    0xf3158  5      OPC=jmpq_label_1   
  nop                                                                         #  34    0xf315d  1      OPC=nop            
  nop                                                                         #  35    0xf315e  1      OPC=nop            
  nop                                                                         #  36    0xf315f  1      OPC=nop            
.L_f3160:                                                                     #        0xf3160  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  37    0xf3160  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  38    0xf3162  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  39    0xf3166  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  40    0xf3169  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  41    0xf316b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  42    0xf316f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  43    0xf3171  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  44    0xf3173  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  45    0xf3178  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  46    0xf3179  3      OPC=orl_r32_imm8   
  nop                                                                         #  47    0xf317c  1      OPC=nop            
  nop                                                                         #  48    0xf317d  1      OPC=nop            
  nop                                                                         #  49    0xf317e  1      OPC=nop            
  nop                                                                         #  50    0xf317f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  51    0xf3180  5      OPC=jmpq_label_1   
  nop                                                                         #  52    0xf3185  1      OPC=nop            
  nop                                                                         #  53    0xf3186  1      OPC=nop            
  nop                                                                         #  54    0xf3187  1      OPC=nop            
  nop                                                                         #  55    0xf3188  1      OPC=nop            
  nop                                                                         #  56    0xf3189  1      OPC=nop            
  nop                                                                         #  57    0xf318a  1      OPC=nop            
  nop                                                                         #  58    0xf318b  1      OPC=nop            
  nop                                                                         #  59    0xf318c  1      OPC=nop            
  nop                                                                         #  60    0xf318d  1      OPC=nop            
  nop                                                                         #  61    0xf318e  1      OPC=nop            
  nop                                                                         #  62    0xf318f  1      OPC=nop            
  nop                                                                         #  63    0xf3190  1      OPC=nop            
  nop                                                                         #  64    0xf3191  1      OPC=nop            
  nop                                                                         #  65    0xf3192  1      OPC=nop            
  nop                                                                         #  66    0xf3193  1      OPC=nop            
  nop                                                                         #  67    0xf3194  1      OPC=nop            
  nop                                                                         #  68    0xf3195  1      OPC=nop            
  nop                                                                         #  69    0xf3196  1      OPC=nop            
  nop                                                                         #  70    0xf3197  1      OPC=nop            
  nop                                                                         #  71    0xf3198  1      OPC=nop            
  nop                                                                         #  72    0xf3199  1      OPC=nop            
  nop                                                                         #  73    0xf319a  1      OPC=nop            
  nop                                                                         #  74    0xf319b  1      OPC=nop            
  nop                                                                         #  75    0xf319c  1      OPC=nop            
  nop                                                                         #  76    0xf319d  1      OPC=nop            
  nop                                                                         #  77    0xf319e  1      OPC=nop            
  nop                                                                         #  78    0xf319f  1      OPC=nop            
                                                                                                                          
.size _ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, .-_ZNSt14basic_ifstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode

