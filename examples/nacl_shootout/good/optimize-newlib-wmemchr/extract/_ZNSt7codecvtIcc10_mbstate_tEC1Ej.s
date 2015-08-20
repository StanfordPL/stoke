  .text
  .globl _ZNSt7codecvtIcc10_mbstate_tEC1Ej
  .type _ZNSt7codecvtIcc10_mbstate_tEC1Ej, @function

#! file-offset 0x124100
#! rip-offset  0xe4100
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt7codecvtIcc10_mbstate_tEC1Ej:             #        0xe4100  0      OPC=<label>         
  pushq %rbx                                    #  1     0xe4100  1      OPC=pushq_r64_1     
  xorl %eax, %eax                               #  2     0xe4101  2      OPC=xorl_r32_r32    
  movl %edi, %ebx                               #  3     0xe4103  2      OPC=movl_r32_r32    
  subl $0x10, %esp                              #  4     0xe4105  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                               #  5     0xe4108  3      OPC=addq_r64_r64    
  testl %esi, %esi                              #  6     0xe410b  2      OPC=testl_r32_r32   
  movl %ebx, %ebx                               #  7     0xe410d  2      OPC=movl_r32_r32    
  movl $0x1003d4e8, (%r15,%rbx,1)               #  8     0xe410f  8      OPC=movl_m32_imm32  
  setne %al                                     #  9     0xe4117  3      OPC=setne_r8        
  nop                                           #  10    0xe411a  1      OPC=nop             
  nop                                           #  11    0xe411b  1      OPC=nop             
  nop                                           #  12    0xe411c  1      OPC=nop             
  nop                                           #  13    0xe411d  1      OPC=nop             
  nop                                           #  14    0xe411e  1      OPC=nop             
  nop                                           #  15    0xe411f  1      OPC=nop             
  movl %ebx, %ebx                               #  16    0xe4120  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rbx,1)                   #  17    0xe4122  5      OPC=movl_m32_r32    
  nop                                           #  18    0xe4127  1      OPC=nop             
  nop                                           #  19    0xe4128  1      OPC=nop             
  nop                                           #  20    0xe4129  1      OPC=nop             
  nop                                           #  21    0xe412a  1      OPC=nop             
  nop                                           #  22    0xe412b  1      OPC=nop             
  nop                                           #  23    0xe412c  1      OPC=nop             
  nop                                           #  24    0xe412d  1      OPC=nop             
  nop                                           #  25    0xe412e  1      OPC=nop             
  nop                                           #  26    0xe412f  1      OPC=nop             
  nop                                           #  27    0xe4130  1      OPC=nop             
  nop                                           #  28    0xe4131  1      OPC=nop             
  nop                                           #  29    0xe4132  1      OPC=nop             
  nop                                           #  30    0xe4133  1      OPC=nop             
  nop                                           #  31    0xe4134  1      OPC=nop             
  nop                                           #  32    0xe4135  1      OPC=nop             
  nop                                           #  33    0xe4136  1      OPC=nop             
  nop                                           #  34    0xe4137  1      OPC=nop             
  nop                                           #  35    0xe4138  1      OPC=nop             
  nop                                           #  36    0xe4139  1      OPC=nop             
  nop                                           #  37    0xe413a  1      OPC=nop             
  callq ._ZNSt6locale5facet15_S_get_c_localeEv  #  38    0xe413b  5      OPC=callq_label     
  movl %ebx, %ebx                               #  39    0xe4140  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%r15,%rbx,1)                   #  40    0xe4142  5      OPC=movl_m32_r32    
  addl $0x10, %esp                              #  41    0xe4147  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                               #  42    0xe414a  3      OPC=addq_r64_r64    
  popq %rbx                                     #  43    0xe414d  1      OPC=popq_r64_1      
  popq %r11                                     #  44    0xe414e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                       #  45    0xe4150  7      OPC=andl_r32_imm32  
  nop                                           #  46    0xe4157  1      OPC=nop             
  nop                                           #  47    0xe4158  1      OPC=nop             
  nop                                           #  48    0xe4159  1      OPC=nop             
  nop                                           #  49    0xe415a  1      OPC=nop             
  addq %r15, %r11                               #  50    0xe415b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  51    0xe415e  3      OPC=jmpq_r64        
  nop                                           #  52    0xe4161  1      OPC=nop             
  nop                                           #  53    0xe4162  1      OPC=nop             
  nop                                           #  54    0xe4163  1      OPC=nop             
  nop                                           #  55    0xe4164  1      OPC=nop             
  nop                                           #  56    0xe4165  1      OPC=nop             
  nop                                           #  57    0xe4166  1      OPC=nop             
  movl %ebx, %edi                               #  58    0xe4167  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                               #  59    0xe4169  2      OPC=movl_r32_r32    
  movl $0x1003ade8, (%r15,%rbx,1)               #  60    0xe416b  8      OPC=movl_m32_imm32  
  movl %eax, 0x8(%rsp)                          #  61    0xe4173  4      OPC=movl_m32_r32    
  nop                                           #  62    0xe4177  1      OPC=nop             
  nop                                           #  63    0xe4178  1      OPC=nop             
  nop                                           #  64    0xe4179  1      OPC=nop             
  nop                                           #  65    0xe417a  1      OPC=nop             
  nop                                           #  66    0xe417b  1      OPC=nop             
  nop                                           #  67    0xe417c  1      OPC=nop             
  nop                                           #  68    0xe417d  1      OPC=nop             
  nop                                           #  69    0xe417e  1      OPC=nop             
  nop                                           #  70    0xe417f  1      OPC=nop             
  nop                                           #  71    0xe4180  1      OPC=nop             
  nop                                           #  72    0xe4181  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                 #  73    0xe4182  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                          #  74    0xe4187  4      OPC=movl_r32_m32    
  movl %eax, %edi                               #  75    0xe418b  2      OPC=movl_r32_r32    
  nop                                           #  76    0xe418d  1      OPC=nop             
  nop                                           #  77    0xe418e  1      OPC=nop             
  nop                                           #  78    0xe418f  1      OPC=nop             
  nop                                           #  79    0xe4190  1      OPC=nop             
  nop                                           #  80    0xe4191  1      OPC=nop             
  nop                                           #  81    0xe4192  1      OPC=nop             
  nop                                           #  82    0xe4193  1      OPC=nop             
  nop                                           #  83    0xe4194  1      OPC=nop             
  nop                                           #  84    0xe4195  1      OPC=nop             
  nop                                           #  85    0xe4196  1      OPC=nop             
  nop                                           #  86    0xe4197  1      OPC=nop             
  nop                                           #  87    0xe4198  1      OPC=nop             
  nop                                           #  88    0xe4199  1      OPC=nop             
  nop                                           #  89    0xe419a  1      OPC=nop             
  nop                                           #  90    0xe419b  1      OPC=nop             
  nop                                           #  91    0xe419c  1      OPC=nop             
  nop                                           #  92    0xe419d  1      OPC=nop             
  nop                                           #  93    0xe419e  1      OPC=nop             
  nop                                           #  94    0xe419f  1      OPC=nop             
  nop                                           #  95    0xe41a0  1      OPC=nop             
  nop                                           #  96    0xe41a1  1      OPC=nop             
  callq ._Unwind_Resume                         #  97    0xe41a2  5      OPC=callq_label     
                                                                                             
.size _ZNSt7codecvtIcc10_mbstate_tEC1Ej, .-_ZNSt7codecvtIcc10_mbstate_tEC1Ej

