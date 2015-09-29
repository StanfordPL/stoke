  .text
  .globl _ZNSt8numpunctIcEC1Ej
  .type _ZNSt8numpunctIcEC1Ej, @function

#! file-offset 0xbe6c0
#! rip-offset  0x7e6c0
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC1Ej:                                #        0x7e6c0  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7e6c0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7e6c1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7e6c3  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0x7e6c5  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0x7e6c7  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0x7e6ca  3      OPC=addq_r64_r64    
  testl %esi, %esi                                     #  7     0x7e6cd  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0x7e6cf  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  9     0x7e6d1  8      OPC=movl_m32_imm32  
  setne %al                                            #  10    0x7e6d9  3      OPC=setne_r8        
  nop                                                  #  11    0x7e6dc  1      OPC=nop             
  nop                                                  #  12    0x7e6dd  1      OPC=nop             
  nop                                                  #  13    0x7e6de  1      OPC=nop             
  nop                                                  #  14    0x7e6df  1      OPC=nop             
  movl %ebx, %ebx                                      #  15    0x7e6e0  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  16    0x7e6e2  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  17    0x7e6eb  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  18    0x7e6ed  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  19    0x7e6ef  5      OPC=movl_m32_r32    
  nop                                                  #  20    0x7e6f4  1      OPC=nop             
  nop                                                  #  21    0x7e6f5  1      OPC=nop             
  nop                                                  #  22    0x7e6f6  1      OPC=nop             
  nop                                                  #  23    0x7e6f7  1      OPC=nop             
  nop                                                  #  24    0x7e6f8  1      OPC=nop             
  nop                                                  #  25    0x7e6f9  1      OPC=nop             
  nop                                                  #  26    0x7e6fa  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  27    0x7e6fb  5      OPC=callq_label     
  addl $0x10, %esp                                     #  28    0x7e700  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  29    0x7e703  3      OPC=addq_r64_r64    
  popq %rbx                                            #  30    0x7e706  1      OPC=popq_r64_1      
  popq %r11                                            #  31    0x7e707  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  32    0x7e709  7      OPC=andl_r32_imm32  
  nop                                                  #  33    0x7e710  1      OPC=nop             
  nop                                                  #  34    0x7e711  1      OPC=nop             
  nop                                                  #  35    0x7e712  1      OPC=nop             
  nop                                                  #  36    0x7e713  1      OPC=nop             
  addq %r15, %r11                                      #  37    0x7e714  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  38    0x7e717  3      OPC=jmpq_r64        
  nop                                                  #  39    0x7e71a  1      OPC=nop             
  nop                                                  #  40    0x7e71b  1      OPC=nop             
  nop                                                  #  41    0x7e71c  1      OPC=nop             
  nop                                                  #  42    0x7e71d  1      OPC=nop             
  nop                                                  #  43    0x7e71e  1      OPC=nop             
  nop                                                  #  44    0x7e71f  1      OPC=nop             
  nop                                                  #  45    0x7e720  1      OPC=nop             
  nop                                                  #  46    0x7e721  1      OPC=nop             
  nop                                                  #  47    0x7e722  1      OPC=nop             
  nop                                                  #  48    0x7e723  1      OPC=nop             
  nop                                                  #  49    0x7e724  1      OPC=nop             
  nop                                                  #  50    0x7e725  1      OPC=nop             
  nop                                                  #  51    0x7e726  1      OPC=nop             
  movl %ebx, %edi                                      #  52    0x7e727  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  53    0x7e729  4      OPC=movl_m32_r32    
  nop                                                  #  54    0x7e72d  1      OPC=nop             
  nop                                                  #  55    0x7e72e  1      OPC=nop             
  nop                                                  #  56    0x7e72f  1      OPC=nop             
  nop                                                  #  57    0x7e730  1      OPC=nop             
  nop                                                  #  58    0x7e731  1      OPC=nop             
  nop                                                  #  59    0x7e732  1      OPC=nop             
  nop                                                  #  60    0x7e733  1      OPC=nop             
  nop                                                  #  61    0x7e734  1      OPC=nop             
  nop                                                  #  62    0x7e735  1      OPC=nop             
  nop                                                  #  63    0x7e736  1      OPC=nop             
  nop                                                  #  64    0x7e737  1      OPC=nop             
  nop                                                  #  65    0x7e738  1      OPC=nop             
  nop                                                  #  66    0x7e739  1      OPC=nop             
  nop                                                  #  67    0x7e73a  1      OPC=nop             
  nop                                                  #  68    0x7e73b  1      OPC=nop             
  nop                                                  #  69    0x7e73c  1      OPC=nop             
  nop                                                  #  70    0x7e73d  1      OPC=nop             
  nop                                                  #  71    0x7e73e  1      OPC=nop             
  nop                                                  #  72    0x7e73f  1      OPC=nop             
  nop                                                  #  73    0x7e740  1      OPC=nop             
  nop                                                  #  74    0x7e741  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  75    0x7e742  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  76    0x7e747  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  77    0x7e74b  2      OPC=movl_r32_r32    
  nop                                                  #  78    0x7e74d  1      OPC=nop             
  nop                                                  #  79    0x7e74e  1      OPC=nop             
  nop                                                  #  80    0x7e74f  1      OPC=nop             
  nop                                                  #  81    0x7e750  1      OPC=nop             
  nop                                                  #  82    0x7e751  1      OPC=nop             
  nop                                                  #  83    0x7e752  1      OPC=nop             
  nop                                                  #  84    0x7e753  1      OPC=nop             
  nop                                                  #  85    0x7e754  1      OPC=nop             
  nop                                                  #  86    0x7e755  1      OPC=nop             
  nop                                                  #  87    0x7e756  1      OPC=nop             
  nop                                                  #  88    0x7e757  1      OPC=nop             
  nop                                                  #  89    0x7e758  1      OPC=nop             
  nop                                                  #  90    0x7e759  1      OPC=nop             
  nop                                                  #  91    0x7e75a  1      OPC=nop             
  nop                                                  #  92    0x7e75b  1      OPC=nop             
  nop                                                  #  93    0x7e75c  1      OPC=nop             
  nop                                                  #  94    0x7e75d  1      OPC=nop             
  nop                                                  #  95    0x7e75e  1      OPC=nop             
  nop                                                  #  96    0x7e75f  1      OPC=nop             
  nop                                                  #  97    0x7e760  1      OPC=nop             
  nop                                                  #  98    0x7e761  1      OPC=nop             
  callq ._Unwind_Resume                                #  99    0x7e762  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC1Ej, .-_ZNSt8numpunctIcEC1Ej

