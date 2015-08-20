  .text
  .globl _ZNSt14collate_bynameIcED2Ev
  .type _ZNSt14collate_bynameIcED2Ev, @function

#! file-offset 0xc0920
#! rip-offset  0x80920
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt14collate_bynameIcED2Ev:                        #        0x80920  0      OPC=<label>         
  pushq %rbx                                          #  1     0x80920  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x80921  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x80923  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x80926  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x80929  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x8092c  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x8092e  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x80936  1      OPC=nop             
  nop                                                 #  9     0x80937  1      OPC=nop             
  nop                                                 #  10    0x80938  1      OPC=nop             
  nop                                                 #  11    0x80939  1      OPC=nop             
  nop                                                 #  12    0x8093a  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x8093b  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x80940  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  15    0x80942  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  16    0x80945  3      OPC=addq_r64_r64    
  popq %rbx                                           #  17    0x80948  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev                        #  18    0x80949  5      OPC=jmpq_label_1    
  nop                                                 #  19    0x8094e  1      OPC=nop             
  nop                                                 #  20    0x8094f  1      OPC=nop             
  nop                                                 #  21    0x80950  1      OPC=nop             
  nop                                                 #  22    0x80951  1      OPC=nop             
  nop                                                 #  23    0x80952  1      OPC=nop             
  nop                                                 #  24    0x80953  1      OPC=nop             
  nop                                                 #  25    0x80954  1      OPC=nop             
  nop                                                 #  26    0x80955  1      OPC=nop             
  nop                                                 #  27    0x80956  1      OPC=nop             
  nop                                                 #  28    0x80957  1      OPC=nop             
  nop                                                 #  29    0x80958  1      OPC=nop             
  nop                                                 #  30    0x80959  1      OPC=nop             
  nop                                                 #  31    0x8095a  1      OPC=nop             
  nop                                                 #  32    0x8095b  1      OPC=nop             
  nop                                                 #  33    0x8095c  1      OPC=nop             
  nop                                                 #  34    0x8095d  1      OPC=nop             
  nop                                                 #  35    0x8095e  1      OPC=nop             
  nop                                                 #  36    0x8095f  1      OPC=nop             
  movl %ebx, %edi                                     #  37    0x80960  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  38    0x80962  4      OPC=movl_m32_r32    
  nop                                                 #  39    0x80966  1      OPC=nop             
  nop                                                 #  40    0x80967  1      OPC=nop             
  nop                                                 #  41    0x80968  1      OPC=nop             
  nop                                                 #  42    0x80969  1      OPC=nop             
  nop                                                 #  43    0x8096a  1      OPC=nop             
  nop                                                 #  44    0x8096b  1      OPC=nop             
  nop                                                 #  45    0x8096c  1      OPC=nop             
  nop                                                 #  46    0x8096d  1      OPC=nop             
  nop                                                 #  47    0x8096e  1      OPC=nop             
  nop                                                 #  48    0x8096f  1      OPC=nop             
  nop                                                 #  49    0x80970  1      OPC=nop             
  nop                                                 #  50    0x80971  1      OPC=nop             
  nop                                                 #  51    0x80972  1      OPC=nop             
  nop                                                 #  52    0x80973  1      OPC=nop             
  nop                                                 #  53    0x80974  1      OPC=nop             
  nop                                                 #  54    0x80975  1      OPC=nop             
  nop                                                 #  55    0x80976  1      OPC=nop             
  nop                                                 #  56    0x80977  1      OPC=nop             
  nop                                                 #  57    0x80978  1      OPC=nop             
  nop                                                 #  58    0x80979  1      OPC=nop             
  nop                                                 #  59    0x8097a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  60    0x8097b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  61    0x80980  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  62    0x80984  2      OPC=movl_r32_r32    
  nop                                                 #  63    0x80986  1      OPC=nop             
  nop                                                 #  64    0x80987  1      OPC=nop             
  nop                                                 #  65    0x80988  1      OPC=nop             
  nop                                                 #  66    0x80989  1      OPC=nop             
  nop                                                 #  67    0x8098a  1      OPC=nop             
  nop                                                 #  68    0x8098b  1      OPC=nop             
  nop                                                 #  69    0x8098c  1      OPC=nop             
  nop                                                 #  70    0x8098d  1      OPC=nop             
  nop                                                 #  71    0x8098e  1      OPC=nop             
  nop                                                 #  72    0x8098f  1      OPC=nop             
  nop                                                 #  73    0x80990  1      OPC=nop             
  nop                                                 #  74    0x80991  1      OPC=nop             
  nop                                                 #  75    0x80992  1      OPC=nop             
  nop                                                 #  76    0x80993  1      OPC=nop             
  nop                                                 #  77    0x80994  1      OPC=nop             
  nop                                                 #  78    0x80995  1      OPC=nop             
  nop                                                 #  79    0x80996  1      OPC=nop             
  nop                                                 #  80    0x80997  1      OPC=nop             
  nop                                                 #  81    0x80998  1      OPC=nop             
  nop                                                 #  82    0x80999  1      OPC=nop             
  nop                                                 #  83    0x8099a  1      OPC=nop             
  callq ._Unwind_Resume                               #  84    0x8099b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt14collate_bynameIcED2Ev, .-_ZNSt14collate_bynameIcED2Ev

