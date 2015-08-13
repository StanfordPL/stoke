  .text
  .globl _ZNSt7collateIcEC1EPij
  .type _ZNSt7collateIcEC1EPij, @function

#! file-offset 0xbc000
#! rip-offset  0x7c000
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcEC1EPij:                            #        0x7c000  0      OPC=<label>         
  pushq %rbx                                        #  1     0x7c000  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0x7c001  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0x7c003  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0x7c005  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0x7c008  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0x7c00b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0x7c00d  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                   #  8     0x7c00f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0x7c017  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0x7c01a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0x7c01e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0x7c020  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0x7c024  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0x7c026  5      OPC=movl_m32_r32    
  nop                                               #  15    0x7c02b  1      OPC=nop             
  nop                                               #  16    0x7c02c  1      OPC=nop             
  nop                                               #  17    0x7c02d  1      OPC=nop             
  nop                                               #  18    0x7c02e  1      OPC=nop             
  nop                                               #  19    0x7c02f  1      OPC=nop             
  nop                                               #  20    0x7c030  1      OPC=nop             
  nop                                               #  21    0x7c031  1      OPC=nop             
  nop                                               #  22    0x7c032  1      OPC=nop             
  nop                                               #  23    0x7c033  1      OPC=nop             
  nop                                               #  24    0x7c034  1      OPC=nop             
  nop                                               #  25    0x7c035  1      OPC=nop             
  nop                                               #  26    0x7c036  1      OPC=nop             
  nop                                               #  27    0x7c037  1      OPC=nop             
  nop                                               #  28    0x7c038  1      OPC=nop             
  nop                                               #  29    0x7c039  1      OPC=nop             
  nop                                               #  30    0x7c03a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0x7c03b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0x7c040  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0x7c042  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0x7c047  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0x7c04a  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0x7c04d  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0x7c04e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0x7c050  7      OPC=andl_r32_imm32  
  nop                                               #  39    0x7c057  1      OPC=nop             
  nop                                               #  40    0x7c058  1      OPC=nop             
  nop                                               #  41    0x7c059  1      OPC=nop             
  nop                                               #  42    0x7c05a  1      OPC=nop             
  addq %r15, %r11                                   #  43    0x7c05b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0x7c05e  3      OPC=jmpq_r64        
  nop                                               #  45    0x7c061  1      OPC=nop             
  nop                                               #  46    0x7c062  1      OPC=nop             
  nop                                               #  47    0x7c063  1      OPC=nop             
  nop                                               #  48    0x7c064  1      OPC=nop             
  nop                                               #  49    0x7c065  1      OPC=nop             
  nop                                               #  50    0x7c066  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0x7c067  2      OPC=movl_r32_r32    
  movl %eax, (%rsp)                                 #  52    0x7c069  3      OPC=movl_m32_r32    
  nop                                               #  53    0x7c06c  1      OPC=nop             
  nop                                               #  54    0x7c06d  1      OPC=nop             
  nop                                               #  55    0x7c06e  1      OPC=nop             
  nop                                               #  56    0x7c06f  1      OPC=nop             
  nop                                               #  57    0x7c070  1      OPC=nop             
  nop                                               #  58    0x7c071  1      OPC=nop             
  nop                                               #  59    0x7c072  1      OPC=nop             
  nop                                               #  60    0x7c073  1      OPC=nop             
  nop                                               #  61    0x7c074  1      OPC=nop             
  nop                                               #  62    0x7c075  1      OPC=nop             
  nop                                               #  63    0x7c076  1      OPC=nop             
  nop                                               #  64    0x7c077  1      OPC=nop             
  nop                                               #  65    0x7c078  1      OPC=nop             
  nop                                               #  66    0x7c079  1      OPC=nop             
  nop                                               #  67    0x7c07a  1      OPC=nop             
  nop                                               #  68    0x7c07b  1      OPC=nop             
  nop                                               #  69    0x7c07c  1      OPC=nop             
  nop                                               #  70    0x7c07d  1      OPC=nop             
  nop                                               #  71    0x7c07e  1      OPC=nop             
  nop                                               #  72    0x7c07f  1      OPC=nop             
  nop                                               #  73    0x7c080  1      OPC=nop             
  nop                                               #  74    0x7c081  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  75    0x7c082  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  76    0x7c087  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  77    0x7c08a  2      OPC=movl_r32_r32    
  nop                                               #  78    0x7c08c  1      OPC=nop             
  nop                                               #  79    0x7c08d  1      OPC=nop             
  nop                                               #  80    0x7c08e  1      OPC=nop             
  nop                                               #  81    0x7c08f  1      OPC=nop             
  nop                                               #  82    0x7c090  1      OPC=nop             
  nop                                               #  83    0x7c091  1      OPC=nop             
  nop                                               #  84    0x7c092  1      OPC=nop             
  nop                                               #  85    0x7c093  1      OPC=nop             
  nop                                               #  86    0x7c094  1      OPC=nop             
  nop                                               #  87    0x7c095  1      OPC=nop             
  nop                                               #  88    0x7c096  1      OPC=nop             
  nop                                               #  89    0x7c097  1      OPC=nop             
  nop                                               #  90    0x7c098  1      OPC=nop             
  nop                                               #  91    0x7c099  1      OPC=nop             
  nop                                               #  92    0x7c09a  1      OPC=nop             
  nop                                               #  93    0x7c09b  1      OPC=nop             
  nop                                               #  94    0x7c09c  1      OPC=nop             
  nop                                               #  95    0x7c09d  1      OPC=nop             
  nop                                               #  96    0x7c09e  1      OPC=nop             
  nop                                               #  97    0x7c09f  1      OPC=nop             
  nop                                               #  98    0x7c0a0  1      OPC=nop             
  nop                                               #  99    0x7c0a1  1      OPC=nop             
  callq ._Unwind_Resume                             #  100   0x7c0a2  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7collateIcEC1EPij, .-_ZNSt7collateIcEC1EPij

