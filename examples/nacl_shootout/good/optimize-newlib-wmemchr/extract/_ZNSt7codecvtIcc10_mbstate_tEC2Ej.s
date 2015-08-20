  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tEC2Ej
  .type _ZNSt7codecvtIcc10_mbstate_tEC2Ej, @function

#! file-offset 0x1241a0
#! rip-offset  0xe41a0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tEC2Ej:             #        0xe41a0  0      OPC=<label>         
  pushq %rbx                                    #  1     0xe41a0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xe41a1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xe41a3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xe41a5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xe41a8  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xe41ab  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xe41ad  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)               #  8     0xe41af  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xe41b7  3      OPC=setne_r8        
  nop                                           #  10    0xe41ba  1      OPC=nop             
  nop                                           #  11    0xe41bb  1      OPC=nop             
  nop                                           #  12    0xe41bc  1      OPC=nop             
  nop                                           #  13    0xe41bd  1      OPC=nop             
  nop                                           #  14    0xe41be  1      OPC=nop             
  nop                                           #  15    0xe41bf  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xe41c0  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xe41c2  5      OPC=movl_m32_r32    
  nop                                           #  18    0xe41c7  1      OPC=nop             
  nop                                           #  19    0xe41c8  1      OPC=nop             
  nop                                           #  20    0xe41c9  1      OPC=nop             
  nop                                           #  21    0xe41ca  1      OPC=nop             
  nop                                           #  22    0xe41cb  1      OPC=nop             
  nop                                           #  23    0xe41cc  1      OPC=nop             
  nop                                           #  24    0xe41cd  1      OPC=nop             
  nop                                           #  25    0xe41ce  1      OPC=nop             
  nop                                           #  26    0xe41cf  1      OPC=nop             
  nop                                           #  27    0xe41d0  1      OPC=nop             
  nop                                           #  28    0xe41d1  1      OPC=nop             
  nop                                           #  29    0xe41d2  1      OPC=nop             
  nop                                           #  30    0xe41d3  1      OPC=nop             
  nop                                           #  31    0xe41d4  1      OPC=nop             
  nop                                           #  32    0xe41d5  1      OPC=nop             
  nop                                           #  33    0xe41d6  1      OPC=nop             
  nop                                           #  34    0xe41d7  1      OPC=nop             
  nop                                           #  35    0xe41d8  1      OPC=nop             
  nop                                           #  36    0xe41d9  1      OPC=nop             
  nop                                           #  37    0xe41da  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xe41db  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xe41e0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xe41e2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xe41e7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xe41ea  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xe41ed  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xe41ee  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xe41f0  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xe41f7  1      OPC=nop             
  nop                                           #  47    0xe41f8  1      OPC=nop             
  nop                                           #  48    0xe41f9  1      OPC=nop             
  nop                                           #  49    0xe41fa  1      OPC=nop             
  addq %r15, %r11                               #  50    0xe41fb  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xe41fe  3      OPC=jmpq_r64        
  nop                                           #  52    0xe4201  1      OPC=nop             
  nop                                           #  53    0xe4202  1      OPC=nop             
  nop                                           #  54    0xe4203  1      OPC=nop             
  nop                                           #  55    0xe4204  1      OPC=nop             
  nop                                           #  56    0xe4205  1      OPC=nop             
  nop                                           #  57    0xe4206  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xe4207  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  59    0xe4209  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)               #  60    0xe420b  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                          #  61    0xe4213  4      OPC=movl_m32_r32    
  nop                                           #  62    0xe4217  1      OPC=nop             
  nop                                           #  63    0xe4218  1      OPC=nop             
  nop                                           #  64    0xe4219  1      OPC=nop             
  nop                                           #  65    0xe421a  1      OPC=nop             
  nop                                           #  66    0xe421b  1      OPC=nop             
  nop                                           #  67    0xe421c  1      OPC=nop             
  nop                                           #  68    0xe421d  1      OPC=nop             
  nop                                           #  69    0xe421e  1      OPC=nop             
  nop                                           #  70    0xe421f  1      OPC=nop             
  nop                                           #  71    0xe4220  1      OPC=nop             
  nop                                           #  72    0xe4221  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  73    0xe4222  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  74    0xe4227  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  75    0xe422b  2      OPC=movl_r32_r32    
  nop                                           #  76    0xe422d  1      OPC=nop             
  nop                                           #  77    0xe422e  1      OPC=nop             
  nop                                           #  78    0xe422f  1      OPC=nop             
  nop                                           #  79    0xe4230  1      OPC=nop             
  nop                                           #  80    0xe4231  1      OPC=nop             
  nop                                           #  81    0xe4232  1      OPC=nop             
  nop                                           #  82    0xe4233  1      OPC=nop             
  nop                                           #  83    0xe4234  1      OPC=nop             
  nop                                           #  84    0xe4235  1      OPC=nop             
  nop                                           #  85    0xe4236  1      OPC=nop             
  nop                                           #  86    0xe4237  1      OPC=nop             
  nop                                           #  87    0xe4238  1      OPC=nop             
  nop                                           #  88    0xe4239  1      OPC=nop             
  nop                                           #  89    0xe423a  1      OPC=nop             
  nop                                           #  90    0xe423b  1      OPC=nop             
  nop                                           #  91    0xe423c  1      OPC=nop             
  nop                                           #  92    0xe423d  1      OPC=nop             
  nop                                           #  93    0xe423e  1      OPC=nop             
  nop                                           #  94    0xe423f  1      OPC=nop             
  nop                                           #  95    0xe4240  1      OPC=nop             
  nop                                           #  96    0xe4241  1      OPC=nop             
  callq ._Unwind_Resume                         #  97    0xe4242  5      OPC=callq_label     
                                                                                             
.size _ZNSt7codecvtIcc10_mbstate_tEC2Ej, .-_ZNSt7codecvtIcc10_mbstate_tEC2Ej

