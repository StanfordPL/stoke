  .text
  .globl _ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj
  .type _ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj, @function

#! file-offset 0xf6a20
#! rip-offset  0xb6a20
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj:        #        0xb6a20  0      OPC=<label>         
  pushq %rbx                                           #  1     0xb6a20  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0xb6a21  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0xb6a23  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0xb6a25  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0xb6a27  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0xb6a2a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  7     0xb6a2d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0xb6a2f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                          #  9     0xb6a31  5      OPC=movl_m32_r32    
  setne %al                                            #  10    0xb6a36  3      OPC=setne_r8        
  nop                                                  #  11    0xb6a39  1      OPC=nop             
  nop                                                  #  12    0xb6a3a  1      OPC=nop             
  nop                                                  #  13    0xb6a3b  1      OPC=nop             
  nop                                                  #  14    0xb6a3c  1      OPC=nop             
  nop                                                  #  15    0xb6a3d  1      OPC=nop             
  nop                                                  #  16    0xb6a3e  1      OPC=nop             
  nop                                                  #  17    0xb6a3f  1      OPC=nop             
  movl %ebx, %ebx                                      #  18    0xb6a40  2      OPC=movl_r32_r32    
  movl $0x1003c228, (%r15,%rbx,1)                      #  19    0xb6a42  8      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  20    0xb6a4a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  21    0xb6a4c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  22    0xb6a4e  5      OPC=movl_m32_r32    
  nop                                                  #  23    0xb6a53  1      OPC=nop             
  nop                                                  #  24    0xb6a54  1      OPC=nop             
  nop                                                  #  25    0xb6a55  1      OPC=nop             
  nop                                                  #  26    0xb6a56  1      OPC=nop             
  nop                                                  #  27    0xb6a57  1      OPC=nop             
  nop                                                  #  28    0xb6a58  1      OPC=nop             
  nop                                                  #  29    0xb6a59  1      OPC=nop             
  nop                                                  #  30    0xb6a5a  1      OPC=nop             
  callq ._ZNSt8numpunctIwE22_M_initialize_numpunctEPi  #  31    0xb6a5b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  32    0xb6a60  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  33    0xb6a63  3      OPC=addq_r64_r64    
  popq %rbx                                            #  34    0xb6a66  1      OPC=popq_r64_1      
  popq %r11                                            #  35    0xb6a67  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  36    0xb6a69  7      OPC=andl_r32_imm32  
  nop                                                  #  37    0xb6a70  1      OPC=nop             
  nop                                                  #  38    0xb6a71  1      OPC=nop             
  nop                                                  #  39    0xb6a72  1      OPC=nop             
  nop                                                  #  40    0xb6a73  1      OPC=nop             
  addq %r15, %r11                                      #  41    0xb6a74  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  42    0xb6a77  3      OPC=jmpq_r64        
  nop                                                  #  43    0xb6a7a  1      OPC=nop             
  nop                                                  #  44    0xb6a7b  1      OPC=nop             
  nop                                                  #  45    0xb6a7c  1      OPC=nop             
  nop                                                  #  46    0xb6a7d  1      OPC=nop             
  nop                                                  #  47    0xb6a7e  1      OPC=nop             
  nop                                                  #  48    0xb6a7f  1      OPC=nop             
  nop                                                  #  49    0xb6a80  1      OPC=nop             
  nop                                                  #  50    0xb6a81  1      OPC=nop             
  nop                                                  #  51    0xb6a82  1      OPC=nop             
  nop                                                  #  52    0xb6a83  1      OPC=nop             
  nop                                                  #  53    0xb6a84  1      OPC=nop             
  nop                                                  #  54    0xb6a85  1      OPC=nop             
  nop                                                  #  55    0xb6a86  1      OPC=nop             
  movl %ebx, %edi                                      #  56    0xb6a87  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  57    0xb6a89  4      OPC=movl_m32_r32    
  nop                                                  #  58    0xb6a8d  1      OPC=nop             
  nop                                                  #  59    0xb6a8e  1      OPC=nop             
  nop                                                  #  60    0xb6a8f  1      OPC=nop             
  nop                                                  #  61    0xb6a90  1      OPC=nop             
  nop                                                  #  62    0xb6a91  1      OPC=nop             
  nop                                                  #  63    0xb6a92  1      OPC=nop             
  nop                                                  #  64    0xb6a93  1      OPC=nop             
  nop                                                  #  65    0xb6a94  1      OPC=nop             
  nop                                                  #  66    0xb6a95  1      OPC=nop             
  nop                                                  #  67    0xb6a96  1      OPC=nop             
  nop                                                  #  68    0xb6a97  1      OPC=nop             
  nop                                                  #  69    0xb6a98  1      OPC=nop             
  nop                                                  #  70    0xb6a99  1      OPC=nop             
  nop                                                  #  71    0xb6a9a  1      OPC=nop             
  nop                                                  #  72    0xb6a9b  1      OPC=nop             
  nop                                                  #  73    0xb6a9c  1      OPC=nop             
  nop                                                  #  74    0xb6a9d  1      OPC=nop             
  nop                                                  #  75    0xb6a9e  1      OPC=nop             
  nop                                                  #  76    0xb6a9f  1      OPC=nop             
  nop                                                  #  77    0xb6aa0  1      OPC=nop             
  nop                                                  #  78    0xb6aa1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  79    0xb6aa2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  80    0xb6aa7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  81    0xb6aab  2      OPC=movl_r32_r32    
  nop                                                  #  82    0xb6aad  1      OPC=nop             
  nop                                                  #  83    0xb6aae  1      OPC=nop             
  nop                                                  #  84    0xb6aaf  1      OPC=nop             
  nop                                                  #  85    0xb6ab0  1      OPC=nop             
  nop                                                  #  86    0xb6ab1  1      OPC=nop             
  nop                                                  #  87    0xb6ab2  1      OPC=nop             
  nop                                                  #  88    0xb6ab3  1      OPC=nop             
  nop                                                  #  89    0xb6ab4  1      OPC=nop             
  nop                                                  #  90    0xb6ab5  1      OPC=nop             
  nop                                                  #  91    0xb6ab6  1      OPC=nop             
  nop                                                  #  92    0xb6ab7  1      OPC=nop             
  nop                                                  #  93    0xb6ab8  1      OPC=nop             
  nop                                                  #  94    0xb6ab9  1      OPC=nop             
  nop                                                  #  95    0xb6aba  1      OPC=nop             
  nop                                                  #  96    0xb6abb  1      OPC=nop             
  nop                                                  #  97    0xb6abc  1      OPC=nop             
  nop                                                  #  98    0xb6abd  1      OPC=nop             
  nop                                                  #  99    0xb6abe  1      OPC=nop             
  nop                                                  #  100   0xb6abf  1      OPC=nop             
  nop                                                  #  101   0xb6ac0  1      OPC=nop             
  nop                                                  #  102   0xb6ac1  1      OPC=nop             
  callq ._Unwind_Resume                                #  103   0xb6ac2  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj, .-_ZNSt8numpunctIwEC2EPSt16__numpunct_cacheIwEj

