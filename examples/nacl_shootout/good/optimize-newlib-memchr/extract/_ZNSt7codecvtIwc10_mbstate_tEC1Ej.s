  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tEC1Ej
  .type _ZNSt7codecvtIwc10_mbstate_tEC1Ej, @function

#! file-offset 0x1246e0
#! rip-offset  0xe46e0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIwc10_mbstate_tEC1Ej:             #        0xe46e0  0      OPC=<label>         
  pushq %rbx                                    #  1     0xe46e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xe46e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xe46e3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xe46e5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xe46e8  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xe46eb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xe46ed  2      OPC=movl_r32_r32    
  movl $0x1003d4a8, (%r15,%rbx,1)               #  8     0xe46ef  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xe46f7  3      OPC=setne_r8        
  nop                                           #  10    0xe46fa  1      OPC=nop             
  nop                                           #  11    0xe46fb  1      OPC=nop             
  nop                                           #  12    0xe46fc  1      OPC=nop             
  nop                                           #  13    0xe46fd  1      OPC=nop             
  nop                                           #  14    0xe46fe  1      OPC=nop             
  nop                                           #  15    0xe46ff  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xe4700  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xe4702  5      OPC=movl_m32_r32    
  nop                                           #  18    0xe4707  1      OPC=nop             
  nop                                           #  19    0xe4708  1      OPC=nop             
  nop                                           #  20    0xe4709  1      OPC=nop             
  nop                                           #  21    0xe470a  1      OPC=nop             
  nop                                           #  22    0xe470b  1      OPC=nop             
  nop                                           #  23    0xe470c  1      OPC=nop             
  nop                                           #  24    0xe470d  1      OPC=nop             
  nop                                           #  25    0xe470e  1      OPC=nop             
  nop                                           #  26    0xe470f  1      OPC=nop             
  nop                                           #  27    0xe4710  1      OPC=nop             
  nop                                           #  28    0xe4711  1      OPC=nop             
  nop                                           #  29    0xe4712  1      OPC=nop             
  nop                                           #  30    0xe4713  1      OPC=nop             
  nop                                           #  31    0xe4714  1      OPC=nop             
  nop                                           #  32    0xe4715  1      OPC=nop             
  nop                                           #  33    0xe4716  1      OPC=nop             
  nop                                           #  34    0xe4717  1      OPC=nop             
  nop                                           #  35    0xe4718  1      OPC=nop             
  nop                                           #  36    0xe4719  1      OPC=nop             
  nop                                           #  37    0xe471a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xe471b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xe4720  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xe4722  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xe4727  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xe472a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xe472d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xe472e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xe4730  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xe4737  1      OPC=nop             
  nop                                           #  47    0xe4738  1      OPC=nop             
  nop                                           #  48    0xe4739  1      OPC=nop             
  nop                                           #  49    0xe473a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xe473b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xe473e  3      OPC=jmpq_r64        
  nop                                           #  52    0xe4741  1      OPC=nop             
  nop                                           #  53    0xe4742  1      OPC=nop             
  nop                                           #  54    0xe4743  1      OPC=nop             
  nop                                           #  55    0xe4744  1      OPC=nop             
  nop                                           #  56    0xe4745  1      OPC=nop             
  nop                                           #  57    0xe4746  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xe4747  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  59    0xe4749  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)               #  60    0xe474b  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                          #  61    0xe4753  4      OPC=movl_m32_r32    
  nop                                           #  62    0xe4757  1      OPC=nop             
  nop                                           #  63    0xe4758  1      OPC=nop             
  nop                                           #  64    0xe4759  1      OPC=nop             
  nop                                           #  65    0xe475a  1      OPC=nop             
  nop                                           #  66    0xe475b  1      OPC=nop             
  nop                                           #  67    0xe475c  1      OPC=nop             
  nop                                           #  68    0xe475d  1      OPC=nop             
  nop                                           #  69    0xe475e  1      OPC=nop             
  nop                                           #  70    0xe475f  1      OPC=nop             
  nop                                           #  71    0xe4760  1      OPC=nop             
  nop                                           #  72    0xe4761  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  73    0xe4762  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  74    0xe4767  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  75    0xe476b  2      OPC=movl_r32_r32    
  nop                                           #  76    0xe476d  1      OPC=nop             
  nop                                           #  77    0xe476e  1      OPC=nop             
  nop                                           #  78    0xe476f  1      OPC=nop             
  nop                                           #  79    0xe4770  1      OPC=nop             
  nop                                           #  80    0xe4771  1      OPC=nop             
  nop                                           #  81    0xe4772  1      OPC=nop             
  nop                                           #  82    0xe4773  1      OPC=nop             
  nop                                           #  83    0xe4774  1      OPC=nop             
  nop                                           #  84    0xe4775  1      OPC=nop             
  nop                                           #  85    0xe4776  1      OPC=nop             
  nop                                           #  86    0xe4777  1      OPC=nop             
  nop                                           #  87    0xe4778  1      OPC=nop             
  nop                                           #  88    0xe4779  1      OPC=nop             
  nop                                           #  89    0xe477a  1      OPC=nop             
  nop                                           #  90    0xe477b  1      OPC=nop             
  nop                                           #  91    0xe477c  1      OPC=nop             
  nop                                           #  92    0xe477d  1      OPC=nop             
  nop                                           #  93    0xe477e  1      OPC=nop             
  nop                                           #  94    0xe477f  1      OPC=nop             
  nop                                           #  95    0xe4780  1      OPC=nop             
  nop                                           #  96    0xe4781  1      OPC=nop             
  callq ._Unwind_Resume                         #  97    0xe4782  5      OPC=callq_label     
                                                                                             
.size _ZNSt7codecvtIwc10_mbstate_tEC1Ej, .-_ZNSt7codecvtIwc10_mbstate_tEC1Ej

