  .text
  .globl _ZNSt8messagesIcED1Ev
  .type _ZNSt8messagesIcED1Ev, @function

#! file-offset 0xbbac0
#! rip-offset  0x7bac0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt8messagesIcED1Ev:                               #        0x7bac0  0      OPC=<label>         
  pushq %rbx                                          #  1     0x7bac0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x7bac1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x7bac3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x7bac6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x7bac9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x7bacc  2      OPC=movl_r32_r32    
  movl $0x1003ae18, (%r15,%rbx,1)                     #  7     0x7bace  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x7bad6  1      OPC=nop             
  nop                                                 #  9     0x7bad7  1      OPC=nop             
  nop                                                 #  10    0x7bad8  1      OPC=nop             
  nop                                                 #  11    0x7bad9  1      OPC=nop             
  nop                                                 #  12    0x7bada  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x7badb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x7bae0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x7bae2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x7bae5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x7bae8  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x7bae9  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x7baee  1      OPC=nop             
  nop                                                 #  20    0x7baef  1      OPC=nop             
  nop                                                 #  21    0x7baf0  1      OPC=nop             
  nop                                                 #  22    0x7baf1  1      OPC=nop             
  nop                                                 #  23    0x7baf2  1      OPC=nop             
  nop                                                 #  24    0x7baf3  1      OPC=nop             
  nop                                                 #  25    0x7baf4  1      OPC=nop             
  nop                                                 #  26    0x7baf5  1      OPC=nop             
  nop                                                 #  27    0x7baf6  1      OPC=nop             
  nop                                                 #  28    0x7baf7  1      OPC=nop             
  nop                                                 #  29    0x7baf8  1      OPC=nop             
  nop                                                 #  30    0x7baf9  1      OPC=nop             
  nop                                                 #  31    0x7bafa  1      OPC=nop             
  nop                                                 #  32    0x7bafb  1      OPC=nop             
  nop                                                 #  33    0x7bafc  1      OPC=nop             
  nop                                                 #  34    0x7bafd  1      OPC=nop             
  nop                                                 #  35    0x7bafe  1      OPC=nop             
  nop                                                 #  36    0x7baff  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x7bb00  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x7bb02  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x7bb06  1      OPC=nop             
  nop                                                 #  40    0x7bb07  1      OPC=nop             
  nop                                                 #  41    0x7bb08  1      OPC=nop             
  nop                                                 #  42    0x7bb09  1      OPC=nop             
  nop                                                 #  43    0x7bb0a  1      OPC=nop             
  nop                                                 #  44    0x7bb0b  1      OPC=nop             
  nop                                                 #  45    0x7bb0c  1      OPC=nop             
  nop                                                 #  46    0x7bb0d  1      OPC=nop             
  nop                                                 #  47    0x7bb0e  1      OPC=nop             
  nop                                                 #  48    0x7bb0f  1      OPC=nop             
  nop                                                 #  49    0x7bb10  1      OPC=nop             
  nop                                                 #  50    0x7bb11  1      OPC=nop             
  nop                                                 #  51    0x7bb12  1      OPC=nop             
  nop                                                 #  52    0x7bb13  1      OPC=nop             
  nop                                                 #  53    0x7bb14  1      OPC=nop             
  nop                                                 #  54    0x7bb15  1      OPC=nop             
  nop                                                 #  55    0x7bb16  1      OPC=nop             
  nop                                                 #  56    0x7bb17  1      OPC=nop             
  nop                                                 #  57    0x7bb18  1      OPC=nop             
  nop                                                 #  58    0x7bb19  1      OPC=nop             
  nop                                                 #  59    0x7bb1a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x7bb1b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x7bb20  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x7bb24  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x7bb26  1      OPC=nop             
  nop                                                 #  64    0x7bb27  1      OPC=nop             
  nop                                                 #  65    0x7bb28  1      OPC=nop             
  nop                                                 #  66    0x7bb29  1      OPC=nop             
  nop                                                 #  67    0x7bb2a  1      OPC=nop             
  nop                                                 #  68    0x7bb2b  1      OPC=nop             
  nop                                                 #  69    0x7bb2c  1      OPC=nop             
  nop                                                 #  70    0x7bb2d  1      OPC=nop             
  nop                                                 #  71    0x7bb2e  1      OPC=nop             
  nop                                                 #  72    0x7bb2f  1      OPC=nop             
  nop                                                 #  73    0x7bb30  1      OPC=nop             
  nop                                                 #  74    0x7bb31  1      OPC=nop             
  nop                                                 #  75    0x7bb32  1      OPC=nop             
  nop                                                 #  76    0x7bb33  1      OPC=nop             
  nop                                                 #  77    0x7bb34  1      OPC=nop             
  nop                                                 #  78    0x7bb35  1      OPC=nop             
  nop                                                 #  79    0x7bb36  1      OPC=nop             
  nop                                                 #  80    0x7bb37  1      OPC=nop             
  nop                                                 #  81    0x7bb38  1      OPC=nop             
  nop                                                 #  82    0x7bb39  1      OPC=nop             
  nop                                                 #  83    0x7bb3a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x7bb3b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt8messagesIcED1Ev, .-_ZNSt8messagesIcED1Ev

