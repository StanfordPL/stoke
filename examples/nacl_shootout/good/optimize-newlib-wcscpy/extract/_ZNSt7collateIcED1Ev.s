  .text
  .globl _ZNSt7collateIcED1Ev
  .type _ZNSt7collateIcED1Ev, @function

#! file-offset 0xbb620
#! rip-offset  0x7b620
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcED1Ev:                                #        0x7b620  0      OPC=<label>         
  pushq %rbx                                          #  1     0x7b620  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x7b621  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x7b623  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x7b626  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x7b629  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x7b62c  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x7b62e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x7b636  1      OPC=nop             
  nop                                                 #  9     0x7b637  1      OPC=nop             
  nop                                                 #  10    0x7b638  1      OPC=nop             
  nop                                                 #  11    0x7b639  1      OPC=nop             
  nop                                                 #  12    0x7b63a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x7b63b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x7b640  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x7b642  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x7b645  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x7b648  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x7b649  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x7b64e  1      OPC=nop             
  nop                                                 #  20    0x7b64f  1      OPC=nop             
  nop                                                 #  21    0x7b650  1      OPC=nop             
  nop                                                 #  22    0x7b651  1      OPC=nop             
  nop                                                 #  23    0x7b652  1      OPC=nop             
  nop                                                 #  24    0x7b653  1      OPC=nop             
  nop                                                 #  25    0x7b654  1      OPC=nop             
  nop                                                 #  26    0x7b655  1      OPC=nop             
  nop                                                 #  27    0x7b656  1      OPC=nop             
  nop                                                 #  28    0x7b657  1      OPC=nop             
  nop                                                 #  29    0x7b658  1      OPC=nop             
  nop                                                 #  30    0x7b659  1      OPC=nop             
  nop                                                 #  31    0x7b65a  1      OPC=nop             
  nop                                                 #  32    0x7b65b  1      OPC=nop             
  nop                                                 #  33    0x7b65c  1      OPC=nop             
  nop                                                 #  34    0x7b65d  1      OPC=nop             
  nop                                                 #  35    0x7b65e  1      OPC=nop             
  nop                                                 #  36    0x7b65f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x7b660  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x7b662  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x7b666  1      OPC=nop             
  nop                                                 #  40    0x7b667  1      OPC=nop             
  nop                                                 #  41    0x7b668  1      OPC=nop             
  nop                                                 #  42    0x7b669  1      OPC=nop             
  nop                                                 #  43    0x7b66a  1      OPC=nop             
  nop                                                 #  44    0x7b66b  1      OPC=nop             
  nop                                                 #  45    0x7b66c  1      OPC=nop             
  nop                                                 #  46    0x7b66d  1      OPC=nop             
  nop                                                 #  47    0x7b66e  1      OPC=nop             
  nop                                                 #  48    0x7b66f  1      OPC=nop             
  nop                                                 #  49    0x7b670  1      OPC=nop             
  nop                                                 #  50    0x7b671  1      OPC=nop             
  nop                                                 #  51    0x7b672  1      OPC=nop             
  nop                                                 #  52    0x7b673  1      OPC=nop             
  nop                                                 #  53    0x7b674  1      OPC=nop             
  nop                                                 #  54    0x7b675  1      OPC=nop             
  nop                                                 #  55    0x7b676  1      OPC=nop             
  nop                                                 #  56    0x7b677  1      OPC=nop             
  nop                                                 #  57    0x7b678  1      OPC=nop             
  nop                                                 #  58    0x7b679  1      OPC=nop             
  nop                                                 #  59    0x7b67a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x7b67b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x7b680  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x7b684  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x7b686  1      OPC=nop             
  nop                                                 #  64    0x7b687  1      OPC=nop             
  nop                                                 #  65    0x7b688  1      OPC=nop             
  nop                                                 #  66    0x7b689  1      OPC=nop             
  nop                                                 #  67    0x7b68a  1      OPC=nop             
  nop                                                 #  68    0x7b68b  1      OPC=nop             
  nop                                                 #  69    0x7b68c  1      OPC=nop             
  nop                                                 #  70    0x7b68d  1      OPC=nop             
  nop                                                 #  71    0x7b68e  1      OPC=nop             
  nop                                                 #  72    0x7b68f  1      OPC=nop             
  nop                                                 #  73    0x7b690  1      OPC=nop             
  nop                                                 #  74    0x7b691  1      OPC=nop             
  nop                                                 #  75    0x7b692  1      OPC=nop             
  nop                                                 #  76    0x7b693  1      OPC=nop             
  nop                                                 #  77    0x7b694  1      OPC=nop             
  nop                                                 #  78    0x7b695  1      OPC=nop             
  nop                                                 #  79    0x7b696  1      OPC=nop             
  nop                                                 #  80    0x7b697  1      OPC=nop             
  nop                                                 #  81    0x7b698  1      OPC=nop             
  nop                                                 #  82    0x7b699  1      OPC=nop             
  nop                                                 #  83    0x7b69a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x7b69b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIcED1Ev, .-_ZNSt7collateIcED1Ev

