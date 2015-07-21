  .text
  .globl _ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv
  .type _ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv, @function

#! file-offset 0x12a2a0
#! rip-offset  0xea2a0
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode    
._ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv:  #        0xea2a0  0      OPC=0     
  movl %edi, %edi                                                #  1     0xea2a0  2      OPC=1157  
  subl $0x8, %esp                                                #  2     0xea2a2  3      OPC=2384  
  addq %r15, %rsp                                                #  3     0xea2a5  3      OPC=72    
  movl %edi, %edi                                                #  4     0xea2a8  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                                       #  5     0xea2aa  4      OPC=1156  
  movl %eax, %eax                                                #  6     0xea2ae  2      OPC=1157  
  movl 0x20(%r15,%rax,1), %eax                                   #  7     0xea2b0  5      OPC=1156  
  nop                                                            #  8     0xea2b5  1      OPC=1343  
  nop                                                            #  9     0xea2b6  1      OPC=1343  
  nop                                                            #  10    0xea2b7  1      OPC=1343  
  andl $0xffffffe0, %eax                                         #  11    0xea2b8  6      OPC=131   
  nop                                                            #  12    0xea2be  1      OPC=1343  
  nop                                                            #  13    0xea2bf  1      OPC=1343  
  nop                                                            #  14    0xea2c0  1      OPC=1343  
  addq %r15, %rax                                                #  15    0xea2c1  3      OPC=72    
  callq %rax                                                     #  16    0xea2c4  2      OPC=258   
  addl $0x8, %esp                                                #  17    0xea2c6  3      OPC=65    
  addq %r15, %rsp                                                #  18    0xea2c9  3      OPC=72    
  popq %r11                                                      #  19    0xea2cc  2      OPC=1694  
  andl $0xffffffe0, %r11d                                        #  20    0xea2ce  7      OPC=131   
  nop                                                            #  21    0xea2d5  1      OPC=1343  
  nop                                                            #  22    0xea2d6  1      OPC=1343  
  nop                                                            #  23    0xea2d7  1      OPC=1343  
  nop                                                            #  24    0xea2d8  1      OPC=1343  
  addq %r15, %r11                                                #  25    0xea2d9  3      OPC=72    
  jmpq %r11                                                      #  26    0xea2dc  3      OPC=928   
  nop                                                            #  27    0xea2df  1      OPC=1343  
  nop                                                            #  28    0xea2e0  1      OPC=1343  
  nop                                                            #  29    0xea2e1  1      OPC=1343  
  nop                                                            #  30    0xea2e2  1      OPC=1343  
  nop                                                            #  31    0xea2e3  1      OPC=1343  
  nop                                                            #  32    0xea2e4  1      OPC=1343  
  nop                                                            #  33    0xea2e5  1      OPC=1343  
  nop                                                            #  34    0xea2e6  1      OPC=1343  
  nop                                                            #  35    0xea2e7  1      OPC=1343  
  nop                                                            #  36    0xea2e8  1      OPC=1343  
  nop                                                            #  37    0xea2e9  1      OPC=1343  
  nop                                                            #  38    0xea2ea  1      OPC=1343  
  nop                                                            #  39    0xea2eb  1      OPC=1343  
  nop                                                            #  40    0xea2ec  1      OPC=1343  
  cmpq $0xff, %rdx                                               #  41    0xea2ed  4      OPC=475   
  movl %eax, %edi                                                #  42    0xea2f1  2      OPC=1157  
  je .L_ea300                                                    #  43    0xea2f3  6      OPC=893   
  nop                                                            #  44    0xea2f9  1      OPC=1343  
  nop                                                            #  45    0xea2fa  1      OPC=1343  
  nop                                                            #  46    0xea2fb  1      OPC=1343  
  nop                                                            #  47    0xea2fc  1      OPC=1343  
  nop                                                            #  48    0xea2fd  1      OPC=1343  
  nop                                                            #  49    0xea2fe  1      OPC=1343  
  nop                                                            #  50    0xea2ff  1      OPC=1343  
  nop                                                            #  51    0xea300  1      OPC=1343  
  nop                                                            #  52    0xea301  1      OPC=1343  
  nop                                                            #  53    0xea302  1      OPC=1343  
  nop                                                            #  54    0xea303  1      OPC=1343  
  nop                                                            #  55    0xea304  1      OPC=1343  
  nop                                                            #  56    0xea305  1      OPC=1343  
  nop                                                            #  57    0xea306  1      OPC=1343  
  nop                                                            #  58    0xea307  1      OPC=1343  
  nop                                                            #  59    0xea308  1      OPC=1343  
  nop                                                            #  60    0xea309  1      OPC=1343  
  nop                                                            #  61    0xea30a  1      OPC=1343  
  nop                                                            #  62    0xea30b  1      OPC=1343  
  nop                                                            #  63    0xea30c  1      OPC=1343  
  nop                                                            #  64    0xea30d  1      OPC=1343  
  callq ._Unwind_Resume                                          #  65    0xea30e  5      OPC=260   
.L_ea300:                                                        #        0xea313  0      OPC=0     
  nop                                                            #  66    0xea313  1      OPC=1343  
  nop                                                            #  67    0xea314  1      OPC=1343  
  nop                                                            #  68    0xea315  1      OPC=1343  
  nop                                                            #  69    0xea316  1      OPC=1343  
  nop                                                            #  70    0xea317  1      OPC=1343  
  nop                                                            #  71    0xea318  1      OPC=1343  
  nop                                                            #  72    0xea319  1      OPC=1343  
  nop                                                            #  73    0xea31a  1      OPC=1343  
  nop                                                            #  74    0xea31b  1      OPC=1343  
  nop                                                            #  75    0xea31c  1      OPC=1343  
  nop                                                            #  76    0xea31d  1      OPC=1343  
  nop                                                            #  77    0xea31e  1      OPC=1343  
  nop                                                            #  78    0xea31f  1      OPC=1343  
  nop                                                            #  79    0xea320  1      OPC=1343  
  nop                                                            #  80    0xea321  1      OPC=1343  
  nop                                                            #  81    0xea322  1      OPC=1343  
  nop                                                            #  82    0xea323  1      OPC=1343  
  nop                                                            #  83    0xea324  1      OPC=1343  
  nop                                                            #  84    0xea325  1      OPC=1343  
  nop                                                            #  85    0xea326  1      OPC=1343  
  nop                                                            #  86    0xea327  1      OPC=1343  
  nop                                                            #  87    0xea328  1      OPC=1343  
  nop                                                            #  88    0xea329  1      OPC=1343  
  nop                                                            #  89    0xea32a  1      OPC=1343  
  nop                                                            #  90    0xea32b  1      OPC=1343  
  nop                                                            #  91    0xea32c  1      OPC=1343  
  nop                                                            #  92    0xea32d  1      OPC=1343  
  callq .__cxa_call_unexpected                                   #  93    0xea32e  5      OPC=260   
                                                                                                    
.size _ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv, .-_ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv

