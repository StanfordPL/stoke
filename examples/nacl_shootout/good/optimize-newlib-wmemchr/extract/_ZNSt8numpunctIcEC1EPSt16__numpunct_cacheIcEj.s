  .text
  .globl _ZNSt8numpunctIcEC1EPSt16__numpunct_cacheIcEj
  .type _ZNSt8numpunctIcEC1EPSt16__numpunct_cacheIcEj, @function

#! file-offset 0xbde60
#! rip-offset  0x7de60
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC1EPSt16__numpunct_cacheIcEj:        #        0x7de60  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7de60  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7de61  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7de63  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0x7de65  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0x7de67  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0x7de6a  3      OPC=addq_r64_r64    
  testl %edx, %edx                                     #  7     0x7de6d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0x7de6f  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rbx,1)                          #  9     0x7de71  5      OPC=movl_m32_r32    
  setne %al                                            #  10    0x7de76  3      OPC=setne_r8        
  nop                                                  #  11    0x7de79  1      OPC=nop             
  nop                                                  #  12    0x7de7a  1      OPC=nop             
  nop                                                  #  13    0x7de7b  1      OPC=nop             
  nop                                                  #  14    0x7de7c  1      OPC=nop             
  nop                                                  #  15    0x7de7d  1      OPC=nop             
  nop                                                  #  16    0x7de7e  1      OPC=nop             
  nop                                                  #  17    0x7de7f  1      OPC=nop             
  movl %ebx, %ebx                                      #  18    0x7de80  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  19    0x7de82  8      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  20    0x7de8a  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  21    0x7de8c  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  22    0x7de8e  5      OPC=movl_m32_r32    
  nop                                                  #  23    0x7de93  1      OPC=nop             
  nop                                                  #  24    0x7de94  1      OPC=nop             
  nop                                                  #  25    0x7de95  1      OPC=nop             
  nop                                                  #  26    0x7de96  1      OPC=nop             
  nop                                                  #  27    0x7de97  1      OPC=nop             
  nop                                                  #  28    0x7de98  1      OPC=nop             
  nop                                                  #  29    0x7de99  1      OPC=nop             
  nop                                                  #  30    0x7de9a  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  31    0x7de9b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  32    0x7dea0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  33    0x7dea3  3      OPC=addq_r64_r64    
  popq %rbx                                            #  34    0x7dea6  1      OPC=popq_r64_1      
  popq %r11                                            #  35    0x7dea7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  36    0x7dea9  7      OPC=andl_r32_imm32  
  nop                                                  #  37    0x7deb0  1      OPC=nop             
  nop                                                  #  38    0x7deb1  1      OPC=nop             
  nop                                                  #  39    0x7deb2  1      OPC=nop             
  nop                                                  #  40    0x7deb3  1      OPC=nop             
  addq %r15, %r11                                      #  41    0x7deb4  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  42    0x7deb7  3      OPC=jmpq_r64        
  nop                                                  #  43    0x7deba  1      OPC=nop             
  nop                                                  #  44    0x7debb  1      OPC=nop             
  nop                                                  #  45    0x7debc  1      OPC=nop             
  nop                                                  #  46    0x7debd  1      OPC=nop             
  nop                                                  #  47    0x7debe  1      OPC=nop             
  nop                                                  #  48    0x7debf  1      OPC=nop             
  nop                                                  #  49    0x7dec0  1      OPC=nop             
  nop                                                  #  50    0x7dec1  1      OPC=nop             
  nop                                                  #  51    0x7dec2  1      OPC=nop             
  nop                                                  #  52    0x7dec3  1      OPC=nop             
  nop                                                  #  53    0x7dec4  1      OPC=nop             
  nop                                                  #  54    0x7dec5  1      OPC=nop             
  nop                                                  #  55    0x7dec6  1      OPC=nop             
  movl %ebx, %edi                                      #  56    0x7dec7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  57    0x7dec9  4      OPC=movl_m32_r32    
  nop                                                  #  58    0x7decd  1      OPC=nop             
  nop                                                  #  59    0x7dece  1      OPC=nop             
  nop                                                  #  60    0x7decf  1      OPC=nop             
  nop                                                  #  61    0x7ded0  1      OPC=nop             
  nop                                                  #  62    0x7ded1  1      OPC=nop             
  nop                                                  #  63    0x7ded2  1      OPC=nop             
  nop                                                  #  64    0x7ded3  1      OPC=nop             
  nop                                                  #  65    0x7ded4  1      OPC=nop             
  nop                                                  #  66    0x7ded5  1      OPC=nop             
  nop                                                  #  67    0x7ded6  1      OPC=nop             
  nop                                                  #  68    0x7ded7  1      OPC=nop             
  nop                                                  #  69    0x7ded8  1      OPC=nop             
  nop                                                  #  70    0x7ded9  1      OPC=nop             
  nop                                                  #  71    0x7deda  1      OPC=nop             
  nop                                                  #  72    0x7dedb  1      OPC=nop             
  nop                                                  #  73    0x7dedc  1      OPC=nop             
  nop                                                  #  74    0x7dedd  1      OPC=nop             
  nop                                                  #  75    0x7dede  1      OPC=nop             
  nop                                                  #  76    0x7dedf  1      OPC=nop             
  nop                                                  #  77    0x7dee0  1      OPC=nop             
  nop                                                  #  78    0x7dee1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  79    0x7dee2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  80    0x7dee7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  81    0x7deeb  2      OPC=movl_r32_r32    
  nop                                                  #  82    0x7deed  1      OPC=nop             
  nop                                                  #  83    0x7deee  1      OPC=nop             
  nop                                                  #  84    0x7deef  1      OPC=nop             
  nop                                                  #  85    0x7def0  1      OPC=nop             
  nop                                                  #  86    0x7def1  1      OPC=nop             
  nop                                                  #  87    0x7def2  1      OPC=nop             
  nop                                                  #  88    0x7def3  1      OPC=nop             
  nop                                                  #  89    0x7def4  1      OPC=nop             
  nop                                                  #  90    0x7def5  1      OPC=nop             
  nop                                                  #  91    0x7def6  1      OPC=nop             
  nop                                                  #  92    0x7def7  1      OPC=nop             
  nop                                                  #  93    0x7def8  1      OPC=nop             
  nop                                                  #  94    0x7def9  1      OPC=nop             
  nop                                                  #  95    0x7defa  1      OPC=nop             
  nop                                                  #  96    0x7defb  1      OPC=nop             
  nop                                                  #  97    0x7defc  1      OPC=nop             
  nop                                                  #  98    0x7defd  1      OPC=nop             
  nop                                                  #  99    0x7defe  1      OPC=nop             
  nop                                                  #  100   0x7deff  1      OPC=nop             
  nop                                                  #  101   0x7df00  1      OPC=nop             
  nop                                                  #  102   0x7df01  1      OPC=nop             
  callq ._Unwind_Resume                                #  103   0x7df02  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC1EPSt16__numpunct_cacheIcEj, .-_ZNSt8numpunctIcEC1EPSt16__numpunct_cacheIcEj

