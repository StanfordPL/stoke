  .text
  .globl _ZNSt8messagesIwEC2EPiPKcj
  .type _ZNSt8messagesIwEC2EPiPKcj, @function

#! file-offset 0xf53e0
#! rip-offset  0xb53e0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwEC2EPiPKcj:                    #        0xb53e0  0      OPC=<label>         
  pushq %rbx                                    #  1     0xb53e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xb53e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xb53e3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xb53e5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xb53e8  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                              #  6     0xb53eb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xb53ed  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)               #  8     0xb53ef  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xb53f7  3      OPC=setne_r8        
  nop                                           #  10    0xb53fa  1      OPC=nop             
  nop                                           #  11    0xb53fb  1      OPC=nop             
  nop                                           #  12    0xb53fc  1      OPC=nop             
  nop                                           #  13    0xb53fd  1      OPC=nop             
  nop                                           #  14    0xb53fe  1      OPC=nop             
  nop                                           #  15    0xb53ff  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xb5400  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xb5402  5      OPC=movl_m32_r32    
  nop                                           #  18    0xb5407  1      OPC=nop             
  nop                                           #  19    0xb5408  1      OPC=nop             
  nop                                           #  20    0xb5409  1      OPC=nop             
  nop                                           #  21    0xb540a  1      OPC=nop             
  nop                                           #  22    0xb540b  1      OPC=nop             
  nop                                           #  23    0xb540c  1      OPC=nop             
  nop                                           #  24    0xb540d  1      OPC=nop             
  nop                                           #  25    0xb540e  1      OPC=nop             
  nop                                           #  26    0xb540f  1      OPC=nop             
  nop                                           #  27    0xb5410  1      OPC=nop             
  nop                                           #  28    0xb5411  1      OPC=nop             
  nop                                           #  29    0xb5412  1      OPC=nop             
  nop                                           #  30    0xb5413  1      OPC=nop             
  nop                                           #  31    0xb5414  1      OPC=nop             
  nop                                           #  32    0xb5415  1      OPC=nop             
  nop                                           #  33    0xb5416  1      OPC=nop             
  nop                                           #  34    0xb5417  1      OPC=nop             
  nop                                           #  35    0xb5418  1      OPC=nop             
  nop                                           #  36    0xb5419  1      OPC=nop             
  nop                                           #  37    0xb541a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xb541b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xb5420  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xb5422  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xb5427  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xb542a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xb542d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xb542e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xb5430  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xb5437  1      OPC=nop             
  nop                                           #  47    0xb5438  1      OPC=nop             
  nop                                           #  48    0xb5439  1      OPC=nop             
  nop                                           #  49    0xb543a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xb543b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xb543e  3      OPC=jmpq_r64        
  nop                                           #  52    0xb5441  1      OPC=nop             
  nop                                           #  53    0xb5442  1      OPC=nop             
  nop                                           #  54    0xb5443  1      OPC=nop             
  nop                                           #  55    0xb5444  1      OPC=nop             
  nop                                           #  56    0xb5445  1      OPC=nop             
  nop                                           #  57    0xb5446  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xb5447  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0xb5449  4      OPC=movl_m32_r32    
  nop                                           #  60    0xb544d  1      OPC=nop             
  nop                                           #  61    0xb544e  1      OPC=nop             
  nop                                           #  62    0xb544f  1      OPC=nop             
  nop                                           #  63    0xb5450  1      OPC=nop             
  nop                                           #  64    0xb5451  1      OPC=nop             
  nop                                           #  65    0xb5452  1      OPC=nop             
  nop                                           #  66    0xb5453  1      OPC=nop             
  nop                                           #  67    0xb5454  1      OPC=nop             
  nop                                           #  68    0xb5455  1      OPC=nop             
  nop                                           #  69    0xb5456  1      OPC=nop             
  nop                                           #  70    0xb5457  1      OPC=nop             
  nop                                           #  71    0xb5458  1      OPC=nop             
  nop                                           #  72    0xb5459  1      OPC=nop             
  nop                                           #  73    0xb545a  1      OPC=nop             
  nop                                           #  74    0xb545b  1      OPC=nop             
  nop                                           #  75    0xb545c  1      OPC=nop             
  nop                                           #  76    0xb545d  1      OPC=nop             
  nop                                           #  77    0xb545e  1      OPC=nop             
  nop                                           #  78    0xb545f  1      OPC=nop             
  nop                                           #  79    0xb5460  1      OPC=nop             
  nop                                           #  80    0xb5461  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0xb5462  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0xb5467  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0xb546b  2      OPC=movl_r32_r32    
  nop                                           #  84    0xb546d  1      OPC=nop             
  nop                                           #  85    0xb546e  1      OPC=nop             
  nop                                           #  86    0xb546f  1      OPC=nop             
  nop                                           #  87    0xb5470  1      OPC=nop             
  nop                                           #  88    0xb5471  1      OPC=nop             
  nop                                           #  89    0xb5472  1      OPC=nop             
  nop                                           #  90    0xb5473  1      OPC=nop             
  nop                                           #  91    0xb5474  1      OPC=nop             
  nop                                           #  92    0xb5475  1      OPC=nop             
  nop                                           #  93    0xb5476  1      OPC=nop             
  nop                                           #  94    0xb5477  1      OPC=nop             
  nop                                           #  95    0xb5478  1      OPC=nop             
  nop                                           #  96    0xb5479  1      OPC=nop             
  nop                                           #  97    0xb547a  1      OPC=nop             
  nop                                           #  98    0xb547b  1      OPC=nop             
  nop                                           #  99    0xb547c  1      OPC=nop             
  nop                                           #  100   0xb547d  1      OPC=nop             
  nop                                           #  101   0xb547e  1      OPC=nop             
  nop                                           #  102   0xb547f  1      OPC=nop             
  nop                                           #  103   0xb5480  1      OPC=nop             
  nop                                           #  104   0xb5481  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0xb5482  5      OPC=callq_label     
                                                                                             
.size _ZNSt8messagesIwEC2EPiPKcj, .-_ZNSt8messagesIwEC2EPiPKcj

