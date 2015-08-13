  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tEC2Ej
  .type _ZNSt7codecvtIcc10_mbstate_tEC2Ej, @function

#! file-offset 0x123ea0
#! rip-offset  0xe3ea0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tEC2Ej:             #        0xe3ea0  0      OPC=<label>         
  pushq %rbx                                    #  1     0xe3ea0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xe3ea1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xe3ea3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xe3ea5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xe3ea8  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xe3eab  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xe3ead  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)               #  8     0xe3eaf  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xe3eb7  3      OPC=setne_r8        
  nop                                           #  10    0xe3eba  1      OPC=nop             
  nop                                           #  11    0xe3ebb  1      OPC=nop             
  nop                                           #  12    0xe3ebc  1      OPC=nop             
  nop                                           #  13    0xe3ebd  1      OPC=nop             
  nop                                           #  14    0xe3ebe  1      OPC=nop             
  nop                                           #  15    0xe3ebf  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xe3ec0  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xe3ec2  5      OPC=movl_m32_r32    
  nop                                           #  18    0xe3ec7  1      OPC=nop             
  nop                                           #  19    0xe3ec8  1      OPC=nop             
  nop                                           #  20    0xe3ec9  1      OPC=nop             
  nop                                           #  21    0xe3eca  1      OPC=nop             
  nop                                           #  22    0xe3ecb  1      OPC=nop             
  nop                                           #  23    0xe3ecc  1      OPC=nop             
  nop                                           #  24    0xe3ecd  1      OPC=nop             
  nop                                           #  25    0xe3ece  1      OPC=nop             
  nop                                           #  26    0xe3ecf  1      OPC=nop             
  nop                                           #  27    0xe3ed0  1      OPC=nop             
  nop                                           #  28    0xe3ed1  1      OPC=nop             
  nop                                           #  29    0xe3ed2  1      OPC=nop             
  nop                                           #  30    0xe3ed3  1      OPC=nop             
  nop                                           #  31    0xe3ed4  1      OPC=nop             
  nop                                           #  32    0xe3ed5  1      OPC=nop             
  nop                                           #  33    0xe3ed6  1      OPC=nop             
  nop                                           #  34    0xe3ed7  1      OPC=nop             
  nop                                           #  35    0xe3ed8  1      OPC=nop             
  nop                                           #  36    0xe3ed9  1      OPC=nop             
  nop                                           #  37    0xe3eda  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xe3edb  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xe3ee0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xe3ee2  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xe3ee7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xe3eea  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xe3eed  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xe3eee  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xe3ef0  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xe3ef7  1      OPC=nop             
  nop                                           #  47    0xe3ef8  1      OPC=nop             
  nop                                           #  48    0xe3ef9  1      OPC=nop             
  nop                                           #  49    0xe3efa  1      OPC=nop             
  addq %r15, %r11                               #  50    0xe3efb  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xe3efe  3      OPC=jmpq_r64        
  nop                                           #  52    0xe3f01  1      OPC=nop             
  nop                                           #  53    0xe3f02  1      OPC=nop             
  nop                                           #  54    0xe3f03  1      OPC=nop             
  nop                                           #  55    0xe3f04  1      OPC=nop             
  nop                                           #  56    0xe3f05  1      OPC=nop             
  nop                                           #  57    0xe3f06  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xe3f07  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  59    0xe3f09  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)               #  60    0xe3f0b  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                          #  61    0xe3f13  4      OPC=movl_m32_r32    
  nop                                           #  62    0xe3f17  1      OPC=nop             
  nop                                           #  63    0xe3f18  1      OPC=nop             
  nop                                           #  64    0xe3f19  1      OPC=nop             
  nop                                           #  65    0xe3f1a  1      OPC=nop             
  nop                                           #  66    0xe3f1b  1      OPC=nop             
  nop                                           #  67    0xe3f1c  1      OPC=nop             
  nop                                           #  68    0xe3f1d  1      OPC=nop             
  nop                                           #  69    0xe3f1e  1      OPC=nop             
  nop                                           #  70    0xe3f1f  1      OPC=nop             
  nop                                           #  71    0xe3f20  1      OPC=nop             
  nop                                           #  72    0xe3f21  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  73    0xe3f22  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  74    0xe3f27  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  75    0xe3f2b  2      OPC=movl_r32_r32    
  nop                                           #  76    0xe3f2d  1      OPC=nop             
  nop                                           #  77    0xe3f2e  1      OPC=nop             
  nop                                           #  78    0xe3f2f  1      OPC=nop             
  nop                                           #  79    0xe3f30  1      OPC=nop             
  nop                                           #  80    0xe3f31  1      OPC=nop             
  nop                                           #  81    0xe3f32  1      OPC=nop             
  nop                                           #  82    0xe3f33  1      OPC=nop             
  nop                                           #  83    0xe3f34  1      OPC=nop             
  nop                                           #  84    0xe3f35  1      OPC=nop             
  nop                                           #  85    0xe3f36  1      OPC=nop             
  nop                                           #  86    0xe3f37  1      OPC=nop             
  nop                                           #  87    0xe3f38  1      OPC=nop             
  nop                                           #  88    0xe3f39  1      OPC=nop             
  nop                                           #  89    0xe3f3a  1      OPC=nop             
  nop                                           #  90    0xe3f3b  1      OPC=nop             
  nop                                           #  91    0xe3f3c  1      OPC=nop             
  nop                                           #  92    0xe3f3d  1      OPC=nop             
  nop                                           #  93    0xe3f3e  1      OPC=nop             
  nop                                           #  94    0xe3f3f  1      OPC=nop             
  nop                                           #  95    0xe3f40  1      OPC=nop             
  nop                                           #  96    0xe3f41  1      OPC=nop             
  callq ._Unwind_Resume                         #  97    0xe3f42  5      OPC=callq_label     
                                                                                             
.size _ZNSt7codecvtIcc10_mbstate_tEC2Ej, .-_ZNSt7codecvtIcc10_mbstate_tEC2Ej

