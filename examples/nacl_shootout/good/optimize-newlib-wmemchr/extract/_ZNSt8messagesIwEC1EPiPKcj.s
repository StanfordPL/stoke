  .text
  .globl _ZNSt8messagesIwEC1EPiPKcj
  .type _ZNSt8messagesIwEC1EPiPKcj, @function

#! file-offset 0xf5340
#! rip-offset  0xb5340
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwEC1EPiPKcj:                    #        0xb5340  0      OPC=<label>         
  pushq %rbx                                    #  1     0xb5340  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xb5341  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xb5343  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xb5345  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xb5348  3      OPC=addq_r64_r64    
  testl %ecx, %ecx                              #  6     0xb534b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xb534d  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)               #  8     0xb534f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xb5357  3      OPC=setne_r8        
  nop                                           #  10    0xb535a  1      OPC=nop             
  nop                                           #  11    0xb535b  1      OPC=nop             
  nop                                           #  12    0xb535c  1      OPC=nop             
  nop                                           #  13    0xb535d  1      OPC=nop             
  nop                                           #  14    0xb535e  1      OPC=nop             
  nop                                           #  15    0xb535f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xb5360  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xb5362  5      OPC=movl_m32_r32    
  nop                                           #  18    0xb5367  1      OPC=nop             
  nop                                           #  19    0xb5368  1      OPC=nop             
  nop                                           #  20    0xb5369  1      OPC=nop             
  nop                                           #  21    0xb536a  1      OPC=nop             
  nop                                           #  22    0xb536b  1      OPC=nop             
  nop                                           #  23    0xb536c  1      OPC=nop             
  nop                                           #  24    0xb536d  1      OPC=nop             
  nop                                           #  25    0xb536e  1      OPC=nop             
  nop                                           #  26    0xb536f  1      OPC=nop             
  nop                                           #  27    0xb5370  1      OPC=nop             
  nop                                           #  28    0xb5371  1      OPC=nop             
  nop                                           #  29    0xb5372  1      OPC=nop             
  nop                                           #  30    0xb5373  1      OPC=nop             
  nop                                           #  31    0xb5374  1      OPC=nop             
  nop                                           #  32    0xb5375  1      OPC=nop             
  nop                                           #  33    0xb5376  1      OPC=nop             
  nop                                           #  34    0xb5377  1      OPC=nop             
  nop                                           #  35    0xb5378  1      OPC=nop             
  nop                                           #  36    0xb5379  1      OPC=nop             
  nop                                           #  37    0xb537a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xb537b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xb5380  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xb5382  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xb5387  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xb538a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xb538d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xb538e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xb5390  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xb5397  1      OPC=nop             
  nop                                           #  47    0xb5398  1      OPC=nop             
  nop                                           #  48    0xb5399  1      OPC=nop             
  nop                                           #  49    0xb539a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xb539b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xb539e  3      OPC=jmpq_r64        
  nop                                           #  52    0xb53a1  1      OPC=nop             
  nop                                           #  53    0xb53a2  1      OPC=nop             
  nop                                           #  54    0xb53a3  1      OPC=nop             
  nop                                           #  55    0xb53a4  1      OPC=nop             
  nop                                           #  56    0xb53a5  1      OPC=nop             
  nop                                           #  57    0xb53a6  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xb53a7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0xb53a9  4      OPC=movl_m32_r32    
  nop                                           #  60    0xb53ad  1      OPC=nop             
  nop                                           #  61    0xb53ae  1      OPC=nop             
  nop                                           #  62    0xb53af  1      OPC=nop             
  nop                                           #  63    0xb53b0  1      OPC=nop             
  nop                                           #  64    0xb53b1  1      OPC=nop             
  nop                                           #  65    0xb53b2  1      OPC=nop             
  nop                                           #  66    0xb53b3  1      OPC=nop             
  nop                                           #  67    0xb53b4  1      OPC=nop             
  nop                                           #  68    0xb53b5  1      OPC=nop             
  nop                                           #  69    0xb53b6  1      OPC=nop             
  nop                                           #  70    0xb53b7  1      OPC=nop             
  nop                                           #  71    0xb53b8  1      OPC=nop             
  nop                                           #  72    0xb53b9  1      OPC=nop             
  nop                                           #  73    0xb53ba  1      OPC=nop             
  nop                                           #  74    0xb53bb  1      OPC=nop             
  nop                                           #  75    0xb53bc  1      OPC=nop             
  nop                                           #  76    0xb53bd  1      OPC=nop             
  nop                                           #  77    0xb53be  1      OPC=nop             
  nop                                           #  78    0xb53bf  1      OPC=nop             
  nop                                           #  79    0xb53c0  1      OPC=nop             
  nop                                           #  80    0xb53c1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0xb53c2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0xb53c7  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0xb53cb  2      OPC=movl_r32_r32    
  nop                                           #  84    0xb53cd  1      OPC=nop             
  nop                                           #  85    0xb53ce  1      OPC=nop             
  nop                                           #  86    0xb53cf  1      OPC=nop             
  nop                                           #  87    0xb53d0  1      OPC=nop             
  nop                                           #  88    0xb53d1  1      OPC=nop             
  nop                                           #  89    0xb53d2  1      OPC=nop             
  nop                                           #  90    0xb53d3  1      OPC=nop             
  nop                                           #  91    0xb53d4  1      OPC=nop             
  nop                                           #  92    0xb53d5  1      OPC=nop             
  nop                                           #  93    0xb53d6  1      OPC=nop             
  nop                                           #  94    0xb53d7  1      OPC=nop             
  nop                                           #  95    0xb53d8  1      OPC=nop             
  nop                                           #  96    0xb53d9  1      OPC=nop             
  nop                                           #  97    0xb53da  1      OPC=nop             
  nop                                           #  98    0xb53db  1      OPC=nop             
  nop                                           #  99    0xb53dc  1      OPC=nop             
  nop                                           #  100   0xb53dd  1      OPC=nop             
  nop                                           #  101   0xb53de  1      OPC=nop             
  nop                                           #  102   0xb53df  1      OPC=nop             
  nop                                           #  103   0xb53e0  1      OPC=nop             
  nop                                           #  104   0xb53e1  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0xb53e2  5      OPC=callq_label     
                                                                                             
.size _ZNSt8messagesIwEC1EPiPKcj, .-_ZNSt8messagesIwEC1EPiPKcj

