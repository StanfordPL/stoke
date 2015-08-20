  .text
  .globl _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode
  .type _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, @function

#! file-offset 0x133320
#! rip-offset  0xf3320
#! capacity    128 bytes

# Text                                                                        #  Line  RIP      Bytes  Opcode             
._ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode:         #        0xf3320  0      OPC=<label>        
  pushq %rbx                                                                  #  1     0xf3320  1      OPC=pushq_r64_1    
  movl %edi, %ebx                                                             #  2     0xf3321  2      OPC=movl_r32_r32   
  movl %esi, %esi                                                             #  3     0xf3323  2      OPC=movl_r32_r32   
  leal 0xc(%rbx), %edi                                                        #  4     0xf3325  3      OPC=leal_r32_m16   
  nop                                                                         #  5     0xf3328  1      OPC=nop            
  nop                                                                         #  6     0xf3329  1      OPC=nop            
  nop                                                                         #  7     0xf332a  1      OPC=nop            
  nop                                                                         #  8     0xf332b  1      OPC=nop            
  nop                                                                         #  9     0xf332c  1      OPC=nop            
  nop                                                                         #  10    0xf332d  1      OPC=nop            
  nop                                                                         #  11    0xf332e  1      OPC=nop            
  nop                                                                         #  12    0xf332f  1      OPC=nop            
  nop                                                                         #  13    0xf3330  1      OPC=nop            
  nop                                                                         #  14    0xf3331  1      OPC=nop            
  nop                                                                         #  15    0xf3332  1      OPC=nop            
  nop                                                                         #  16    0xf3333  1      OPC=nop            
  nop                                                                         #  17    0xf3334  1      OPC=nop            
  nop                                                                         #  18    0xf3335  1      OPC=nop            
  nop                                                                         #  19    0xf3336  1      OPC=nop            
  nop                                                                         #  20    0xf3337  1      OPC=nop            
  nop                                                                         #  21    0xf3338  1      OPC=nop            
  nop                                                                         #  22    0xf3339  1      OPC=nop            
  nop                                                                         #  23    0xf333a  1      OPC=nop            
  callq ._ZNSt13basic_filebufIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode  #  24    0xf333b  5      OPC=callq_label    
  testl %eax, %eax                                                            #  25    0xf3340  2      OPC=testl_r32_r32  
  je .L_f3360                                                                 #  26    0xf3342  2      OPC=je_label       
  movl %ebx, %ebx                                                             #  27    0xf3344  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  28    0xf3346  4      OPC=movl_r32_m32   
  xorl %esi, %esi                                                             #  29    0xf334a  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                                                             #  30    0xf334c  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  31    0xf334f  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  32    0xf3351  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  33    0xf3355  2      OPC=addl_r32_r32   
  popq %rbx                                                                   #  34    0xf3357  1      OPC=popq_r64_1     
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  35    0xf3358  5      OPC=jmpq_label_1   
  nop                                                                         #  36    0xf335d  1      OPC=nop            
  nop                                                                         #  37    0xf335e  1      OPC=nop            
  nop                                                                         #  38    0xf335f  1      OPC=nop            
.L_f3360:                                                                     #        0xf3360  0      OPC=<label>        
  movl %ebx, %ebx                                                             #  39    0xf3360  2      OPC=movl_r32_r32   
  movl (%r15,%rbx,1), %eax                                                    #  40    0xf3362  4      OPC=movl_r32_m32   
  subl $0xc, %eax                                                             #  41    0xf3366  3      OPC=subl_r32_imm8  
  movl %eax, %eax                                                             #  42    0xf3369  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edi                                                    #  43    0xf336b  4      OPC=movl_r32_m32   
  addl %ebx, %edi                                                             #  44    0xf336f  2      OPC=addl_r32_r32   
  movl %edi, %edi                                                             #  45    0xf3371  2      OPC=movl_r32_r32   
  movl 0x14(%r15,%rdi,1), %esi                                                #  46    0xf3373  5      OPC=movl_r32_m32   
  popq %rbx                                                                   #  47    0xf3378  1      OPC=popq_r64_1     
  orl $0x4, %esi                                                              #  48    0xf3379  3      OPC=orl_r32_imm8   
  nop                                                                         #  49    0xf337c  1      OPC=nop            
  nop                                                                         #  50    0xf337d  1      OPC=nop            
  nop                                                                         #  51    0xf337e  1      OPC=nop            
  nop                                                                         #  52    0xf337f  1      OPC=nop            
  jmpq ._ZNSt9basic_iosIwSt11char_traitsIwEE5clearESt12_Ios_Iostate           #  53    0xf3380  5      OPC=jmpq_label_1   
  nop                                                                         #  54    0xf3385  1      OPC=nop            
  nop                                                                         #  55    0xf3386  1      OPC=nop            
  nop                                                                         #  56    0xf3387  1      OPC=nop            
  nop                                                                         #  57    0xf3388  1      OPC=nop            
  nop                                                                         #  58    0xf3389  1      OPC=nop            
  nop                                                                         #  59    0xf338a  1      OPC=nop            
  nop                                                                         #  60    0xf338b  1      OPC=nop            
  nop                                                                         #  61    0xf338c  1      OPC=nop            
  nop                                                                         #  62    0xf338d  1      OPC=nop            
  nop                                                                         #  63    0xf338e  1      OPC=nop            
  nop                                                                         #  64    0xf338f  1      OPC=nop            
  nop                                                                         #  65    0xf3390  1      OPC=nop            
  nop                                                                         #  66    0xf3391  1      OPC=nop            
  nop                                                                         #  67    0xf3392  1      OPC=nop            
  nop                                                                         #  68    0xf3393  1      OPC=nop            
  nop                                                                         #  69    0xf3394  1      OPC=nop            
  nop                                                                         #  70    0xf3395  1      OPC=nop            
  nop                                                                         #  71    0xf3396  1      OPC=nop            
  nop                                                                         #  72    0xf3397  1      OPC=nop            
  nop                                                                         #  73    0xf3398  1      OPC=nop            
  nop                                                                         #  74    0xf3399  1      OPC=nop            
  nop                                                                         #  75    0xf339a  1      OPC=nop            
  nop                                                                         #  76    0xf339b  1      OPC=nop            
  nop                                                                         #  77    0xf339c  1      OPC=nop            
  nop                                                                         #  78    0xf339d  1      OPC=nop            
  nop                                                                         #  79    0xf339e  1      OPC=nop            
  nop                                                                         #  80    0xf339f  1      OPC=nop            
                                                                                                                          
.size _ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode, .-_ZNSt13basic_fstreamIwSt11char_traitsIwEE4openEPKcSt13_Ios_Openmode

