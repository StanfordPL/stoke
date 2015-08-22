  .text
  .globl _ZNSt7collateIcED0Ev
  .type _ZNSt7collateIcED0Ev, @function

#! file-offset 0xbbfa0
#! rip-offset  0x7bfa0
#! capacity    160 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSt7collateIcED0Ev:                                #        0x7bfa0  0      OPC=<label>         
  pushq %rbx                                          #  1     0x7bfa0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                     #  2     0x7bfa1  2      OPC=movl_r32_r32    
  leal 0x8(%rbx), %edi                                #  3     0x7bfa3  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                    #  4     0x7bfa6  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  5     0x7bfa9  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                                     #  6     0x7bfac  2      OPC=movl_r32_r32    
  movl $0x1003aff8, (%r15,%rbx,1)                     #  7     0x7bfae  8      OPC=movl_m32_imm32  
  nop                                                 #  8     0x7bfb6  1      OPC=nop             
  nop                                                 #  9     0x7bfb7  1      OPC=nop             
  nop                                                 #  10    0x7bfb8  1      OPC=nop             
  nop                                                 #  11    0x7bfb9  1      OPC=nop             
  nop                                                 #  12    0x7bfba  1      OPC=nop             
  callq ._ZNSt6locale5facet19_S_destroy_c_localeERPi  #  13    0x7bfbb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  14    0x7bfc0  2      OPC=movl_r32_r32    
  nop                                                 #  15    0x7bfc2  1      OPC=nop             
  nop                                                 #  16    0x7bfc3  1      OPC=nop             
  nop                                                 #  17    0x7bfc4  1      OPC=nop             
  nop                                                 #  18    0x7bfc5  1      OPC=nop             
  nop                                                 #  19    0x7bfc6  1      OPC=nop             
  nop                                                 #  20    0x7bfc7  1      OPC=nop             
  nop                                                 #  21    0x7bfc8  1      OPC=nop             
  nop                                                 #  22    0x7bfc9  1      OPC=nop             
  nop                                                 #  23    0x7bfca  1      OPC=nop             
  nop                                                 #  24    0x7bfcb  1      OPC=nop             
  nop                                                 #  25    0x7bfcc  1      OPC=nop             
  nop                                                 #  26    0x7bfcd  1      OPC=nop             
  nop                                                 #  27    0x7bfce  1      OPC=nop             
  nop                                                 #  28    0x7bfcf  1      OPC=nop             
  nop                                                 #  29    0x7bfd0  1      OPC=nop             
  nop                                                 #  30    0x7bfd1  1      OPC=nop             
  nop                                                 #  31    0x7bfd2  1      OPC=nop             
  nop                                                 #  32    0x7bfd3  1      OPC=nop             
  nop                                                 #  33    0x7bfd4  1      OPC=nop             
  nop                                                 #  34    0x7bfd5  1      OPC=nop             
  nop                                                 #  35    0x7bfd6  1      OPC=nop             
  nop                                                 #  36    0x7bfd7  1      OPC=nop             
  nop                                                 #  37    0x7bfd8  1      OPC=nop             
  nop                                                 #  38    0x7bfd9  1      OPC=nop             
  nop                                                 #  39    0x7bfda  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  40    0x7bfdb  5      OPC=callq_label     
  movl %ebx, %edi                                     #  41    0x7bfe0  2      OPC=movl_r32_r32    
  addl $0x10, %esp                                    #  42    0x7bfe2  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  43    0x7bfe5  3      OPC=addq_r64_r64    
  popq %rbx                                           #  44    0x7bfe8  1      OPC=popq_r64_1      
  jmpq ._ZdlPv                                        #  45    0x7bfe9  5      OPC=jmpq_label_1    
  nop                                                 #  46    0x7bfee  1      OPC=nop             
  nop                                                 #  47    0x7bfef  1      OPC=nop             
  nop                                                 #  48    0x7bff0  1      OPC=nop             
  nop                                                 #  49    0x7bff1  1      OPC=nop             
  nop                                                 #  50    0x7bff2  1      OPC=nop             
  nop                                                 #  51    0x7bff3  1      OPC=nop             
  nop                                                 #  52    0x7bff4  1      OPC=nop             
  nop                                                 #  53    0x7bff5  1      OPC=nop             
  nop                                                 #  54    0x7bff6  1      OPC=nop             
  nop                                                 #  55    0x7bff7  1      OPC=nop             
  nop                                                 #  56    0x7bff8  1      OPC=nop             
  nop                                                 #  57    0x7bff9  1      OPC=nop             
  nop                                                 #  58    0x7bffa  1      OPC=nop             
  nop                                                 #  59    0x7bffb  1      OPC=nop             
  nop                                                 #  60    0x7bffc  1      OPC=nop             
  nop                                                 #  61    0x7bffd  1      OPC=nop             
  nop                                                 #  62    0x7bffe  1      OPC=nop             
  nop                                                 #  63    0x7bfff  1      OPC=nop             
  movl %ebx, %edi                                     #  64    0x7c000  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)                                #  65    0x7c002  4      OPC=movl_m32_r32    
  nop                                                 #  66    0x7c006  1      OPC=nop             
  nop                                                 #  67    0x7c007  1      OPC=nop             
  nop                                                 #  68    0x7c008  1      OPC=nop             
  nop                                                 #  69    0x7c009  1      OPC=nop             
  nop                                                 #  70    0x7c00a  1      OPC=nop             
  nop                                                 #  71    0x7c00b  1      OPC=nop             
  nop                                                 #  72    0x7c00c  1      OPC=nop             
  nop                                                 #  73    0x7c00d  1      OPC=nop             
  nop                                                 #  74    0x7c00e  1      OPC=nop             
  nop                                                 #  75    0x7c00f  1      OPC=nop             
  nop                                                 #  76    0x7c010  1      OPC=nop             
  nop                                                 #  77    0x7c011  1      OPC=nop             
  nop                                                 #  78    0x7c012  1      OPC=nop             
  nop                                                 #  79    0x7c013  1      OPC=nop             
  nop                                                 #  80    0x7c014  1      OPC=nop             
  nop                                                 #  81    0x7c015  1      OPC=nop             
  nop                                                 #  82    0x7c016  1      OPC=nop             
  nop                                                 #  83    0x7c017  1      OPC=nop             
  nop                                                 #  84    0x7c018  1      OPC=nop             
  nop                                                 #  85    0x7c019  1      OPC=nop             
  nop                                                 #  86    0x7c01a  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev                       #  87    0x7c01b  5      OPC=callq_label     
  movl 0x8(%rsp), %eax                                #  88    0x7c020  4      OPC=movl_r32_m32    
  movl %eax, %edi                                     #  89    0x7c024  2      OPC=movl_r32_r32    
  nop                                                 #  90    0x7c026  1      OPC=nop             
  nop                                                 #  91    0x7c027  1      OPC=nop             
  nop                                                 #  92    0x7c028  1      OPC=nop             
  nop                                                 #  93    0x7c029  1      OPC=nop             
  nop                                                 #  94    0x7c02a  1      OPC=nop             
  nop                                                 #  95    0x7c02b  1      OPC=nop             
  nop                                                 #  96    0x7c02c  1      OPC=nop             
  nop                                                 #  97    0x7c02d  1      OPC=nop             
  nop                                                 #  98    0x7c02e  1      OPC=nop             
  nop                                                 #  99    0x7c02f  1      OPC=nop             
  nop                                                 #  100   0x7c030  1      OPC=nop             
  nop                                                 #  101   0x7c031  1      OPC=nop             
  nop                                                 #  102   0x7c032  1      OPC=nop             
  nop                                                 #  103   0x7c033  1      OPC=nop             
  nop                                                 #  104   0x7c034  1      OPC=nop             
  nop                                                 #  105   0x7c035  1      OPC=nop             
  nop                                                 #  106   0x7c036  1      OPC=nop             
  nop                                                 #  107   0x7c037  1      OPC=nop             
  nop                                                 #  108   0x7c038  1      OPC=nop             
  nop                                                 #  109   0x7c039  1      OPC=nop             
  nop                                                 #  110   0x7c03a  1      OPC=nop             
  callq ._Unwind_Resume                               #  111   0x7c03b  5      OPC=callq_label     
                                                                                                   
.size _ZNSt7collateIcED0Ev, .-_ZNSt7collateIcED0Ev

