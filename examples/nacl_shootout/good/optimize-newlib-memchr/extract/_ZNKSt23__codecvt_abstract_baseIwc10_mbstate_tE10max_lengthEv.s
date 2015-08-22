  .text
  .globl _ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv
  .type _ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv, @function

#! file-offset 0x12b200
#! rip-offset  0xeb200
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv:  #        0xeb200  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xeb200  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                #  2     0xeb202  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                #  3     0xeb205  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                #  4     0xeb208  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                       #  5     0xeb20a  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                #  6     0xeb20e  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                                   #  7     0xeb210  5      OPC=movl_r32_m32    
  nop                                                            #  8     0xeb215  1      OPC=nop             
  nop                                                            #  9     0xeb216  1      OPC=nop             
  nop                                                            #  10    0xeb217  1      OPC=nop             
  andl $0xffffffe0, %eax                                         #  11    0xeb218  6      OPC=andl_r32_imm32  
  nop                                                            #  12    0xeb21e  1      OPC=nop             
  nop                                                            #  13    0xeb21f  1      OPC=nop             
  nop                                                            #  14    0xeb220  1      OPC=nop             
  addq %r15, %rax                                                #  15    0xeb221  3      OPC=addq_r64_r64    
  callq %rax                                                     #  16    0xeb224  2      OPC=callq_r64       
  addl $0x8, %esp                                                #  17    0xeb226  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                #  18    0xeb229  3      OPC=addq_r64_r64    
  popq %r11                                                      #  19    0xeb22c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  20    0xeb22e  7      OPC=andl_r32_imm32  
  nop                                                            #  21    0xeb235  1      OPC=nop             
  nop                                                            #  22    0xeb236  1      OPC=nop             
  nop                                                            #  23    0xeb237  1      OPC=nop             
  nop                                                            #  24    0xeb238  1      OPC=nop             
  addq %r15, %r11                                                #  25    0xeb239  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  26    0xeb23c  3      OPC=jmpq_r64        
  nop                                                            #  27    0xeb23f  1      OPC=nop             
  nop                                                            #  28    0xeb240  1      OPC=nop             
  nop                                                            #  29    0xeb241  1      OPC=nop             
  nop                                                            #  30    0xeb242  1      OPC=nop             
  nop                                                            #  31    0xeb243  1      OPC=nop             
  nop                                                            #  32    0xeb244  1      OPC=nop             
  nop                                                            #  33    0xeb245  1      OPC=nop             
  nop                                                            #  34    0xeb246  1      OPC=nop             
  nop                                                            #  35    0xeb247  1      OPC=nop             
  nop                                                            #  36    0xeb248  1      OPC=nop             
  nop                                                            #  37    0xeb249  1      OPC=nop             
  nop                                                            #  38    0xeb24a  1      OPC=nop             
  nop                                                            #  39    0xeb24b  1      OPC=nop             
  nop                                                            #  40    0xeb24c  1      OPC=nop             
  cmpq $0xff, %rdx                                               #  41    0xeb24d  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                                                #  42    0xeb251  2      OPC=movl_r32_r32    
  je .L_eb260                                                    #  43    0xeb253  2      OPC=je_label        
  nop                                                            #  44    0xeb255  1      OPC=nop             
  nop                                                            #  45    0xeb256  1      OPC=nop             
  nop                                                            #  46    0xeb257  1      OPC=nop             
  nop                                                            #  47    0xeb258  1      OPC=nop             
  nop                                                            #  48    0xeb259  1      OPC=nop             
  nop                                                            #  49    0xeb25a  1      OPC=nop             
  nop                                                            #  50    0xeb25b  1      OPC=nop             
  nop                                                            #  51    0xeb25c  1      OPC=nop             
  nop                                                            #  52    0xeb25d  1      OPC=nop             
  nop                                                            #  53    0xeb25e  1      OPC=nop             
  nop                                                            #  54    0xeb25f  1      OPC=nop             
  nop                                                            #  55    0xeb260  1      OPC=nop             
  nop                                                            #  56    0xeb261  1      OPC=nop             
  nop                                                            #  57    0xeb262  1      OPC=nop             
  nop                                                            #  58    0xeb263  1      OPC=nop             
  nop                                                            #  59    0xeb264  1      OPC=nop             
  nop                                                            #  60    0xeb265  1      OPC=nop             
  nop                                                            #  61    0xeb266  1      OPC=nop             
  nop                                                            #  62    0xeb267  1      OPC=nop             
  callq ._Unwind_Resume                                          #  63    0xeb268  5      OPC=callq_label     
.L_eb260:                                                        #        0xeb26d  0      OPC=<label>         
  nop                                                            #  64    0xeb26d  1      OPC=nop             
  nop                                                            #  65    0xeb26e  1      OPC=nop             
  nop                                                            #  66    0xeb26f  1      OPC=nop             
  nop                                                            #  67    0xeb270  1      OPC=nop             
  nop                                                            #  68    0xeb271  1      OPC=nop             
  nop                                                            #  69    0xeb272  1      OPC=nop             
  nop                                                            #  70    0xeb273  1      OPC=nop             
  nop                                                            #  71    0xeb274  1      OPC=nop             
  nop                                                            #  72    0xeb275  1      OPC=nop             
  nop                                                            #  73    0xeb276  1      OPC=nop             
  nop                                                            #  74    0xeb277  1      OPC=nop             
  nop                                                            #  75    0xeb278  1      OPC=nop             
  nop                                                            #  76    0xeb279  1      OPC=nop             
  nop                                                            #  77    0xeb27a  1      OPC=nop             
  nop                                                            #  78    0xeb27b  1      OPC=nop             
  nop                                                            #  79    0xeb27c  1      OPC=nop             
  nop                                                            #  80    0xeb27d  1      OPC=nop             
  nop                                                            #  81    0xeb27e  1      OPC=nop             
  nop                                                            #  82    0xeb27f  1      OPC=nop             
  nop                                                            #  83    0xeb280  1      OPC=nop             
  nop                                                            #  84    0xeb281  1      OPC=nop             
  nop                                                            #  85    0xeb282  1      OPC=nop             
  nop                                                            #  86    0xeb283  1      OPC=nop             
  nop                                                            #  87    0xeb284  1      OPC=nop             
  nop                                                            #  88    0xeb285  1      OPC=nop             
  nop                                                            #  89    0xeb286  1      OPC=nop             
  nop                                                            #  90    0xeb287  1      OPC=nop             
  callq .__cxa_call_unexpected                                   #  91    0xeb288  5      OPC=callq_label     
                                                                                                              
.size _ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv, .-_ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv

