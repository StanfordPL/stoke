  .text
  .globl _ZNSt7collateIcEC2EPij
  .type _ZNSt7collateIcEC2EPij, @function

#! file-offset 0xbc3a0
#! rip-offset  0x7c3a0
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcEC2EPij:                            #        0x7c3a0  0      OPC=<label>         
  pushq %rbx                                        #  1     0x7c3a0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0x7c3a1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0x7c3a3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0x7c3a5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0x7c3a8  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0x7c3ab  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0x7c3ad  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                   #  8     0x7c3af  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0x7c3b7  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0x7c3ba  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0x7c3be  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0x7c3c0  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0x7c3c4  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0x7c3c6  5      OPC=movl_m32_r32    
  nop                                               #  15    0x7c3cb  1      OPC=nop             
  nop                                               #  16    0x7c3cc  1      OPC=nop             
  nop                                               #  17    0x7c3cd  1      OPC=nop             
  nop                                               #  18    0x7c3ce  1      OPC=nop             
  nop                                               #  19    0x7c3cf  1      OPC=nop             
  nop                                               #  20    0x7c3d0  1      OPC=nop             
  nop                                               #  21    0x7c3d1  1      OPC=nop             
  nop                                               #  22    0x7c3d2  1      OPC=nop             
  nop                                               #  23    0x7c3d3  1      OPC=nop             
  nop                                               #  24    0x7c3d4  1      OPC=nop             
  nop                                               #  25    0x7c3d5  1      OPC=nop             
  nop                                               #  26    0x7c3d6  1      OPC=nop             
  nop                                               #  27    0x7c3d7  1      OPC=nop             
  nop                                               #  28    0x7c3d8  1      OPC=nop             
  nop                                               #  29    0x7c3d9  1      OPC=nop             
  nop                                               #  30    0x7c3da  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0x7c3db  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0x7c3e0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0x7c3e2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0x7c3e7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0x7c3ea  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0x7c3ed  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0x7c3ee  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0x7c3f0  7      OPC=andl_r32_imm32  
  nop                                               #  39    0x7c3f7  1      OPC=nop             
  nop                                               #  40    0x7c3f8  1      OPC=nop             
  nop                                               #  41    0x7c3f9  1      OPC=nop             
  nop                                               #  42    0x7c3fa  1      OPC=nop             
  addq %r15, %r11                                   #  43    0x7c3fb  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0x7c3fe  3      OPC=jmpq_r64        
  nop                                               #  45    0x7c401  1      OPC=nop             
  nop                                               #  46    0x7c402  1      OPC=nop             
  nop                                               #  47    0x7c403  1      OPC=nop             
  nop                                               #  48    0x7c404  1      OPC=nop             
  nop                                               #  49    0x7c405  1      OPC=nop             
  nop                                               #  50    0x7c406  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0x7c407  2      OPC=movl_r32_r32    
  movl %eax, (%rsp)                                 #  52    0x7c409  3      OPC=movl_m32_r32    
  nop                                               #  53    0x7c40c  1      OPC=nop             
  nop                                               #  54    0x7c40d  1      OPC=nop             
  nop                                               #  55    0x7c40e  1      OPC=nop             
  nop                                               #  56    0x7c40f  1      OPC=nop             
  nop                                               #  57    0x7c410  1      OPC=nop             
  nop                                               #  58    0x7c411  1      OPC=nop             
  nop                                               #  59    0x7c412  1      OPC=nop             
  nop                                               #  60    0x7c413  1      OPC=nop             
  nop                                               #  61    0x7c414  1      OPC=nop             
  nop                                               #  62    0x7c415  1      OPC=nop             
  nop                                               #  63    0x7c416  1      OPC=nop             
  nop                                               #  64    0x7c417  1      OPC=nop             
  nop                                               #  65    0x7c418  1      OPC=nop             
  nop                                               #  66    0x7c419  1      OPC=nop             
  nop                                               #  67    0x7c41a  1      OPC=nop             
  nop                                               #  68    0x7c41b  1      OPC=nop             
  nop                                               #  69    0x7c41c  1      OPC=nop             
  nop                                               #  70    0x7c41d  1      OPC=nop             
  nop                                               #  71    0x7c41e  1      OPC=nop             
  nop                                               #  72    0x7c41f  1      OPC=nop             
  nop                                               #  73    0x7c420  1      OPC=nop             
  nop                                               #  74    0x7c421  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  75    0x7c422  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  76    0x7c427  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  77    0x7c42a  2      OPC=movl_r32_r32    
  nop                                               #  78    0x7c42c  1      OPC=nop             
  nop                                               #  79    0x7c42d  1      OPC=nop             
  nop                                               #  80    0x7c42e  1      OPC=nop             
  nop                                               #  81    0x7c42f  1      OPC=nop             
  nop                                               #  82    0x7c430  1      OPC=nop             
  nop                                               #  83    0x7c431  1      OPC=nop             
  nop                                               #  84    0x7c432  1      OPC=nop             
  nop                                               #  85    0x7c433  1      OPC=nop             
  nop                                               #  86    0x7c434  1      OPC=nop             
  nop                                               #  87    0x7c435  1      OPC=nop             
  nop                                               #  88    0x7c436  1      OPC=nop             
  nop                                               #  89    0x7c437  1      OPC=nop             
  nop                                               #  90    0x7c438  1      OPC=nop             
  nop                                               #  91    0x7c439  1      OPC=nop             
  nop                                               #  92    0x7c43a  1      OPC=nop             
  nop                                               #  93    0x7c43b  1      OPC=nop             
  nop                                               #  94    0x7c43c  1      OPC=nop             
  nop                                               #  95    0x7c43d  1      OPC=nop             
  nop                                               #  96    0x7c43e  1      OPC=nop             
  nop                                               #  97    0x7c43f  1      OPC=nop             
  nop                                               #  98    0x7c440  1      OPC=nop             
  nop                                               #  99    0x7c441  1      OPC=nop             
  callq ._Unwind_Resume                             #  100   0x7c442  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7collateIcEC2EPij, .-_ZNSt7collateIcEC2EPij

