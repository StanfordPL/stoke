  .text
  .globl _ZNSt7collateIcEC1Ej
  .type _ZNSt7collateIcEC1Ej, @function

#! file-offset 0xbc140
#! rip-offset  0x7c140
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcEC1Ej:                          #        0x7c140  0      OPC=<label>         
  pushq %rbx                                    #  1     0x7c140  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0x7c141  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0x7c143  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0x7c145  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0x7c148  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0x7c14b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0x7c14d  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)               #  8     0x7c14f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0x7c157  3      OPC=setne_r8        
  nop                                           #  10    0x7c15a  1      OPC=nop             
  nop                                           #  11    0x7c15b  1      OPC=nop             
  nop                                           #  12    0x7c15c  1      OPC=nop             
  nop                                           #  13    0x7c15d  1      OPC=nop             
  nop                                           #  14    0x7c15e  1      OPC=nop             
  nop                                           #  15    0x7c15f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0x7c160  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0x7c162  5      OPC=movl_m32_r32    
  nop                                           #  18    0x7c167  1      OPC=nop             
  nop                                           #  19    0x7c168  1      OPC=nop             
  nop                                           #  20    0x7c169  1      OPC=nop             
  nop                                           #  21    0x7c16a  1      OPC=nop             
  nop                                           #  22    0x7c16b  1      OPC=nop             
  nop                                           #  23    0x7c16c  1      OPC=nop             
  nop                                           #  24    0x7c16d  1      OPC=nop             
  nop                                           #  25    0x7c16e  1      OPC=nop             
  nop                                           #  26    0x7c16f  1      OPC=nop             
  nop                                           #  27    0x7c170  1      OPC=nop             
  nop                                           #  28    0x7c171  1      OPC=nop             
  nop                                           #  29    0x7c172  1      OPC=nop             
  nop                                           #  30    0x7c173  1      OPC=nop             
  nop                                           #  31    0x7c174  1      OPC=nop             
  nop                                           #  32    0x7c175  1      OPC=nop             
  nop                                           #  33    0x7c176  1      OPC=nop             
  nop                                           #  34    0x7c177  1      OPC=nop             
  nop                                           #  35    0x7c178  1      OPC=nop             
  nop                                           #  36    0x7c179  1      OPC=nop             
  nop                                           #  37    0x7c17a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0x7c17b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0x7c180  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0x7c182  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0x7c187  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0x7c18a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0x7c18d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0x7c18e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0x7c190  7      OPC=andl_r32_imm32  
  nop                                           #  46    0x7c197  1      OPC=nop             
  nop                                           #  47    0x7c198  1      OPC=nop             
  nop                                           #  48    0x7c199  1      OPC=nop             
  nop                                           #  49    0x7c19a  1      OPC=nop             
  addq %r15, %r11                               #  50    0x7c19b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0x7c19e  3      OPC=jmpq_r64        
  nop                                           #  52    0x7c1a1  1      OPC=nop             
  nop                                           #  53    0x7c1a2  1      OPC=nop             
  nop                                           #  54    0x7c1a3  1      OPC=nop             
  nop                                           #  55    0x7c1a4  1      OPC=nop             
  nop                                           #  56    0x7c1a5  1      OPC=nop             
  nop                                           #  57    0x7c1a6  1      OPC=nop             
  movl %ebx, %edi                               #  58    0x7c1a7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0x7c1a9  4      OPC=movl_m32_r32    
  nop                                           #  60    0x7c1ad  1      OPC=nop             
  nop                                           #  61    0x7c1ae  1      OPC=nop             
  nop                                           #  62    0x7c1af  1      OPC=nop             
  nop                                           #  63    0x7c1b0  1      OPC=nop             
  nop                                           #  64    0x7c1b1  1      OPC=nop             
  nop                                           #  65    0x7c1b2  1      OPC=nop             
  nop                                           #  66    0x7c1b3  1      OPC=nop             
  nop                                           #  67    0x7c1b4  1      OPC=nop             
  nop                                           #  68    0x7c1b5  1      OPC=nop             
  nop                                           #  69    0x7c1b6  1      OPC=nop             
  nop                                           #  70    0x7c1b7  1      OPC=nop             
  nop                                           #  71    0x7c1b8  1      OPC=nop             
  nop                                           #  72    0x7c1b9  1      OPC=nop             
  nop                                           #  73    0x7c1ba  1      OPC=nop             
  nop                                           #  74    0x7c1bb  1      OPC=nop             
  nop                                           #  75    0x7c1bc  1      OPC=nop             
  nop                                           #  76    0x7c1bd  1      OPC=nop             
  nop                                           #  77    0x7c1be  1      OPC=nop             
  nop                                           #  78    0x7c1bf  1      OPC=nop             
  nop                                           #  79    0x7c1c0  1      OPC=nop             
  nop                                           #  80    0x7c1c1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0x7c1c2  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0x7c1c7  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0x7c1cb  2      OPC=movl_r32_r32    
  nop                                           #  84    0x7c1cd  1      OPC=nop             
  nop                                           #  85    0x7c1ce  1      OPC=nop             
  nop                                           #  86    0x7c1cf  1      OPC=nop             
  nop                                           #  87    0x7c1d0  1      OPC=nop             
  nop                                           #  88    0x7c1d1  1      OPC=nop             
  nop                                           #  89    0x7c1d2  1      OPC=nop             
  nop                                           #  90    0x7c1d3  1      OPC=nop             
  nop                                           #  91    0x7c1d4  1      OPC=nop             
  nop                                           #  92    0x7c1d5  1      OPC=nop             
  nop                                           #  93    0x7c1d6  1      OPC=nop             
  nop                                           #  94    0x7c1d7  1      OPC=nop             
  nop                                           #  95    0x7c1d8  1      OPC=nop             
  nop                                           #  96    0x7c1d9  1      OPC=nop             
  nop                                           #  97    0x7c1da  1      OPC=nop             
  nop                                           #  98    0x7c1db  1      OPC=nop             
  nop                                           #  99    0x7c1dc  1      OPC=nop             
  nop                                           #  100   0x7c1dd  1      OPC=nop             
  nop                                           #  101   0x7c1de  1      OPC=nop             
  nop                                           #  102   0x7c1df  1      OPC=nop             
  nop                                           #  103   0x7c1e0  1      OPC=nop             
  nop                                           #  104   0x7c1e1  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0x7c1e2  5      OPC=callq_label     
                                                                                             
.size _ZNSt7collateIcEC1Ej, .-_ZNSt7collateIcEC1Ej

