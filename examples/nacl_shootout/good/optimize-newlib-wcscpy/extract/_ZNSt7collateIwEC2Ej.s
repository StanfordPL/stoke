  .text
  .globl _ZNSt7collateIwEC2Ej
  .type _ZNSt7collateIwEC2Ej, @function

#! file-offset 0xf4fa0
#! rip-offset  0xb4fa0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwEC2Ej:                          #        0xb4fa0  0      OPC=<label>         
  pushq %rbx                                    #  1     0xb4fa0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xb4fa1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xb4fa3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xb4fa5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xb4fa8  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xb4fab  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xb4fad  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)               #  8     0xb4faf  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xb4fb7  3      OPC=setne_r8        
  nop                                           #  10    0xb4fba  1      OPC=nop             
  nop                                           #  11    0xb4fbb  1      OPC=nop             
  nop                                           #  12    0xb4fbc  1      OPC=nop             
  nop                                           #  13    0xb4fbd  1      OPC=nop             
  nop                                           #  14    0xb4fbe  1      OPC=nop             
  nop                                           #  15    0xb4fbf  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xb4fc0  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xb4fc2  5      OPC=movl_m32_r32    
  nop                                           #  18    0xb4fc7  1      OPC=nop             
  nop                                           #  19    0xb4fc8  1      OPC=nop             
  nop                                           #  20    0xb4fc9  1      OPC=nop             
  nop                                           #  21    0xb4fca  1      OPC=nop             
  nop                                           #  22    0xb4fcb  1      OPC=nop             
  nop                                           #  23    0xb4fcc  1      OPC=nop             
  nop                                           #  24    0xb4fcd  1      OPC=nop             
  nop                                           #  25    0xb4fce  1      OPC=nop             
  nop                                           #  26    0xb4fcf  1      OPC=nop             
  nop                                           #  27    0xb4fd0  1      OPC=nop             
  nop                                           #  28    0xb4fd1  1      OPC=nop             
  nop                                           #  29    0xb4fd2  1      OPC=nop             
  nop                                           #  30    0xb4fd3  1      OPC=nop             
  nop                                           #  31    0xb4fd4  1      OPC=nop             
  nop                                           #  32    0xb4fd5  1      OPC=nop             
  nop                                           #  33    0xb4fd6  1      OPC=nop             
  nop                                           #  34    0xb4fd7  1      OPC=nop             
  nop                                           #  35    0xb4fd8  1      OPC=nop             
  nop                                           #  36    0xb4fd9  1      OPC=nop             
  nop                                           #  37    0xb4fda  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xb4fdb  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xb4fe0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xb4fe2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xb4fe7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xb4fea  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xb4fed  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xb4fee  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xb4ff0  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xb4ff7  1      OPC=nop             
  nop                                           #  47    0xb4ff8  1      OPC=nop             
  nop                                           #  48    0xb4ff9  1      OPC=nop             
  nop                                           #  49    0xb4ffa  1      OPC=nop             
  addq %r15, %r11                               #  50    0xb4ffb  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xb4ffe  3      OPC=jmpq_r64        
  nop                                           #  52    0xb5001  1      OPC=nop             
  nop                                           #  53    0xb5002  1      OPC=nop             
  nop                                           #  54    0xb5003  1      OPC=nop             
  nop                                           #  55    0xb5004  1      OPC=nop             
  nop                                           #  56    0xb5005  1      OPC=nop             
  nop                                           #  57    0xb5006  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xb5007  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0xb5009  4      OPC=movl_m32_r32    
  nop                                           #  60    0xb500d  1      OPC=nop             
  nop                                           #  61    0xb500e  1      OPC=nop             
  nop                                           #  62    0xb500f  1      OPC=nop             
  nop                                           #  63    0xb5010  1      OPC=nop             
  nop                                           #  64    0xb5011  1      OPC=nop             
  nop                                           #  65    0xb5012  1      OPC=nop             
  nop                                           #  66    0xb5013  1      OPC=nop             
  nop                                           #  67    0xb5014  1      OPC=nop             
  nop                                           #  68    0xb5015  1      OPC=nop             
  nop                                           #  69    0xb5016  1      OPC=nop             
  nop                                           #  70    0xb5017  1      OPC=nop             
  nop                                           #  71    0xb5018  1      OPC=nop             
  nop                                           #  72    0xb5019  1      OPC=nop             
  nop                                           #  73    0xb501a  1      OPC=nop             
  nop                                           #  74    0xb501b  1      OPC=nop             
  nop                                           #  75    0xb501c  1      OPC=nop             
  nop                                           #  76    0xb501d  1      OPC=nop             
  nop                                           #  77    0xb501e  1      OPC=nop             
  nop                                           #  78    0xb501f  1      OPC=nop             
  nop                                           #  79    0xb5020  1      OPC=nop             
  nop                                           #  80    0xb5021  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0xb5022  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0xb5027  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0xb502b  2      OPC=movl_r32_r32    
  nop                                           #  84    0xb502d  1      OPC=nop             
  nop                                           #  85    0xb502e  1      OPC=nop             
  nop                                           #  86    0xb502f  1      OPC=nop             
  nop                                           #  87    0xb5030  1      OPC=nop             
  nop                                           #  88    0xb5031  1      OPC=nop             
  nop                                           #  89    0xb5032  1      OPC=nop             
  nop                                           #  90    0xb5033  1      OPC=nop             
  nop                                           #  91    0xb5034  1      OPC=nop             
  nop                                           #  92    0xb5035  1      OPC=nop             
  nop                                           #  93    0xb5036  1      OPC=nop             
  nop                                           #  94    0xb5037  1      OPC=nop             
  nop                                           #  95    0xb5038  1      OPC=nop             
  nop                                           #  96    0xb5039  1      OPC=nop             
  nop                                           #  97    0xb503a  1      OPC=nop             
  nop                                           #  98    0xb503b  1      OPC=nop             
  nop                                           #  99    0xb503c  1      OPC=nop             
  nop                                           #  100   0xb503d  1      OPC=nop             
  nop                                           #  101   0xb503e  1      OPC=nop             
  nop                                           #  102   0xb503f  1      OPC=nop             
  nop                                           #  103   0xb5040  1      OPC=nop             
  nop                                           #  104   0xb5041  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0xb5042  5      OPC=callq_label     
                                                                                             
.size _ZNSt7collateIwEC2Ej, .-_ZNSt7collateIwEC2Ej

