  .text
  .globl _ZNSt7collateIwEC1EPij
  .type _ZNSt7collateIwEC1EPij, @function

#! file-offset 0xf4dc0
#! rip-offset  0xb4dc0
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwEC1EPij:                            #        0xb4dc0  0      OPC=<label>         
  pushq %rbx                                        #  1     0xb4dc0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                                   #  2     0xb4dc1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                                   #  3     0xb4dc3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                  #  4     0xb4dc5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                   #  5     0xb4dc8  3      OPC=addq_r64_r64    
  testl %edx, %edx                                  #  6     0xb4dcb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                                   #  7     0xb4dcd  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                   #  8     0xb4dcf  8      OPC=movl_m32_imm32  
  setne %al                                         #  9     0xb4dd7  3      OPC=setne_r8        
  leal 0xc(%rsp), %edi                              #  10    0xb4dda  4      OPC=leal_r32_m16    
  xchgw %ax, %ax                                    #  11    0xb4dde  2      OPC=xchgw_ax_r16    
  movl %esi, 0xc(%rsp)                              #  12    0xb4de0  4      OPC=movl_m32_r32    
  movl %ebx, %ebx                                   #  13    0xb4de4  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                       #  14    0xb4de6  5      OPC=movl_m32_r32    
  nop                                               #  15    0xb4deb  1      OPC=nop             
  nop                                               #  16    0xb4dec  1      OPC=nop             
  nop                                               #  17    0xb4ded  1      OPC=nop             
  nop                                               #  18    0xb4dee  1      OPC=nop             
  nop                                               #  19    0xb4def  1      OPC=nop             
  nop                                               #  20    0xb4df0  1      OPC=nop             
  nop                                               #  21    0xb4df1  1      OPC=nop             
  nop                                               #  22    0xb4df2  1      OPC=nop             
  nop                                               #  23    0xb4df3  1      OPC=nop             
  nop                                               #  24    0xb4df4  1      OPC=nop             
  nop                                               #  25    0xb4df5  1      OPC=nop             
  nop                                               #  26    0xb4df6  1      OPC=nop             
  nop                                               #  27    0xb4df7  1      OPC=nop             
  nop                                               #  28    0xb4df8  1      OPC=nop             
  nop                                               #  29    0xb4df9  1      OPC=nop             
  nop                                               #  30    0xb4dfa  1      OPC=nop             
  callq ._ZNSt6locale5facet17_S_clone_c_localeERPi  #  31    0xb4dfb  5      OPC=callq_label     
  movl %ebx, %ebx                                   #  32    0xb4e00  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                       #  33    0xb4e02  5      OPC=movl_m32_r32    
  addl $0x10, %esp                                  #  34    0xb4e07  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                   #  35    0xb4e0a  3      OPC=addq_r64_r64    
  popq %rbx                                         #  36    0xb4e0d  1      OPC=popq_r64_1      
  popq %r11                                         #  37    0xb4e0e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                           #  38    0xb4e10  7      OPC=andl_r32_imm32  
  nop                                               #  39    0xb4e17  1      OPC=nop             
  nop                                               #  40    0xb4e18  1      OPC=nop             
  nop                                               #  41    0xb4e19  1      OPC=nop             
  nop                                               #  42    0xb4e1a  1      OPC=nop             
  addq %r15, %r11                                   #  43    0xb4e1b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  44    0xb4e1e  3      OPC=jmpq_r64        
  nop                                               #  45    0xb4e21  1      OPC=nop             
  nop                                               #  46    0xb4e22  1      OPC=nop             
  nop                                               #  47    0xb4e23  1      OPC=nop             
  nop                                               #  48    0xb4e24  1      OPC=nop             
  nop                                               #  49    0xb4e25  1      OPC=nop             
  nop                                               #  50    0xb4e26  1      OPC=nop             
  movl %ebx, %edi                                   #  51    0xb4e27  2      OPC=movl_r32_r32    
  movl %eax, (%rsp)                                 #  52    0xb4e29  3      OPC=movl_m32_r32    
  nop                                               #  53    0xb4e2c  1      OPC=nop             
  nop                                               #  54    0xb4e2d  1      OPC=nop             
  nop                                               #  55    0xb4e2e  1      OPC=nop             
  nop                                               #  56    0xb4e2f  1      OPC=nop             
  nop                                               #  57    0xb4e30  1      OPC=nop             
  nop                                               #  58    0xb4e31  1      OPC=nop             
  nop                                               #  59    0xb4e32  1      OPC=nop             
  nop                                               #  60    0xb4e33  1      OPC=nop             
  nop                                               #  61    0xb4e34  1      OPC=nop             
  nop                                               #  62    0xb4e35  1      OPC=nop             
  nop                                               #  63    0xb4e36  1      OPC=nop             
  nop                                               #  64    0xb4e37  1      OPC=nop             
  nop                                               #  65    0xb4e38  1      OPC=nop             
  nop                                               #  66    0xb4e39  1      OPC=nop             
  nop                                               #  67    0xb4e3a  1      OPC=nop             
  nop                                               #  68    0xb4e3b  1      OPC=nop             
  nop                                               #  69    0xb4e3c  1      OPC=nop             
  nop                                               #  70    0xb4e3d  1      OPC=nop             
  nop                                               #  71    0xb4e3e  1      OPC=nop             
  nop                                               #  72    0xb4e3f  1      OPC=nop             
  nop                                               #  73    0xb4e40  1      OPC=nop             
  nop                                               #  74    0xb4e41  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                     #  75    0xb4e42  5      OPC=callq_label     
  movl (%rsp), %eax                                 #  76    0xb4e47  3      OPC=movl_r32_m32    
  movl %eax, %edi                                   #  77    0xb4e4a  2      OPC=movl_r32_r32    
  nop                                               #  78    0xb4e4c  1      OPC=nop             
  nop                                               #  79    0xb4e4d  1      OPC=nop             
  nop                                               #  80    0xb4e4e  1      OPC=nop             
  nop                                               #  81    0xb4e4f  1      OPC=nop             
  nop                                               #  82    0xb4e50  1      OPC=nop             
  nop                                               #  83    0xb4e51  1      OPC=nop             
  nop                                               #  84    0xb4e52  1      OPC=nop             
  nop                                               #  85    0xb4e53  1      OPC=nop             
  nop                                               #  86    0xb4e54  1      OPC=nop             
  nop                                               #  87    0xb4e55  1      OPC=nop             
  nop                                               #  88    0xb4e56  1      OPC=nop             
  nop                                               #  89    0xb4e57  1      OPC=nop             
  nop                                               #  90    0xb4e58  1      OPC=nop             
  nop                                               #  91    0xb4e59  1      OPC=nop             
  nop                                               #  92    0xb4e5a  1      OPC=nop             
  nop                                               #  93    0xb4e5b  1      OPC=nop             
  nop                                               #  94    0xb4e5c  1      OPC=nop             
  nop                                               #  95    0xb4e5d  1      OPC=nop             
  nop                                               #  96    0xb4e5e  1      OPC=nop             
  nop                                               #  97    0xb4e5f  1      OPC=nop             
  nop                                               #  98    0xb4e60  1      OPC=nop             
  nop                                               #  99    0xb4e61  1      OPC=nop             
  callq ._Unwind_Resume                             #  100   0xb4e62  5      OPC=callq_label     
                                                                                                 
.size _ZNSt7collateIwEC1EPij, .-_ZNSt7collateIwEC1EPij

