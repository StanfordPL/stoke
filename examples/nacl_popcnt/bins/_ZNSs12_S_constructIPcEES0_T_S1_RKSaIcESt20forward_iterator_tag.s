  .text
  .globl _ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag
  .type _ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag, @function

#! file-offset 0x47700
#! rip-offset  0x47700
#! capacity    384 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag:  #        0x47700  0      
  movq %rbx, -0x20(%rsp)                                           #  1     0x47700  5      
  movq %r13, -0x10(%rsp)                                           #  2     0x47705  5      
  movl %edi, %ebx                                                  #  3     0x4770a  2      
  movl %esi, %r13d                                                 #  4     0x4770c  3      
  movq %r12, -0x18(%rsp)                                           #  5     0x4770f  5      
  movq %r14, -0x8(%rsp)                                            #  6     0x47714  5      
  movl $0x10031dac, %r12d                                          #  7     0x47719  6      
  nop                                                              #  8     0x4771f  1      
  subl $0x28, %esp                                                 #  9     0x47720  3      
  addq %r15, %rsp                                                  #  10    0x47723  3      
  cmpl %r13d, %ebx                                                 #  11    0x47726  3      
  movl %edx, %edx                                                  #  12    0x47729  2      
  movl %r12d, %r12d                                                #  13    0x4772b  3      
  je .L_477c0                                                      #  14    0x4772e  6      
  testq %rbx, %rbx                                                 #  15    0x47734  3      
  je .L_47820                                                      #  16    0x47737  6      
  subl %ebx, %r13d                                                 #  17    0x4773d  3      
  xorl %esi, %esi                                                  #  18    0x47740  2      
  movl %r13d, %edi                                                 #  19    0x47742  3      
  nop                                                              #  20    0x47745  1      
  nop                                                              #  21    0x47746  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                            #  22    0x47747  5      
  cmpl $0x1, %r13d                                                 #  23    0x4774c  4      
  movl %eax, %r14d                                                 #  24    0x47750  3      
  leal 0xc(%r14), %r12d                                            #  25    0x47753  4      
  je .L_47800                                                      #  26    0x47757  6      
  nop                                                              #  27    0x4775d  1      
.L_47780:                                                          #        0x4775e  0      
  movl %r13d, %edx                                                 #  28    0x4775e  3      
  movl %ebx, %esi                                                  #  29    0x47761  2      
  movl %r12d, %edi                                                 #  30    0x47763  3      
  nop                                                              #  31    0x47766  1      
  nop                                                              #  32    0x47767  1      
  callq .memcpy                                                    #  33    0x47768  5      
.L_477a0:                                                          #        0x4776d  0      
  movl %r14d, %r14d                                                #  34    0x4776d  3      
  movl %r13d, (%r15,%r14,1)                                        #  35    0x47770  4      
  addl %r12d, %r13d                                                #  36    0x47774  3      
  movl %r14d, %r14d                                                #  37    0x47777  3      
  movl $0x0, 0x8(%r15,%r14,1)                                      #  38    0x4777a  9      
  movl %r13d, %r13d                                                #  39    0x47783  3      
  movb $0x0, (%r15,%r13,1)                                         #  40    0x47786  5      
  xchgw %ax, %ax                                                   #  41    0x4778b  3      
.L_477c0:                                                          #        0x4778e  0      
  movl %r12d, %eax                                                 #  42    0x4778e  3      
  movq 0x8(%rsp), %rbx                                             #  43    0x47791  5      
  movq 0x10(%rsp), %r12                                            #  44    0x47796  5      
  movq 0x18(%rsp), %r13                                            #  45    0x4779b  5      
  movq 0x20(%rsp), %r14                                            #  46    0x477a0  5      
  addl $0x28, %esp                                                 #  47    0x477a5  3      
  addq %r15, %rsp                                                  #  48    0x477a8  3      
  popq %r11                                                        #  49    0x477ab  3      
  nop                                                              #  50    0x477ae  1      
  andl $0xffffffe0, %r11d                                          #  51    0x477af  7      
  addq %r15, %r11                                                  #  52    0x477b6  3      
  jmpq %r11                                                        #  53    0x477b9  3      
  nop                                                              #  54    0x477bc  1      
  nop                                                              #  55    0x477bd  1      
.L_47800:                                                          #        0x477be  0      
  movl %ebx, %ebx                                                  #  56    0x477be  2      
  movzbl (%r15,%rbx,1), %eax                                       #  57    0x477c0  5      
  movl %r12d, %r12d                                                #  58    0x477c5  3      
  movb %al, (%r15,%r12,1)                                          #  59    0x477c8  4      
  jmpq .L_477a0                                                    #  60    0x477cc  5      
  nop                                                              #  61    0x477d1  1      
  nop                                                              #  62    0x477d2  1      
.L_47820:                                                          #        0x477d3  0      
  testq %r13, %r13                                                 #  63    0x477d3  3      
  je .L_47840                                                      #  64    0x477d6  6      
  movl $0x10020aa8, %edi                                           #  65    0x477dc  5      
  xchgw %ax, %ax                                                   #  66    0x477e1  3      
  nop                                                              #  67    0x477e4  1      
  callq ._ZSt19__throw_logic_errorPKc                              #  68    0x477e5  5      
.L_47840:                                                          #        0x477ea  0      
  xorl %esi, %esi                                                  #  69    0x477ea  2      
  xorl %edi, %edi                                                  #  70    0x477ec  2      
  xorl %r13d, %r13d                                                #  71    0x477ee  3      
  nop                                                              #  72    0x477f1  1      
  nop                                                              #  73    0x477f2  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                            #  74    0x477f3  5      
  movl %eax, %r14d                                                 #  75    0x477f8  3      
  leal 0xc(%r14), %r12d                                            #  76    0x477fb  4      
  jmpq .L_47780                                                    #  77    0x477ff  5      
  nop                                                              #  78    0x47804  1      
  nop                                                              #  79    0x47805  1      
  nop                                                              #  80    0x47806  1      
  nop                                                              #  81    0x47807  1      
  nop                                                              #  82    0x47808  1      
  nop                                                              #  83    0x47809  1      
  nop                                                              #  84    0x4780a  1      
  nop                                                              #  85    0x4780b  1      
  nop                                                              #  86    0x4780c  1      
  nop                                                              #  87    0x4780d  1      
  nop                                                              #  88    0x4780e  1      
  nop                                                              #  89    0x4780f  1      
  nop                                                              #  90    0x47810  1      
  nop                                                              #  91    0x47811  1      
  nop                                                              #  92    0x47812  1      
  nop                                                              #  93    0x47813  1      
  nop                                                              #  94    0x47814  1      
  nop                                                              #  95    0x47815  1      
  nop                                                              #  96    0x47816  1      
  nop                                                              #  97    0x47817  1      
                                                                                            
.size _ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag

