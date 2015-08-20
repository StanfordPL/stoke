  .text
  .globl _ZNSt8messagesIwED0Ev
  .type _ZNSt8messagesIwED0Ev, @function

#! file-offset 0xf47e0
#! rip-offset  0xb47e0
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwED0Ev:                               #        0xb47e0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb47e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb47e1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb47e3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb47e6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb47e9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb47ec  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)                     #  7     0xb47ee  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb47f6  1      OPC=nop             
  nop                                                 #  9     0xb47f7  1      OPC=nop             
  nop                                                 #  10    0xb47f8  1      OPC=nop             
  nop                                                 #  11    0xb47f9  1      OPC=nop             
  nop                                                 #  12    0xb47fa  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb47fb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4800  2      OPC=movl_r32_r32    
  nop                                                 #  15    0xb4802  1      OPC=nop             
  nop                                                 #  16    0xb4803  1      OPC=nop             
  nop                                                 #  17    0xb4804  1      OPC=nop             
  nop                                                 #  18    0xb4805  1      OPC=nop             
  nop                                                 #  19    0xb4806  1      OPC=nop             
  nop                                                 #  20    0xb4807  1      OPC=nop             
  nop                                                 #  21    0xb4808  1      OPC=nop             
  nop                                                 #  22    0xb4809  1      OPC=nop             
  nop                                                 #  23    0xb480a  1      OPC=nop             
  nop                                                 #  24    0xb480b  1      OPC=nop             
  nop                                                 #  25    0xb480c  1      OPC=nop             
  nop                                                 #  26    0xb480d  1      OPC=nop             
  nop                                                 #  27    0xb480e  1      OPC=nop             
  nop                                                 #  28    0xb480f  1      OPC=nop             
  nop                                                 #  29    0xb4810  1      OPC=nop             
  nop                                                 #  30    0xb4811  1      OPC=nop             
  nop                                                 #  31    0xb4812  1      OPC=nop             
  nop                                                 #  32    0xb4813  1      OPC=nop             
  nop                                                 #  33    0xb4814  1      OPC=nop             
  nop                                                 #  34    0xb4815  1      OPC=nop             
  nop                                                 #  35    0xb4816  1      OPC=nop             
  nop                                                 #  36    0xb4817  1      OPC=nop             
  nop                                                 #  37    0xb4818  1      OPC=nop             
  nop                                                 #  38    0xb4819  1      OPC=nop             
  nop                                                 #  39    0xb481a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0xb481b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0xb4820  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0xb4822  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0xb4825  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0xb4828  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0xb4829  5      OPC=jmpq_label_1    
  nop                                                 #  46    0xb482e  1      OPC=nop             
  nop                                                 #  47    0xb482f  1      OPC=nop             
  nop                                                 #  48    0xb4830  1      OPC=nop             
  nop                                                 #  49    0xb4831  1      OPC=nop             
  nop                                                 #  50    0xb4832  1      OPC=nop             
  nop                                                 #  51    0xb4833  1      OPC=nop             
  nop                                                 #  52    0xb4834  1      OPC=nop             
  nop                                                 #  53    0xb4835  1      OPC=nop             
  nop                                                 #  54    0xb4836  1      OPC=nop             
  nop                                                 #  55    0xb4837  1      OPC=nop             
  nop                                                 #  56    0xb4838  1      OPC=nop             
  nop                                                 #  57    0xb4839  1      OPC=nop             
  nop                                                 #  58    0xb483a  1      OPC=nop             
  nop                                                 #  59    0xb483b  1      OPC=nop             
  nop                                                 #  60    0xb483c  1      OPC=nop             
  nop                                                 #  61    0xb483d  1      OPC=nop             
  nop                                                 #  62    0xb483e  1      OPC=nop             
  nop                                                 #  63    0xb483f  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0xb4840  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0xb4842  4      OPC=movl_m32_r32    
  nop                                                 #  66    0xb4846  1      OPC=nop             
  nop                                                 #  67    0xb4847  1      OPC=nop             
  nop                                                 #  68    0xb4848  1      OPC=nop             
  nop                                                 #  69    0xb4849  1      OPC=nop             
  nop                                                 #  70    0xb484a  1      OPC=nop             
  nop                                                 #  71    0xb484b  1      OPC=nop             
  nop                                                 #  72    0xb484c  1      OPC=nop             
  nop                                                 #  73    0xb484d  1      OPC=nop             
  nop                                                 #  74    0xb484e  1      OPC=nop             
  nop                                                 #  75    0xb484f  1      OPC=nop             
  nop                                                 #  76    0xb4850  1      OPC=nop             
  nop                                                 #  77    0xb4851  1      OPC=nop             
  nop                                                 #  78    0xb4852  1      OPC=nop             
  nop                                                 #  79    0xb4853  1      OPC=nop             
  nop                                                 #  80    0xb4854  1      OPC=nop             
  nop                                                 #  81    0xb4855  1      OPC=nop             
  nop                                                 #  82    0xb4856  1      OPC=nop             
  nop                                                 #  83    0xb4857  1      OPC=nop             
  nop                                                 #  84    0xb4858  1      OPC=nop             
  nop                                                 #  85    0xb4859  1      OPC=nop             
  nop                                                 #  86    0xb485a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0xb485b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0xb4860  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0xb4864  2      OPC=movl_r32_r32    
  nop                                                 #  90    0xb4866  1      OPC=nop             
  nop                                                 #  91    0xb4867  1      OPC=nop             
  nop                                                 #  92    0xb4868  1      OPC=nop             
  nop                                                 #  93    0xb4869  1      OPC=nop             
  nop                                                 #  94    0xb486a  1      OPC=nop             
  nop                                                 #  95    0xb486b  1      OPC=nop             
  nop                                                 #  96    0xb486c  1      OPC=nop             
  nop                                                 #  97    0xb486d  1      OPC=nop             
  nop                                                 #  98    0xb486e  1      OPC=nop             
  nop                                                 #  99    0xb486f  1      OPC=nop             
  nop                                                 #  100   0xb4870  1      OPC=nop             
  nop                                                 #  101   0xb4871  1      OPC=nop             
  nop                                                 #  102   0xb4872  1      OPC=nop             
  nop                                                 #  103   0xb4873  1      OPC=nop             
  nop                                                 #  104   0xb4874  1      OPC=nop             
  nop                                                 #  105   0xb4875  1      OPC=nop             
  nop                                                 #  106   0xb4876  1      OPC=nop             
  nop                                                 #  107   0xb4877  1      OPC=nop             
  nop                                                 #  108   0xb4878  1      OPC=nop             
  nop                                                 #  109   0xb4879  1      OPC=nop             
  nop                                                 #  110   0xb487a  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0xb487b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt8messagesIwED0Ev, .-_ZNSt8messagesIwED0Ev

