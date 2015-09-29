  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tEC1EPij
  .type _ZNSt7codecvtIcc10_mbstate_tEC1EPij, @function

#! file-offset 0x1245a0
#! rip-offset  0xe45a0
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tEC1EPij:               #        0xe45a0  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe45a0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe45a1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe45a3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe45a5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe45a8  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe45ab  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe45ad  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)                   #  8     0xe45af  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe45b7  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe45ba  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe45be  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe45c0  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe45c4  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe45c6  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe45cb  1      OPC=nop             
  nop                                               #  16    0xe45cc  1      OPC=nop             
  nop                                               #  17    0xe45cd  1      OPC=nop             
  nop                                               #  18    0xe45ce  1      OPC=nop             
  nop                                               #  19    0xe45cf  1      OPC=nop             
  nop                                               #  20    0xe45d0  1      OPC=nop             
  nop                                               #  21    0xe45d1  1      OPC=nop             
  nop                                               #  22    0xe45d2  1      OPC=nop             
  nop                                               #  23    0xe45d3  1      OPC=nop             
  nop                                               #  24    0xe45d4  1      OPC=nop             
  nop                                               #  25    0xe45d5  1      OPC=nop             
  nop                                               #  26    0xe45d6  1      OPC=nop             
  nop                                               #  27    0xe45d7  1      OPC=nop             
  nop                                               #  28    0xe45d8  1      OPC=nop             
  nop                                               #  29    0xe45d9  1      OPC=nop             
  nop                                               #  30    0xe45da  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe45db  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe45e0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe45e2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xe45e7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xe45ea  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xe45ed  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xe45ee  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xe45f0  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xe45f7  1      OPC=nop             
  nop                                               #  40    0xe45f8  1      OPC=nop             
  nop                                               #  41    0xe45f9  1      OPC=nop             
  nop                                               #  42    0xe45fa  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xe45fb  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xe45fe  3      OPC=jmpq_r64        
  nop                                               #  45    0xe4601  1      OPC=nop             
  nop                                               #  46    0xe4602  1      OPC=nop             
  nop                                               #  47    0xe4603  1      OPC=nop             
  nop                                               #  48    0xe4604  1      OPC=nop             
  nop                                               #  49    0xe4605  1      OPC=nop             
  nop                                               #  50    0xe4606  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xe4607  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  52    0xe4609  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)                   #  53    0xe460b  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  54    0xe4613  3      OPC=movl_m32_r32    
  nop                                               #  55    0xe4616  1      OPC=nop             
  nop                                               #  56    0xe4617  1      OPC=nop             
  nop                                               #  57    0xe4618  1      OPC=nop             
  nop                                               #  58    0xe4619  1      OPC=nop             
  nop                                               #  59    0xe461a  1      OPC=nop             
  nop                                               #  60    0xe461b  1      OPC=nop             
  nop                                               #  61    0xe461c  1      OPC=nop             
  nop                                               #  62    0xe461d  1      OPC=nop             
  nop                                               #  63    0xe461e  1      OPC=nop             
  nop                                               #  64    0xe461f  1      OPC=nop             
  nop                                               #  65    0xe4620  1      OPC=nop             
  nop                                               #  66    0xe4621  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe4622  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  68    0xe4627  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  69    0xe462a  2      OPC=movl_r32_r32    
  nop                                               #  70    0xe462c  1      OPC=nop             
  nop                                               #  71    0xe462d  1      OPC=nop             
  nop                                               #  72    0xe462e  1      OPC=nop             
  nop                                               #  73    0xe462f  1      OPC=nop             
  nop                                               #  74    0xe4630  1      OPC=nop             
  nop                                               #  75    0xe4631  1      OPC=nop             
  nop                                               #  76    0xe4632  1      OPC=nop             
  nop                                               #  77    0xe4633  1      OPC=nop             
  nop                                               #  78    0xe4634  1      OPC=nop             
  nop                                               #  79    0xe4635  1      OPC=nop             
  nop                                               #  80    0xe4636  1      OPC=nop             
  nop                                               #  81    0xe4637  1      OPC=nop             
  nop                                               #  82    0xe4638  1      OPC=nop             
  nop                                               #  83    0xe4639  1      OPC=nop             
  nop                                               #  84    0xe463a  1      OPC=nop             
  nop                                               #  85    0xe463b  1      OPC=nop             
  nop                                               #  86    0xe463c  1      OPC=nop             
  nop                                               #  87    0xe463d  1      OPC=nop             
  nop                                               #  88    0xe463e  1      OPC=nop             
  nop                                               #  89    0xe463f  1      OPC=nop             
  nop                                               #  90    0xe4640  1      OPC=nop             
  nop                                               #  91    0xe4641  1      OPC=nop             
  callq ._Unwind_Resume                             #  92    0xe4642  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7codecvtIcc10_mbstate_tEC1EPij, .-_ZNSt7codecvtIcc10_mbstate_tEC1EPij

