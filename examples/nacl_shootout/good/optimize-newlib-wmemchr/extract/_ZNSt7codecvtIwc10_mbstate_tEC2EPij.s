  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tEC2EPij
  .type _ZNSt7codecvtIwc10_mbstate_tEC2EPij, @function

#! file-offset 0x123de0
#! rip-offset  0xe3de0
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIwc10_mbstate_tEC2EPij:               #        0xe3de0  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe3de0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe3de1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe3de3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe3de5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe3de8  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe3deb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe3ded  2      OPC=movl_r32_r32    
  movl $0x1003d4a8, (%r15,%rbx,1)                   #  8     0xe3def  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe3df7  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe3dfa  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe3dfe  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe3e00  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe3e04  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe3e06  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe3e0b  1      OPC=nop             
  nop                                               #  16    0xe3e0c  1      OPC=nop             
  nop                                               #  17    0xe3e0d  1      OPC=nop             
  nop                                               #  18    0xe3e0e  1      OPC=nop             
  nop                                               #  19    0xe3e0f  1      OPC=nop             
  nop                                               #  20    0xe3e10  1      OPC=nop             
  nop                                               #  21    0xe3e11  1      OPC=nop             
  nop                                               #  22    0xe3e12  1      OPC=nop             
  nop                                               #  23    0xe3e13  1      OPC=nop             
  nop                                               #  24    0xe3e14  1      OPC=nop             
  nop                                               #  25    0xe3e15  1      OPC=nop             
  nop                                               #  26    0xe3e16  1      OPC=nop             
  nop                                               #  27    0xe3e17  1      OPC=nop             
  nop                                               #  28    0xe3e18  1      OPC=nop             
  nop                                               #  29    0xe3e19  1      OPC=nop             
  nop                                               #  30    0xe3e1a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe3e1b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe3e20  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe3e22  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xe3e27  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xe3e2a  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xe3e2d  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xe3e2e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xe3e30  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xe3e37  1      OPC=nop             
  nop                                               #  40    0xe3e38  1      OPC=nop             
  nop                                               #  41    0xe3e39  1      OPC=nop             
  nop                                               #  42    0xe3e3a  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xe3e3b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xe3e3e  3      OPC=jmpq_r64        
  nop                                               #  45    0xe3e41  1      OPC=nop             
  nop                                               #  46    0xe3e42  1      OPC=nop             
  nop                                               #  47    0xe3e43  1      OPC=nop             
  nop                                               #  48    0xe3e44  1      OPC=nop             
  nop                                               #  49    0xe3e45  1      OPC=nop             
  nop                                               #  50    0xe3e46  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xe3e47  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  52    0xe3e49  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)                   #  53    0xe3e4b  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  54    0xe3e53  3      OPC=movl_m32_r32    
  nop                                               #  55    0xe3e56  1      OPC=nop             
  nop                                               #  56    0xe3e57  1      OPC=nop             
  nop                                               #  57    0xe3e58  1      OPC=nop             
  nop                                               #  58    0xe3e59  1      OPC=nop             
  nop                                               #  59    0xe3e5a  1      OPC=nop             
  nop                                               #  60    0xe3e5b  1      OPC=nop             
  nop                                               #  61    0xe3e5c  1      OPC=nop             
  nop                                               #  62    0xe3e5d  1      OPC=nop             
  nop                                               #  63    0xe3e5e  1      OPC=nop             
  nop                                               #  64    0xe3e5f  1      OPC=nop             
  nop                                               #  65    0xe3e60  1      OPC=nop             
  nop                                               #  66    0xe3e61  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe3e62  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  68    0xe3e67  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  69    0xe3e6a  2      OPC=movl_r32_r32    
  nop                                               #  70    0xe3e6c  1      OPC=nop             
  nop                                               #  71    0xe3e6d  1      OPC=nop             
  nop                                               #  72    0xe3e6e  1      OPC=nop             
  nop                                               #  73    0xe3e6f  1      OPC=nop             
  nop                                               #  74    0xe3e70  1      OPC=nop             
  nop                                               #  75    0xe3e71  1      OPC=nop             
  nop                                               #  76    0xe3e72  1      OPC=nop             
  nop                                               #  77    0xe3e73  1      OPC=nop             
  nop                                               #  78    0xe3e74  1      OPC=nop             
  nop                                               #  79    0xe3e75  1      OPC=nop             
  nop                                               #  80    0xe3e76  1      OPC=nop             
  nop                                               #  81    0xe3e77  1      OPC=nop             
  nop                                               #  82    0xe3e78  1      OPC=nop             
  nop                                               #  83    0xe3e79  1      OPC=nop             
  nop                                               #  84    0xe3e7a  1      OPC=nop             
  nop                                               #  85    0xe3e7b  1      OPC=nop             
  nop                                               #  86    0xe3e7c  1      OPC=nop             
  nop                                               #  87    0xe3e7d  1      OPC=nop             
  nop                                               #  88    0xe3e7e  1      OPC=nop             
  nop                                               #  89    0xe3e7f  1      OPC=nop             
  nop                                               #  90    0xe3e80  1      OPC=nop             
  nop                                               #  91    0xe3e81  1      OPC=nop             
  callq ._Unwind_Resume                             #  92    0xe3e82  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7codecvtIwc10_mbstate_tEC2EPij, .-_ZNSt7codecvtIwc10_mbstate_tEC2EPij

