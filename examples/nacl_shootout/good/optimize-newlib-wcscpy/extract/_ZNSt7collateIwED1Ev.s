  .text
  .globl _ZNSt7collateIwED1Ev
  .type _ZNSt7collateIwED1Ev, @function

#! file-offset 0xf43e0
#! rip-offset  0xb43e0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwED1Ev:                                #        0xb43e0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb43e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb43e1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb43e3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb43e6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb43e9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb43ec  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb43ee  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb43f6  1      OPC=nop             
  nop                                                 #  9     0xb43f7  1      OPC=nop             
  nop                                                 #  10    0xb43f8  1      OPC=nop             
  nop                                                 #  11    0xb43f9  1      OPC=nop             
  nop                                                 #  12    0xb43fa  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb43fb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4400  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb4402  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb4405  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb4408  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb4409  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb440e  1      OPC=nop             
  nop                                                 #  20    0xb440f  1      OPC=nop             
  nop                                                 #  21    0xb4410  1      OPC=nop             
  nop                                                 #  22    0xb4411  1      OPC=nop             
  nop                                                 #  23    0xb4412  1      OPC=nop             
  nop                                                 #  24    0xb4413  1      OPC=nop             
  nop                                                 #  25    0xb4414  1      OPC=nop             
  nop                                                 #  26    0xb4415  1      OPC=nop             
  nop                                                 #  27    0xb4416  1      OPC=nop             
  nop                                                 #  28    0xb4417  1      OPC=nop             
  nop                                                 #  29    0xb4418  1      OPC=nop             
  nop                                                 #  30    0xb4419  1      OPC=nop             
  nop                                                 #  31    0xb441a  1      OPC=nop             
  nop                                                 #  32    0xb441b  1      OPC=nop             
  nop                                                 #  33    0xb441c  1      OPC=nop             
  nop                                                 #  34    0xb441d  1      OPC=nop             
  nop                                                 #  35    0xb441e  1      OPC=nop             
  nop                                                 #  36    0xb441f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb4420  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb4422  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb4426  1      OPC=nop             
  nop                                                 #  40    0xb4427  1      OPC=nop             
  nop                                                 #  41    0xb4428  1      OPC=nop             
  nop                                                 #  42    0xb4429  1      OPC=nop             
  nop                                                 #  43    0xb442a  1      OPC=nop             
  nop                                                 #  44    0xb442b  1      OPC=nop             
  nop                                                 #  45    0xb442c  1      OPC=nop             
  nop                                                 #  46    0xb442d  1      OPC=nop             
  nop                                                 #  47    0xb442e  1      OPC=nop             
  nop                                                 #  48    0xb442f  1      OPC=nop             
  nop                                                 #  49    0xb4430  1      OPC=nop             
  nop                                                 #  50    0xb4431  1      OPC=nop             
  nop                                                 #  51    0xb4432  1      OPC=nop             
  nop                                                 #  52    0xb4433  1      OPC=nop             
  nop                                                 #  53    0xb4434  1      OPC=nop             
  nop                                                 #  54    0xb4435  1      OPC=nop             
  nop                                                 #  55    0xb4436  1      OPC=nop             
  nop                                                 #  56    0xb4437  1      OPC=nop             
  nop                                                 #  57    0xb4438  1      OPC=nop             
  nop                                                 #  58    0xb4439  1      OPC=nop             
  nop                                                 #  59    0xb443a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb443b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb4440  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb4444  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb4446  1      OPC=nop             
  nop                                                 #  64    0xb4447  1      OPC=nop             
  nop                                                 #  65    0xb4448  1      OPC=nop             
  nop                                                 #  66    0xb4449  1      OPC=nop             
  nop                                                 #  67    0xb444a  1      OPC=nop             
  nop                                                 #  68    0xb444b  1      OPC=nop             
  nop                                                 #  69    0xb444c  1      OPC=nop             
  nop                                                 #  70    0xb444d  1      OPC=nop             
  nop                                                 #  71    0xb444e  1      OPC=nop             
  nop                                                 #  72    0xb444f  1      OPC=nop             
  nop                                                 #  73    0xb4450  1      OPC=nop             
  nop                                                 #  74    0xb4451  1      OPC=nop             
  nop                                                 #  75    0xb4452  1      OPC=nop             
  nop                                                 #  76    0xb4453  1      OPC=nop             
  nop                                                 #  77    0xb4454  1      OPC=nop             
  nop                                                 #  78    0xb4455  1      OPC=nop             
  nop                                                 #  79    0xb4456  1      OPC=nop             
  nop                                                 #  80    0xb4457  1      OPC=nop             
  nop                                                 #  81    0xb4458  1      OPC=nop             
  nop                                                 #  82    0xb4459  1      OPC=nop             
  nop                                                 #  83    0xb445a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb445b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIwED1Ev, .-_ZNSt7collateIwED1Ev

