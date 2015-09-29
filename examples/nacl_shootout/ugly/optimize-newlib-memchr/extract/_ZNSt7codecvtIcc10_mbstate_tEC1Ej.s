  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tEC1Ej
  .type _ZNSt7codecvtIcc10_mbstate_tEC1Ej, @function

#! file-offset 0x124820
#! rip-offset  0xe4820
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tEC1Ej:             #        0xe4820  0      OPC=<label>         
  pushq %rbx                                    #  1     0xe4820  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xe4821  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xe4823  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xe4825  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xe4828  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xe482b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xe482d  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)               #  8     0xe482f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xe4837  3      OPC=setne_r8        
  nop                                           #  10    0xe483a  1      OPC=nop             
  nop                                           #  11    0xe483b  1      OPC=nop             
  nop                                           #  12    0xe483c  1      OPC=nop             
  nop                                           #  13    0xe483d  1      OPC=nop             
  nop                                           #  14    0xe483e  1      OPC=nop             
  nop                                           #  15    0xe483f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xe4840  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xe4842  5      OPC=movl_m32_r32    
  nop                                           #  18    0xe4847  1      OPC=nop             
  nop                                           #  19    0xe4848  1      OPC=nop             
  nop                                           #  20    0xe4849  1      OPC=nop             
  nop                                           #  21    0xe484a  1      OPC=nop             
  nop                                           #  22    0xe484b  1      OPC=nop             
  nop                                           #  23    0xe484c  1      OPC=nop             
  nop                                           #  24    0xe484d  1      OPC=nop             
  nop                                           #  25    0xe484e  1      OPC=nop             
  nop                                           #  26    0xe484f  1      OPC=nop             
  nop                                           #  27    0xe4850  1      OPC=nop             
  nop                                           #  28    0xe4851  1      OPC=nop             
  nop                                           #  29    0xe4852  1      OPC=nop             
  nop                                           #  30    0xe4853  1      OPC=nop             
  nop                                           #  31    0xe4854  1      OPC=nop             
  nop                                           #  32    0xe4855  1      OPC=nop             
  nop                                           #  33    0xe4856  1      OPC=nop             
  nop                                           #  34    0xe4857  1      OPC=nop             
  nop                                           #  35    0xe4858  1      OPC=nop             
  nop                                           #  36    0xe4859  1      OPC=nop             
  nop                                           #  37    0xe485a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xe485b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xe4860  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xe4862  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xe4867  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xe486a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xe486d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xe486e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xe4870  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xe4877  1      OPC=nop             
  nop                                           #  47    0xe4878  1      OPC=nop             
  nop                                           #  48    0xe4879  1      OPC=nop             
  nop                                           #  49    0xe487a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xe487b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xe487e  3      OPC=jmpq_r64        
  nop                                           #  52    0xe4881  1      OPC=nop             
  nop                                           #  53    0xe4882  1      OPC=nop             
  nop                                           #  54    0xe4883  1      OPC=nop             
  nop                                           #  55    0xe4884  1      OPC=nop             
  nop                                           #  56    0xe4885  1      OPC=nop             
  nop                                           #  57    0xe4886  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xe4887  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  59    0xe4889  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)               #  60    0xe488b  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                          #  61    0xe4893  4      OPC=movl_m32_r32    
  nop                                           #  62    0xe4897  1      OPC=nop             
  nop                                           #  63    0xe4898  1      OPC=nop             
  nop                                           #  64    0xe4899  1      OPC=nop             
  nop                                           #  65    0xe489a  1      OPC=nop             
  nop                                           #  66    0xe489b  1      OPC=nop             
  nop                                           #  67    0xe489c  1      OPC=nop             
  nop                                           #  68    0xe489d  1      OPC=nop             
  nop                                           #  69    0xe489e  1      OPC=nop             
  nop                                           #  70    0xe489f  1      OPC=nop             
  nop                                           #  71    0xe48a0  1      OPC=nop             
  nop                                           #  72    0xe48a1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  73    0xe48a2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  74    0xe48a7  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  75    0xe48ab  2      OPC=movl_r32_r32    
  nop                                           #  76    0xe48ad  1      OPC=nop             
  nop                                           #  77    0xe48ae  1      OPC=nop             
  nop                                           #  78    0xe48af  1      OPC=nop             
  nop                                           #  79    0xe48b0  1      OPC=nop             
  nop                                           #  80    0xe48b1  1      OPC=nop             
  nop                                           #  81    0xe48b2  1      OPC=nop             
  nop                                           #  82    0xe48b3  1      OPC=nop             
  nop                                           #  83    0xe48b4  1      OPC=nop             
  nop                                           #  84    0xe48b5  1      OPC=nop             
  nop                                           #  85    0xe48b6  1      OPC=nop             
  nop                                           #  86    0xe48b7  1      OPC=nop             
  nop                                           #  87    0xe48b8  1      OPC=nop             
  nop                                           #  88    0xe48b9  1      OPC=nop             
  nop                                           #  89    0xe48ba  1      OPC=nop             
  nop                                           #  90    0xe48bb  1      OPC=nop             
  nop                                           #  91    0xe48bc  1      OPC=nop             
  nop                                           #  92    0xe48bd  1      OPC=nop             
  nop                                           #  93    0xe48be  1      OPC=nop             
  nop                                           #  94    0xe48bf  1      OPC=nop             
  nop                                           #  95    0xe48c0  1      OPC=nop             
  nop                                           #  96    0xe48c1  1      OPC=nop             
  callq ._Unwind_Resume                         #  97    0xe48c2  5      OPC=callq_label     
                                                                                             
.size _ZNSt7codecvtIcc10_mbstate_tEC1Ej, .-_ZNSt7codecvtIcc10_mbstate_tEC1Ej

