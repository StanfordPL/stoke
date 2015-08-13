  .text
  .globl _ZNSt7collateIcEC2Ej
  .type _ZNSt7collateIcEC2Ej, @function

#! file-offset 0xbc1e0
#! rip-offset  0x7c1e0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcEC2Ej:                          #        0x7c1e0  0      OPC=<label>         
  pushq %rbx                                    #  1     0x7c1e0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0x7c1e1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0x7c1e3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0x7c1e5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0x7c1e8  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0x7c1eb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0x7c1ed  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)               #  8     0x7c1ef  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0x7c1f7  3      OPC=setne_r8        
  nop                                           #  10    0x7c1fa  1      OPC=nop             
  nop                                           #  11    0x7c1fb  1      OPC=nop             
  nop                                           #  12    0x7c1fc  1      OPC=nop             
  nop                                           #  13    0x7c1fd  1      OPC=nop             
  nop                                           #  14    0x7c1fe  1      OPC=nop             
  nop                                           #  15    0x7c1ff  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0x7c200  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0x7c202  5      OPC=movl_m32_r32    
  nop                                           #  18    0x7c207  1      OPC=nop             
  nop                                           #  19    0x7c208  1      OPC=nop             
  nop                                           #  20    0x7c209  1      OPC=nop             
  nop                                           #  21    0x7c20a  1      OPC=nop             
  nop                                           #  22    0x7c20b  1      OPC=nop             
  nop                                           #  23    0x7c20c  1      OPC=nop             
  nop                                           #  24    0x7c20d  1      OPC=nop             
  nop                                           #  25    0x7c20e  1      OPC=nop             
  nop                                           #  26    0x7c20f  1      OPC=nop             
  nop                                           #  27    0x7c210  1      OPC=nop             
  nop                                           #  28    0x7c211  1      OPC=nop             
  nop                                           #  29    0x7c212  1      OPC=nop             
  nop                                           #  30    0x7c213  1      OPC=nop             
  nop                                           #  31    0x7c214  1      OPC=nop             
  nop                                           #  32    0x7c215  1      OPC=nop             
  nop                                           #  33    0x7c216  1      OPC=nop             
  nop                                           #  34    0x7c217  1      OPC=nop             
  nop                                           #  35    0x7c218  1      OPC=nop             
  nop                                           #  36    0x7c219  1      OPC=nop             
  nop                                           #  37    0x7c21a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0x7c21b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0x7c220  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0x7c222  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0x7c227  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0x7c22a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0x7c22d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0x7c22e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0x7c230  7      OPC=andl_r32_imm32  
  nop                                           #  46    0x7c237  1      OPC=nop             
  nop                                           #  47    0x7c238  1      OPC=nop             
  nop                                           #  48    0x7c239  1      OPC=nop             
  nop                                           #  49    0x7c23a  1      OPC=nop             
  addq %r15, %r11                               #  50    0x7c23b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0x7c23e  3      OPC=jmpq_r64        
  nop                                           #  52    0x7c241  1      OPC=nop             
  nop                                           #  53    0x7c242  1      OPC=nop             
  nop                                           #  54    0x7c243  1      OPC=nop             
  nop                                           #  55    0x7c244  1      OPC=nop             
  nop                                           #  56    0x7c245  1      OPC=nop             
  nop                                           #  57    0x7c246  1      OPC=nop             
  movl %ebx, %edi                               #  58    0x7c247  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0x7c249  4      OPC=movl_m32_r32    
  nop                                           #  60    0x7c24d  1      OPC=nop             
  nop                                           #  61    0x7c24e  1      OPC=nop             
  nop                                           #  62    0x7c24f  1      OPC=nop             
  nop                                           #  63    0x7c250  1      OPC=nop             
  nop                                           #  64    0x7c251  1      OPC=nop             
  nop                                           #  65    0x7c252  1      OPC=nop             
  nop                                           #  66    0x7c253  1      OPC=nop             
  nop                                           #  67    0x7c254  1      OPC=nop             
  nop                                           #  68    0x7c255  1      OPC=nop             
  nop                                           #  69    0x7c256  1      OPC=nop             
  nop                                           #  70    0x7c257  1      OPC=nop             
  nop                                           #  71    0x7c258  1      OPC=nop             
  nop                                           #  72    0x7c259  1      OPC=nop             
  nop                                           #  73    0x7c25a  1      OPC=nop             
  nop                                           #  74    0x7c25b  1      OPC=nop             
  nop                                           #  75    0x7c25c  1      OPC=nop             
  nop                                           #  76    0x7c25d  1      OPC=nop             
  nop                                           #  77    0x7c25e  1      OPC=nop             
  nop                                           #  78    0x7c25f  1      OPC=nop             
  nop                                           #  79    0x7c260  1      OPC=nop             
  nop                                           #  80    0x7c261  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0x7c262  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0x7c267  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0x7c26b  2      OPC=movl_r32_r32    
  nop                                           #  84    0x7c26d  1      OPC=nop             
  nop                                           #  85    0x7c26e  1      OPC=nop             
  nop                                           #  86    0x7c26f  1      OPC=nop             
  nop                                           #  87    0x7c270  1      OPC=nop             
  nop                                           #  88    0x7c271  1      OPC=nop             
  nop                                           #  89    0x7c272  1      OPC=nop             
  nop                                           #  90    0x7c273  1      OPC=nop             
  nop                                           #  91    0x7c274  1      OPC=nop             
  nop                                           #  92    0x7c275  1      OPC=nop             
  nop                                           #  93    0x7c276  1      OPC=nop             
  nop                                           #  94    0x7c277  1      OPC=nop             
  nop                                           #  95    0x7c278  1      OPC=nop             
  nop                                           #  96    0x7c279  1      OPC=nop             
  nop                                           #  97    0x7c27a  1      OPC=nop             
  nop                                           #  98    0x7c27b  1      OPC=nop             
  nop                                           #  99    0x7c27c  1      OPC=nop             
  nop                                           #  100   0x7c27d  1      OPC=nop             
  nop                                           #  101   0x7c27e  1      OPC=nop             
  nop                                           #  102   0x7c27f  1      OPC=nop             
  nop                                           #  103   0x7c280  1      OPC=nop             
  nop                                           #  104   0x7c281  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0x7c282  5      OPC=callq_label     
                                                                                             
.size _ZNSt7collateIcEC2Ej, .-_ZNSt7collateIcEC2Ej

