  .text
  .globl _ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv
  .type _ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv, @function

#! file-offset 0x12a7e0
#! rip-offset  0xea7e0
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv:  #        0xea7e0  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xea7e0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                #  2     0xea7e2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                #  3     0xea7e5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                #  4     0xea7e8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                       #  5     0xea7ea  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                #  6     0xea7ee  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                                   #  7     0xea7f0  5      OPC=movl_r32_m32    
  nop                                                            #  8     0xea7f5  1      OPC=nop             
  nop                                                            #  9     0xea7f6  1      OPC=nop             
  nop                                                            #  10    0xea7f7  1      OPC=nop             
  andl $0xffffffe0, %eax                                         #  11    0xea7f8  6      OPC=andl_r32_imm32  
  nop                                                            #  12    0xea7fe  1      OPC=nop             
  nop                                                            #  13    0xea7ff  1      OPC=nop             
  nop                                                            #  14    0xea800  1      OPC=nop             
  addq %r15, %rax                                                #  15    0xea801  3      OPC=addq_r64_r64    
  callq %rax                                                     #  16    0xea804  2      OPC=callq_r64       
  addl $0x8, %esp                                                #  17    0xea806  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                #  18    0xea809  3      OPC=addq_r64_r64    
  popq %r11                                                      #  19    0xea80c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  20    0xea80e  7      OPC=andl_r32_imm32  
  nop                                                            #  21    0xea815  1      OPC=nop             
  nop                                                            #  22    0xea816  1      OPC=nop             
  nop                                                            #  23    0xea817  1      OPC=nop             
  nop                                                            #  24    0xea818  1      OPC=nop             
  addq %r15, %r11                                                #  25    0xea819  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  26    0xea81c  3      OPC=jmpq_r64        
  nop                                                            #  27    0xea81f  1      OPC=nop             
  nop                                                            #  28    0xea820  1      OPC=nop             
  nop                                                            #  29    0xea821  1      OPC=nop             
  nop                                                            #  30    0xea822  1      OPC=nop             
  nop                                                            #  31    0xea823  1      OPC=nop             
  nop                                                            #  32    0xea824  1      OPC=nop             
  nop                                                            #  33    0xea825  1      OPC=nop             
  nop                                                            #  34    0xea826  1      OPC=nop             
  nop                                                            #  35    0xea827  1      OPC=nop             
  nop                                                            #  36    0xea828  1      OPC=nop             
  nop                                                            #  37    0xea829  1      OPC=nop             
  nop                                                            #  38    0xea82a  1      OPC=nop             
  nop                                                            #  39    0xea82b  1      OPC=nop             
  nop                                                            #  40    0xea82c  1      OPC=nop             
  cmpq $0xff, %rdx                                               #  41    0xea82d  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                                                #  42    0xea831  2      OPC=movl_r32_r32    
  je .L_ea840                                                    #  43    0xea833  2      OPC=je_label        
  nop                                                            #  44    0xea835  1      OPC=nop             
  nop                                                            #  45    0xea836  1      OPC=nop             
  nop                                                            #  46    0xea837  1      OPC=nop             
  nop                                                            #  47    0xea838  1      OPC=nop             
  nop                                                            #  48    0xea839  1      OPC=nop             
  nop                                                            #  49    0xea83a  1      OPC=nop             
  nop                                                            #  50    0xea83b  1      OPC=nop             
  nop                                                            #  51    0xea83c  1      OPC=nop             
  nop                                                            #  52    0xea83d  1      OPC=nop             
  nop                                                            #  53    0xea83e  1      OPC=nop             
  nop                                                            #  54    0xea83f  1      OPC=nop             
  nop                                                            #  55    0xea840  1      OPC=nop             
  nop                                                            #  56    0xea841  1      OPC=nop             
  nop                                                            #  57    0xea842  1      OPC=nop             
  nop                                                            #  58    0xea843  1      OPC=nop             
  nop                                                            #  59    0xea844  1      OPC=nop             
  nop                                                            #  60    0xea845  1      OPC=nop             
  nop                                                            #  61    0xea846  1      OPC=nop             
  nop                                                            #  62    0xea847  1      OPC=nop             
  callq ._Unwind_Resume                                          #  63    0xea848  5      OPC=callq_label     
.L_ea840:                                                        #        0xea84d  0      OPC=<label>         
  nop                                                            #  64    0xea84d  1      OPC=nop             
  nop                                                            #  65    0xea84e  1      OPC=nop             
  nop                                                            #  66    0xea84f  1      OPC=nop             
  nop                                                            #  67    0xea850  1      OPC=nop             
  nop                                                            #  68    0xea851  1      OPC=nop             
  nop                                                            #  69    0xea852  1      OPC=nop             
  nop                                                            #  70    0xea853  1      OPC=nop             
  nop                                                            #  71    0xea854  1      OPC=nop             
  nop                                                            #  72    0xea855  1      OPC=nop             
  nop                                                            #  73    0xea856  1      OPC=nop             
  nop                                                            #  74    0xea857  1      OPC=nop             
  nop                                                            #  75    0xea858  1      OPC=nop             
  nop                                                            #  76    0xea859  1      OPC=nop             
  nop                                                            #  77    0xea85a  1      OPC=nop             
  nop                                                            #  78    0xea85b  1      OPC=nop             
  nop                                                            #  79    0xea85c  1      OPC=nop             
  nop                                                            #  80    0xea85d  1      OPC=nop             
  nop                                                            #  81    0xea85e  1      OPC=nop             
  nop                                                            #  82    0xea85f  1      OPC=nop             
  nop                                                            #  83    0xea860  1      OPC=nop             
  nop                                                            #  84    0xea861  1      OPC=nop             
  nop                                                            #  85    0xea862  1      OPC=nop             
  nop                                                            #  86    0xea863  1      OPC=nop             
  nop                                                            #  87    0xea864  1      OPC=nop             
  nop                                                            #  88    0xea865  1      OPC=nop             
  nop                                                            #  89    0xea866  1      OPC=nop             
  nop                                                            #  90    0xea867  1      OPC=nop             
  callq .__cxa_call_unexpected                                   #  91    0xea868  5      OPC=callq_label     
                                                                                                              
.size _ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv, .-_ZNKSt23__codecvt_abstract_baseIwc10_mbstate_tE10max_lengthEv

