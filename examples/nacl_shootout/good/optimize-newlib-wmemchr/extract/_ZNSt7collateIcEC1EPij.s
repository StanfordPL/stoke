  .text
  .globl _ZNSt7collateIcEC1EPij
  .type _ZNSt7collateIcEC1EPij, @function

#! file-offset 0xbc300
#! rip-offset  0x7c300
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcEC1EPij:                            #        0x7c300  0      OPC=<label>         
  pushq %rbx                                        #  1     0x7c300  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0x7c301  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0x7c303  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0x7c305  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0x7c308  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0x7c30b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0x7c30d  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                   #  8     0x7c30f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0x7c317  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0x7c31a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0x7c31e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0x7c320  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0x7c324  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0x7c326  5      OPC=movl_m32_r32    
  nop                                               #  15    0x7c32b  1      OPC=nop             
  nop                                               #  16    0x7c32c  1      OPC=nop             
  nop                                               #  17    0x7c32d  1      OPC=nop             
  nop                                               #  18    0x7c32e  1      OPC=nop             
  nop                                               #  19    0x7c32f  1      OPC=nop             
  nop                                               #  20    0x7c330  1      OPC=nop             
  nop                                               #  21    0x7c331  1      OPC=nop             
  nop                                               #  22    0x7c332  1      OPC=nop             
  nop                                               #  23    0x7c333  1      OPC=nop             
  nop                                               #  24    0x7c334  1      OPC=nop             
  nop                                               #  25    0x7c335  1      OPC=nop             
  nop                                               #  26    0x7c336  1      OPC=nop             
  nop                                               #  27    0x7c337  1      OPC=nop             
  nop                                               #  28    0x7c338  1      OPC=nop             
  nop                                               #  29    0x7c339  1      OPC=nop             
  nop                                               #  30    0x7c33a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0x7c33b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0x7c340  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0x7c342  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0x7c347  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0x7c34a  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0x7c34d  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0x7c34e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0x7c350  7      OPC=andl_r32_imm32  
  nop                                               #  39    0x7c357  1      OPC=nop             
  nop                                               #  40    0x7c358  1      OPC=nop             
  nop                                               #  41    0x7c359  1      OPC=nop             
  nop                                               #  42    0x7c35a  1      OPC=nop             
  addq %r15, %r11                                   #  43    0x7c35b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0x7c35e  3      OPC=jmpq_r64        
  nop                                               #  45    0x7c361  1      OPC=nop             
  nop                                               #  46    0x7c362  1      OPC=nop             
  nop                                               #  47    0x7c363  1      OPC=nop             
  nop                                               #  48    0x7c364  1      OPC=nop             
  nop                                               #  49    0x7c365  1      OPC=nop             
  nop                                               #  50    0x7c366  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0x7c367  2      OPC=movl_r32_r32    
  movl %eax, (%rsp)                                 #  52    0x7c369  3      OPC=movl_m32_r32    
  nop                                               #  53    0x7c36c  1      OPC=nop             
  nop                                               #  54    0x7c36d  1      OPC=nop             
  nop                                               #  55    0x7c36e  1      OPC=nop             
  nop                                               #  56    0x7c36f  1      OPC=nop             
  nop                                               #  57    0x7c370  1      OPC=nop             
  nop                                               #  58    0x7c371  1      OPC=nop             
  nop                                               #  59    0x7c372  1      OPC=nop             
  nop                                               #  60    0x7c373  1      OPC=nop             
  nop                                               #  61    0x7c374  1      OPC=nop             
  nop                                               #  62    0x7c375  1      OPC=nop             
  nop                                               #  63    0x7c376  1      OPC=nop             
  nop                                               #  64    0x7c377  1      OPC=nop             
  nop                                               #  65    0x7c378  1      OPC=nop             
  nop                                               #  66    0x7c379  1      OPC=nop             
  nop                                               #  67    0x7c37a  1      OPC=nop             
  nop                                               #  68    0x7c37b  1      OPC=nop             
  nop                                               #  69    0x7c37c  1      OPC=nop             
  nop                                               #  70    0x7c37d  1      OPC=nop             
  nop                                               #  71    0x7c37e  1      OPC=nop             
  nop                                               #  72    0x7c37f  1      OPC=nop             
  nop                                               #  73    0x7c380  1      OPC=nop             
  nop                                               #  74    0x7c381  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  75    0x7c382  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  76    0x7c387  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  77    0x7c38a  2      OPC=movl_r32_r32    
  nop                                               #  78    0x7c38c  1      OPC=nop             
  nop                                               #  79    0x7c38d  1      OPC=nop             
  nop                                               #  80    0x7c38e  1      OPC=nop             
  nop                                               #  81    0x7c38f  1      OPC=nop             
  nop                                               #  82    0x7c390  1      OPC=nop             
  nop                                               #  83    0x7c391  1      OPC=nop             
  nop                                               #  84    0x7c392  1      OPC=nop             
  nop                                               #  85    0x7c393  1      OPC=nop             
  nop                                               #  86    0x7c394  1      OPC=nop             
  nop                                               #  87    0x7c395  1      OPC=nop             
  nop                                               #  88    0x7c396  1      OPC=nop             
  nop                                               #  89    0x7c397  1      OPC=nop             
  nop                                               #  90    0x7c398  1      OPC=nop             
  nop                                               #  91    0x7c399  1      OPC=nop             
  nop                                               #  92    0x7c39a  1      OPC=nop             
  nop                                               #  93    0x7c39b  1      OPC=nop             
  nop                                               #  94    0x7c39c  1      OPC=nop             
  nop                                               #  95    0x7c39d  1      OPC=nop             
  nop                                               #  96    0x7c39e  1      OPC=nop             
  nop                                               #  97    0x7c39f  1      OPC=nop             
  nop                                               #  98    0x7c3a0  1      OPC=nop             
  nop                                               #  99    0x7c3a1  1      OPC=nop             
  callq ._Unwind_Resume                             #  100   0x7c3a2  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7collateIcEC1EPij, .-_ZNSt7collateIcEC1EPij

