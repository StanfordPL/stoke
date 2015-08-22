  .text
  .globl _ZNSt7collateIwEC1Ej
  .type _ZNSt7collateIwEC1Ej, @function

#! file-offset 0xf5920
#! rip-offset  0xb5920
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwEC1Ej:                          #        0xb5920  0      OPC=<label>         
  pushq %rbx                                    #  1     0xb5920  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xb5921  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xb5923  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xb5925  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xb5928  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xb592b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xb592d  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)               #  8     0xb592f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xb5937  3      OPC=setne_r8        
  nop                                           #  10    0xb593a  1      OPC=nop             
  nop                                           #  11    0xb593b  1      OPC=nop             
  nop                                           #  12    0xb593c  1      OPC=nop             
  nop                                           #  13    0xb593d  1      OPC=nop             
  nop                                           #  14    0xb593e  1      OPC=nop             
  nop                                           #  15    0xb593f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xb5940  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xb5942  5      OPC=movl_m32_r32    
  nop                                           #  18    0xb5947  1      OPC=nop             
  nop                                           #  19    0xb5948  1      OPC=nop             
  nop                                           #  20    0xb5949  1      OPC=nop             
  nop                                           #  21    0xb594a  1      OPC=nop             
  nop                                           #  22    0xb594b  1      OPC=nop             
  nop                                           #  23    0xb594c  1      OPC=nop             
  nop                                           #  24    0xb594d  1      OPC=nop             
  nop                                           #  25    0xb594e  1      OPC=nop             
  nop                                           #  26    0xb594f  1      OPC=nop             
  nop                                           #  27    0xb5950  1      OPC=nop             
  nop                                           #  28    0xb5951  1      OPC=nop             
  nop                                           #  29    0xb5952  1      OPC=nop             
  nop                                           #  30    0xb5953  1      OPC=nop             
  nop                                           #  31    0xb5954  1      OPC=nop             
  nop                                           #  32    0xb5955  1      OPC=nop             
  nop                                           #  33    0xb5956  1      OPC=nop             
  nop                                           #  34    0xb5957  1      OPC=nop             
  nop                                           #  35    0xb5958  1      OPC=nop             
  nop                                           #  36    0xb5959  1      OPC=nop             
  nop                                           #  37    0xb595a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xb595b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xb5960  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xb5962  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xb5967  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xb596a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xb596d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xb596e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xb5970  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xb5977  1      OPC=nop             
  nop                                           #  47    0xb5978  1      OPC=nop             
  nop                                           #  48    0xb5979  1      OPC=nop             
  nop                                           #  49    0xb597a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xb597b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xb597e  3      OPC=jmpq_r64        
  nop                                           #  52    0xb5981  1      OPC=nop             
  nop                                           #  53    0xb5982  1      OPC=nop             
  nop                                           #  54    0xb5983  1      OPC=nop             
  nop                                           #  55    0xb5984  1      OPC=nop             
  nop                                           #  56    0xb5985  1      OPC=nop             
  nop                                           #  57    0xb5986  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xb5987  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0xb5989  4      OPC=movl_m32_r32    
  nop                                           #  60    0xb598d  1      OPC=nop             
  nop                                           #  61    0xb598e  1      OPC=nop             
  nop                                           #  62    0xb598f  1      OPC=nop             
  nop                                           #  63    0xb5990  1      OPC=nop             
  nop                                           #  64    0xb5991  1      OPC=nop             
  nop                                           #  65    0xb5992  1      OPC=nop             
  nop                                           #  66    0xb5993  1      OPC=nop             
  nop                                           #  67    0xb5994  1      OPC=nop             
  nop                                           #  68    0xb5995  1      OPC=nop             
  nop                                           #  69    0xb5996  1      OPC=nop             
  nop                                           #  70    0xb5997  1      OPC=nop             
  nop                                           #  71    0xb5998  1      OPC=nop             
  nop                                           #  72    0xb5999  1      OPC=nop             
  nop                                           #  73    0xb599a  1      OPC=nop             
  nop                                           #  74    0xb599b  1      OPC=nop             
  nop                                           #  75    0xb599c  1      OPC=nop             
  nop                                           #  76    0xb599d  1      OPC=nop             
  nop                                           #  77    0xb599e  1      OPC=nop             
  nop                                           #  78    0xb599f  1      OPC=nop             
  nop                                           #  79    0xb59a0  1      OPC=nop             
  nop                                           #  80    0xb59a1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0xb59a2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0xb59a7  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0xb59ab  2      OPC=movl_r32_r32    
  nop                                           #  84    0xb59ad  1      OPC=nop             
  nop                                           #  85    0xb59ae  1      OPC=nop             
  nop                                           #  86    0xb59af  1      OPC=nop             
  nop                                           #  87    0xb59b0  1      OPC=nop             
  nop                                           #  88    0xb59b1  1      OPC=nop             
  nop                                           #  89    0xb59b2  1      OPC=nop             
  nop                                           #  90    0xb59b3  1      OPC=nop             
  nop                                           #  91    0xb59b4  1      OPC=nop             
  nop                                           #  92    0xb59b5  1      OPC=nop             
  nop                                           #  93    0xb59b6  1      OPC=nop             
  nop                                           #  94    0xb59b7  1      OPC=nop             
  nop                                           #  95    0xb59b8  1      OPC=nop             
  nop                                           #  96    0xb59b9  1      OPC=nop             
  nop                                           #  97    0xb59ba  1      OPC=nop             
  nop                                           #  98    0xb59bb  1      OPC=nop             
  nop                                           #  99    0xb59bc  1      OPC=nop             
  nop                                           #  100   0xb59bd  1      OPC=nop             
  nop                                           #  101   0xb59be  1      OPC=nop             
  nop                                           #  102   0xb59bf  1      OPC=nop             
  nop                                           #  103   0xb59c0  1      OPC=nop             
  nop                                           #  104   0xb59c1  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0xb59c2  5      OPC=callq_label     
                                                                                             
.size _ZNSt7collateIwEC1Ej, .-_ZNSt7collateIwEC1Ej

