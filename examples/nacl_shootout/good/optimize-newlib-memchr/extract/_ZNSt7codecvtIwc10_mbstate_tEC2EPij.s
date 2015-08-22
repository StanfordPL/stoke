  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tEC2EPij
  .type _ZNSt7codecvtIwc10_mbstate_tEC2EPij, @function

#! file-offset 0x124500
#! rip-offset  0xe4500
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIwc10_mbstate_tEC2EPij:               #        0xe4500  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe4500  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe4501  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe4503  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe4505  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe4508  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe450b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe450d  2      OPC=movl_r32_r32    
  movl $0x1003d4a8, (%r15,%rbx,1)                   #  8     0xe450f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe4517  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe451a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe451e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe4520  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe4524  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe4526  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe452b  1      OPC=nop             
  nop                                               #  16    0xe452c  1      OPC=nop             
  nop                                               #  17    0xe452d  1      OPC=nop             
  nop                                               #  18    0xe452e  1      OPC=nop             
  nop                                               #  19    0xe452f  1      OPC=nop             
  nop                                               #  20    0xe4530  1      OPC=nop             
  nop                                               #  21    0xe4531  1      OPC=nop             
  nop                                               #  22    0xe4532  1      OPC=nop             
  nop                                               #  23    0xe4533  1      OPC=nop             
  nop                                               #  24    0xe4534  1      OPC=nop             
  nop                                               #  25    0xe4535  1      OPC=nop             
  nop                                               #  26    0xe4536  1      OPC=nop             
  nop                                               #  27    0xe4537  1      OPC=nop             
  nop                                               #  28    0xe4538  1      OPC=nop             
  nop                                               #  29    0xe4539  1      OPC=nop             
  nop                                               #  30    0xe453a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe453b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe4540  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe4542  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xe4547  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xe454a  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xe454d  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xe454e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xe4550  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xe4557  1      OPC=nop             
  nop                                               #  40    0xe4558  1      OPC=nop             
  nop                                               #  41    0xe4559  1      OPC=nop             
  nop                                               #  42    0xe455a  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xe455b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xe455e  3      OPC=jmpq_r64        
  nop                                               #  45    0xe4561  1      OPC=nop             
  nop                                               #  46    0xe4562  1      OPC=nop             
  nop                                               #  47    0xe4563  1      OPC=nop             
  nop                                               #  48    0xe4564  1      OPC=nop             
  nop                                               #  49    0xe4565  1      OPC=nop             
  nop                                               #  50    0xe4566  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xe4567  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  52    0xe4569  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)                   #  53    0xe456b  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  54    0xe4573  3      OPC=movl_m32_r32    
  nop                                               #  55    0xe4576  1      OPC=nop             
  nop                                               #  56    0xe4577  1      OPC=nop             
  nop                                               #  57    0xe4578  1      OPC=nop             
  nop                                               #  58    0xe4579  1      OPC=nop             
  nop                                               #  59    0xe457a  1      OPC=nop             
  nop                                               #  60    0xe457b  1      OPC=nop             
  nop                                               #  61    0xe457c  1      OPC=nop             
  nop                                               #  62    0xe457d  1      OPC=nop             
  nop                                               #  63    0xe457e  1      OPC=nop             
  nop                                               #  64    0xe457f  1      OPC=nop             
  nop                                               #  65    0xe4580  1      OPC=nop             
  nop                                               #  66    0xe4581  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe4582  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  68    0xe4587  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  69    0xe458a  2      OPC=movl_r32_r32    
  nop                                               #  70    0xe458c  1      OPC=nop             
  nop                                               #  71    0xe458d  1      OPC=nop             
  nop                                               #  72    0xe458e  1      OPC=nop             
  nop                                               #  73    0xe458f  1      OPC=nop             
  nop                                               #  74    0xe4590  1      OPC=nop             
  nop                                               #  75    0xe4591  1      OPC=nop             
  nop                                               #  76    0xe4592  1      OPC=nop             
  nop                                               #  77    0xe4593  1      OPC=nop             
  nop                                               #  78    0xe4594  1      OPC=nop             
  nop                                               #  79    0xe4595  1      OPC=nop             
  nop                                               #  80    0xe4596  1      OPC=nop             
  nop                                               #  81    0xe4597  1      OPC=nop             
  nop                                               #  82    0xe4598  1      OPC=nop             
  nop                                               #  83    0xe4599  1      OPC=nop             
  nop                                               #  84    0xe459a  1      OPC=nop             
  nop                                               #  85    0xe459b  1      OPC=nop             
  nop                                               #  86    0xe459c  1      OPC=nop             
  nop                                               #  87    0xe459d  1      OPC=nop             
  nop                                               #  88    0xe459e  1      OPC=nop             
  nop                                               #  89    0xe459f  1      OPC=nop             
  nop                                               #  90    0xe45a0  1      OPC=nop             
  nop                                               #  91    0xe45a1  1      OPC=nop             
  callq ._Unwind_Resume                             #  92    0xe45a2  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7codecvtIwc10_mbstate_tEC2EPij, .-_ZNSt7codecvtIwc10_mbstate_tEC2EPij

