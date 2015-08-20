  .text
  .globl _ZNSt7collateIwEC1Ej
  .type _ZNSt7collateIwEC1Ej, @function

#! file-offset 0xf5200
#! rip-offset  0xb5200
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwEC1Ej:                          #        0xb5200  0      OPC=<label>         
  pushq %rbx                                    #  1     0xb5200  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xb5201  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xb5203  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xb5205  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xb5208  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xb520b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xb520d  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)               #  8     0xb520f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xb5217  3      OPC=setne_r8        
  nop                                           #  10    0xb521a  1      OPC=nop             
  nop                                           #  11    0xb521b  1      OPC=nop             
  nop                                           #  12    0xb521c  1      OPC=nop             
  nop                                           #  13    0xb521d  1      OPC=nop             
  nop                                           #  14    0xb521e  1      OPC=nop             
  nop                                           #  15    0xb521f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xb5220  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xb5222  5      OPC=movl_m32_r32    
  nop                                           #  18    0xb5227  1      OPC=nop             
  nop                                           #  19    0xb5228  1      OPC=nop             
  nop                                           #  20    0xb5229  1      OPC=nop             
  nop                                           #  21    0xb522a  1      OPC=nop             
  nop                                           #  22    0xb522b  1      OPC=nop             
  nop                                           #  23    0xb522c  1      OPC=nop             
  nop                                           #  24    0xb522d  1      OPC=nop             
  nop                                           #  25    0xb522e  1      OPC=nop             
  nop                                           #  26    0xb522f  1      OPC=nop             
  nop                                           #  27    0xb5230  1      OPC=nop             
  nop                                           #  28    0xb5231  1      OPC=nop             
  nop                                           #  29    0xb5232  1      OPC=nop             
  nop                                           #  30    0xb5233  1      OPC=nop             
  nop                                           #  31    0xb5234  1      OPC=nop             
  nop                                           #  32    0xb5235  1      OPC=nop             
  nop                                           #  33    0xb5236  1      OPC=nop             
  nop                                           #  34    0xb5237  1      OPC=nop             
  nop                                           #  35    0xb5238  1      OPC=nop             
  nop                                           #  36    0xb5239  1      OPC=nop             
  nop                                           #  37    0xb523a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xb523b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xb5240  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xb5242  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xb5247  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xb524a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xb524d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xb524e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xb5250  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xb5257  1      OPC=nop             
  nop                                           #  47    0xb5258  1      OPC=nop             
  nop                                           #  48    0xb5259  1      OPC=nop             
  nop                                           #  49    0xb525a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xb525b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xb525e  3      OPC=jmpq_r64        
  nop                                           #  52    0xb5261  1      OPC=nop             
  nop                                           #  53    0xb5262  1      OPC=nop             
  nop                                           #  54    0xb5263  1      OPC=nop             
  nop                                           #  55    0xb5264  1      OPC=nop             
  nop                                           #  56    0xb5265  1      OPC=nop             
  nop                                           #  57    0xb5266  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xb5267  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0xb5269  4      OPC=movl_m32_r32    
  nop                                           #  60    0xb526d  1      OPC=nop             
  nop                                           #  61    0xb526e  1      OPC=nop             
  nop                                           #  62    0xb526f  1      OPC=nop             
  nop                                           #  63    0xb5270  1      OPC=nop             
  nop                                           #  64    0xb5271  1      OPC=nop             
  nop                                           #  65    0xb5272  1      OPC=nop             
  nop                                           #  66    0xb5273  1      OPC=nop             
  nop                                           #  67    0xb5274  1      OPC=nop             
  nop                                           #  68    0xb5275  1      OPC=nop             
  nop                                           #  69    0xb5276  1      OPC=nop             
  nop                                           #  70    0xb5277  1      OPC=nop             
  nop                                           #  71    0xb5278  1      OPC=nop             
  nop                                           #  72    0xb5279  1      OPC=nop             
  nop                                           #  73    0xb527a  1      OPC=nop             
  nop                                           #  74    0xb527b  1      OPC=nop             
  nop                                           #  75    0xb527c  1      OPC=nop             
  nop                                           #  76    0xb527d  1      OPC=nop             
  nop                                           #  77    0xb527e  1      OPC=nop             
  nop                                           #  78    0xb527f  1      OPC=nop             
  nop                                           #  79    0xb5280  1      OPC=nop             
  nop                                           #  80    0xb5281  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0xb5282  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0xb5287  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0xb528b  2      OPC=movl_r32_r32    
  nop                                           #  84    0xb528d  1      OPC=nop             
  nop                                           #  85    0xb528e  1      OPC=nop             
  nop                                           #  86    0xb528f  1      OPC=nop             
  nop                                           #  87    0xb5290  1      OPC=nop             
  nop                                           #  88    0xb5291  1      OPC=nop             
  nop                                           #  89    0xb5292  1      OPC=nop             
  nop                                           #  90    0xb5293  1      OPC=nop             
  nop                                           #  91    0xb5294  1      OPC=nop             
  nop                                           #  92    0xb5295  1      OPC=nop             
  nop                                           #  93    0xb5296  1      OPC=nop             
  nop                                           #  94    0xb5297  1      OPC=nop             
  nop                                           #  95    0xb5298  1      OPC=nop             
  nop                                           #  96    0xb5299  1      OPC=nop             
  nop                                           #  97    0xb529a  1      OPC=nop             
  nop                                           #  98    0xb529b  1      OPC=nop             
  nop                                           #  99    0xb529c  1      OPC=nop             
  nop                                           #  100   0xb529d  1      OPC=nop             
  nop                                           #  101   0xb529e  1      OPC=nop             
  nop                                           #  102   0xb529f  1      OPC=nop             
  nop                                           #  103   0xb52a0  1      OPC=nop             
  nop                                           #  104   0xb52a1  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0xb52a2  5      OPC=callq_label     
                                                                                             
.size _ZNSt7collateIwEC1Ej, .-_ZNSt7collateIwEC1Ej

