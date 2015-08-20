  .text
  .globl _ZNSt5ctypeIwEC1EPij
  .type _ZNSt5ctypeIwEC1EPij, @function

#! file-offset 0x1251e0
#! rip-offset  0xe51e0
#! capacity    192 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt5ctypeIwEC1EPij:                              #        0xe51e0  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe51e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe51e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe51e3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe51e5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe51e8  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe51eb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe51ed  2      OPC=movl_r32_r32    
  movl $0x1003d5c8, (%r15,%rbx,1)                   #  8     0xe51ef  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe51f7  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe51fa  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe51fe  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe5200  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe5204  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe5206  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe520b  1      OPC=nop             
  nop                                               #  16    0xe520c  1      OPC=nop             
  nop                                               #  17    0xe520d  1      OPC=nop             
  nop                                               #  18    0xe520e  1      OPC=nop             
  nop                                               #  19    0xe520f  1      OPC=nop             
  nop                                               #  20    0xe5210  1      OPC=nop             
  nop                                               #  21    0xe5211  1      OPC=nop             
  nop                                               #  22    0xe5212  1      OPC=nop             
  nop                                               #  23    0xe5213  1      OPC=nop             
  nop                                               #  24    0xe5214  1      OPC=nop             
  nop                                               #  25    0xe5215  1      OPC=nop             
  nop                                               #  26    0xe5216  1      OPC=nop             
  nop                                               #  27    0xe5217  1      OPC=nop             
  nop                                               #  28    0xe5218  1      OPC=nop             
  nop                                               #  29    0xe5219  1      OPC=nop             
  nop                                               #  30    0xe521a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe521b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe5220  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe5222  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  34    0xe5227  2      OPC=movl_r32_r32    
  movb $0x0, 0xc(%r15,%rbx,1)                       #  35    0xe5229  6      OPC=movb_m8_imm8    
  movl %ebx, %edi                                   #  36    0xe522f  2      OPC=movl_r32_r32    
  nop                                               #  37    0xe5231  1      OPC=nop             
  nop                                               #  38    0xe5232  1      OPC=nop             
  nop                                               #  39    0xe5233  1      OPC=nop             
  nop                                               #  40    0xe5234  1      OPC=nop             
  nop                                               #  41    0xe5235  1      OPC=nop             
  nop                                               #  42    0xe5236  1      OPC=nop             
  nop                                               #  43    0xe5237  1      OPC=nop             
  nop                                               #  44    0xe5238  1      OPC=nop             
  nop                                               #  45    0xe5239  1      OPC=nop             
  nop                                               #  46    0xe523a  1      OPC=nop             
  callq ._ZNSt5ctypeIwE19_M_initialize_ctypeEv      #  47    0xe523b  5      OPC=callq_label     
  addl $0x10, %esp                                  #  48    0xe5240  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  49    0xe5243  3      OPC=addq_r64_r64    
  popq %rbx                                         #  50    0xe5246  1      OPC=popq_r64_1      
  popq %r11                                         #  51    0xe5247  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  52    0xe5249  7      OPC=andl_r32_imm32  
  nop                                               #  53    0xe5250  1      OPC=nop             
  nop                                               #  54    0xe5251  1      OPC=nop             
  nop                                               #  55    0xe5252  1      OPC=nop             
  nop                                               #  56    0xe5253  1      OPC=nop             
  addq %r15, %r11                                   #  57    0xe5254  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  58    0xe5257  3      OPC=jmpq_r64        
  nop                                               #  59    0xe525a  1      OPC=nop             
  nop                                               #  60    0xe525b  1      OPC=nop             
  nop                                               #  61    0xe525c  1      OPC=nop             
  nop                                               #  62    0xe525d  1      OPC=nop             
  nop                                               #  63    0xe525e  1      OPC=nop             
  nop                                               #  64    0xe525f  1      OPC=nop             
  nop                                               #  65    0xe5260  1      OPC=nop             
  nop                                               #  66    0xe5261  1      OPC=nop             
  nop                                               #  67    0xe5262  1      OPC=nop             
  nop                                               #  68    0xe5263  1      OPC=nop             
  nop                                               #  69    0xe5264  1      OPC=nop             
  nop                                               #  70    0xe5265  1      OPC=nop             
  nop                                               #  71    0xe5266  1      OPC=nop             
  movl %ebx, %edi                                   #  72    0xe5267  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  73    0xe5269  2      OPC=movl_r32_r32    
  movl $0x1003c268, (%r15,%rbx,1)                   #  74    0xe526b  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  75    0xe5273  3      OPC=movl_m32_r32    
  nop                                               #  76    0xe5276  1      OPC=nop             
  nop                                               #  77    0xe5277  1      OPC=nop             
  nop                                               #  78    0xe5278  1      OPC=nop             
  nop                                               #  79    0xe5279  1      OPC=nop             
  nop                                               #  80    0xe527a  1      OPC=nop             
  nop                                               #  81    0xe527b  1      OPC=nop             
  nop                                               #  82    0xe527c  1      OPC=nop             
  nop                                               #  83    0xe527d  1      OPC=nop             
  nop                                               #  84    0xe527e  1      OPC=nop             
  nop                                               #  85    0xe527f  1      OPC=nop             
  nop                                               #  86    0xe5280  1      OPC=nop             
  nop                                               #  87    0xe5281  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  88    0xe5282  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  89    0xe5287  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  90    0xe528a  2      OPC=movl_r32_r32    
  nop                                               #  91    0xe528c  1      OPC=nop             
  nop                                               #  92    0xe528d  1      OPC=nop             
  nop                                               #  93    0xe528e  1      OPC=nop             
  nop                                               #  94    0xe528f  1      OPC=nop             
  nop                                               #  95    0xe5290  1      OPC=nop             
  nop                                               #  96    0xe5291  1      OPC=nop             
  nop                                               #  97    0xe5292  1      OPC=nop             
  nop                                               #  98    0xe5293  1      OPC=nop             
  nop                                               #  99    0xe5294  1      OPC=nop             
  nop                                               #  100   0xe5295  1      OPC=nop             
  nop                                               #  101   0xe5296  1      OPC=nop             
  nop                                               #  102   0xe5297  1      OPC=nop             
  nop                                               #  103   0xe5298  1      OPC=nop             
  nop                                               #  104   0xe5299  1      OPC=nop             
  nop                                               #  105   0xe529a  1      OPC=nop             
  nop                                               #  106   0xe529b  1      OPC=nop             
  nop                                               #  107   0xe529c  1      OPC=nop             
  nop                                               #  108   0xe529d  1      OPC=nop             
  nop                                               #  109   0xe529e  1      OPC=nop             
  nop                                               #  110   0xe529f  1      OPC=nop             
  nop                                               #  111   0xe52a0  1      OPC=nop             
  nop                                               #  112   0xe52a1  1      OPC=nop             
  callq ._Unwind_Resume                             #  113   0xe52a2  5      OPC=callq_label     
                                                                                                 
.size _ZNSt5ctypeIwEC1EPij, .-_ZNSt5ctypeIwEC1EPij

