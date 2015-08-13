  .text
  .globl _ZNSt10moneypunctIcLb1EEC1EPiPKcj
  .type _ZNSt10moneypunctIcLb1EEC1EPiPKcj, @function

#! file-offset 0xbe3e0
#! rip-offset  0x7e3e0
#! capacity    160 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZNSt10moneypunctIcLb1EEC1EPiPKcj:                                #        0x7e3e0  0      OPC=<label>         
  pushq %rbx                                                       #  1     0x7e3e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                                  #  2     0x7e3e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                                  #  3     0x7e3e3  2      OPC=movl_r32_r32    
  movl %esi, %esi                                                  #  4     0x7e3e5  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                  #  5     0x7e3e7  2      OPC=movl_r32_r32    
  movl %ebx, %edi                                                  #  6     0x7e3e9  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                 #  7     0x7e3eb  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                  #  8     0x7e3ee  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                                                 #  9     0x7e3f1  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                                  #  10    0x7e3f3  2      OPC=movl_r32_r32    
  movl $0x1003ae88, (%r15,%rbx,1)                                  #  11    0x7e3f5  8      OPC=movl_m32_imm32  
  setne %al                                                        #  12    0x7e3fd  3      OPC=setne_r8        
  movl %ebx, %ebx                                                  #  13    0x7e400  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rbx,1)                                      #  14    0x7e402  9      OPC=movl_m32_imm32  
  movl %ebx, %ebx                                                  #  15    0x7e40b  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                                      #  16    0x7e40d  5      OPC=movl_m32_r32    
  nop                                                              #  17    0x7e412  1      OPC=nop             
  nop                                                              #  18    0x7e413  1      OPC=nop             
  nop                                                              #  19    0x7e414  1      OPC=nop             
  nop                                                              #  20    0x7e415  1      OPC=nop             
  nop                                                              #  21    0x7e416  1      OPC=nop             
  nop                                                              #  22    0x7e417  1      OPC=nop             
  nop                                                              #  23    0x7e418  1      OPC=nop             
  nop                                                              #  24    0x7e419  1      OPC=nop             
  nop                                                              #  25    0x7e41a  1      OPC=nop             
  callq ._ZNSt10moneypunctIcLb1EE24_M_initialize_moneypunctEPiPKc  #  26    0x7e41b  5      OPC=callq_label     
  addl $0x10, %esp                                                 #  27    0x7e420  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                  #  28    0x7e423  3      OPC=addq_r64_r64    
  popq %rbx                                                        #  29    0x7e426  1      OPC=popq_r64_1      
  popq %r11                                                        #  30    0x7e427  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                          #  31    0x7e429  7      OPC=andl_r32_imm32  
  nop                                                              #  32    0x7e430  1      OPC=nop             
  nop                                                              #  33    0x7e431  1      OPC=nop             
  nop                                                              #  34    0x7e432  1      OPC=nop             
  nop                                                              #  35    0x7e433  1      OPC=nop             
  addq %r15, %r11                                                  #  36    0x7e434  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  37    0x7e437  3      OPC=jmpq_r64        
  nop                                                              #  38    0x7e43a  1      OPC=nop             
  nop                                                              #  39    0x7e43b  1      OPC=nop             
  nop                                                              #  40    0x7e43c  1      OPC=nop             
  nop                                                              #  41    0x7e43d  1      OPC=nop             
  nop                                                              #  42    0x7e43e  1      OPC=nop             
  nop                                                              #  43    0x7e43f  1      OPC=nop             
  nop                                                              #  44    0x7e440  1      OPC=nop             
  nop                                                              #  45    0x7e441  1      OPC=nop             
  nop                                                              #  46    0x7e442  1      OPC=nop             
  nop                                                              #  47    0x7e443  1      OPC=nop             
  nop                                                              #  48    0x7e444  1      OPC=nop             
  nop                                                              #  49    0x7e445  1      OPC=nop             
  nop                                                              #  50    0x7e446  1      OPC=nop             
  movl %ebx, %edi                                                  #  51    0x7e447  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                             #  52    0x7e449  4      OPC=movl_m32_r32    
  nop                                                              #  53    0x7e44d  1      OPC=nop             
  nop                                                              #  54    0x7e44e  1      OPC=nop             
  nop                                                              #  55    0x7e44f  1      OPC=nop             
  nop                                                              #  56    0x7e450  1      OPC=nop             
  nop                                                              #  57    0x7e451  1      OPC=nop             
  nop                                                              #  58    0x7e452  1      OPC=nop             
  nop                                                              #  59    0x7e453  1      OPC=nop             
  nop                                                              #  60    0x7e454  1      OPC=nop             
  nop                                                              #  61    0x7e455  1      OPC=nop             
  nop                                                              #  62    0x7e456  1      OPC=nop             
  nop                                                              #  63    0x7e457  1      OPC=nop             
  nop                                                              #  64    0x7e458  1      OPC=nop             
  nop                                                              #  65    0x7e459  1      OPC=nop             
  nop                                                              #  66    0x7e45a  1      OPC=nop             
  nop                                                              #  67    0x7e45b  1      OPC=nop             
  nop                                                              #  68    0x7e45c  1      OPC=nop             
  nop                                                              #  69    0x7e45d  1      OPC=nop             
  nop                                                              #  70    0x7e45e  1      OPC=nop             
  nop                                                              #  71    0x7e45f  1      OPC=nop             
  nop                                                              #  72    0x7e460  1      OPC=nop             
  nop                                                              #  73    0x7e461  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                                    #  74    0x7e462  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                             #  75    0x7e467  4      OPC=movl_r32_m32    
  movl %eax, %edi                                                  #  76    0x7e46b  2      OPC=movl_r32_r32    
  nop                                                              #  77    0x7e46d  1      OPC=nop             
  nop                                                              #  78    0x7e46e  1      OPC=nop             
  nop                                                              #  79    0x7e46f  1      OPC=nop             
  nop                                                              #  80    0x7e470  1      OPC=nop             
  nop                                                              #  81    0x7e471  1      OPC=nop             
  nop                                                              #  82    0x7e472  1      OPC=nop             
  nop                                                              #  83    0x7e473  1      OPC=nop             
  nop                                                              #  84    0x7e474  1      OPC=nop             
  nop                                                              #  85    0x7e475  1      OPC=nop             
  nop                                                              #  86    0x7e476  1      OPC=nop             
  nop                                                              #  87    0x7e477  1      OPC=nop             
  nop                                                              #  88    0x7e478  1      OPC=nop             
  nop                                                              #  89    0x7e479  1      OPC=nop             
  nop                                                              #  90    0x7e47a  1      OPC=nop             
  nop                                                              #  91    0x7e47b  1      OPC=nop             
  nop                                                              #  92    0x7e47c  1      OPC=nop             
  nop                                                              #  93    0x7e47d  1      OPC=nop             
  nop                                                              #  94    0x7e47e  1      OPC=nop             
  nop                                                              #  95    0x7e47f  1      OPC=nop             
  nop                                                              #  96    0x7e480  1      OPC=nop             
  nop                                                              #  97    0x7e481  1      OPC=nop             
  callq ._Unwind_Resume                                            #  98    0x7e482  5      OPC=callq_label     
                                                                                                                
.size _ZNSt10moneypunctIcLb1EEC1EPiPKcj, .-_ZNSt10moneypunctIcLb1EEC1EPiPKcj

