  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tEC1EPij
  .type _ZNSt7codecvtIwc10_mbstate_tEC1EPij, @function

#! file-offset 0x123a40
#! rip-offset  0xe3a40
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIwc10_mbstate_tEC1EPij:               #        0xe3a40  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe3a40  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe3a41  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe3a43  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe3a45  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe3a48  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe3a4b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe3a4d  2      OPC=movl_r32_r32    
  movl $0x1003d4a8, (%r15,%rbx,1)                   #  8     0xe3a4f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe3a57  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe3a5a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe3a5e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe3a60  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe3a64  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe3a66  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe3a6b  1      OPC=nop             
  nop                                               #  16    0xe3a6c  1      OPC=nop             
  nop                                               #  17    0xe3a6d  1      OPC=nop             
  nop                                               #  18    0xe3a6e  1      OPC=nop             
  nop                                               #  19    0xe3a6f  1      OPC=nop             
  nop                                               #  20    0xe3a70  1      OPC=nop             
  nop                                               #  21    0xe3a71  1      OPC=nop             
  nop                                               #  22    0xe3a72  1      OPC=nop             
  nop                                               #  23    0xe3a73  1      OPC=nop             
  nop                                               #  24    0xe3a74  1      OPC=nop             
  nop                                               #  25    0xe3a75  1      OPC=nop             
  nop                                               #  26    0xe3a76  1      OPC=nop             
  nop                                               #  27    0xe3a77  1      OPC=nop             
  nop                                               #  28    0xe3a78  1      OPC=nop             
  nop                                               #  29    0xe3a79  1      OPC=nop             
  nop                                               #  30    0xe3a7a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe3a7b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe3a80  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe3a82  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xe3a87  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xe3a8a  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xe3a8d  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xe3a8e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xe3a90  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xe3a97  1      OPC=nop             
  nop                                               #  40    0xe3a98  1      OPC=nop             
  nop                                               #  41    0xe3a99  1      OPC=nop             
  nop                                               #  42    0xe3a9a  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xe3a9b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xe3a9e  3      OPC=jmpq_r64        
  nop                                               #  45    0xe3aa1  1      OPC=nop             
  nop                                               #  46    0xe3aa2  1      OPC=nop             
  nop                                               #  47    0xe3aa3  1      OPC=nop             
  nop                                               #  48    0xe3aa4  1      OPC=nop             
  nop                                               #  49    0xe3aa5  1      OPC=nop             
  nop                                               #  50    0xe3aa6  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xe3aa7  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  52    0xe3aa9  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)                   #  53    0xe3aab  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  54    0xe3ab3  3      OPC=movl_m32_r32    
  nop                                               #  55    0xe3ab6  1      OPC=nop             
  nop                                               #  56    0xe3ab7  1      OPC=nop             
  nop                                               #  57    0xe3ab8  1      OPC=nop             
  nop                                               #  58    0xe3ab9  1      OPC=nop             
  nop                                               #  59    0xe3aba  1      OPC=nop             
  nop                                               #  60    0xe3abb  1      OPC=nop             
  nop                                               #  61    0xe3abc  1      OPC=nop             
  nop                                               #  62    0xe3abd  1      OPC=nop             
  nop                                               #  63    0xe3abe  1      OPC=nop             
  nop                                               #  64    0xe3abf  1      OPC=nop             
  nop                                               #  65    0xe3ac0  1      OPC=nop             
  nop                                               #  66    0xe3ac1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe3ac2  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  68    0xe3ac7  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  69    0xe3aca  2      OPC=movl_r32_r32    
  nop                                               #  70    0xe3acc  1      OPC=nop             
  nop                                               #  71    0xe3acd  1      OPC=nop             
  nop                                               #  72    0xe3ace  1      OPC=nop             
  nop                                               #  73    0xe3acf  1      OPC=nop             
  nop                                               #  74    0xe3ad0  1      OPC=nop             
  nop                                               #  75    0xe3ad1  1      OPC=nop             
  nop                                               #  76    0xe3ad2  1      OPC=nop             
  nop                                               #  77    0xe3ad3  1      OPC=nop             
  nop                                               #  78    0xe3ad4  1      OPC=nop             
  nop                                               #  79    0xe3ad5  1      OPC=nop             
  nop                                               #  80    0xe3ad6  1      OPC=nop             
  nop                                               #  81    0xe3ad7  1      OPC=nop             
  nop                                               #  82    0xe3ad8  1      OPC=nop             
  nop                                               #  83    0xe3ad9  1      OPC=nop             
  nop                                               #  84    0xe3ada  1      OPC=nop             
  nop                                               #  85    0xe3adb  1      OPC=nop             
  nop                                               #  86    0xe3adc  1      OPC=nop             
  nop                                               #  87    0xe3add  1      OPC=nop             
  nop                                               #  88    0xe3ade  1      OPC=nop             
  nop                                               #  89    0xe3adf  1      OPC=nop             
  nop                                               #  90    0xe3ae0  1      OPC=nop             
  nop                                               #  91    0xe3ae1  1      OPC=nop             
  callq ._Unwind_Resume                             #  92    0xe3ae2  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7codecvtIwc10_mbstate_tEC1EPij, .-_ZNSt7codecvtIwc10_mbstate_tEC1EPij

