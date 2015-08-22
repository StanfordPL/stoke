  .text
  .globl _ZNSt8numpunctIcEC2EPSt16__numpunct_cacheIcEj
  .type _ZNSt8numpunctIcEC2EPSt16__numpunct_cacheIcEj, @function

#! file-offset 0xbe620
#! rip-offset  0x7e620
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC2EPSt16__numpunct_cacheIcEj:        #        0x7e620  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7e620  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7e621  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7e623  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0x7e625  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0x7e627  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0x7e62a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  7     0x7e62d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0x7e62f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                          #  9     0x7e631  5      OPC=movl_m32_r32    
  setne %al                                            #  10    0x7e636  3      OPC=setne_r8        
  nop                                                  #  11    0x7e639  1      OPC=nop             
  nop                                                  #  12    0x7e63a  1      OPC=nop             
  nop                                                  #  13    0x7e63b  1      OPC=nop             
  nop                                                  #  14    0x7e63c  1      OPC=nop             
  nop                                                  #  15    0x7e63d  1      OPC=nop             
  nop                                                  #  16    0x7e63e  1      OPC=nop             
  nop                                                  #  17    0x7e63f  1      OPC=nop             
  movl %ebx, %ebx                                      #  18    0x7e640  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  19    0x7e642  8      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  20    0x7e64a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  21    0x7e64c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  22    0x7e64e  5      OPC=movl_m32_r32    
  nop                                                  #  23    0x7e653  1      OPC=nop             
  nop                                                  #  24    0x7e654  1      OPC=nop             
  nop                                                  #  25    0x7e655  1      OPC=nop             
  nop                                                  #  26    0x7e656  1      OPC=nop             
  nop                                                  #  27    0x7e657  1      OPC=nop             
  nop                                                  #  28    0x7e658  1      OPC=nop             
  nop                                                  #  29    0x7e659  1      OPC=nop             
  nop                                                  #  30    0x7e65a  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  31    0x7e65b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  32    0x7e660  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  33    0x7e663  3      OPC=addq_r64_r64    
  popq %rbx                                            #  34    0x7e666  1      OPC=popq_r64_1      
  popq %r11                                            #  35    0x7e667  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  36    0x7e669  7      OPC=andl_r32_imm32  
  nop                                                  #  37    0x7e670  1      OPC=nop             
  nop                                                  #  38    0x7e671  1      OPC=nop             
  nop                                                  #  39    0x7e672  1      OPC=nop             
  nop                                                  #  40    0x7e673  1      OPC=nop             
  addq %r15, %r11                                      #  41    0x7e674  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  42    0x7e677  3      OPC=jmpq_r64        
  nop                                                  #  43    0x7e67a  1      OPC=nop             
  nop                                                  #  44    0x7e67b  1      OPC=nop             
  nop                                                  #  45    0x7e67c  1      OPC=nop             
  nop                                                  #  46    0x7e67d  1      OPC=nop             
  nop                                                  #  47    0x7e67e  1      OPC=nop             
  nop                                                  #  48    0x7e67f  1      OPC=nop             
  nop                                                  #  49    0x7e680  1      OPC=nop             
  nop                                                  #  50    0x7e681  1      OPC=nop             
  nop                                                  #  51    0x7e682  1      OPC=nop             
  nop                                                  #  52    0x7e683  1      OPC=nop             
  nop                                                  #  53    0x7e684  1      OPC=nop             
  nop                                                  #  54    0x7e685  1      OPC=nop             
  nop                                                  #  55    0x7e686  1      OPC=nop             
  movl %ebx, %edi                                      #  56    0x7e687  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  57    0x7e689  4      OPC=movl_m32_r32    
  nop                                                  #  58    0x7e68d  1      OPC=nop             
  nop                                                  #  59    0x7e68e  1      OPC=nop             
  nop                                                  #  60    0x7e68f  1      OPC=nop             
  nop                                                  #  61    0x7e690  1      OPC=nop             
  nop                                                  #  62    0x7e691  1      OPC=nop             
  nop                                                  #  63    0x7e692  1      OPC=nop             
  nop                                                  #  64    0x7e693  1      OPC=nop             
  nop                                                  #  65    0x7e694  1      OPC=nop             
  nop                                                  #  66    0x7e695  1      OPC=nop             
  nop                                                  #  67    0x7e696  1      OPC=nop             
  nop                                                  #  68    0x7e697  1      OPC=nop             
  nop                                                  #  69    0x7e698  1      OPC=nop             
  nop                                                  #  70    0x7e699  1      OPC=nop             
  nop                                                  #  71    0x7e69a  1      OPC=nop             
  nop                                                  #  72    0x7e69b  1      OPC=nop             
  nop                                                  #  73    0x7e69c  1      OPC=nop             
  nop                                                  #  74    0x7e69d  1      OPC=nop             
  nop                                                  #  75    0x7e69e  1      OPC=nop             
  nop                                                  #  76    0x7e69f  1      OPC=nop             
  nop                                                  #  77    0x7e6a0  1      OPC=nop             
  nop                                                  #  78    0x7e6a1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  79    0x7e6a2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  80    0x7e6a7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  81    0x7e6ab  2      OPC=movl_r32_r32    
  nop                                                  #  82    0x7e6ad  1      OPC=nop             
  nop                                                  #  83    0x7e6ae  1      OPC=nop             
  nop                                                  #  84    0x7e6af  1      OPC=nop             
  nop                                                  #  85    0x7e6b0  1      OPC=nop             
  nop                                                  #  86    0x7e6b1  1      OPC=nop             
  nop                                                  #  87    0x7e6b2  1      OPC=nop             
  nop                                                  #  88    0x7e6b3  1      OPC=nop             
  nop                                                  #  89    0x7e6b4  1      OPC=nop             
  nop                                                  #  90    0x7e6b5  1      OPC=nop             
  nop                                                  #  91    0x7e6b6  1      OPC=nop             
  nop                                                  #  92    0x7e6b7  1      OPC=nop             
  nop                                                  #  93    0x7e6b8  1      OPC=nop             
  nop                                                  #  94    0x7e6b9  1      OPC=nop             
  nop                                                  #  95    0x7e6ba  1      OPC=nop             
  nop                                                  #  96    0x7e6bb  1      OPC=nop             
  nop                                                  #  97    0x7e6bc  1      OPC=nop             
  nop                                                  #  98    0x7e6bd  1      OPC=nop             
  nop                                                  #  99    0x7e6be  1      OPC=nop             
  nop                                                  #  100   0x7e6bf  1      OPC=nop             
  nop                                                  #  101   0x7e6c0  1      OPC=nop             
  nop                                                  #  102   0x7e6c1  1      OPC=nop             
  callq ._Unwind_Resume                                #  103   0x7e6c2  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC2EPSt16__numpunct_cacheIcEj, .-_ZNSt8numpunctIcEC2EPSt16__numpunct_cacheIcEj

