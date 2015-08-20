  .text
  .globl _ZNSt7collateIcEC1Ej
  .type _ZNSt7collateIcEC1Ej, @function

#! file-offset 0xbc440
#! rip-offset  0x7c440
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcEC1Ej:                          #        0x7c440  0      OPC=<label>         
  pushq %rbx                                    #  1     0x7c440  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0x7c441  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0x7c443  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0x7c445  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0x7c448  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0x7c44b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0x7c44d  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)               #  8     0x7c44f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0x7c457  3      OPC=setne_r8        
  nop                                           #  10    0x7c45a  1      OPC=nop             
  nop                                           #  11    0x7c45b  1      OPC=nop             
  nop                                           #  12    0x7c45c  1      OPC=nop             
  nop                                           #  13    0x7c45d  1      OPC=nop             
  nop                                           #  14    0x7c45e  1      OPC=nop             
  nop                                           #  15    0x7c45f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0x7c460  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0x7c462  5      OPC=movl_m32_r32    
  nop                                           #  18    0x7c467  1      OPC=nop             
  nop                                           #  19    0x7c468  1      OPC=nop             
  nop                                           #  20    0x7c469  1      OPC=nop             
  nop                                           #  21    0x7c46a  1      OPC=nop             
  nop                                           #  22    0x7c46b  1      OPC=nop             
  nop                                           #  23    0x7c46c  1      OPC=nop             
  nop                                           #  24    0x7c46d  1      OPC=nop             
  nop                                           #  25    0x7c46e  1      OPC=nop             
  nop                                           #  26    0x7c46f  1      OPC=nop             
  nop                                           #  27    0x7c470  1      OPC=nop             
  nop                                           #  28    0x7c471  1      OPC=nop             
  nop                                           #  29    0x7c472  1      OPC=nop             
  nop                                           #  30    0x7c473  1      OPC=nop             
  nop                                           #  31    0x7c474  1      OPC=nop             
  nop                                           #  32    0x7c475  1      OPC=nop             
  nop                                           #  33    0x7c476  1      OPC=nop             
  nop                                           #  34    0x7c477  1      OPC=nop             
  nop                                           #  35    0x7c478  1      OPC=nop             
  nop                                           #  36    0x7c479  1      OPC=nop             
  nop                                           #  37    0x7c47a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0x7c47b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0x7c480  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0x7c482  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0x7c487  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0x7c48a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0x7c48d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0x7c48e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0x7c490  7      OPC=andl_r32_imm32  
  nop                                           #  46    0x7c497  1      OPC=nop             
  nop                                           #  47    0x7c498  1      OPC=nop             
  nop                                           #  48    0x7c499  1      OPC=nop             
  nop                                           #  49    0x7c49a  1      OPC=nop             
  addq %r15, %r11                               #  50    0x7c49b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0x7c49e  3      OPC=jmpq_r64        
  nop                                           #  52    0x7c4a1  1      OPC=nop             
  nop                                           #  53    0x7c4a2  1      OPC=nop             
  nop                                           #  54    0x7c4a3  1      OPC=nop             
  nop                                           #  55    0x7c4a4  1      OPC=nop             
  nop                                           #  56    0x7c4a5  1      OPC=nop             
  nop                                           #  57    0x7c4a6  1      OPC=nop             
  movl %ebx, %edi                               #  58    0x7c4a7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0x7c4a9  4      OPC=movl_m32_r32    
  nop                                           #  60    0x7c4ad  1      OPC=nop             
  nop                                           #  61    0x7c4ae  1      OPC=nop             
  nop                                           #  62    0x7c4af  1      OPC=nop             
  nop                                           #  63    0x7c4b0  1      OPC=nop             
  nop                                           #  64    0x7c4b1  1      OPC=nop             
  nop                                           #  65    0x7c4b2  1      OPC=nop             
  nop                                           #  66    0x7c4b3  1      OPC=nop             
  nop                                           #  67    0x7c4b4  1      OPC=nop             
  nop                                           #  68    0x7c4b5  1      OPC=nop             
  nop                                           #  69    0x7c4b6  1      OPC=nop             
  nop                                           #  70    0x7c4b7  1      OPC=nop             
  nop                                           #  71    0x7c4b8  1      OPC=nop             
  nop                                           #  72    0x7c4b9  1      OPC=nop             
  nop                                           #  73    0x7c4ba  1      OPC=nop             
  nop                                           #  74    0x7c4bb  1      OPC=nop             
  nop                                           #  75    0x7c4bc  1      OPC=nop             
  nop                                           #  76    0x7c4bd  1      OPC=nop             
  nop                                           #  77    0x7c4be  1      OPC=nop             
  nop                                           #  78    0x7c4bf  1      OPC=nop             
  nop                                           #  79    0x7c4c0  1      OPC=nop             
  nop                                           #  80    0x7c4c1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0x7c4c2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0x7c4c7  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0x7c4cb  2      OPC=movl_r32_r32    
  nop                                           #  84    0x7c4cd  1      OPC=nop             
  nop                                           #  85    0x7c4ce  1      OPC=nop             
  nop                                           #  86    0x7c4cf  1      OPC=nop             
  nop                                           #  87    0x7c4d0  1      OPC=nop             
  nop                                           #  88    0x7c4d1  1      OPC=nop             
  nop                                           #  89    0x7c4d2  1      OPC=nop             
  nop                                           #  90    0x7c4d3  1      OPC=nop             
  nop                                           #  91    0x7c4d4  1      OPC=nop             
  nop                                           #  92    0x7c4d5  1      OPC=nop             
  nop                                           #  93    0x7c4d6  1      OPC=nop             
  nop                                           #  94    0x7c4d7  1      OPC=nop             
  nop                                           #  95    0x7c4d8  1      OPC=nop             
  nop                                           #  96    0x7c4d9  1      OPC=nop             
  nop                                           #  97    0x7c4da  1      OPC=nop             
  nop                                           #  98    0x7c4db  1      OPC=nop             
  nop                                           #  99    0x7c4dc  1      OPC=nop             
  nop                                           #  100   0x7c4dd  1      OPC=nop             
  nop                                           #  101   0x7c4de  1      OPC=nop             
  nop                                           #  102   0x7c4df  1      OPC=nop             
  nop                                           #  103   0x7c4e0  1      OPC=nop             
  nop                                           #  104   0x7c4e1  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0x7c4e2  5      OPC=callq_label     
                                                                                             
.size _ZNSt7collateIcEC1Ej, .-_ZNSt7collateIcEC1Ej

