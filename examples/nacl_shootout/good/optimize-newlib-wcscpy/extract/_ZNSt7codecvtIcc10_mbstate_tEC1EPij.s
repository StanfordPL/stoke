  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tEC1EPij
  .type _ZNSt7codecvtIcc10_mbstate_tEC1EPij, @function

#! file-offset 0x123b80
#! rip-offset  0xe3b80
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tEC1EPij:               #        0xe3b80  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe3b80  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe3b81  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe3b83  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe3b85  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe3b88  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe3b8b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe3b8d  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)                   #  8     0xe3b8f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe3b97  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe3b9a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe3b9e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe3ba0  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe3ba4  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe3ba6  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe3bab  1      OPC=nop             
  nop                                               #  16    0xe3bac  1      OPC=nop             
  nop                                               #  17    0xe3bad  1      OPC=nop             
  nop                                               #  18    0xe3bae  1      OPC=nop             
  nop                                               #  19    0xe3baf  1      OPC=nop             
  nop                                               #  20    0xe3bb0  1      OPC=nop             
  nop                                               #  21    0xe3bb1  1      OPC=nop             
  nop                                               #  22    0xe3bb2  1      OPC=nop             
  nop                                               #  23    0xe3bb3  1      OPC=nop             
  nop                                               #  24    0xe3bb4  1      OPC=nop             
  nop                                               #  25    0xe3bb5  1      OPC=nop             
  nop                                               #  26    0xe3bb6  1      OPC=nop             
  nop                                               #  27    0xe3bb7  1      OPC=nop             
  nop                                               #  28    0xe3bb8  1      OPC=nop             
  nop                                               #  29    0xe3bb9  1      OPC=nop             
  nop                                               #  30    0xe3bba  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe3bbb  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe3bc0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe3bc2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xe3bc7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xe3bca  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xe3bcd  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xe3bce  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xe3bd0  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xe3bd7  1      OPC=nop             
  nop                                               #  40    0xe3bd8  1      OPC=nop             
  nop                                               #  41    0xe3bd9  1      OPC=nop             
  nop                                               #  42    0xe3bda  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xe3bdb  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xe3bde  3      OPC=jmpq_r64        
  nop                                               #  45    0xe3be1  1      OPC=nop             
  nop                                               #  46    0xe3be2  1      OPC=nop             
  nop                                               #  47    0xe3be3  1      OPC=nop             
  nop                                               #  48    0xe3be4  1      OPC=nop             
  nop                                               #  49    0xe3be5  1      OPC=nop             
  nop                                               #  50    0xe3be6  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xe3be7  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  52    0xe3be9  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)                   #  53    0xe3beb  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  54    0xe3bf3  3      OPC=movl_m32_r32    
  nop                                               #  55    0xe3bf6  1      OPC=nop             
  nop                                               #  56    0xe3bf7  1      OPC=nop             
  nop                                               #  57    0xe3bf8  1      OPC=nop             
  nop                                               #  58    0xe3bf9  1      OPC=nop             
  nop                                               #  59    0xe3bfa  1      OPC=nop             
  nop                                               #  60    0xe3bfb  1      OPC=nop             
  nop                                               #  61    0xe3bfc  1      OPC=nop             
  nop                                               #  62    0xe3bfd  1      OPC=nop             
  nop                                               #  63    0xe3bfe  1      OPC=nop             
  nop                                               #  64    0xe3bff  1      OPC=nop             
  nop                                               #  65    0xe3c00  1      OPC=nop             
  nop                                               #  66    0xe3c01  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe3c02  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  68    0xe3c07  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  69    0xe3c0a  2      OPC=movl_r32_r32    
  nop                                               #  70    0xe3c0c  1      OPC=nop             
  nop                                               #  71    0xe3c0d  1      OPC=nop             
  nop                                               #  72    0xe3c0e  1      OPC=nop             
  nop                                               #  73    0xe3c0f  1      OPC=nop             
  nop                                               #  74    0xe3c10  1      OPC=nop             
  nop                                               #  75    0xe3c11  1      OPC=nop             
  nop                                               #  76    0xe3c12  1      OPC=nop             
  nop                                               #  77    0xe3c13  1      OPC=nop             
  nop                                               #  78    0xe3c14  1      OPC=nop             
  nop                                               #  79    0xe3c15  1      OPC=nop             
  nop                                               #  80    0xe3c16  1      OPC=nop             
  nop                                               #  81    0xe3c17  1      OPC=nop             
  nop                                               #  82    0xe3c18  1      OPC=nop             
  nop                                               #  83    0xe3c19  1      OPC=nop             
  nop                                               #  84    0xe3c1a  1      OPC=nop             
  nop                                               #  85    0xe3c1b  1      OPC=nop             
  nop                                               #  86    0xe3c1c  1      OPC=nop             
  nop                                               #  87    0xe3c1d  1      OPC=nop             
  nop                                               #  88    0xe3c1e  1      OPC=nop             
  nop                                               #  89    0xe3c1f  1      OPC=nop             
  nop                                               #  90    0xe3c20  1      OPC=nop             
  nop                                               #  91    0xe3c21  1      OPC=nop             
  callq ._Unwind_Resume                             #  92    0xe3c22  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7codecvtIcc10_mbstate_tEC1EPij, .-_ZNSt7codecvtIcc10_mbstate_tEC1EPij

