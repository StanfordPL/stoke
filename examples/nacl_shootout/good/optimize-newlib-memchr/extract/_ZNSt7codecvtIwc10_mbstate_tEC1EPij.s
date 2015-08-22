  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tEC1EPij
  .type _ZNSt7codecvtIwc10_mbstate_tEC1EPij, @function

#! file-offset 0x124460
#! rip-offset  0xe4460
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIwc10_mbstate_tEC1EPij:               #        0xe4460  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe4460  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe4461  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe4463  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe4465  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe4468  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe446b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe446d  2      OPC=movl_r32_r32    
  movl $0x1003d4a8, (%r15,%rbx,1)                   #  8     0xe446f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe4477  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe447a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe447e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe4480  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe4484  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe4486  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe448b  1      OPC=nop             
  nop                                               #  16    0xe448c  1      OPC=nop             
  nop                                               #  17    0xe448d  1      OPC=nop             
  nop                                               #  18    0xe448e  1      OPC=nop             
  nop                                               #  19    0xe448f  1      OPC=nop             
  nop                                               #  20    0xe4490  1      OPC=nop             
  nop                                               #  21    0xe4491  1      OPC=nop             
  nop                                               #  22    0xe4492  1      OPC=nop             
  nop                                               #  23    0xe4493  1      OPC=nop             
  nop                                               #  24    0xe4494  1      OPC=nop             
  nop                                               #  25    0xe4495  1      OPC=nop             
  nop                                               #  26    0xe4496  1      OPC=nop             
  nop                                               #  27    0xe4497  1      OPC=nop             
  nop                                               #  28    0xe4498  1      OPC=nop             
  nop                                               #  29    0xe4499  1      OPC=nop             
  nop                                               #  30    0xe449a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe449b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe44a0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe44a2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xe44a7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xe44aa  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xe44ad  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xe44ae  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xe44b0  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xe44b7  1      OPC=nop             
  nop                                               #  40    0xe44b8  1      OPC=nop             
  nop                                               #  41    0xe44b9  1      OPC=nop             
  nop                                               #  42    0xe44ba  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xe44bb  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xe44be  3      OPC=jmpq_r64        
  nop                                               #  45    0xe44c1  1      OPC=nop             
  nop                                               #  46    0xe44c2  1      OPC=nop             
  nop                                               #  47    0xe44c3  1      OPC=nop             
  nop                                               #  48    0xe44c4  1      OPC=nop             
  nop                                               #  49    0xe44c5  1      OPC=nop             
  nop                                               #  50    0xe44c6  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xe44c7  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  52    0xe44c9  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)                   #  53    0xe44cb  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  54    0xe44d3  3      OPC=movl_m32_r32    
  nop                                               #  55    0xe44d6  1      OPC=nop             
  nop                                               #  56    0xe44d7  1      OPC=nop             
  nop                                               #  57    0xe44d8  1      OPC=nop             
  nop                                               #  58    0xe44d9  1      OPC=nop             
  nop                                               #  59    0xe44da  1      OPC=nop             
  nop                                               #  60    0xe44db  1      OPC=nop             
  nop                                               #  61    0xe44dc  1      OPC=nop             
  nop                                               #  62    0xe44dd  1      OPC=nop             
  nop                                               #  63    0xe44de  1      OPC=nop             
  nop                                               #  64    0xe44df  1      OPC=nop             
  nop                                               #  65    0xe44e0  1      OPC=nop             
  nop                                               #  66    0xe44e1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe44e2  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  68    0xe44e7  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  69    0xe44ea  2      OPC=movl_r32_r32    
  nop                                               #  70    0xe44ec  1      OPC=nop             
  nop                                               #  71    0xe44ed  1      OPC=nop             
  nop                                               #  72    0xe44ee  1      OPC=nop             
  nop                                               #  73    0xe44ef  1      OPC=nop             
  nop                                               #  74    0xe44f0  1      OPC=nop             
  nop                                               #  75    0xe44f1  1      OPC=nop             
  nop                                               #  76    0xe44f2  1      OPC=nop             
  nop                                               #  77    0xe44f3  1      OPC=nop             
  nop                                               #  78    0xe44f4  1      OPC=nop             
  nop                                               #  79    0xe44f5  1      OPC=nop             
  nop                                               #  80    0xe44f6  1      OPC=nop             
  nop                                               #  81    0xe44f7  1      OPC=nop             
  nop                                               #  82    0xe44f8  1      OPC=nop             
  nop                                               #  83    0xe44f9  1      OPC=nop             
  nop                                               #  84    0xe44fa  1      OPC=nop             
  nop                                               #  85    0xe44fb  1      OPC=nop             
  nop                                               #  86    0xe44fc  1      OPC=nop             
  nop                                               #  87    0xe44fd  1      OPC=nop             
  nop                                               #  88    0xe44fe  1      OPC=nop             
  nop                                               #  89    0xe44ff  1      OPC=nop             
  nop                                               #  90    0xe4500  1      OPC=nop             
  nop                                               #  91    0xe4501  1      OPC=nop             
  callq ._Unwind_Resume                             #  92    0xe4502  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7codecvtIwc10_mbstate_tEC1EPij, .-_ZNSt7codecvtIwc10_mbstate_tEC1EPij

