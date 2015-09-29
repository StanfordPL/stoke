  .text
  .globl _ZNSt5ctypeIwEC1EPij
  .type _ZNSt5ctypeIwEC1EPij, @function

#! file-offset 0x125900
#! rip-offset  0xe5900
#! capacity    192 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIwEC1EPij:                              #        0xe5900  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe5900  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe5901  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe5903  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe5905  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe5908  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe590b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe590d  2      OPC=movl_r32_r32    
  movl $0x1003d5c8, (%r15,%rbx,1)                   #  8     0xe590f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe5917  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe591a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe591e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe5920  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe5924  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe5926  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe592b  1      OPC=nop             
  nop                                               #  16    0xe592c  1      OPC=nop             
  nop                                               #  17    0xe592d  1      OPC=nop             
  nop                                               #  18    0xe592e  1      OPC=nop             
  nop                                               #  19    0xe592f  1      OPC=nop             
  nop                                               #  20    0xe5930  1      OPC=nop             
  nop                                               #  21    0xe5931  1      OPC=nop             
  nop                                               #  22    0xe5932  1      OPC=nop             
  nop                                               #  23    0xe5933  1      OPC=nop             
  nop                                               #  24    0xe5934  1      OPC=nop             
  nop                                               #  25    0xe5935  1      OPC=nop             
  nop                                               #  26    0xe5936  1      OPC=nop             
  nop                                               #  27    0xe5937  1      OPC=nop             
  nop                                               #  28    0xe5938  1      OPC=nop             
  nop                                               #  29    0xe5939  1      OPC=nop             
  nop                                               #  30    0xe593a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe593b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe5940  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe5942  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  34    0xe5947  2      OPC=movl_r32_r32    
  movb $0x0, 0xc(%r15,%rbx,1)                       #  35    0xe5949  6      OPC=movb_m8_imm8    
  movl %ebx, %edi                                   #  36    0xe594f  2      OPC=movl_r32_r32    
  nop                                               #  37    0xe5951  1      OPC=nop             
  nop                                               #  38    0xe5952  1      OPC=nop             
  nop                                               #  39    0xe5953  1      OPC=nop             
  nop                                               #  40    0xe5954  1      OPC=nop             
  nop                                               #  41    0xe5955  1      OPC=nop             
  nop                                               #  42    0xe5956  1      OPC=nop             
  nop                                               #  43    0xe5957  1      OPC=nop             
  nop                                               #  44    0xe5958  1      OPC=nop             
  nop                                               #  45    0xe5959  1      OPC=nop             
  nop                                               #  46    0xe595a  1      OPC=nop             
  callq ._ZNSt5ctypeIwE19_M_initialize_ctypeEv      #  47    0xe595b  5      OPC=callq_label     
  addl $0x10, %esp                                  #  48    0xe5960  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  49    0xe5963  3      OPC=addq_r64_r64    
  popq %rbx                                         #  50    0xe5966  1      OPC=popq_r64_1      
  popq %r11                                         #  51    0xe5967  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  52    0xe5969  7      OPC=andl_r32_imm32  
  nop                                               #  53    0xe5970  1      OPC=nop             
  nop                                               #  54    0xe5971  1      OPC=nop             
  nop                                               #  55    0xe5972  1      OPC=nop             
  nop                                               #  56    0xe5973  1      OPC=nop             
  addq %r15, %r11                                   #  57    0xe5974  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  58    0xe5977  3      OPC=jmpq_r64        
  nop                                               #  59    0xe597a  1      OPC=nop             
  nop                                               #  60    0xe597b  1      OPC=nop             
  nop                                               #  61    0xe597c  1      OPC=nop             
  nop                                               #  62    0xe597d  1      OPC=nop             
  nop                                               #  63    0xe597e  1      OPC=nop             
  nop                                               #  64    0xe597f  1      OPC=nop             
  nop                                               #  65    0xe5980  1      OPC=nop             
  nop                                               #  66    0xe5981  1      OPC=nop             
  nop                                               #  67    0xe5982  1      OPC=nop             
  nop                                               #  68    0xe5983  1      OPC=nop             
  nop                                               #  69    0xe5984  1      OPC=nop             
  nop                                               #  70    0xe5985  1      OPC=nop             
  nop                                               #  71    0xe5986  1      OPC=nop             
  movl %ebx, %edi                                   #  72    0xe5987  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  73    0xe5989  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                   #  74    0xe598b  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  75    0xe5993  3      OPC=movl_m32_r32    
  nop                                               #  76    0xe5996  1      OPC=nop             
  nop                                               #  77    0xe5997  1      OPC=nop             
  nop                                               #  78    0xe5998  1      OPC=nop             
  nop                                               #  79    0xe5999  1      OPC=nop             
  nop                                               #  80    0xe599a  1      OPC=nop             
  nop                                               #  81    0xe599b  1      OPC=nop             
  nop                                               #  82    0xe599c  1      OPC=nop             
  nop                                               #  83    0xe599d  1      OPC=nop             
  nop                                               #  84    0xe599e  1      OPC=nop             
  nop                                               #  85    0xe599f  1      OPC=nop             
  nop                                               #  86    0xe59a0  1      OPC=nop             
  nop                                               #  87    0xe59a1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  88    0xe59a2  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  89    0xe59a7  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  90    0xe59aa  2      OPC=movl_r32_r32    
  nop                                               #  91    0xe59ac  1      OPC=nop             
  nop                                               #  92    0xe59ad  1      OPC=nop             
  nop                                               #  93    0xe59ae  1      OPC=nop             
  nop                                               #  94    0xe59af  1      OPC=nop             
  nop                                               #  95    0xe59b0  1      OPC=nop             
  nop                                               #  96    0xe59b1  1      OPC=nop             
  nop                                               #  97    0xe59b2  1      OPC=nop             
  nop                                               #  98    0xe59b3  1      OPC=nop             
  nop                                               #  99    0xe59b4  1      OPC=nop             
  nop                                               #  100   0xe59b5  1      OPC=nop             
  nop                                               #  101   0xe59b6  1      OPC=nop             
  nop                                               #  102   0xe59b7  1      OPC=nop             
  nop                                               #  103   0xe59b8  1      OPC=nop             
  nop                                               #  104   0xe59b9  1      OPC=nop             
  nop                                               #  105   0xe59ba  1      OPC=nop             
  nop                                               #  106   0xe59bb  1      OPC=nop             
  nop                                               #  107   0xe59bc  1      OPC=nop             
  nop                                               #  108   0xe59bd  1      OPC=nop             
  nop                                               #  109   0xe59be  1      OPC=nop             
  nop                                               #  110   0xe59bf  1      OPC=nop             
  nop                                               #  111   0xe59c0  1      OPC=nop             
  nop                                               #  112   0xe59c1  1      OPC=nop             
  callq ._Unwind_Resume                             #  113   0xe59c2  5      OPC=callq_label     
                                                                                                 
.size _ZNSt5ctypeIwEC1EPij, .-_ZNSt5ctypeIwEC1EPij

