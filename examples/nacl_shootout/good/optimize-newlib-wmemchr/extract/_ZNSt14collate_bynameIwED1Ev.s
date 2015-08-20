  .text
  .globl _ZNSt14collate_bynameIwED1Ev
  .type _ZNSt14collate_bynameIwED1Ev, @function

#! file-offset 0xf96e0
#! rip-offset  0xb96e0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIwED1Ev:                        #        0xb96e0  0      OPC=<label>         
  pushq %rbx                                          #  1     0xb96e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0xb96e1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0xb96e3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0xb96e6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0xb96e9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0xb96ec  2      OPC=movl_r32_r32    
  movl $0x1003c2c8, (%r15,%rbx,1)                     #  7     0xb96ee  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0xb96f6  1      OPC=nop             
  nop                                                 #  9     0xb96f7  1      OPC=nop             
  nop                                                 #  10    0xb96f8  1      OPC=nop             
  nop                                                 #  11    0xb96f9  1      OPC=nop             
  nop                                                 #  12    0xb96fa  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0xb96fb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0xb9700  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0xb9702  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0xb9705  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0xb9708  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0xb9709  5      OPC=jmpq_label_1    
  nop                                                 #  19    0xb970e  1      OPC=nop             
  nop                                                 #  20    0xb970f  1      OPC=nop             
  nop                                                 #  21    0xb9710  1      OPC=nop             
  nop                                                 #  22    0xb9711  1      OPC=nop             
  nop                                                 #  23    0xb9712  1      OPC=nop             
  nop                                                 #  24    0xb9713  1      OPC=nop             
  nop                                                 #  25    0xb9714  1      OPC=nop             
  nop                                                 #  26    0xb9715  1      OPC=nop             
  nop                                                 #  27    0xb9716  1      OPC=nop             
  nop                                                 #  28    0xb9717  1      OPC=nop             
  nop                                                 #  29    0xb9718  1      OPC=nop             
  nop                                                 #  30    0xb9719  1      OPC=nop             
  nop                                                 #  31    0xb971a  1      OPC=nop             
  nop                                                 #  32    0xb971b  1      OPC=nop             
  nop                                                 #  33    0xb971c  1      OPC=nop             
  nop                                                 #  34    0xb971d  1      OPC=nop             
  nop                                                 #  35    0xb971e  1      OPC=nop             
  nop                                                 #  36    0xb971f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0xb9720  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0xb9722  4      OPC=movl_m32_r32    
  nop                                                 #  39    0xb9726  1      OPC=nop             
  nop                                                 #  40    0xb9727  1      OPC=nop             
  nop                                                 #  41    0xb9728  1      OPC=nop             
  nop                                                 #  42    0xb9729  1      OPC=nop             
  nop                                                 #  43    0xb972a  1      OPC=nop             
  nop                                                 #  44    0xb972b  1      OPC=nop             
  nop                                                 #  45    0xb972c  1      OPC=nop             
  nop                                                 #  46    0xb972d  1      OPC=nop             
  nop                                                 #  47    0xb972e  1      OPC=nop             
  nop                                                 #  48    0xb972f  1      OPC=nop             
  nop                                                 #  49    0xb9730  1      OPC=nop             
  nop                                                 #  50    0xb9731  1      OPC=nop             
  nop                                                 #  51    0xb9732  1      OPC=nop             
  nop                                                 #  52    0xb9733  1      OPC=nop             
  nop                                                 #  53    0xb9734  1      OPC=nop             
  nop                                                 #  54    0xb9735  1      OPC=nop             
  nop                                                 #  55    0xb9736  1      OPC=nop             
  nop                                                 #  56    0xb9737  1      OPC=nop             
  nop                                                 #  57    0xb9738  1      OPC=nop             
  nop                                                 #  58    0xb9739  1      OPC=nop             
  nop                                                 #  59    0xb973a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0xb973b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0xb9740  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0xb9744  2      OPC=movl_r32_r32    
  nop                                                 #  63    0xb9746  1      OPC=nop             
  nop                                                 #  64    0xb9747  1      OPC=nop             
  nop                                                 #  65    0xb9748  1      OPC=nop             
  nop                                                 #  66    0xb9749  1      OPC=nop             
  nop                                                 #  67    0xb974a  1      OPC=nop             
  nop                                                 #  68    0xb974b  1      OPC=nop             
  nop                                                 #  69    0xb974c  1      OPC=nop             
  nop                                                 #  70    0xb974d  1      OPC=nop             
  nop                                                 #  71    0xb974e  1      OPC=nop             
  nop                                                 #  72    0xb974f  1      OPC=nop             
  nop                                                 #  73    0xb9750  1      OPC=nop             
  nop                                                 #  74    0xb9751  1      OPC=nop             
  nop                                                 #  75    0xb9752  1      OPC=nop             
  nop                                                 #  76    0xb9753  1      OPC=nop             
  nop                                                 #  77    0xb9754  1      OPC=nop             
  nop                                                 #  78    0xb9755  1      OPC=nop             
  nop                                                 #  79    0xb9756  1      OPC=nop             
  nop                                                 #  80    0xb9757  1      OPC=nop             
  nop                                                 #  81    0xb9758  1      OPC=nop             
  nop                                                 #  82    0xb9759  1      OPC=nop             
  nop                                                 #  83    0xb975a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0xb975b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIwED1Ev, .-_ZNSt14collate_bynameIwED1Ev

