  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tEC1EPij
  .type _ZNSt7codecvtIwc10_mbstate_tEC1EPij, @function

#! file-offset 0x123d40
#! rip-offset  0xe3d40
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIwc10_mbstate_tEC1EPij:               #        0xe3d40  0      OPC=<label>         
  pushq %rbx                                        #  1     0xe3d40  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xe3d41  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xe3d43  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xe3d45  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xe3d48  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xe3d4b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xe3d4d  2      OPC=movl_r32_r32    
  movl $0x1003d4a8, (%r15,%rbx,1)                   #  8     0xe3d4f  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xe3d57  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xe3d5a  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xe3d5e  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xe3d60  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xe3d64  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xe3d66  5      OPC=movl_m32_r32    
  nop                                               #  15    0xe3d6b  1      OPC=nop             
  nop                                               #  16    0xe3d6c  1      OPC=nop             
  nop                                               #  17    0xe3d6d  1      OPC=nop             
  nop                                               #  18    0xe3d6e  1      OPC=nop             
  nop                                               #  19    0xe3d6f  1      OPC=nop             
  nop                                               #  20    0xe3d70  1      OPC=nop             
  nop                                               #  21    0xe3d71  1      OPC=nop             
  nop                                               #  22    0xe3d72  1      OPC=nop             
  nop                                               #  23    0xe3d73  1      OPC=nop             
  nop                                               #  24    0xe3d74  1      OPC=nop             
  nop                                               #  25    0xe3d75  1      OPC=nop             
  nop                                               #  26    0xe3d76  1      OPC=nop             
  nop                                               #  27    0xe3d77  1      OPC=nop             
  nop                                               #  28    0xe3d78  1      OPC=nop             
  nop                                               #  29    0xe3d79  1      OPC=nop             
  nop                                               #  30    0xe3d7a  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xe3d7b  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xe3d80  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xe3d82  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xe3d87  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xe3d8a  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xe3d8d  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xe3d8e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xe3d90  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xe3d97  1      OPC=nop             
  nop                                               #  40    0xe3d98  1      OPC=nop             
  nop                                               #  41    0xe3d99  1      OPC=nop             
  nop                                               #  42    0xe3d9a  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xe3d9b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xe3d9e  3      OPC=jmpq_r64        
  nop                                               #  45    0xe3da1  1      OPC=nop             
  nop                                               #  46    0xe3da2  1      OPC=nop             
  nop                                               #  47    0xe3da3  1      OPC=nop             
  nop                                               #  48    0xe3da4  1      OPC=nop             
  nop                                               #  49    0xe3da5  1      OPC=nop             
  nop                                               #  50    0xe3da6  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xe3da7  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                   #  52    0xe3da9  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)                   #  53    0xe3dab  8      OPC=movl_m32_imm32  
  movl %eax, (%rsp)                                 #  54    0xe3db3  3      OPC=movl_m32_r32    
  nop                                               #  55    0xe3db6  1      OPC=nop             
  nop                                               #  56    0xe3db7  1      OPC=nop             
  nop                                               #  57    0xe3db8  1      OPC=nop             
  nop                                               #  58    0xe3db9  1      OPC=nop             
  nop                                               #  59    0xe3dba  1      OPC=nop             
  nop                                               #  60    0xe3dbb  1      OPC=nop             
  nop                                               #  61    0xe3dbc  1      OPC=nop             
  nop                                               #  62    0xe3dbd  1      OPC=nop             
  nop                                               #  63    0xe3dbe  1      OPC=nop             
  nop                                               #  64    0xe3dbf  1      OPC=nop             
  nop                                               #  65    0xe3dc0  1      OPC=nop             
  nop                                               #  66    0xe3dc1  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  67    0xe3dc2  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  68    0xe3dc7  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  69    0xe3dca  2      OPC=movl_r32_r32    
  nop                                               #  70    0xe3dcc  1      OPC=nop             
  nop                                               #  71    0xe3dcd  1      OPC=nop             
  nop                                               #  72    0xe3dce  1      OPC=nop             
  nop                                               #  73    0xe3dcf  1      OPC=nop             
  nop                                               #  74    0xe3dd0  1      OPC=nop             
  nop                                               #  75    0xe3dd1  1      OPC=nop             
  nop                                               #  76    0xe3dd2  1      OPC=nop             
  nop                                               #  77    0xe3dd3  1      OPC=nop             
  nop                                               #  78    0xe3dd4  1      OPC=nop             
  nop                                               #  79    0xe3dd5  1      OPC=nop             
  nop                                               #  80    0xe3dd6  1      OPC=nop             
  nop                                               #  81    0xe3dd7  1      OPC=nop             
  nop                                               #  82    0xe3dd8  1      OPC=nop             
  nop                                               #  83    0xe3dd9  1      OPC=nop             
  nop                                               #  84    0xe3dda  1      OPC=nop             
  nop                                               #  85    0xe3ddb  1      OPC=nop             
  nop                                               #  86    0xe3ddc  1      OPC=nop             
  nop                                               #  87    0xe3ddd  1      OPC=nop             
  nop                                               #  88    0xe3dde  1      OPC=nop             
  nop                                               #  89    0xe3ddf  1      OPC=nop             
  nop                                               #  90    0xe3de0  1      OPC=nop             
  nop                                               #  91    0xe3de1  1      OPC=nop             
  callq ._Unwind_Resume                             #  92    0xe3de2  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7codecvtIwc10_mbstate_tEC1EPij, .-_ZNSt7codecvtIwc10_mbstate_tEC1EPij

