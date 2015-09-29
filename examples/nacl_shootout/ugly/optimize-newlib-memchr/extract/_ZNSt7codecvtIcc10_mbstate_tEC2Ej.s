  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tEC2Ej
  .type _ZNSt7codecvtIcc10_mbstate_tEC2Ej, @function

#! file-offset 0x1248c0
#! rip-offset  0xe48c0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tEC2Ej:             #        0xe48c0  0      OPC=<label>         
  pushq %rbx                                    #  1     0xe48c0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xe48c1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xe48c3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xe48c5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xe48c8  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xe48cb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xe48cd  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)               #  8     0xe48cf  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xe48d7  3      OPC=setne_r8        
  nop                                           #  10    0xe48da  1      OPC=nop             
  nop                                           #  11    0xe48db  1      OPC=nop             
  nop                                           #  12    0xe48dc  1      OPC=nop             
  nop                                           #  13    0xe48dd  1      OPC=nop             
  nop                                           #  14    0xe48de  1      OPC=nop             
  nop                                           #  15    0xe48df  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xe48e0  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xe48e2  5      OPC=movl_m32_r32    
  nop                                           #  18    0xe48e7  1      OPC=nop             
  nop                                           #  19    0xe48e8  1      OPC=nop             
  nop                                           #  20    0xe48e9  1      OPC=nop             
  nop                                           #  21    0xe48ea  1      OPC=nop             
  nop                                           #  22    0xe48eb  1      OPC=nop             
  nop                                           #  23    0xe48ec  1      OPC=nop             
  nop                                           #  24    0xe48ed  1      OPC=nop             
  nop                                           #  25    0xe48ee  1      OPC=nop             
  nop                                           #  26    0xe48ef  1      OPC=nop             
  nop                                           #  27    0xe48f0  1      OPC=nop             
  nop                                           #  28    0xe48f1  1      OPC=nop             
  nop                                           #  29    0xe48f2  1      OPC=nop             
  nop                                           #  30    0xe48f3  1      OPC=nop             
  nop                                           #  31    0xe48f4  1      OPC=nop             
  nop                                           #  32    0xe48f5  1      OPC=nop             
  nop                                           #  33    0xe48f6  1      OPC=nop             
  nop                                           #  34    0xe48f7  1      OPC=nop             
  nop                                           #  35    0xe48f8  1      OPC=nop             
  nop                                           #  36    0xe48f9  1      OPC=nop             
  nop                                           #  37    0xe48fa  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xe48fb  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xe4900  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xe4902  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xe4907  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xe490a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xe490d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xe490e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xe4910  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xe4917  1      OPC=nop             
  nop                                           #  47    0xe4918  1      OPC=nop             
  nop                                           #  48    0xe4919  1      OPC=nop             
  nop                                           #  49    0xe491a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xe491b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xe491e  3      OPC=jmpq_r64        
  nop                                           #  52    0xe4921  1      OPC=nop             
  nop                                           #  53    0xe4922  1      OPC=nop             
  nop                                           #  54    0xe4923  1      OPC=nop             
  nop                                           #  55    0xe4924  1      OPC=nop             
  nop                                           #  56    0xe4925  1      OPC=nop             
  nop                                           #  57    0xe4926  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xe4927  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  59    0xe4929  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)               #  60    0xe492b  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                          #  61    0xe4933  4      OPC=movl_m32_r32    
  nop                                           #  62    0xe4937  1      OPC=nop             
  nop                                           #  63    0xe4938  1      OPC=nop             
  nop                                           #  64    0xe4939  1      OPC=nop             
  nop                                           #  65    0xe493a  1      OPC=nop             
  nop                                           #  66    0xe493b  1      OPC=nop             
  nop                                           #  67    0xe493c  1      OPC=nop             
  nop                                           #  68    0xe493d  1      OPC=nop             
  nop                                           #  69    0xe493e  1      OPC=nop             
  nop                                           #  70    0xe493f  1      OPC=nop             
  nop                                           #  71    0xe4940  1      OPC=nop             
  nop                                           #  72    0xe4941  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  73    0xe4942  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  74    0xe4947  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  75    0xe494b  2      OPC=movl_r32_r32    
  nop                                           #  76    0xe494d  1      OPC=nop             
  nop                                           #  77    0xe494e  1      OPC=nop             
  nop                                           #  78    0xe494f  1      OPC=nop             
  nop                                           #  79    0xe4950  1      OPC=nop             
  nop                                           #  80    0xe4951  1      OPC=nop             
  nop                                           #  81    0xe4952  1      OPC=nop             
  nop                                           #  82    0xe4953  1      OPC=nop             
  nop                                           #  83    0xe4954  1      OPC=nop             
  nop                                           #  84    0xe4955  1      OPC=nop             
  nop                                           #  85    0xe4956  1      OPC=nop             
  nop                                           #  86    0xe4957  1      OPC=nop             
  nop                                           #  87    0xe4958  1      OPC=nop             
  nop                                           #  88    0xe4959  1      OPC=nop             
  nop                                           #  89    0xe495a  1      OPC=nop             
  nop                                           #  90    0xe495b  1      OPC=nop             
  nop                                           #  91    0xe495c  1      OPC=nop             
  nop                                           #  92    0xe495d  1      OPC=nop             
  nop                                           #  93    0xe495e  1      OPC=nop             
  nop                                           #  94    0xe495f  1      OPC=nop             
  nop                                           #  95    0xe4960  1      OPC=nop             
  nop                                           #  96    0xe4961  1      OPC=nop             
  callq ._Unwind_Resume                         #  97    0xe4962  5      OPC=callq_label     
                                                                                             
.size _ZNSt7codecvtIcc10_mbstate_tEC2Ej, .-_ZNSt7codecvtIcc10_mbstate_tEC2Ej

