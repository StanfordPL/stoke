  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tEC2EPij
  .type _ZNSt7codecvtIcc10_mbstate_tEC2EPij, @function

#! file-offset 0x123f20
#! rip-offset  0xe3f20
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tEC2EPij:               #        0xe3f20  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe3f20  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe3f21  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe3f23  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe3f25  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe3f28  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe3f2b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe3f2d  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)                   #  8     0xe3f2f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe3f37  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe3f3a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe3f3e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe3f40  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe3f44  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe3f46  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe3f4b  1      OPC=nop             
  nop                                               #  16    0xe3f4c  1      OPC=nop             
  nop                                               #  17    0xe3f4d  1      OPC=nop             
  nop                                               #  18    0xe3f4e  1      OPC=nop             
  nop                                               #  19    0xe3f4f  1      OPC=nop             
  nop                                               #  20    0xe3f50  1      OPC=nop             
  nop                                               #  21    0xe3f51  1      OPC=nop             
  nop                                               #  22    0xe3f52  1      OPC=nop             
  nop                                               #  23    0xe3f53  1      OPC=nop             
  nop                                               #  24    0xe3f54  1      OPC=nop             
  nop                                               #  25    0xe3f55  1      OPC=nop             
  nop                                               #  26    0xe3f56  1      OPC=nop             
  nop                                               #  27    0xe3f57  1      OPC=nop             
  nop                                               #  28    0xe3f58  1      OPC=nop             
  nop                                               #  29    0xe3f59  1      OPC=nop             
  nop                                               #  30    0xe3f5a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe3f5b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe3f60  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe3f62  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xe3f67  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xe3f6a  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xe3f6d  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xe3f6e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xe3f70  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xe3f77  1      OPC=nop             
  nop                                               #  40    0xe3f78  1      OPC=nop             
  nop                                               #  41    0xe3f79  1      OPC=nop             
  nop                                               #  42    0xe3f7a  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xe3f7b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xe3f7e  3      OPC=jmpq_r64        
  nop                                               #  45    0xe3f81  1      OPC=nop             
  nop                                               #  46    0xe3f82  1      OPC=nop             
  nop                                               #  47    0xe3f83  1      OPC=nop             
  nop                                               #  48    0xe3f84  1      OPC=nop             
  nop                                               #  49    0xe3f85  1      OPC=nop             
  nop                                               #  50    0xe3f86  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xe3f87  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  52    0xe3f89  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)                   #  53    0xe3f8b  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  54    0xe3f93  3      OPC=movl_m32_r32    
  nop                                               #  55    0xe3f96  1      OPC=nop             
  nop                                               #  56    0xe3f97  1      OPC=nop             
  nop                                               #  57    0xe3f98  1      OPC=nop             
  nop                                               #  58    0xe3f99  1      OPC=nop             
  nop                                               #  59    0xe3f9a  1      OPC=nop             
  nop                                               #  60    0xe3f9b  1      OPC=nop             
  nop                                               #  61    0xe3f9c  1      OPC=nop             
  nop                                               #  62    0xe3f9d  1      OPC=nop             
  nop                                               #  63    0xe3f9e  1      OPC=nop             
  nop                                               #  64    0xe3f9f  1      OPC=nop             
  nop                                               #  65    0xe3fa0  1      OPC=nop             
  nop                                               #  66    0xe3fa1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe3fa2  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  68    0xe3fa7  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  69    0xe3faa  2      OPC=movl_r32_r32    
  nop                                               #  70    0xe3fac  1      OPC=nop             
  nop                                               #  71    0xe3fad  1      OPC=nop             
  nop                                               #  72    0xe3fae  1      OPC=nop             
  nop                                               #  73    0xe3faf  1      OPC=nop             
  nop                                               #  74    0xe3fb0  1      OPC=nop             
  nop                                               #  75    0xe3fb1  1      OPC=nop             
  nop                                               #  76    0xe3fb2  1      OPC=nop             
  nop                                               #  77    0xe3fb3  1      OPC=nop             
  nop                                               #  78    0xe3fb4  1      OPC=nop             
  nop                                               #  79    0xe3fb5  1      OPC=nop             
  nop                                               #  80    0xe3fb6  1      OPC=nop             
  nop                                               #  81    0xe3fb7  1      OPC=nop             
  nop                                               #  82    0xe3fb8  1      OPC=nop             
  nop                                               #  83    0xe3fb9  1      OPC=nop             
  nop                                               #  84    0xe3fba  1      OPC=nop             
  nop                                               #  85    0xe3fbb  1      OPC=nop             
  nop                                               #  86    0xe3fbc  1      OPC=nop             
  nop                                               #  87    0xe3fbd  1      OPC=nop             
  nop                                               #  88    0xe3fbe  1      OPC=nop             
  nop                                               #  89    0xe3fbf  1      OPC=nop             
  nop                                               #  90    0xe3fc0  1      OPC=nop             
  nop                                               #  91    0xe3fc1  1      OPC=nop             
  callq ._Unwind_Resume                             #  92    0xe3fc2  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7codecvtIcc10_mbstate_tEC2EPij, .-_ZNSt7codecvtIcc10_mbstate_tEC2EPij

