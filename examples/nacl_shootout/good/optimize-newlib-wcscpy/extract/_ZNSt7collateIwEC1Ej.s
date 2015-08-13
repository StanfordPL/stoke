  .text
  .globl _ZNSt7collateIwEC1Ej
  .type _ZNSt7collateIwEC1Ej, @function

#! file-offset 0xf4f00
#! rip-offset  0xb4f00
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwEC1Ej:                          #        0xb4f00  0      OPC=<label>         
  pushq %rbx                                    #  1     0xb4f00  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xb4f01  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xb4f03  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xb4f05  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xb4f08  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xb4f0b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xb4f0d  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)               #  8     0xb4f0f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xb4f17  3      OPC=setne_r8        
  nop                                           #  10    0xb4f1a  1      OPC=nop             
  nop                                           #  11    0xb4f1b  1      OPC=nop             
  nop                                           #  12    0xb4f1c  1      OPC=nop             
  nop                                           #  13    0xb4f1d  1      OPC=nop             
  nop                                           #  14    0xb4f1e  1      OPC=nop             
  nop                                           #  15    0xb4f1f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xb4f20  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xb4f22  5      OPC=movl_m32_r32    
  nop                                           #  18    0xb4f27  1      OPC=nop             
  nop                                           #  19    0xb4f28  1      OPC=nop             
  nop                                           #  20    0xb4f29  1      OPC=nop             
  nop                                           #  21    0xb4f2a  1      OPC=nop             
  nop                                           #  22    0xb4f2b  1      OPC=nop             
  nop                                           #  23    0xb4f2c  1      OPC=nop             
  nop                                           #  24    0xb4f2d  1      OPC=nop             
  nop                                           #  25    0xb4f2e  1      OPC=nop             
  nop                                           #  26    0xb4f2f  1      OPC=nop             
  nop                                           #  27    0xb4f30  1      OPC=nop             
  nop                                           #  28    0xb4f31  1      OPC=nop             
  nop                                           #  29    0xb4f32  1      OPC=nop             
  nop                                           #  30    0xb4f33  1      OPC=nop             
  nop                                           #  31    0xb4f34  1      OPC=nop             
  nop                                           #  32    0xb4f35  1      OPC=nop             
  nop                                           #  33    0xb4f36  1      OPC=nop             
  nop                                           #  34    0xb4f37  1      OPC=nop             
  nop                                           #  35    0xb4f38  1      OPC=nop             
  nop                                           #  36    0xb4f39  1      OPC=nop             
  nop                                           #  37    0xb4f3a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xb4f3b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xb4f40  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xb4f42  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xb4f47  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xb4f4a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xb4f4d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xb4f4e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xb4f50  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xb4f57  1      OPC=nop             
  nop                                           #  47    0xb4f58  1      OPC=nop             
  nop                                           #  48    0xb4f59  1      OPC=nop             
  nop                                           #  49    0xb4f5a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xb4f5b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xb4f5e  3      OPC=jmpq_r64        
  nop                                           #  52    0xb4f61  1      OPC=nop             
  nop                                           #  53    0xb4f62  1      OPC=nop             
  nop                                           #  54    0xb4f63  1      OPC=nop             
  nop                                           #  55    0xb4f64  1      OPC=nop             
  nop                                           #  56    0xb4f65  1      OPC=nop             
  nop                                           #  57    0xb4f66  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xb4f67  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                          #  59    0xb4f69  4      OPC=movl_m32_r32    
  nop                                           #  60    0xb4f6d  1      OPC=nop             
  nop                                           #  61    0xb4f6e  1      OPC=nop             
  nop                                           #  62    0xb4f6f  1      OPC=nop             
  nop                                           #  63    0xb4f70  1      OPC=nop             
  nop                                           #  64    0xb4f71  1      OPC=nop             
  nop                                           #  65    0xb4f72  1      OPC=nop             
  nop                                           #  66    0xb4f73  1      OPC=nop             
  nop                                           #  67    0xb4f74  1      OPC=nop             
  nop                                           #  68    0xb4f75  1      OPC=nop             
  nop                                           #  69    0xb4f76  1      OPC=nop             
  nop                                           #  70    0xb4f77  1      OPC=nop             
  nop                                           #  71    0xb4f78  1      OPC=nop             
  nop                                           #  72    0xb4f79  1      OPC=nop             
  nop                                           #  73    0xb4f7a  1      OPC=nop             
  nop                                           #  74    0xb4f7b  1      OPC=nop             
  nop                                           #  75    0xb4f7c  1      OPC=nop             
  nop                                           #  76    0xb4f7d  1      OPC=nop             
  nop                                           #  77    0xb4f7e  1      OPC=nop             
  nop                                           #  78    0xb4f7f  1      OPC=nop             
  nop                                           #  79    0xb4f80  1      OPC=nop             
  nop                                           #  80    0xb4f81  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  81    0xb4f82  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  82    0xb4f87  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  83    0xb4f8b  2      OPC=movl_r32_r32    
  nop                                           #  84    0xb4f8d  1      OPC=nop             
  nop                                           #  85    0xb4f8e  1      OPC=nop             
  nop                                           #  86    0xb4f8f  1      OPC=nop             
  nop                                           #  87    0xb4f90  1      OPC=nop             
  nop                                           #  88    0xb4f91  1      OPC=nop             
  nop                                           #  89    0xb4f92  1      OPC=nop             
  nop                                           #  90    0xb4f93  1      OPC=nop             
  nop                                           #  91    0xb4f94  1      OPC=nop             
  nop                                           #  92    0xb4f95  1      OPC=nop             
  nop                                           #  93    0xb4f96  1      OPC=nop             
  nop                                           #  94    0xb4f97  1      OPC=nop             
  nop                                           #  95    0xb4f98  1      OPC=nop             
  nop                                           #  96    0xb4f99  1      OPC=nop             
  nop                                           #  97    0xb4f9a  1      OPC=nop             
  nop                                           #  98    0xb4f9b  1      OPC=nop             
  nop                                           #  99    0xb4f9c  1      OPC=nop             
  nop                                           #  100   0xb4f9d  1      OPC=nop             
  nop                                           #  101   0xb4f9e  1      OPC=nop             
  nop                                           #  102   0xb4f9f  1      OPC=nop             
  nop                                           #  103   0xb4fa0  1      OPC=nop             
  nop                                           #  104   0xb4fa1  1      OPC=nop             
  callq ._Unwind_Resume                         #  105   0xb4fa2  5      OPC=callq_label     
                                                                                             
.size _ZNSt7collateIwEC1Ej, .-_ZNSt7collateIwEC1Ej

