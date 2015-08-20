  .text
  .globl _ZNSt7collateIwEC2Ej
  .type _ZNSt7collateIwEC2Ej, @function

#! file-offset 0xf52a0
#! rip-offset  0xb52a0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwEC2Ej:                          #        0xb52a0  0      OPC=<label>         
  pushq %rbx                                    #  1     0xb52a0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xb52a1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xb52a3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xb52a5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xb52a8  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xb52ab  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xb52ad  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)               #  8     0xb52af  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xb52b7  3      OPC=setne_r8        
  nop                                           #  10    0xb52ba  1      OPC=nop             
  nop                                           #  11    0xb52bb  1      OPC=nop             
  nop                                           #  12    0xb52bc  1      OPC=nop             
  nop                                           #  13    0xb52bd  1      OPC=nop             
  nop                                           #  14    0xb52be  1      OPC=nop             
  nop                                           #  15    0xb52bf  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xb52c0  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xb52c2  5      OPC=movl_m32_r32    
  nop                                           #  18    0xb52c7  1      OPC=nop             
  nop                                           #  19    0xb52c8  1      OPC=nop             
  nop                                           #  20    0xb52c9  1      OPC=nop             
  nop                                           #  21    0xb52ca  1      OPC=nop             
  nop                                           #  22    0xb52cb  1      OPC=nop             
  nop                                           #  23    0xb52cc  1      OPC=nop             
  nop                                           #  24    0xb52cd  1      OPC=nop             
  nop                                           #  25    0xb52ce  1      OPC=nop             
  nop                                           #  26    0xb52cf  1      OPC=nop             
  nop                                           #  27    0xb52d0  1      OPC=nop             
  nop                                           #  28    0xb52d1  1      OPC=nop             
  nop                                           #  29    0xb52d2  1      OPC=nop             
  nop                                           #  30    0xb52d3  1      OPC=nop             
  nop                                           #  31    0xb52d4  1      OPC=nop             
  nop                                           #  32    0xb52d5  1      OPC=nop             
  nop                                           #  33    0xb52d6  1      OPC=nop             
  nop                                           #  34    0xb52d7  1      OPC=nop             
  nop                                           #  35    0xb52d8  1      OPC=nop             
  nop                                           #  36    0xb52d9  1      OPC=nop             
  nop                                           #  37    0xb52da  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xb52db  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xb52e0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xb52e2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xb52e7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xb52ea  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xb52ed  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xb52ee  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xb52f0  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xb52f7  1      OPC=nop             
  nop                                           #  47    0xb52f8  1      OPC=nop             
  nop                                           #  48    0xb52f9  1      OPC=nop             
  nop                                           #  49    0xb52fa  1      OPC=nop             
  addq %r15, %r11                               #  50    0xb52fb  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xb52fe  3      OPC=jmpq_r64        
  nop                                           #  52    0xb5301  1      OPC=nop             
  nop                                           #  53    0xb5302  1      OPC=nop             
  nop                                           #  54    0xb5303  1      OPC=nop             
  nop                                           #  55    0xb5304  1      OPC=nop             
  nop                                           #  56    0xb5305  1      OPC=nop             
  nop                                           #  57    0xb5306  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xb5307  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0xb5309  4      OPC=movl_m32_r32    
  nop                                           #  60    0xb530d  1      OPC=nop             
  nop                                           #  61    0xb530e  1      OPC=nop             
  nop                                           #  62    0xb530f  1      OPC=nop             
  nop                                           #  63    0xb5310  1      OPC=nop             
  nop                                           #  64    0xb5311  1      OPC=nop             
  nop                                           #  65    0xb5312  1      OPC=nop             
  nop                                           #  66    0xb5313  1      OPC=nop             
  nop                                           #  67    0xb5314  1      OPC=nop             
  nop                                           #  68    0xb5315  1      OPC=nop             
  nop                                           #  69    0xb5316  1      OPC=nop             
  nop                                           #  70    0xb5317  1      OPC=nop             
  nop                                           #  71    0xb5318  1      OPC=nop             
  nop                                           #  72    0xb5319  1      OPC=nop             
  nop                                           #  73    0xb531a  1      OPC=nop             
  nop                                           #  74    0xb531b  1      OPC=nop             
  nop                                           #  75    0xb531c  1      OPC=nop             
  nop                                           #  76    0xb531d  1      OPC=nop             
  nop                                           #  77    0xb531e  1      OPC=nop             
  nop                                           #  78    0xb531f  1      OPC=nop             
  nop                                           #  79    0xb5320  1      OPC=nop             
  nop                                           #  80    0xb5321  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0xb5322  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0xb5327  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0xb532b  2      OPC=movl_r32_r32    
  nop                                           #  84    0xb532d  1      OPC=nop             
  nop                                           #  85    0xb532e  1      OPC=nop             
  nop                                           #  86    0xb532f  1      OPC=nop             
  nop                                           #  87    0xb5330  1      OPC=nop             
  nop                                           #  88    0xb5331  1      OPC=nop             
  nop                                           #  89    0xb5332  1      OPC=nop             
  nop                                           #  90    0xb5333  1      OPC=nop             
  nop                                           #  91    0xb5334  1      OPC=nop             
  nop                                           #  92    0xb5335  1      OPC=nop             
  nop                                           #  93    0xb5336  1      OPC=nop             
  nop                                           #  94    0xb5337  1      OPC=nop             
  nop                                           #  95    0xb5338  1      OPC=nop             
  nop                                           #  96    0xb5339  1      OPC=nop             
  nop                                           #  97    0xb533a  1      OPC=nop             
  nop                                           #  98    0xb533b  1      OPC=nop             
  nop                                           #  99    0xb533c  1      OPC=nop             
  nop                                           #  100   0xb533d  1      OPC=nop             
  nop                                           #  101   0xb533e  1      OPC=nop             
  nop                                           #  102   0xb533f  1      OPC=nop             
  nop                                           #  103   0xb5340  1      OPC=nop             
  nop                                           #  104   0xb5341  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0xb5342  5      OPC=callq_label     
                                                                                             
.size _ZNSt7collateIwEC2Ej, .-_ZNSt7collateIwEC2Ej

