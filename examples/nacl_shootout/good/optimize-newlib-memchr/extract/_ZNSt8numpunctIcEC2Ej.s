  .text
  .globl _ZNSt8numpunctIcEC2Ej
  .type _ZNSt8numpunctIcEC2Ej, @function

#! file-offset 0xbe760
#! rip-offset  0x7e760
#! capacity    160 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcEC2Ej:                                #        0x7e760  0      OPC=<label>         
  pushq %rbx                                           #  1     0x7e760  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                      #  2     0x7e761  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                      #  3     0x7e763  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                      #  4     0x7e765  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                     #  5     0x7e767  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  6     0x7e76a  3      OPC=addq_r64_r64    
  testl %esi, %esi                                     #  7     0x7e76d  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                      #  8     0x7e76f  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)                      #  9     0x7e771  8      OPC=movl_m32_imm32  
  setne %al                                            #  10    0x7e779  3      OPC=setne_r8        
  nop                                                  #  11    0x7e77c  1      OPC=nop             
  nop                                                  #  12    0x7e77d  1      OPC=nop             
  nop                                                  #  13    0x7e77e  1      OPC=nop             
  nop                                                  #  14    0x7e77f  1      OPC=nop             
  movl %ebx, %ebx                                      #  15    0x7e780  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                          #  16    0x7e782  9      OPC=movl_m32_imm32  
  xorl %esi, %esi                                      #  17    0x7e78b  2      OPC=xorl_r32_r32    
  movl %ebx, %ebx                                      #  18    0x7e78d  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                          #  19    0x7e78f  5      OPC=movl_m32_r32    
  nop                                                  #  20    0x7e794  1      OPC=nop             
  nop                                                  #  21    0x7e795  1      OPC=nop             
  nop                                                  #  22    0x7e796  1      OPC=nop             
  nop                                                  #  23    0x7e797  1      OPC=nop             
  nop                                                  #  24    0x7e798  1      OPC=nop             
  nop                                                  #  25    0x7e799  1      OPC=nop             
  nop                                                  #  26    0x7e79a  1      OPC=nop             
  callq ._ZNSt8numpunctIcE22_M_initialize_numpunctEPi  #  27    0x7e79b  5      OPC=callq_label     
  addl $0x10, %esp                                     #  28    0x7e7a0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  29    0x7e7a3  3      OPC=addq_r64_r64    
  popq %rbx                                            #  30    0x7e7a6  1      OPC=popq_r64_1      
  popq %r11                                            #  31    0x7e7a7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  32    0x7e7a9  7      OPC=andl_r32_imm32  
  nop                                                  #  33    0x7e7b0  1      OPC=nop             
  nop                                                  #  34    0x7e7b1  1      OPC=nop             
  nop                                                  #  35    0x7e7b2  1      OPC=nop             
  nop                                                  #  36    0x7e7b3  1      OPC=nop             
  addq %r15, %r11                                      #  37    0x7e7b4  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  38    0x7e7b7  3      OPC=jmpq_r64        
  nop                                                  #  39    0x7e7ba  1      OPC=nop             
  nop                                                  #  40    0x7e7bb  1      OPC=nop             
  nop                                                  #  41    0x7e7bc  1      OPC=nop             
  nop                                                  #  42    0x7e7bd  1      OPC=nop             
  nop                                                  #  43    0x7e7be  1      OPC=nop             
  nop                                                  #  44    0x7e7bf  1      OPC=nop             
  nop                                                  #  45    0x7e7c0  1      OPC=nop             
  nop                                                  #  46    0x7e7c1  1      OPC=nop             
  nop                                                  #  47    0x7e7c2  1      OPC=nop             
  nop                                                  #  48    0x7e7c3  1      OPC=nop             
  nop                                                  #  49    0x7e7c4  1      OPC=nop             
  nop                                                  #  50    0x7e7c5  1      OPC=nop             
  nop                                                  #  51    0x7e7c6  1      OPC=nop             
  movl %ebx, %edi                                      #  52    0x7e7c7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                 #  53    0x7e7c9  4      OPC=movl_m32_r32    
  nop                                                  #  54    0x7e7cd  1      OPC=nop             
  nop                                                  #  55    0x7e7ce  1      OPC=nop             
  nop                                                  #  56    0x7e7cf  1      OPC=nop             
  nop                                                  #  57    0x7e7d0  1      OPC=nop             
  nop                                                  #  58    0x7e7d1  1      OPC=nop             
  nop                                                  #  59    0x7e7d2  1      OPC=nop             
  nop                                                  #  60    0x7e7d3  1      OPC=nop             
  nop                                                  #  61    0x7e7d4  1      OPC=nop             
  nop                                                  #  62    0x7e7d5  1      OPC=nop             
  nop                                                  #  63    0x7e7d6  1      OPC=nop             
  nop                                                  #  64    0x7e7d7  1      OPC=nop             
  nop                                                  #  65    0x7e7d8  1      OPC=nop             
  nop                                                  #  66    0x7e7d9  1      OPC=nop             
  nop                                                  #  67    0x7e7da  1      OPC=nop             
  nop                                                  #  68    0x7e7db  1      OPC=nop             
  nop                                                  #  69    0x7e7dc  1      OPC=nop             
  nop                                                  #  70    0x7e7dd  1      OPC=nop             
  nop                                                  #  71    0x7e7de  1      OPC=nop             
  nop                                                  #  72    0x7e7df  1      OPC=nop             
  nop                                                  #  73    0x7e7e0  1      OPC=nop             
  nop                                                  #  74    0x7e7e1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                        #  75    0x7e7e2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                 #  76    0x7e7e7  4      OPC=movl_r32_m32    
  movl %eax, %edi                                      #  77    0x7e7eb  2      OPC=movl_r32_r32    
  nop                                                  #  78    0x7e7ed  1      OPC=nop             
  nop                                                  #  79    0x7e7ee  1      OPC=nop             
  nop                                                  #  80    0x7e7ef  1      OPC=nop             
  nop                                                  #  81    0x7e7f0  1      OPC=nop             
  nop                                                  #  82    0x7e7f1  1      OPC=nop             
  nop                                                  #  83    0x7e7f2  1      OPC=nop             
  nop                                                  #  84    0x7e7f3  1      OPC=nop             
  nop                                                  #  85    0x7e7f4  1      OPC=nop             
  nop                                                  #  86    0x7e7f5  1      OPC=nop             
  nop                                                  #  87    0x7e7f6  1      OPC=nop             
  nop                                                  #  88    0x7e7f7  1      OPC=nop             
  nop                                                  #  89    0x7e7f8  1      OPC=nop             
  nop                                                  #  90    0x7e7f9  1      OPC=nop             
  nop                                                  #  91    0x7e7fa  1      OPC=nop             
  nop                                                  #  92    0x7e7fb  1      OPC=nop             
  nop                                                  #  93    0x7e7fc  1      OPC=nop             
  nop                                                  #  94    0x7e7fd  1      OPC=nop             
  nop                                                  #  95    0x7e7fe  1      OPC=nop             
  nop                                                  #  96    0x7e7ff  1      OPC=nop             
  nop                                                  #  97    0x7e800  1      OPC=nop             
  nop                                                  #  98    0x7e801  1      OPC=nop             
  callq ._Unwind_Resume                                #  99    0x7e802  5      OPC=callq_label     
                                                                                                    
.size _ZNSt8numpunctIcEC2Ej, .-_ZNSt8numpunctIcEC2Ej

