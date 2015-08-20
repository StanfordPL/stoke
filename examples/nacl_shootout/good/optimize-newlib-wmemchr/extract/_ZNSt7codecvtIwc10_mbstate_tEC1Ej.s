  .text
  .globl _ZNSt7codecvtIwc10_mbstate_tEC1Ej
  .type _ZNSt7codecvtIwc10_mbstate_tEC1Ej, @function

#! file-offset 0x123fc0
#! rip-offset  0xe3fc0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIwc10_mbstate_tEC1Ej:             #        0xe3fc0  0      OPC=<label>         
  pushq %rbx                                    #  1     0xe3fc0  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xe3fc1  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xe3fc3  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xe3fc5  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xe3fc8  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xe3fcb  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xe3fcd  2      OPC=movl_r32_r32    
  movl $0x1003d4a8, (%r15,%rbx,1)               #  8     0xe3fcf  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xe3fd7  3      OPC=setne_r8        
  nop                                           #  10    0xe3fda  1      OPC=nop             
  nop                                           #  11    0xe3fdb  1      OPC=nop             
  nop                                           #  12    0xe3fdc  1      OPC=nop             
  nop                                           #  13    0xe3fdd  1      OPC=nop             
  nop                                           #  14    0xe3fde  1      OPC=nop             
  nop                                           #  15    0xe3fdf  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xe3fe0  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xe3fe2  5      OPC=movl_m32_r32    
  nop                                           #  18    0xe3fe7  1      OPC=nop             
  nop                                           #  19    0xe3fe8  1      OPC=nop             
  nop                                           #  20    0xe3fe9  1      OPC=nop             
  nop                                           #  21    0xe3fea  1      OPC=nop             
  nop                                           #  22    0xe3feb  1      OPC=nop             
  nop                                           #  23    0xe3fec  1      OPC=nop             
  nop                                           #  24    0xe3fed  1      OPC=nop             
  nop                                           #  25    0xe3fee  1      OPC=nop             
  nop                                           #  26    0xe3fef  1      OPC=nop             
  nop                                           #  27    0xe3ff0  1      OPC=nop             
  nop                                           #  28    0xe3ff1  1      OPC=nop             
  nop                                           #  29    0xe3ff2  1      OPC=nop             
  nop                                           #  30    0xe3ff3  1      OPC=nop             
  nop                                           #  31    0xe3ff4  1      OPC=nop             
  nop                                           #  32    0xe3ff5  1      OPC=nop             
  nop                                           #  33    0xe3ff6  1      OPC=nop             
  nop                                           #  34    0xe3ff7  1      OPC=nop             
  nop                                           #  35    0xe3ff8  1      OPC=nop             
  nop                                           #  36    0xe3ff9  1      OPC=nop             
  nop                                           #  37    0xe3ffa  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xe3ffb  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xe4000  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xe4002  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xe4007  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xe400a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xe400d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xe400e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xe4010  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xe4017  1      OPC=nop             
  nop                                           #  47    0xe4018  1      OPC=nop             
  nop                                           #  48    0xe4019  1      OPC=nop             
  nop                                           #  49    0xe401a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xe401b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xe401e  3      OPC=jmpq_r64        
  nop                                           #  52    0xe4021  1      OPC=nop             
  nop                                           #  53    0xe4022  1      OPC=nop             
  nop                                           #  54    0xe4023  1      OPC=nop             
  nop                                           #  55    0xe4024  1      OPC=nop             
  nop                                           #  56    0xe4025  1      OPC=nop             
  nop                                           #  57    0xe4026  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xe4027  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  59    0xe4029  2      OPC=movl_r32_r32    
  movl $0x1003c068, (%r15,%rbx,1)               #  60    0xe402b  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                          #  61    0xe4033  4      OPC=movl_m32_r32    
  nop                                           #  62    0xe4037  1      OPC=nop             
  nop                                           #  63    0xe4038  1      OPC=nop             
  nop                                           #  64    0xe4039  1      OPC=nop             
  nop                                           #  65    0xe403a  1      OPC=nop             
  nop                                           #  66    0xe403b  1      OPC=nop             
  nop                                           #  67    0xe403c  1      OPC=nop             
  nop                                           #  68    0xe403d  1      OPC=nop             
  nop                                           #  69    0xe403e  1      OPC=nop             
  nop                                           #  70    0xe403f  1      OPC=nop             
  nop                                           #  71    0xe4040  1      OPC=nop             
  nop                                           #  72    0xe4041  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  73    0xe4042  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  74    0xe4047  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  75    0xe404b  2      OPC=movl_r32_r32    
  nop                                           #  76    0xe404d  1      OPC=nop             
  nop                                           #  77    0xe404e  1      OPC=nop             
  nop                                           #  78    0xe404f  1      OPC=nop             
  nop                                           #  79    0xe4050  1      OPC=nop             
  nop                                           #  80    0xe4051  1      OPC=nop             
  nop                                           #  81    0xe4052  1      OPC=nop             
  nop                                           #  82    0xe4053  1      OPC=nop             
  nop                                           #  83    0xe4054  1      OPC=nop             
  nop                                           #  84    0xe4055  1      OPC=nop             
  nop                                           #  85    0xe4056  1      OPC=nop             
  nop                                           #  86    0xe4057  1      OPC=nop             
  nop                                           #  87    0xe4058  1      OPC=nop             
  nop                                           #  88    0xe4059  1      OPC=nop             
  nop                                           #  89    0xe405a  1      OPC=nop             
  nop                                           #  90    0xe405b  1      OPC=nop             
  nop                                           #  91    0xe405c  1      OPC=nop             
  nop                                           #  92    0xe405d  1      OPC=nop             
  nop                                           #  93    0xe405e  1      OPC=nop             
  nop                                           #  94    0xe405f  1      OPC=nop             
  nop                                           #  95    0xe4060  1      OPC=nop             
  nop                                           #  96    0xe4061  1      OPC=nop             
  callq ._Unwind_Resume                         #  97    0xe4062  5      OPC=callq_label     
                                                                                             
.size _ZNSt7codecvtIwc10_mbstate_tEC1Ej, .-_ZNSt7codecvtIwc10_mbstate_tEC1Ej

