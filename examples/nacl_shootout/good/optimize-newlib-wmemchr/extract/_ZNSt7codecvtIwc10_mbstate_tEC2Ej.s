  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tEC2Ej
  .type _ZNSt7codecvtIwc10_mbstate_tEC2Ej, @function

#! file-offset 0x124060
#! rip-offset  0xe4060
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIwc10_mbstate_tEC2Ej:             #        0xe4060  0      OPC=<label>         
  pushq %rbx                                    #  1     0xe4060  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xe4061  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xe4063  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xe4065  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xe4068  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xe406b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xe406d  2      OPC=movl_r32_r32    
  movl $0x1003d4a8, (%r15,%rbx,1)               #  8     0xe406f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xe4077  3      OPC=setne_r8        
  nop                                           #  10    0xe407a  1      OPC=nop             
  nop                                           #  11    0xe407b  1      OPC=nop             
  nop                                           #  12    0xe407c  1      OPC=nop             
  nop                                           #  13    0xe407d  1      OPC=nop             
  nop                                           #  14    0xe407e  1      OPC=nop             
  nop                                           #  15    0xe407f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xe4080  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xe4082  5      OPC=movl_m32_r32    
  nop                                           #  18    0xe4087  1      OPC=nop             
  nop                                           #  19    0xe4088  1      OPC=nop             
  nop                                           #  20    0xe4089  1      OPC=nop             
  nop                                           #  21    0xe408a  1      OPC=nop             
  nop                                           #  22    0xe408b  1      OPC=nop             
  nop                                           #  23    0xe408c  1      OPC=nop             
  nop                                           #  24    0xe408d  1      OPC=nop             
  nop                                           #  25    0xe408e  1      OPC=nop             
  nop                                           #  26    0xe408f  1      OPC=nop             
  nop                                           #  27    0xe4090  1      OPC=nop             
  nop                                           #  28    0xe4091  1      OPC=nop             
  nop                                           #  29    0xe4092  1      OPC=nop             
  nop                                           #  30    0xe4093  1      OPC=nop             
  nop                                           #  31    0xe4094  1      OPC=nop             
  nop                                           #  32    0xe4095  1      OPC=nop             
  nop                                           #  33    0xe4096  1      OPC=nop             
  nop                                           #  34    0xe4097  1      OPC=nop             
  nop                                           #  35    0xe4098  1      OPC=nop             
  nop                                           #  36    0xe4099  1      OPC=nop             
  nop                                           #  37    0xe409a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xe409b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xe40a0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xe40a2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xe40a7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xe40aa  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xe40ad  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xe40ae  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xe40b0  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xe40b7  1      OPC=nop             
  nop                                           #  47    0xe40b8  1      OPC=nop             
  nop                                           #  48    0xe40b9  1      OPC=nop             
  nop                                           #  49    0xe40ba  1      OPC=nop             
  addq %r15, %r11                               #  50    0xe40bb  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xe40be  3      OPC=jmpq_r64        
  nop                                           #  52    0xe40c1  1      OPC=nop             
  nop                                           #  53    0xe40c2  1      OPC=nop             
  nop                                           #  54    0xe40c3  1      OPC=nop             
  nop                                           #  55    0xe40c4  1      OPC=nop             
  nop                                           #  56    0xe40c5  1      OPC=nop             
  nop                                           #  57    0xe40c6  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xe40c7  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  59    0xe40c9  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)               #  60    0xe40cb  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                          #  61    0xe40d3  4      OPC=movl_m32_r32    
  nop                                           #  62    0xe40d7  1      OPC=nop             
  nop                                           #  63    0xe40d8  1      OPC=nop             
  nop                                           #  64    0xe40d9  1      OPC=nop             
  nop                                           #  65    0xe40da  1      OPC=nop             
  nop                                           #  66    0xe40db  1      OPC=nop             
  nop                                           #  67    0xe40dc  1      OPC=nop             
  nop                                           #  68    0xe40dd  1      OPC=nop             
  nop                                           #  69    0xe40de  1      OPC=nop             
  nop                                           #  70    0xe40df  1      OPC=nop             
  nop                                           #  71    0xe40e0  1      OPC=nop             
  nop                                           #  72    0xe40e1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  73    0xe40e2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  74    0xe40e7  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  75    0xe40eb  2      OPC=movl_r32_r32    
  nop                                           #  76    0xe40ed  1      OPC=nop             
  nop                                           #  77    0xe40ee  1      OPC=nop             
  nop                                           #  78    0xe40ef  1      OPC=nop             
  nop                                           #  79    0xe40f0  1      OPC=nop             
  nop                                           #  80    0xe40f1  1      OPC=nop             
  nop                                           #  81    0xe40f2  1      OPC=nop             
  nop                                           #  82    0xe40f3  1      OPC=nop             
  nop                                           #  83    0xe40f4  1      OPC=nop             
  nop                                           #  84    0xe40f5  1      OPC=nop             
  nop                                           #  85    0xe40f6  1      OPC=nop             
  nop                                           #  86    0xe40f7  1      OPC=nop             
  nop                                           #  87    0xe40f8  1      OPC=nop             
  nop                                           #  88    0xe40f9  1      OPC=nop             
  nop                                           #  89    0xe40fa  1      OPC=nop             
  nop                                           #  90    0xe40fb  1      OPC=nop             
  nop                                           #  91    0xe40fc  1      OPC=nop             
  nop                                           #  92    0xe40fd  1      OPC=nop             
  nop                                           #  93    0xe40fe  1      OPC=nop             
  nop                                           #  94    0xe40ff  1      OPC=nop             
  nop                                           #  95    0xe4100  1      OPC=nop             
  nop                                           #  96    0xe4101  1      OPC=nop             
  callq ._Unwind_Resume                         #  97    0xe4102  5      OPC=callq_label     
                                                                                             
.size _ZNSt7codecvtIwc10_mbstate_tEC2Ej, .-_ZNSt7codecvtIwc10_mbstate_tEC2Ej

