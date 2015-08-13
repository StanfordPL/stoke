  .text
  .globl _ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj
  .type _ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj, @function

#! file-offset 0xf6680
#! rip-offset  0xb6680
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj:        #        0xb6680  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb6680  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb6681  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb6683  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0xb6685  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0xb6687  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0xb668a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  7     0xb668d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0xb668f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                          #  9     0xb6691  5      OPC=movl_m32_r32    
  setne %al                                            #  10    0xb6696  3      OPC=setne_r8        
  nop                                                  #  11    0xb6699  1      OPC=nop             
  nop                                                  #  12    0xb669a  1      OPC=nop             
  nop                                                  #  13    0xb669b  1      OPC=nop             
  nop                                                  #  14    0xb669c  1      OPC=nop             
  nop                                                  #  15    0xb669d  1      OPC=nop             
  nop                                                  #  16    0xb669e  1      OPC=nop             
  nop                                                  #  17    0xb669f  1      OPC=nop             
  movl %ebx, %ebx                                      #  18    0xb66a0  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  19    0xb66a2  8      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  20    0xb66aa  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  21    0xb66ac  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  22    0xb66ae  5      OPC=movl_m32_r32    
  nop                                                  #  23    0xb66b3  1      OPC=nop             
  nop                                                  #  24    0xb66b4  1      OPC=nop             
  nop                                                  #  25    0xb66b5  1      OPC=nop             
  nop                                                  #  26    0xb66b6  1      OPC=nop             
  nop                                                  #  27    0xb66b7  1      OPC=nop             
  nop                                                  #  28    0xb66b8  1      OPC=nop             
  nop                                                  #  29    0xb66b9  1      OPC=nop             
  nop                                                  #  30    0xb66ba  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  31    0xb66bb  5      OPC=callq_label     
  addl $0x10, %esp                                     #  32    0xb66c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  33    0xb66c3  3      OPC=addq_r64_r64    
  popq %rbx                                            #  34    0xb66c6  1      OPC=popq_r64_1      
  popq %r11                                            #  35    0xb66c7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  36    0xb66c9  7      OPC=andl_r32_imm32  
  nop                                                  #  37    0xb66d0  1      OPC=nop             
  nop                                                  #  38    0xb66d1  1      OPC=nop             
  nop                                                  #  39    0xb66d2  1      OPC=nop             
  nop                                                  #  40    0xb66d3  1      OPC=nop             
  addq %r15, %r11                                      #  41    0xb66d4  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  42    0xb66d7  3      OPC=jmpq_r64        
  nop                                                  #  43    0xb66da  1      OPC=nop             
  nop                                                  #  44    0xb66db  1      OPC=nop             
  nop                                                  #  45    0xb66dc  1      OPC=nop             
  nop                                                  #  46    0xb66dd  1      OPC=nop             
  nop                                                  #  47    0xb66de  1      OPC=nop             
  nop                                                  #  48    0xb66df  1      OPC=nop             
  nop                                                  #  49    0xb66e0  1      OPC=nop             
  nop                                                  #  50    0xb66e1  1      OPC=nop             
  nop                                                  #  51    0xb66e2  1      OPC=nop             
  nop                                                  #  52    0xb66e3  1      OPC=nop             
  nop                                                  #  53    0xb66e4  1      OPC=nop             
  nop                                                  #  54    0xb66e5  1      OPC=nop             
  nop                                                  #  55    0xb66e6  1      OPC=nop             
  movl %ebx, %edi                                      #  56    0xb66e7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  57    0xb66e9  4      OPC=movl_m32_r32    
  nop                                                  #  58    0xb66ed  1      OPC=nop             
  nop                                                  #  59    0xb66ee  1      OPC=nop             
  nop                                                  #  60    0xb66ef  1      OPC=nop             
  nop                                                  #  61    0xb66f0  1      OPC=nop             
  nop                                                  #  62    0xb66f1  1      OPC=nop             
  nop                                                  #  63    0xb66f2  1      OPC=nop             
  nop                                                  #  64    0xb66f3  1      OPC=nop             
  nop                                                  #  65    0xb66f4  1      OPC=nop             
  nop                                                  #  66    0xb66f5  1      OPC=nop             
  nop                                                  #  67    0xb66f6  1      OPC=nop             
  nop                                                  #  68    0xb66f7  1      OPC=nop             
  nop                                                  #  69    0xb66f8  1      OPC=nop             
  nop                                                  #  70    0xb66f9  1      OPC=nop             
  nop                                                  #  71    0xb66fa  1      OPC=nop             
  nop                                                  #  72    0xb66fb  1      OPC=nop             
  nop                                                  #  73    0xb66fc  1      OPC=nop             
  nop                                                  #  74    0xb66fd  1      OPC=nop             
  nop                                                  #  75    0xb66fe  1      OPC=nop             
  nop                                                  #  76    0xb66ff  1      OPC=nop             
  nop                                                  #  77    0xb6700  1      OPC=nop             
  nop                                                  #  78    0xb6701  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  79    0xb6702  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  80    0xb6707  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  81    0xb670b  2      OPC=movl_r32_r32    
  nop                                                  #  82    0xb670d  1      OPC=nop             
  nop                                                  #  83    0xb670e  1      OPC=nop             
  nop                                                  #  84    0xb670f  1      OPC=nop             
  nop                                                  #  85    0xb6710  1      OPC=nop             
  nop                                                  #  86    0xb6711  1      OPC=nop             
  nop                                                  #  87    0xb6712  1      OPC=nop             
  nop                                                  #  88    0xb6713  1      OPC=nop             
  nop                                                  #  89    0xb6714  1      OPC=nop             
  nop                                                  #  90    0xb6715  1      OPC=nop             
  nop                                                  #  91    0xb6716  1      OPC=nop             
  nop                                                  #  92    0xb6717  1      OPC=nop             
  nop                                                  #  93    0xb6718  1      OPC=nop             
  nop                                                  #  94    0xb6719  1      OPC=nop             
  nop                                                  #  95    0xb671a  1      OPC=nop             
  nop                                                  #  96    0xb671b  1      OPC=nop             
  nop                                                  #  97    0xb671c  1      OPC=nop             
  nop                                                  #  98    0xb671d  1      OPC=nop             
  nop                                                  #  99    0xb671e  1      OPC=nop             
  nop                                                  #  100   0xb671f  1      OPC=nop             
  nop                                                  #  101   0xb6720  1      OPC=nop             
  nop                                                  #  102   0xb6721  1      OPC=nop             
  callq ._Unwind_Resume                                #  103   0xb6722  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj, .-_ZNSt8numpunctIwEC1EPSt16__numpunct_cacheIwEj

