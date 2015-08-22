  .text
  .globl _ZNSt8messagesIwED2Ev
  .type _ZNSt8messagesIwED2Ev, @function

#! file-offset 0xf5020
#! rip-offset  0xb5020
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwED2Ev:                               #        0xb5020  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb5020  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb5021  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb5023  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb5026  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb5029  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb502c  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)                     #  7     0xb502e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb5036  1      OPC=nop             
  nop                                                 #  9     0xb5037  1      OPC=nop             
  nop                                                 #  10    0xb5038  1      OPC=nop             
  nop                                                 #  11    0xb5039  1      OPC=nop             
  nop                                                 #  12    0xb503a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb503b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb5040  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb5042  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb5045  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb5048  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb5049  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb504e  1      OPC=nop             
  nop                                                 #  20    0xb504f  1      OPC=nop             
  nop                                                 #  21    0xb5050  1      OPC=nop             
  nop                                                 #  22    0xb5051  1      OPC=nop             
  nop                                                 #  23    0xb5052  1      OPC=nop             
  nop                                                 #  24    0xb5053  1      OPC=nop             
  nop                                                 #  25    0xb5054  1      OPC=nop             
  nop                                                 #  26    0xb5055  1      OPC=nop             
  nop                                                 #  27    0xb5056  1      OPC=nop             
  nop                                                 #  28    0xb5057  1      OPC=nop             
  nop                                                 #  29    0xb5058  1      OPC=nop             
  nop                                                 #  30    0xb5059  1      OPC=nop             
  nop                                                 #  31    0xb505a  1      OPC=nop             
  nop                                                 #  32    0xb505b  1      OPC=nop             
  nop                                                 #  33    0xb505c  1      OPC=nop             
  nop                                                 #  34    0xb505d  1      OPC=nop             
  nop                                                 #  35    0xb505e  1      OPC=nop             
  nop                                                 #  36    0xb505f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb5060  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb5062  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb5066  1      OPC=nop             
  nop                                                 #  40    0xb5067  1      OPC=nop             
  nop                                                 #  41    0xb5068  1      OPC=nop             
  nop                                                 #  42    0xb5069  1      OPC=nop             
  nop                                                 #  43    0xb506a  1      OPC=nop             
  nop                                                 #  44    0xb506b  1      OPC=nop             
  nop                                                 #  45    0xb506c  1      OPC=nop             
  nop                                                 #  46    0xb506d  1      OPC=nop             
  nop                                                 #  47    0xb506e  1      OPC=nop             
  nop                                                 #  48    0xb506f  1      OPC=nop             
  nop                                                 #  49    0xb5070  1      OPC=nop             
  nop                                                 #  50    0xb5071  1      OPC=nop             
  nop                                                 #  51    0xb5072  1      OPC=nop             
  nop                                                 #  52    0xb5073  1      OPC=nop             
  nop                                                 #  53    0xb5074  1      OPC=nop             
  nop                                                 #  54    0xb5075  1      OPC=nop             
  nop                                                 #  55    0xb5076  1      OPC=nop             
  nop                                                 #  56    0xb5077  1      OPC=nop             
  nop                                                 #  57    0xb5078  1      OPC=nop             
  nop                                                 #  58    0xb5079  1      OPC=nop             
  nop                                                 #  59    0xb507a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb507b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb5080  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb5084  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb5086  1      OPC=nop             
  nop                                                 #  64    0xb5087  1      OPC=nop             
  nop                                                 #  65    0xb5088  1      OPC=nop             
  nop                                                 #  66    0xb5089  1      OPC=nop             
  nop                                                 #  67    0xb508a  1      OPC=nop             
  nop                                                 #  68    0xb508b  1      OPC=nop             
  nop                                                 #  69    0xb508c  1      OPC=nop             
  nop                                                 #  70    0xb508d  1      OPC=nop             
  nop                                                 #  71    0xb508e  1      OPC=nop             
  nop                                                 #  72    0xb508f  1      OPC=nop             
  nop                                                 #  73    0xb5090  1      OPC=nop             
  nop                                                 #  74    0xb5091  1      OPC=nop             
  nop                                                 #  75    0xb5092  1      OPC=nop             
  nop                                                 #  76    0xb5093  1      OPC=nop             
  nop                                                 #  77    0xb5094  1      OPC=nop             
  nop                                                 #  78    0xb5095  1      OPC=nop             
  nop                                                 #  79    0xb5096  1      OPC=nop             
  nop                                                 #  80    0xb5097  1      OPC=nop             
  nop                                                 #  81    0xb5098  1      OPC=nop             
  nop                                                 #  82    0xb5099  1      OPC=nop             
  nop                                                 #  83    0xb509a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb509b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt8messagesIwED2Ev, .-_ZNSt8messagesIwED2Ev

