  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tED2Ev
  .type _ZNSt7codecvtIwc10_mbstate_tED2Ev, @function

#! file-offset 0x1232e0
#! rip-offset  0xe32e0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode    
._ZNSt7codecvtIwc10_mbstate_tED2Ev:                   #        0xe32e0  0      OPC=0     
  pushq %rbx                                          #  1     0xe32e0  1      OPC=1861  
  movl %edi, %ebx                                     #  2     0xe32e1  2      OPC=1157  
  leal 0x8(%rbx), %edi                                #  3     0xe32e3  3      OPC=1066  
  subl $0x10, %esp                                    #  4     0xe32e6  3      OPC=2384  
  addq %r15, %rsp                                     #  5     0xe32e9  3      OPC=72    
  movl %ebx, %ebx                                     #  6     0xe32ec  2      OPC=1157  
  movl $0x1003d4a8, (%r15,%rbx,1)                     #  7     0xe32ee  8      OPC=1135  
  nop                                                 #  8     0xe32f6  1      OPC=1343  
  nop                                                 #  9     0xe32f7  1      OPC=1343  
  nop                                                 #  10    0xe32f8  1      OPC=1343  
  nop                                                 #  11    0xe32f9  1      OPC=1343  
  nop                                                 #  12    0xe32fa  1      OPC=1343  
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xe32fb  5      OPC=260   
  movl %ebx, %ebx                                     #  14    0xe3300  2      OPC=1157  
  movl $0x1003c068, (%r15,%rbx,1)                     #  15    0xe3302  8      OPC=1135  
  movl %ebx, %edi                                     #  16    0xe330a  2      OPC=1157  
  addl $0x10, %esp                                    #  17    0xe330c  3      OPC=65    
  addq %r15, %rsp                                     #  18    0xe330f  3      OPC=72    
  popq %rbx                                           #  19    0xe3312  1      OPC=1694  
  jmpq ._ZNSt6locale5facetD2Ev                        #  20    0xe3313  5      OPC=930   
  nop                                                 #  21    0xe3318  1      OPC=1343  
  nop                                                 #  22    0xe3319  1      OPC=1343  
  nop                                                 #  23    0xe331a  1      OPC=1343  
  nop                                                 #  24    0xe331b  1      OPC=1343  
  nop                                                 #  25    0xe331c  1      OPC=1343  
  nop                                                 #  26    0xe331d  1      OPC=1343  
  nop                                                 #  27    0xe331e  1      OPC=1343  
  nop                                                 #  28    0xe331f  1      OPC=1343  
  movl %ebx, %edi                                     #  29    0xe3320  2      OPC=1157  
  movl %ebx, %ebx                                     #  30    0xe3322  2      OPC=1157  
  movl $0x1003c068, (%r15,%rbx,1)                     #  31    0xe3324  8      OPC=1135  
  movl %eax, 0x8(%rsp)                                #  32    0xe332c  4      OPC=1136  
  nop                                                 #  33    0xe3330  1      OPC=1343  
  nop                                                 #  34    0xe3331  1      OPC=1343  
  nop                                                 #  35    0xe3332  1      OPC=1343  
  nop                                                 #  36    0xe3333  1      OPC=1343  
  nop                                                 #  37    0xe3334  1      OPC=1343  
  nop                                                 #  38    0xe3335  1      OPC=1343  
  nop                                                 #  39    0xe3336  1      OPC=1343  
  nop                                                 #  40    0xe3337  1      OPC=1343  
  nop                                                 #  41    0xe3338  1      OPC=1343  
  nop                                                 #  42    0xe3339  1      OPC=1343  
  nop                                                 #  43    0xe333a  1      OPC=1343  
  callq ._ZNSt6locale5facetD2Ev                       #  44    0xe333b  5      OPC=260   
  movl 0x8(%rsp), %eax                                #  45    0xe3340  4      OPC=1156  
  movl %eax, %edi                                     #  46    0xe3344  2      OPC=1157  
  nop                                                 #  47    0xe3346  1      OPC=1343  
  nop                                                 #  48    0xe3347  1      OPC=1343  
  nop                                                 #  49    0xe3348  1      OPC=1343  
  nop                                                 #  50    0xe3349  1      OPC=1343  
  nop                                                 #  51    0xe334a  1      OPC=1343  
  nop                                                 #  52    0xe334b  1      OPC=1343  
  nop                                                 #  53    0xe334c  1      OPC=1343  
  nop                                                 #  54    0xe334d  1      OPC=1343  
  nop                                                 #  55    0xe334e  1      OPC=1343  
  nop                                                 #  56    0xe334f  1      OPC=1343  
  nop                                                 #  57    0xe3350  1      OPC=1343  
  nop                                                 #  58    0xe3351  1      OPC=1343  
  nop                                                 #  59    0xe3352  1      OPC=1343  
  nop                                                 #  60    0xe3353  1      OPC=1343  
  nop                                                 #  61    0xe3354  1      OPC=1343  
  nop                                                 #  62    0xe3355  1      OPC=1343  
  nop                                                 #  63    0xe3356  1      OPC=1343  
  nop                                                 #  64    0xe3357  1      OPC=1343  
  nop                                                 #  65    0xe3358  1      OPC=1343  
  nop                                                 #  66    0xe3359  1      OPC=1343  
  nop                                                 #  67    0xe335a  1      OPC=1343  
  callq ._Unwind_Resume                               #  68    0xe335b  5      OPC=260   
                                                                                         
.size _ZNSt7codecvtIwc10_mbstate_tED2Ev, .-_ZNSt7codecvtIwc10_mbstate_tED2Ev

