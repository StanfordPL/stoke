  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tEC2EPij
  .type _ZNSt7codecvtIcc10_mbstate_tEC2EPij, @function

#! file-offset 0x124640
#! rip-offset  0xe4640
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tEC2EPij:               #        0xe4640  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe4640  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe4641  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe4643  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe4645  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe4648  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe464b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe464d  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)                   #  8     0xe464f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe4657  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe465a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe465e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe4660  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe4664  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe4666  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe466b  1      OPC=nop             
  nop                                               #  16    0xe466c  1      OPC=nop             
  nop                                               #  17    0xe466d  1      OPC=nop             
  nop                                               #  18    0xe466e  1      OPC=nop             
  nop                                               #  19    0xe466f  1      OPC=nop             
  nop                                               #  20    0xe4670  1      OPC=nop             
  nop                                               #  21    0xe4671  1      OPC=nop             
  nop                                               #  22    0xe4672  1      OPC=nop             
  nop                                               #  23    0xe4673  1      OPC=nop             
  nop                                               #  24    0xe4674  1      OPC=nop             
  nop                                               #  25    0xe4675  1      OPC=nop             
  nop                                               #  26    0xe4676  1      OPC=nop             
  nop                                               #  27    0xe4677  1      OPC=nop             
  nop                                               #  28    0xe4678  1      OPC=nop             
  nop                                               #  29    0xe4679  1      OPC=nop             
  nop                                               #  30    0xe467a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe467b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe4680  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe4682  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xe4687  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xe468a  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xe468d  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xe468e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xe4690  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xe4697  1      OPC=nop             
  nop                                               #  40    0xe4698  1      OPC=nop             
  nop                                               #  41    0xe4699  1      OPC=nop             
  nop                                               #  42    0xe469a  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xe469b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xe469e  3      OPC=jmpq_r64        
  nop                                               #  45    0xe46a1  1      OPC=nop             
  nop                                               #  46    0xe46a2  1      OPC=nop             
  nop                                               #  47    0xe46a3  1      OPC=nop             
  nop                                               #  48    0xe46a4  1      OPC=nop             
  nop                                               #  49    0xe46a5  1      OPC=nop             
  nop                                               #  50    0xe46a6  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xe46a7  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  52    0xe46a9  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)                   #  53    0xe46ab  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  54    0xe46b3  3      OPC=movl_m32_r32    
  nop                                               #  55    0xe46b6  1      OPC=nop             
  nop                                               #  56    0xe46b7  1      OPC=nop             
  nop                                               #  57    0xe46b8  1      OPC=nop             
  nop                                               #  58    0xe46b9  1      OPC=nop             
  nop                                               #  59    0xe46ba  1      OPC=nop             
  nop                                               #  60    0xe46bb  1      OPC=nop             
  nop                                               #  61    0xe46bc  1      OPC=nop             
  nop                                               #  62    0xe46bd  1      OPC=nop             
  nop                                               #  63    0xe46be  1      OPC=nop             
  nop                                               #  64    0xe46bf  1      OPC=nop             
  nop                                               #  65    0xe46c0  1      OPC=nop             
  nop                                               #  66    0xe46c1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe46c2  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  68    0xe46c7  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  69    0xe46ca  2      OPC=movl_r32_r32    
  nop                                               #  70    0xe46cc  1      OPC=nop             
  nop                                               #  71    0xe46cd  1      OPC=nop             
  nop                                               #  72    0xe46ce  1      OPC=nop             
  nop                                               #  73    0xe46cf  1      OPC=nop             
  nop                                               #  74    0xe46d0  1      OPC=nop             
  nop                                               #  75    0xe46d1  1      OPC=nop             
  nop                                               #  76    0xe46d2  1      OPC=nop             
  nop                                               #  77    0xe46d3  1      OPC=nop             
  nop                                               #  78    0xe46d4  1      OPC=nop             
  nop                                               #  79    0xe46d5  1      OPC=nop             
  nop                                               #  80    0xe46d6  1      OPC=nop             
  nop                                               #  81    0xe46d7  1      OPC=nop             
  nop                                               #  82    0xe46d8  1      OPC=nop             
  nop                                               #  83    0xe46d9  1      OPC=nop             
  nop                                               #  84    0xe46da  1      OPC=nop             
  nop                                               #  85    0xe46db  1      OPC=nop             
  nop                                               #  86    0xe46dc  1      OPC=nop             
  nop                                               #  87    0xe46dd  1      OPC=nop             
  nop                                               #  88    0xe46de  1      OPC=nop             
  nop                                               #  89    0xe46df  1      OPC=nop             
  nop                                               #  90    0xe46e0  1      OPC=nop             
  nop                                               #  91    0xe46e1  1      OPC=nop             
  callq ._Unwind_Resume                             #  92    0xe46e2  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7codecvtIcc10_mbstate_tEC2EPij, .-_ZNSt7codecvtIcc10_mbstate_tEC2EPij

