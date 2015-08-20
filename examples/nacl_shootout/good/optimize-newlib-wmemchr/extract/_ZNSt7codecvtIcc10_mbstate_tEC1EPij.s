  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tEC1EPij
  .type _ZNSt7codecvtIcc10_mbstate_tEC1EPij, @function

#! file-offset 0x123e80
#! rip-offset  0xe3e80
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tEC1EPij:               #        0xe3e80  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe3e80  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe3e81  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe3e83  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe3e85  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe3e88  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe3e8b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe3e8d  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)                   #  8     0xe3e8f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe3e97  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe3e9a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe3e9e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe3ea0  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe3ea4  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe3ea6  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe3eab  1      OPC=nop             
  nop                                               #  16    0xe3eac  1      OPC=nop             
  nop                                               #  17    0xe3ead  1      OPC=nop             
  nop                                               #  18    0xe3eae  1      OPC=nop             
  nop                                               #  19    0xe3eaf  1      OPC=nop             
  nop                                               #  20    0xe3eb0  1      OPC=nop             
  nop                                               #  21    0xe3eb1  1      OPC=nop             
  nop                                               #  22    0xe3eb2  1      OPC=nop             
  nop                                               #  23    0xe3eb3  1      OPC=nop             
  nop                                               #  24    0xe3eb4  1      OPC=nop             
  nop                                               #  25    0xe3eb5  1      OPC=nop             
  nop                                               #  26    0xe3eb6  1      OPC=nop             
  nop                                               #  27    0xe3eb7  1      OPC=nop             
  nop                                               #  28    0xe3eb8  1      OPC=nop             
  nop                                               #  29    0xe3eb9  1      OPC=nop             
  nop                                               #  30    0xe3eba  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe3ebb  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe3ec0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe3ec2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xe3ec7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xe3eca  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xe3ecd  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xe3ece  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xe3ed0  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xe3ed7  1      OPC=nop             
  nop                                               #  40    0xe3ed8  1      OPC=nop             
  nop                                               #  41    0xe3ed9  1      OPC=nop             
  nop                                               #  42    0xe3eda  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xe3edb  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xe3ede  3      OPC=jmpq_r64        
  nop                                               #  45    0xe3ee1  1      OPC=nop             
  nop                                               #  46    0xe3ee2  1      OPC=nop             
  nop                                               #  47    0xe3ee3  1      OPC=nop             
  nop                                               #  48    0xe3ee4  1      OPC=nop             
  nop                                               #  49    0xe3ee5  1      OPC=nop             
  nop                                               #  50    0xe3ee6  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xe3ee7  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  52    0xe3ee9  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)                   #  53    0xe3eeb  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  54    0xe3ef3  3      OPC=movl_m32_r32    
  nop                                               #  55    0xe3ef6  1      OPC=nop             
  nop                                               #  56    0xe3ef7  1      OPC=nop             
  nop                                               #  57    0xe3ef8  1      OPC=nop             
  nop                                               #  58    0xe3ef9  1      OPC=nop             
  nop                                               #  59    0xe3efa  1      OPC=nop             
  nop                                               #  60    0xe3efb  1      OPC=nop             
  nop                                               #  61    0xe3efc  1      OPC=nop             
  nop                                               #  62    0xe3efd  1      OPC=nop             
  nop                                               #  63    0xe3efe  1      OPC=nop             
  nop                                               #  64    0xe3eff  1      OPC=nop             
  nop                                               #  65    0xe3f00  1      OPC=nop             
  nop                                               #  66    0xe3f01  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe3f02  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  68    0xe3f07  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  69    0xe3f0a  2      OPC=movl_r32_r32    
  nop                                               #  70    0xe3f0c  1      OPC=nop             
  nop                                               #  71    0xe3f0d  1      OPC=nop             
  nop                                               #  72    0xe3f0e  1      OPC=nop             
  nop                                               #  73    0xe3f0f  1      OPC=nop             
  nop                                               #  74    0xe3f10  1      OPC=nop             
  nop                                               #  75    0xe3f11  1      OPC=nop             
  nop                                               #  76    0xe3f12  1      OPC=nop             
  nop                                               #  77    0xe3f13  1      OPC=nop             
  nop                                               #  78    0xe3f14  1      OPC=nop             
  nop                                               #  79    0xe3f15  1      OPC=nop             
  nop                                               #  80    0xe3f16  1      OPC=nop             
  nop                                               #  81    0xe3f17  1      OPC=nop             
  nop                                               #  82    0xe3f18  1      OPC=nop             
  nop                                               #  83    0xe3f19  1      OPC=nop             
  nop                                               #  84    0xe3f1a  1      OPC=nop             
  nop                                               #  85    0xe3f1b  1      OPC=nop             
  nop                                               #  86    0xe3f1c  1      OPC=nop             
  nop                                               #  87    0xe3f1d  1      OPC=nop             
  nop                                               #  88    0xe3f1e  1      OPC=nop             
  nop                                               #  89    0xe3f1f  1      OPC=nop             
  nop                                               #  90    0xe3f20  1      OPC=nop             
  nop                                               #  91    0xe3f21  1      OPC=nop             
  callq ._Unwind_Resume                             #  92    0xe3f22  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7codecvtIcc10_mbstate_tEC1EPij, .-_ZNSt7codecvtIcc10_mbstate_tEC1EPij

