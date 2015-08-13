  .text
  .globl _ZNSt8messagesIwEC1Ej
  .type _ZNSt8messagesIwEC1Ej, @function

#! file-offset 0xf5180
#! rip-offset  0xb5180
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwEC1Ej:                         #        0xb5180  0      OPC=<label>         
  pushq %rbx                                    #  1     0xb5180  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xb5181  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xb5183  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xb5185  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xb5188  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xb518b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xb518d  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)               #  8     0xb518f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xb5197  3      OPC=setne_r8        
  nop                                           #  10    0xb519a  1      OPC=nop             
  nop                                           #  11    0xb519b  1      OPC=nop             
  nop                                           #  12    0xb519c  1      OPC=nop             
  nop                                           #  13    0xb519d  1      OPC=nop             
  nop                                           #  14    0xb519e  1      OPC=nop             
  nop                                           #  15    0xb519f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xb51a0  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xb51a2  5      OPC=movl_m32_r32    
  nop                                           #  18    0xb51a7  1      OPC=nop             
  nop                                           #  19    0xb51a8  1      OPC=nop             
  nop                                           #  20    0xb51a9  1      OPC=nop             
  nop                                           #  21    0xb51aa  1      OPC=nop             
  nop                                           #  22    0xb51ab  1      OPC=nop             
  nop                                           #  23    0xb51ac  1      OPC=nop             
  nop                                           #  24    0xb51ad  1      OPC=nop             
  nop                                           #  25    0xb51ae  1      OPC=nop             
  nop                                           #  26    0xb51af  1      OPC=nop             
  nop                                           #  27    0xb51b0  1      OPC=nop             
  nop                                           #  28    0xb51b1  1      OPC=nop             
  nop                                           #  29    0xb51b2  1      OPC=nop             
  nop                                           #  30    0xb51b3  1      OPC=nop             
  nop                                           #  31    0xb51b4  1      OPC=nop             
  nop                                           #  32    0xb51b5  1      OPC=nop             
  nop                                           #  33    0xb51b6  1      OPC=nop             
  nop                                           #  34    0xb51b7  1      OPC=nop             
  nop                                           #  35    0xb51b8  1      OPC=nop             
  nop                                           #  36    0xb51b9  1      OPC=nop             
  nop                                           #  37    0xb51ba  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xb51bb  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xb51c0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xb51c2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xb51c7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xb51ca  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xb51cd  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xb51ce  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xb51d0  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xb51d7  1      OPC=nop             
  nop                                           #  47    0xb51d8  1      OPC=nop             
  nop                                           #  48    0xb51d9  1      OPC=nop             
  nop                                           #  49    0xb51da  1      OPC=nop             
  addq %r15, %r11                               #  50    0xb51db  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xb51de  3      OPC=jmpq_r64        
  nop                                           #  52    0xb51e1  1      OPC=nop             
  nop                                           #  53    0xb51e2  1      OPC=nop             
  nop                                           #  54    0xb51e3  1      OPC=nop             
  nop                                           #  55    0xb51e4  1      OPC=nop             
  nop                                           #  56    0xb51e5  1      OPC=nop             
  nop                                           #  57    0xb51e6  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xb51e7  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0xb51e9  4      OPC=movl_m32_r32    
  nop                                           #  60    0xb51ed  1      OPC=nop             
  nop                                           #  61    0xb51ee  1      OPC=nop             
  nop                                           #  62    0xb51ef  1      OPC=nop             
  nop                                           #  63    0xb51f0  1      OPC=nop             
  nop                                           #  64    0xb51f1  1      OPC=nop             
  nop                                           #  65    0xb51f2  1      OPC=nop             
  nop                                           #  66    0xb51f3  1      OPC=nop             
  nop                                           #  67    0xb51f4  1      OPC=nop             
  nop                                           #  68    0xb51f5  1      OPC=nop             
  nop                                           #  69    0xb51f6  1      OPC=nop             
  nop                                           #  70    0xb51f7  1      OPC=nop             
  nop                                           #  71    0xb51f8  1      OPC=nop             
  nop                                           #  72    0xb51f9  1      OPC=nop             
  nop                                           #  73    0xb51fa  1      OPC=nop             
  nop                                           #  74    0xb51fb  1      OPC=nop             
  nop                                           #  75    0xb51fc  1      OPC=nop             
  nop                                           #  76    0xb51fd  1      OPC=nop             
  nop                                           #  77    0xb51fe  1      OPC=nop             
  nop                                           #  78    0xb51ff  1      OPC=nop             
  nop                                           #  79    0xb5200  1      OPC=nop             
  nop                                           #  80    0xb5201  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0xb5202  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0xb5207  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0xb520b  2      OPC=movl_r32_r32    
  nop                                           #  84    0xb520d  1      OPC=nop             
  nop                                           #  85    0xb520e  1      OPC=nop             
  nop                                           #  86    0xb520f  1      OPC=nop             
  nop                                           #  87    0xb5210  1      OPC=nop             
  nop                                           #  88    0xb5211  1      OPC=nop             
  nop                                           #  89    0xb5212  1      OPC=nop             
  nop                                           #  90    0xb5213  1      OPC=nop             
  nop                                           #  91    0xb5214  1      OPC=nop             
  nop                                           #  92    0xb5215  1      OPC=nop             
  nop                                           #  93    0xb5216  1      OPC=nop             
  nop                                           #  94    0xb5217  1      OPC=nop             
  nop                                           #  95    0xb5218  1      OPC=nop             
  nop                                           #  96    0xb5219  1      OPC=nop             
  nop                                           #  97    0xb521a  1      OPC=nop             
  nop                                           #  98    0xb521b  1      OPC=nop             
  nop                                           #  99    0xb521c  1      OPC=nop             
  nop                                           #  100   0xb521d  1      OPC=nop             
  nop                                           #  101   0xb521e  1      OPC=nop             
  nop                                           #  102   0xb521f  1      OPC=nop             
  nop                                           #  103   0xb5220  1      OPC=nop             
  nop                                           #  104   0xb5221  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0xb5222  5      OPC=callq_label     
                                                                                             
.size _ZNSt8messagesIwEC1Ej, .-_ZNSt8messagesIwEC1Ej

