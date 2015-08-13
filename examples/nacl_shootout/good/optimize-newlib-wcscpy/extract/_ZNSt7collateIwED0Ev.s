  .text
  .globl _ZNSt7collateIwED0Ev
  .type _ZNSt7collateIwED0Ev, @function

#! file-offset 0xf4340
#! rip-offset  0xb4340
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIwED0Ev:                                #        0xb4340  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb4340  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb4341  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb4343  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb4346  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb4349  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb434c  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb434e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb4356  1      OPC=nop             
  nop                                                 #  9     0xb4357  1      OPC=nop             
  nop                                                 #  10    0xb4358  1      OPC=nop             
  nop                                                 #  11    0xb4359  1      OPC=nop             
  nop                                                 #  12    0xb435a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb435b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4360  2      OPC=movl_r32_r32    
  nop                                                 #  15    0xb4362  1      OPC=nop             
  nop                                                 #  16    0xb4363  1      OPC=nop             
  nop                                                 #  17    0xb4364  1      OPC=nop             
  nop                                                 #  18    0xb4365  1      OPC=nop             
  nop                                                 #  19    0xb4366  1      OPC=nop             
  nop                                                 #  20    0xb4367  1      OPC=nop             
  nop                                                 #  21    0xb4368  1      OPC=nop             
  nop                                                 #  22    0xb4369  1      OPC=nop             
  nop                                                 #  23    0xb436a  1      OPC=nop             
  nop                                                 #  24    0xb436b  1      OPC=nop             
  nop                                                 #  25    0xb436c  1      OPC=nop             
  nop                                                 #  26    0xb436d  1      OPC=nop             
  nop                                                 #  27    0xb436e  1      OPC=nop             
  nop                                                 #  28    0xb436f  1      OPC=nop             
  nop                                                 #  29    0xb4370  1      OPC=nop             
  nop                                                 #  30    0xb4371  1      OPC=nop             
  nop                                                 #  31    0xb4372  1      OPC=nop             
  nop                                                 #  32    0xb4373  1      OPC=nop             
  nop                                                 #  33    0xb4374  1      OPC=nop             
  nop                                                 #  34    0xb4375  1      OPC=nop             
  nop                                                 #  35    0xb4376  1      OPC=nop             
  nop                                                 #  36    0xb4377  1      OPC=nop             
  nop                                                 #  37    0xb4378  1      OPC=nop             
  nop                                                 #  38    0xb4379  1      OPC=nop             
  nop                                                 #  39    0xb437a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0xb437b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0xb4380  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0xb4382  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0xb4385  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0xb4388  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0xb4389  5      OPC=jmpq_label_1    
  nop                                                 #  46    0xb438e  1      OPC=nop             
  nop                                                 #  47    0xb438f  1      OPC=nop             
  nop                                                 #  48    0xb4390  1      OPC=nop             
  nop                                                 #  49    0xb4391  1      OPC=nop             
  nop                                                 #  50    0xb4392  1      OPC=nop             
  nop                                                 #  51    0xb4393  1      OPC=nop             
  nop                                                 #  52    0xb4394  1      OPC=nop             
  nop                                                 #  53    0xb4395  1      OPC=nop             
  nop                                                 #  54    0xb4396  1      OPC=nop             
  nop                                                 #  55    0xb4397  1      OPC=nop             
  nop                                                 #  56    0xb4398  1      OPC=nop             
  nop                                                 #  57    0xb4399  1      OPC=nop             
  nop                                                 #  58    0xb439a  1      OPC=nop             
  nop                                                 #  59    0xb439b  1      OPC=nop             
  nop                                                 #  60    0xb439c  1      OPC=nop             
  nop                                                 #  61    0xb439d  1      OPC=nop             
  nop                                                 #  62    0xb439e  1      OPC=nop             
  nop                                                 #  63    0xb439f  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0xb43a0  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0xb43a2  4      OPC=movl_m32_r32    
  nop                                                 #  66    0xb43a6  1      OPC=nop             
  nop                                                 #  67    0xb43a7  1      OPC=nop             
  nop                                                 #  68    0xb43a8  1      OPC=nop             
  nop                                                 #  69    0xb43a9  1      OPC=nop             
  nop                                                 #  70    0xb43aa  1      OPC=nop             
  nop                                                 #  71    0xb43ab  1      OPC=nop             
  nop                                                 #  72    0xb43ac  1      OPC=nop             
  nop                                                 #  73    0xb43ad  1      OPC=nop             
  nop                                                 #  74    0xb43ae  1      OPC=nop             
  nop                                                 #  75    0xb43af  1      OPC=nop             
  nop                                                 #  76    0xb43b0  1      OPC=nop             
  nop                                                 #  77    0xb43b1  1      OPC=nop             
  nop                                                 #  78    0xb43b2  1      OPC=nop             
  nop                                                 #  79    0xb43b3  1      OPC=nop             
  nop                                                 #  80    0xb43b4  1      OPC=nop             
  nop                                                 #  81    0xb43b5  1      OPC=nop             
  nop                                                 #  82    0xb43b6  1      OPC=nop             
  nop                                                 #  83    0xb43b7  1      OPC=nop             
  nop                                                 #  84    0xb43b8  1      OPC=nop             
  nop                                                 #  85    0xb43b9  1      OPC=nop             
  nop                                                 #  86    0xb43ba  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0xb43bb  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0xb43c0  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0xb43c4  2      OPC=movl_r32_r32    
  nop                                                 #  90    0xb43c6  1      OPC=nop             
  nop                                                 #  91    0xb43c7  1      OPC=nop             
  nop                                                 #  92    0xb43c8  1      OPC=nop             
  nop                                                 #  93    0xb43c9  1      OPC=nop             
  nop                                                 #  94    0xb43ca  1      OPC=nop             
  nop                                                 #  95    0xb43cb  1      OPC=nop             
  nop                                                 #  96    0xb43cc  1      OPC=nop             
  nop                                                 #  97    0xb43cd  1      OPC=nop             
  nop                                                 #  98    0xb43ce  1      OPC=nop             
  nop                                                 #  99    0xb43cf  1      OPC=nop             
  nop                                                 #  100   0xb43d0  1      OPC=nop             
  nop                                                 #  101   0xb43d1  1      OPC=nop             
  nop                                                 #  102   0xb43d2  1      OPC=nop             
  nop                                                 #  103   0xb43d3  1      OPC=nop             
  nop                                                 #  104   0xb43d4  1      OPC=nop             
  nop                                                 #  105   0xb43d5  1      OPC=nop             
  nop                                                 #  106   0xb43d6  1      OPC=nop             
  nop                                                 #  107   0xb43d7  1      OPC=nop             
  nop                                                 #  108   0xb43d8  1      OPC=nop             
  nop                                                 #  109   0xb43d9  1      OPC=nop             
  nop                                                 #  110   0xb43da  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0xb43db  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIwED0Ev, .-_ZNSt7collateIwED0Ev

