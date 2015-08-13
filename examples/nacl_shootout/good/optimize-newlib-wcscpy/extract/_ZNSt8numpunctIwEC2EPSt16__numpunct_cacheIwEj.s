  .text
  .globl _ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj
  .type _ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj, @function

#! file-offset 0xf6720
#! rip-offset  0xb6720
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj:        #        0xb6720  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb6720  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb6721  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb6723  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0xb6725  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0xb6727  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0xb672a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  7     0xb672d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0xb672f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                          #  9     0xb6731  5      OPC=movl_m32_r32    
  setne %al                                            #  10    0xb6736  3      OPC=setne_r8        
  nop                                                  #  11    0xb6739  1      OPC=nop             
  nop                                                  #  12    0xb673a  1      OPC=nop             
  nop                                                  #  13    0xb673b  1      OPC=nop             
  nop                                                  #  14    0xb673c  1      OPC=nop             
  nop                                                  #  15    0xb673d  1      OPC=nop             
  nop                                                  #  16    0xb673e  1      OPC=nop             
  nop                                                  #  17    0xb673f  1      OPC=nop             
  movl %ebx, %ebx                                      #  18    0xb6740  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  19    0xb6742  8      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  20    0xb674a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  21    0xb674c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  22    0xb674e  5      OPC=movl_m32_r32    
  nop                                                  #  23    0xb6753  1      OPC=nop             
  nop                                                  #  24    0xb6754  1      OPC=nop             
  nop                                                  #  25    0xb6755  1      OPC=nop             
  nop                                                  #  26    0xb6756  1      OPC=nop             
  nop                                                  #  27    0xb6757  1      OPC=nop             
  nop                                                  #  28    0xb6758  1      OPC=nop             
  nop                                                  #  29    0xb6759  1      OPC=nop             
  nop                                                  #  30    0xb675a  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  31    0xb675b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  32    0xb6760  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  33    0xb6763  3      OPC=addq_r64_r64    
  popq %rbx                                            #  34    0xb6766  1      OPC=popq_r64_1      
  popq %r11                                            #  35    0xb6767  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  36    0xb6769  7      OPC=andl_r32_imm32  
  nop                                                  #  37    0xb6770  1      OPC=nop             
  nop                                                  #  38    0xb6771  1      OPC=nop             
  nop                                                  #  39    0xb6772  1      OPC=nop             
  nop                                                  #  40    0xb6773  1      OPC=nop             
  addq %r15, %r11                                      #  41    0xb6774  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  42    0xb6777  3      OPC=jmpq_r64        
  nop                                                  #  43    0xb677a  1      OPC=nop             
  nop                                                  #  44    0xb677b  1      OPC=nop             
  nop                                                  #  45    0xb677c  1      OPC=nop             
  nop                                                  #  46    0xb677d  1      OPC=nop             
  nop                                                  #  47    0xb677e  1      OPC=nop             
  nop                                                  #  48    0xb677f  1      OPC=nop             
  nop                                                  #  49    0xb6780  1      OPC=nop             
  nop                                                  #  50    0xb6781  1      OPC=nop             
  nop                                                  #  51    0xb6782  1      OPC=nop             
  nop                                                  #  52    0xb6783  1      OPC=nop             
  nop                                                  #  53    0xb6784  1      OPC=nop             
  nop                                                  #  54    0xb6785  1      OPC=nop             
  nop                                                  #  55    0xb6786  1      OPC=nop             
  movl %ebx, %edi                                      #  56    0xb6787  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  57    0xb6789  4      OPC=movl_m32_r32    
  nop                                                  #  58    0xb678d  1      OPC=nop             
  nop                                                  #  59    0xb678e  1      OPC=nop             
  nop                                                  #  60    0xb678f  1      OPC=nop             
  nop                                                  #  61    0xb6790  1      OPC=nop             
  nop                                                  #  62    0xb6791  1      OPC=nop             
  nop                                                  #  63    0xb6792  1      OPC=nop             
  nop                                                  #  64    0xb6793  1      OPC=nop             
  nop                                                  #  65    0xb6794  1      OPC=nop             
  nop                                                  #  66    0xb6795  1      OPC=nop             
  nop                                                  #  67    0xb6796  1      OPC=nop             
  nop                                                  #  68    0xb6797  1      OPC=nop             
  nop                                                  #  69    0xb6798  1      OPC=nop             
  nop                                                  #  70    0xb6799  1      OPC=nop             
  nop                                                  #  71    0xb679a  1      OPC=nop             
  nop                                                  #  72    0xb679b  1      OPC=nop             
  nop                                                  #  73    0xb679c  1      OPC=nop             
  nop                                                  #  74    0xb679d  1      OPC=nop             
  nop                                                  #  75    0xb679e  1      OPC=nop             
  nop                                                  #  76    0xb679f  1      OPC=nop             
  nop                                                  #  77    0xb67a0  1      OPC=nop             
  nop                                                  #  78    0xb67a1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  79    0xb67a2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  80    0xb67a7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  81    0xb67ab  2      OPC=movl_r32_r32    
  nop                                                  #  82    0xb67ad  1      OPC=nop             
  nop                                                  #  83    0xb67ae  1      OPC=nop             
  nop                                                  #  84    0xb67af  1      OPC=nop             
  nop                                                  #  85    0xb67b0  1      OPC=nop             
  nop                                                  #  86    0xb67b1  1      OPC=nop             
  nop                                                  #  87    0xb67b2  1      OPC=nop             
  nop                                                  #  88    0xb67b3  1      OPC=nop             
  nop                                                  #  89    0xb67b4  1      OPC=nop             
  nop                                                  #  90    0xb67b5  1      OPC=nop             
  nop                                                  #  91    0xb67b6  1      OPC=nop             
  nop                                                  #  92    0xb67b7  1      OPC=nop             
  nop                                                  #  93    0xb67b8  1      OPC=nop             
  nop                                                  #  94    0xb67b9  1      OPC=nop             
  nop                                                  #  95    0xb67ba  1      OPC=nop             
  nop                                                  #  96    0xb67bb  1      OPC=nop             
  nop                                                  #  97    0xb67bc  1      OPC=nop             
  nop                                                  #  98    0xb67bd  1      OPC=nop             
  nop                                                  #  99    0xb67be  1      OPC=nop             
  nop                                                  #  100   0xb67bf  1      OPC=nop             
  nop                                                  #  101   0xb67c0  1      OPC=nop             
  nop                                                  #  102   0xb67c1  1      OPC=nop             
  callq ._Unwind_Resume                                #  103   0xb67c2  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj, .-_ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj

