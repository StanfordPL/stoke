  .text
  .globl _ZNSt8messagesIwED0Ev
  .type _ZNSt8messagesIwED0Ev, @function

#! file-offset 0xf4f00
#! rip-offset  0xb4f00
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIwED0Ev:                               #        0xb4f00  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb4f00  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb4f01  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb4f03  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb4f06  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb4f09  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb4f0c  2      OPC=movl_r32_r32    
  movl $0x1003c098, (%r15,%rbx,1)                     #  7     0xb4f0e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb4f16  1      OPC=nop             
  nop                                                 #  9     0xb4f17  1      OPC=nop             
  nop                                                 #  10    0xb4f18  1      OPC=nop             
  nop                                                 #  11    0xb4f19  1      OPC=nop             
  nop                                                 #  12    0xb4f1a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb4f1b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb4f20  2      OPC=movl_r32_r32    
  nop                                                 #  15    0xb4f22  1      OPC=nop             
  nop                                                 #  16    0xb4f23  1      OPC=nop             
  nop                                                 #  17    0xb4f24  1      OPC=nop             
  nop                                                 #  18    0xb4f25  1      OPC=nop             
  nop                                                 #  19    0xb4f26  1      OPC=nop             
  nop                                                 #  20    0xb4f27  1      OPC=nop             
  nop                                                 #  21    0xb4f28  1      OPC=nop             
  nop                                                 #  22    0xb4f29  1      OPC=nop             
  nop                                                 #  23    0xb4f2a  1      OPC=nop             
  nop                                                 #  24    0xb4f2b  1      OPC=nop             
  nop                                                 #  25    0xb4f2c  1      OPC=nop             
  nop                                                 #  26    0xb4f2d  1      OPC=nop             
  nop                                                 #  27    0xb4f2e  1      OPC=nop             
  nop                                                 #  28    0xb4f2f  1      OPC=nop             
  nop                                                 #  29    0xb4f30  1      OPC=nop             
  nop                                                 #  30    0xb4f31  1      OPC=nop             
  nop                                                 #  31    0xb4f32  1      OPC=nop             
  nop                                                 #  32    0xb4f33  1      OPC=nop             
  nop                                                 #  33    0xb4f34  1      OPC=nop             
  nop                                                 #  34    0xb4f35  1      OPC=nop             
  nop                                                 #  35    0xb4f36  1      OPC=nop             
  nop                                                 #  36    0xb4f37  1      OPC=nop             
  nop                                                 #  37    0xb4f38  1      OPC=nop             
  nop                                                 #  38    0xb4f39  1      OPC=nop             
  nop                                                 #  39    0xb4f3a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0xb4f3b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0xb4f40  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0xb4f42  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0xb4f45  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0xb4f48  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0xb4f49  5      OPC=jmpq_label_1    
  nop                                                 #  46    0xb4f4e  1      OPC=nop             
  nop                                                 #  47    0xb4f4f  1      OPC=nop             
  nop                                                 #  48    0xb4f50  1      OPC=nop             
  nop                                                 #  49    0xb4f51  1      OPC=nop             
  nop                                                 #  50    0xb4f52  1      OPC=nop             
  nop                                                 #  51    0xb4f53  1      OPC=nop             
  nop                                                 #  52    0xb4f54  1      OPC=nop             
  nop                                                 #  53    0xb4f55  1      OPC=nop             
  nop                                                 #  54    0xb4f56  1      OPC=nop             
  nop                                                 #  55    0xb4f57  1      OPC=nop             
  nop                                                 #  56    0xb4f58  1      OPC=nop             
  nop                                                 #  57    0xb4f59  1      OPC=nop             
  nop                                                 #  58    0xb4f5a  1      OPC=nop             
  nop                                                 #  59    0xb4f5b  1      OPC=nop             
  nop                                                 #  60    0xb4f5c  1      OPC=nop             
  nop                                                 #  61    0xb4f5d  1      OPC=nop             
  nop                                                 #  62    0xb4f5e  1      OPC=nop             
  nop                                                 #  63    0xb4f5f  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0xb4f60  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0xb4f62  4      OPC=movl_m32_r32    
  nop                                                 #  66    0xb4f66  1      OPC=nop             
  nop                                                 #  67    0xb4f67  1      OPC=nop             
  nop                                                 #  68    0xb4f68  1      OPC=nop             
  nop                                                 #  69    0xb4f69  1      OPC=nop             
  nop                                                 #  70    0xb4f6a  1      OPC=nop             
  nop                                                 #  71    0xb4f6b  1      OPC=nop             
  nop                                                 #  72    0xb4f6c  1      OPC=nop             
  nop                                                 #  73    0xb4f6d  1      OPC=nop             
  nop                                                 #  74    0xb4f6e  1      OPC=nop             
  nop                                                 #  75    0xb4f6f  1      OPC=nop             
  nop                                                 #  76    0xb4f70  1      OPC=nop             
  nop                                                 #  77    0xb4f71  1      OPC=nop             
  nop                                                 #  78    0xb4f72  1      OPC=nop             
  nop                                                 #  79    0xb4f73  1      OPC=nop             
  nop                                                 #  80    0xb4f74  1      OPC=nop             
  nop                                                 #  81    0xb4f75  1      OPC=nop             
  nop                                                 #  82    0xb4f76  1      OPC=nop             
  nop                                                 #  83    0xb4f77  1      OPC=nop             
  nop                                                 #  84    0xb4f78  1      OPC=nop             
  nop                                                 #  85    0xb4f79  1      OPC=nop             
  nop                                                 #  86    0xb4f7a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0xb4f7b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0xb4f80  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0xb4f84  2      OPC=movl_r32_r32    
  nop                                                 #  90    0xb4f86  1      OPC=nop             
  nop                                                 #  91    0xb4f87  1      OPC=nop             
  nop                                                 #  92    0xb4f88  1      OPC=nop             
  nop                                                 #  93    0xb4f89  1      OPC=nop             
  nop                                                 #  94    0xb4f8a  1      OPC=nop             
  nop                                                 #  95    0xb4f8b  1      OPC=nop             
  nop                                                 #  96    0xb4f8c  1      OPC=nop             
  nop                                                 #  97    0xb4f8d  1      OPC=nop             
  nop                                                 #  98    0xb4f8e  1      OPC=nop             
  nop                                                 #  99    0xb4f8f  1      OPC=nop             
  nop                                                 #  100   0xb4f90  1      OPC=nop             
  nop                                                 #  101   0xb4f91  1      OPC=nop             
  nop                                                 #  102   0xb4f92  1      OPC=nop             
  nop                                                 #  103   0xb4f93  1      OPC=nop             
  nop                                                 #  104   0xb4f94  1      OPC=nop             
  nop                                                 #  105   0xb4f95  1      OPC=nop             
  nop                                                 #  106   0xb4f96  1      OPC=nop             
  nop                                                 #  107   0xb4f97  1      OPC=nop             
  nop                                                 #  108   0xb4f98  1      OPC=nop             
  nop                                                 #  109   0xb4f99  1      OPC=nop             
  nop                                                 #  110   0xb4f9a  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0xb4f9b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt8messagesIwED0Ev, .-_ZNSt8messagesIwED0Ev

