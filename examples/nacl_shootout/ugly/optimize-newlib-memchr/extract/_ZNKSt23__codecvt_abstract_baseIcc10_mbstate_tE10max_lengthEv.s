  .text
  .globl _ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv
  .type _ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv, @function

#! file-offset 0x12b300
#! rip-offset  0xeb300
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv:  #        0xeb300  0      OPC=<label>         
  movl %edi, %edi                                                #  1     0xeb300  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                #  2     0xeb302  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                #  3     0xeb305  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                #  4     0xeb308  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                       #  5     0xeb30a  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                #  6     0xeb30e  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                                   #  7     0xeb310  5      OPC=movl_r32_m32    
  nop                                                            #  8     0xeb315  1      OPC=nop             
  nop                                                            #  9     0xeb316  1      OPC=nop             
  nop                                                            #  10    0xeb317  1      OPC=nop             
  andl $0xffffffe0, %eax                                         #  11    0xeb318  6      OPC=andl_r32_imm32  
  nop                                                            #  12    0xeb31e  1      OPC=nop             
  nop                                                            #  13    0xeb31f  1      OPC=nop             
  nop                                                            #  14    0xeb320  1      OPC=nop             
  addq %r15, %rax                                                #  15    0xeb321  3      OPC=addq_r64_r64    
  callq %rax                                                     #  16    0xeb324  2      OPC=callq_r64       
  addl $0x8, %esp                                                #  17    0xeb326  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                #  18    0xeb329  3      OPC=addq_r64_r64    
  popq %r11                                                      #  19    0xeb32c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                        #  20    0xeb32e  7      OPC=andl_r32_imm32  
  nop                                                            #  21    0xeb335  1      OPC=nop             
  nop                                                            #  22    0xeb336  1      OPC=nop             
  nop                                                            #  23    0xeb337  1      OPC=nop             
  nop                                                            #  24    0xeb338  1      OPC=nop             
  addq %r15, %r11                                                #  25    0xeb339  3      OPC=addq_r64_r64    
  jmpq %r11                                                      #  26    0xeb33c  3      OPC=jmpq_r64        
  nop                                                            #  27    0xeb33f  1      OPC=nop             
  nop                                                            #  28    0xeb340  1      OPC=nop             
  nop                                                            #  29    0xeb341  1      OPC=nop             
  nop                                                            #  30    0xeb342  1      OPC=nop             
  nop                                                            #  31    0xeb343  1      OPC=nop             
  nop                                                            #  32    0xeb344  1      OPC=nop             
  nop                                                            #  33    0xeb345  1      OPC=nop             
  nop                                                            #  34    0xeb346  1      OPC=nop             
  nop                                                            #  35    0xeb347  1      OPC=nop             
  nop                                                            #  36    0xeb348  1      OPC=nop             
  nop                                                            #  37    0xeb349  1      OPC=nop             
  nop                                                            #  38    0xeb34a  1      OPC=nop             
  nop                                                            #  39    0xeb34b  1      OPC=nop             
  nop                                                            #  40    0xeb34c  1      OPC=nop             
  cmpq $0xff, %rdx                                               #  41    0xeb34d  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                                                #  42    0xeb351  2      OPC=movl_r32_r32    
  je .L_eb360                                                    #  43    0xeb353  2      OPC=je_label        
  nop                                                            #  44    0xeb355  1      OPC=nop             
  nop                                                            #  45    0xeb356  1      OPC=nop             
  nop                                                            #  46    0xeb357  1      OPC=nop             
  nop                                                            #  47    0xeb358  1      OPC=nop             
  nop                                                            #  48    0xeb359  1      OPC=nop             
  nop                                                            #  49    0xeb35a  1      OPC=nop             
  nop                                                            #  50    0xeb35b  1      OPC=nop             
  nop                                                            #  51    0xeb35c  1      OPC=nop             
  nop                                                            #  52    0xeb35d  1      OPC=nop             
  nop                                                            #  53    0xeb35e  1      OPC=nop             
  nop                                                            #  54    0xeb35f  1      OPC=nop             
  nop                                                            #  55    0xeb360  1      OPC=nop             
  nop                                                            #  56    0xeb361  1      OPC=nop             
  nop                                                            #  57    0xeb362  1      OPC=nop             
  nop                                                            #  58    0xeb363  1      OPC=nop             
  nop                                                            #  59    0xeb364  1      OPC=nop             
  nop                                                            #  60    0xeb365  1      OPC=nop             
  nop                                                            #  61    0xeb366  1      OPC=nop             
  nop                                                            #  62    0xeb367  1      OPC=nop             
  callq ._Unwind_Resume                                          #  63    0xeb368  5      OPC=callq_label     
.L_eb360:                                                        #        0xeb36d  0      OPC=<label>         
  nop                                                            #  64    0xeb36d  1      OPC=nop             
  nop                                                            #  65    0xeb36e  1      OPC=nop             
  nop                                                            #  66    0xeb36f  1      OPC=nop             
  nop                                                            #  67    0xeb370  1      OPC=nop             
  nop                                                            #  68    0xeb371  1      OPC=nop             
  nop                                                            #  69    0xeb372  1      OPC=nop             
  nop                                                            #  70    0xeb373  1      OPC=nop             
  nop                                                            #  71    0xeb374  1      OPC=nop             
  nop                                                            #  72    0xeb375  1      OPC=nop             
  nop                                                            #  73    0xeb376  1      OPC=nop             
  nop                                                            #  74    0xeb377  1      OPC=nop             
  nop                                                            #  75    0xeb378  1      OPC=nop             
  nop                                                            #  76    0xeb379  1      OPC=nop             
  nop                                                            #  77    0xeb37a  1      OPC=nop             
  nop                                                            #  78    0xeb37b  1      OPC=nop             
  nop                                                            #  79    0xeb37c  1      OPC=nop             
  nop                                                            #  80    0xeb37d  1      OPC=nop             
  nop                                                            #  81    0xeb37e  1      OPC=nop             
  nop                                                            #  82    0xeb37f  1      OPC=nop             
  nop                                                            #  83    0xeb380  1      OPC=nop             
  nop                                                            #  84    0xeb381  1      OPC=nop             
  nop                                                            #  85    0xeb382  1      OPC=nop             
  nop                                                            #  86    0xeb383  1      OPC=nop             
  nop                                                            #  87    0xeb384  1      OPC=nop             
  nop                                                            #  88    0xeb385  1      OPC=nop             
  nop                                                            #  89    0xeb386  1      OPC=nop             
  nop                                                            #  90    0xeb387  1      OPC=nop             
  callq .__cxa_call_unexpected                                   #  91    0xeb388  5      OPC=callq_label     
                                                                                                              
.size _ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv, .-_ZNKSt23__codecvt_abstract_baseIcc10_mbstate_tE10max_lengthEv

