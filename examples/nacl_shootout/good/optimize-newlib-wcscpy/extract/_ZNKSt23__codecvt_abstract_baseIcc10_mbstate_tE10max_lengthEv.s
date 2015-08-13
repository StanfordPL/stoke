  .text
  .globl _ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv
  .type _ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv, @function

#! file-offset 0x12a8e0
#! rip-offset  0xea8e0
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv:  #        0xea8e0  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xea8e0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                #  2     0xea8e2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                #  3     0xea8e5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                #  4     0xea8e8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                       #  5     0xea8ea  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                #  6     0xea8ee  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                                   #  7     0xea8f0  5      OPC=movl_r32_m32    
  nop                                                            #  8     0xea8f5  1      OPC=nop             
  nop                                                            #  9     0xea8f6  1      OPC=nop             
  nop                                                            #  10    0xea8f7  1      OPC=nop             
  andl $0xffffffe0, %eax                                         #  11    0xea8f8  6      OPC=andl_r32_imm32  
  nop                                                            #  12    0xea8fe  1      OPC=nop             
  nop                                                            #  13    0xea8ff  1      OPC=nop             
  nop                                                            #  14    0xea900  1      OPC=nop             
  addq %r15, %rax                                                #  15    0xea901  3      OPC=addq_r64_r64    
  callq %rax                                                     #  16    0xea904  2      OPC=callq_r64       
  addl $0x8, %esp                                                #  17    0xea906  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                #  18    0xea909  3      OPC=addq_r64_r64    
  popq %r11                                                      #  19    0xea90c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  20    0xea90e  7      OPC=andl_r32_imm32  
  nop                                                            #  21    0xea915  1      OPC=nop             
  nop                                                            #  22    0xea916  1      OPC=nop             
  nop                                                            #  23    0xea917  1      OPC=nop             
  nop                                                            #  24    0xea918  1      OPC=nop             
  addq %r15, %r11                                                #  25    0xea919  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  26    0xea91c  3      OPC=jmpq_r64        
  nop                                                            #  27    0xea91f  1      OPC=nop             
  nop                                                            #  28    0xea920  1      OPC=nop             
  nop                                                            #  29    0xea921  1      OPC=nop             
  nop                                                            #  30    0xea922  1      OPC=nop             
  nop                                                            #  31    0xea923  1      OPC=nop             
  nop                                                            #  32    0xea924  1      OPC=nop             
  nop                                                            #  33    0xea925  1      OPC=nop             
  nop                                                            #  34    0xea926  1      OPC=nop             
  nop                                                            #  35    0xea927  1      OPC=nop             
  nop                                                            #  36    0xea928  1      OPC=nop             
  nop                                                            #  37    0xea929  1      OPC=nop             
  nop                                                            #  38    0xea92a  1      OPC=nop             
  nop                                                            #  39    0xea92b  1      OPC=nop             
  nop                                                            #  40    0xea92c  1      OPC=nop             
  cmpq $0xff, %rdx                                               #  41    0xea92d  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                                                #  42    0xea931  2      OPC=movl_r32_r32    
  je .L_ea940                                                    #  43    0xea933  2      OPC=je_label        
  nop                                                            #  44    0xea935  1      OPC=nop             
  nop                                                            #  45    0xea936  1      OPC=nop             
  nop                                                            #  46    0xea937  1      OPC=nop             
  nop                                                            #  47    0xea938  1      OPC=nop             
  nop                                                            #  48    0xea939  1      OPC=nop             
  nop                                                            #  49    0xea93a  1      OPC=nop             
  nop                                                            #  50    0xea93b  1      OPC=nop             
  nop                                                            #  51    0xea93c  1      OPC=nop             
  nop                                                            #  52    0xea93d  1      OPC=nop             
  nop                                                            #  53    0xea93e  1      OPC=nop             
  nop                                                            #  54    0xea93f  1      OPC=nop             
  nop                                                            #  55    0xea940  1      OPC=nop             
  nop                                                            #  56    0xea941  1      OPC=nop             
  nop                                                            #  57    0xea942  1      OPC=nop             
  nop                                                            #  58    0xea943  1      OPC=nop             
  nop                                                            #  59    0xea944  1      OPC=nop             
  nop                                                            #  60    0xea945  1      OPC=nop             
  nop                                                            #  61    0xea946  1      OPC=nop             
  nop                                                            #  62    0xea947  1      OPC=nop             
  callq ._Unwind_Resume                                          #  63    0xea948  5      OPC=callq_label     
.L_ea940:                                                        #        0xea94d  0      OPC=<label>         
  nop                                                            #  64    0xea94d  1      OPC=nop             
  nop                                                            #  65    0xea94e  1      OPC=nop             
  nop                                                            #  66    0xea94f  1      OPC=nop             
  nop                                                            #  67    0xea950  1      OPC=nop             
  nop                                                            #  68    0xea951  1      OPC=nop             
  nop                                                            #  69    0xea952  1      OPC=nop             
  nop                                                            #  70    0xea953  1      OPC=nop             
  nop                                                            #  71    0xea954  1      OPC=nop             
  nop                                                            #  72    0xea955  1      OPC=nop             
  nop                                                            #  73    0xea956  1      OPC=nop             
  nop                                                            #  74    0xea957  1      OPC=nop             
  nop                                                            #  75    0xea958  1      OPC=nop             
  nop                                                            #  76    0xea959  1      OPC=nop             
  nop                                                            #  77    0xea95a  1      OPC=nop             
  nop                                                            #  78    0xea95b  1      OPC=nop             
  nop                                                            #  79    0xea95c  1      OPC=nop             
  nop                                                            #  80    0xea95d  1      OPC=nop             
  nop                                                            #  81    0xea95e  1      OPC=nop             
  nop                                                            #  82    0xea95f  1      OPC=nop             
  nop                                                            #  83    0xea960  1      OPC=nop             
  nop                                                            #  84    0xea961  1      OPC=nop             
  nop                                                            #  85    0xea962  1      OPC=nop             
  nop                                                            #  86    0xea963  1      OPC=nop             
  nop                                                            #  87    0xea964  1      OPC=nop             
  nop                                                            #  88    0xea965  1      OPC=nop             
  nop                                                            #  89    0xea966  1      OPC=nop             
  nop                                                            #  90    0xea967  1      OPC=nop             
  callq .__cxa_call_unexpected                                   #  91    0xea968  5      OPC=callq_label     
                                                                                                              
.size _ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv, .-_ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv

