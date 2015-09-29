  .text
  .globl _ZNSt7collateIcEC1EPij
  .type _ZNSt7collateIcEC1EPij, @function

#! file-offset 0xbca20
#! rip-offset  0x7ca20
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcEC1EPij:                            #        0x7ca20  0      OPC=<label>         
  pushq %rbx                                        #  1     0x7ca20  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0x7ca21  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0x7ca23  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0x7ca25  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0x7ca28  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0x7ca2b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0x7ca2d  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                   #  8     0x7ca2f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0x7ca37  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0x7ca3a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0x7ca3e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0x7ca40  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0x7ca44  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0x7ca46  5      OPC=movl_m32_r32    
  nop                                               #  15    0x7ca4b  1      OPC=nop             
  nop                                               #  16    0x7ca4c  1      OPC=nop             
  nop                                               #  17    0x7ca4d  1      OPC=nop             
  nop                                               #  18    0x7ca4e  1      OPC=nop             
  nop                                               #  19    0x7ca4f  1      OPC=nop             
  nop                                               #  20    0x7ca50  1      OPC=nop             
  nop                                               #  21    0x7ca51  1      OPC=nop             
  nop                                               #  22    0x7ca52  1      OPC=nop             
  nop                                               #  23    0x7ca53  1      OPC=nop             
  nop                                               #  24    0x7ca54  1      OPC=nop             
  nop                                               #  25    0x7ca55  1      OPC=nop             
  nop                                               #  26    0x7ca56  1      OPC=nop             
  nop                                               #  27    0x7ca57  1      OPC=nop             
  nop                                               #  28    0x7ca58  1      OPC=nop             
  nop                                               #  29    0x7ca59  1      OPC=nop             
  nop                                               #  30    0x7ca5a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0x7ca5b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0x7ca60  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0x7ca62  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0x7ca67  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0x7ca6a  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0x7ca6d  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0x7ca6e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0x7ca70  7      OPC=andl_r32_imm32  
  nop                                               #  39    0x7ca77  1      OPC=nop             
  nop                                               #  40    0x7ca78  1      OPC=nop             
  nop                                               #  41    0x7ca79  1      OPC=nop             
  nop                                               #  42    0x7ca7a  1      OPC=nop             
  addq %r15, %r11                                   #  43    0x7ca7b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0x7ca7e  3      OPC=jmpq_r64        
  nop                                               #  45    0x7ca81  1      OPC=nop             
  nop                                               #  46    0x7ca82  1      OPC=nop             
  nop                                               #  47    0x7ca83  1      OPC=nop             
  nop                                               #  48    0x7ca84  1      OPC=nop             
  nop                                               #  49    0x7ca85  1      OPC=nop             
  nop                                               #  50    0x7ca86  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0x7ca87  2      OPC=movl_r32_r32    
  movl %eax, (%rsp)                                 #  52    0x7ca89  3      OPC=movl_m32_r32    
  nop                                               #  53    0x7ca8c  1      OPC=nop             
  nop                                               #  54    0x7ca8d  1      OPC=nop             
  nop                                               #  55    0x7ca8e  1      OPC=nop             
  nop                                               #  56    0x7ca8f  1      OPC=nop             
  nop                                               #  57    0x7ca90  1      OPC=nop             
  nop                                               #  58    0x7ca91  1      OPC=nop             
  nop                                               #  59    0x7ca92  1      OPC=nop             
  nop                                               #  60    0x7ca93  1      OPC=nop             
  nop                                               #  61    0x7ca94  1      OPC=nop             
  nop                                               #  62    0x7ca95  1      OPC=nop             
  nop                                               #  63    0x7ca96  1      OPC=nop             
  nop                                               #  64    0x7ca97  1      OPC=nop             
  nop                                               #  65    0x7ca98  1      OPC=nop             
  nop                                               #  66    0x7ca99  1      OPC=nop             
  nop                                               #  67    0x7ca9a  1      OPC=nop             
  nop                                               #  68    0x7ca9b  1      OPC=nop             
  nop                                               #  69    0x7ca9c  1      OPC=nop             
  nop                                               #  70    0x7ca9d  1      OPC=nop             
  nop                                               #  71    0x7ca9e  1      OPC=nop             
  nop                                               #  72    0x7ca9f  1      OPC=nop             
  nop                                               #  73    0x7caa0  1      OPC=nop             
  nop                                               #  74    0x7caa1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  75    0x7caa2  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  76    0x7caa7  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  77    0x7caaa  2      OPC=movl_r32_r32    
  nop                                               #  78    0x7caac  1      OPC=nop             
  nop                                               #  79    0x7caad  1      OPC=nop             
  nop                                               #  80    0x7caae  1      OPC=nop             
  nop                                               #  81    0x7caaf  1      OPC=nop             
  nop                                               #  82    0x7cab0  1      OPC=nop             
  nop                                               #  83    0x7cab1  1      OPC=nop             
  nop                                               #  84    0x7cab2  1      OPC=nop             
  nop                                               #  85    0x7cab3  1      OPC=nop             
  nop                                               #  86    0x7cab4  1      OPC=nop             
  nop                                               #  87    0x7cab5  1      OPC=nop             
  nop                                               #  88    0x7cab6  1      OPC=nop             
  nop                                               #  89    0x7cab7  1      OPC=nop             
  nop                                               #  90    0x7cab8  1      OPC=nop             
  nop                                               #  91    0x7cab9  1      OPC=nop             
  nop                                               #  92    0x7caba  1      OPC=nop             
  nop                                               #  93    0x7cabb  1      OPC=nop             
  nop                                               #  94    0x7cabc  1      OPC=nop             
  nop                                               #  95    0x7cabd  1      OPC=nop             
  nop                                               #  96    0x7cabe  1      OPC=nop             
  nop                                               #  97    0x7cabf  1      OPC=nop             
  nop                                               #  98    0x7cac0  1      OPC=nop             
  nop                                               #  99    0x7cac1  1      OPC=nop             
  callq ._Unwind_Resume                             #  100   0x7cac2  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7collateIcEC1EPij, .-_ZNSt7collateIcEC1EPij

