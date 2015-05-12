  .text
  .globl _ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag
  .type _ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag, @function

#! file-offset 0x47200
#! rip-offset  0x47200
#! capacity    384 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag:  #        0x47200  0      
  movq %rbx, -0x20(%rsp)                                           #  1     0x47200  5      
  movq %r13, -0x10(%rsp)                                           #  2     0x47205  5      
  movl %edi, %ebx                                                  #  3     0x4720a  2      
  movl %esi, %r13d                                                 #  4     0x4720c  3      
  movq %r12, -0x18(%rsp)                                           #  5     0x4720f  5      
  movq %r14, -0x8(%rsp)                                            #  6     0x47214  5      
  movl $0x10031dac, %r12d                                          #  7     0x47219  6      
  nop                                                              #  8     0x4721f  1      
  subl $0x28, %esp                                                 #  9     0x47220  3      
  addq %r15, %rsp                                                  #  10    0x47223  3      
  cmpl %r13d, %ebx                                                 #  11    0x47226  3      
  movl %edx, %edx                                                  #  12    0x47229  2      
  movl %r12d, %r12d                                                #  13    0x4722b  3      
  je .L_472c0                                                      #  14    0x4722e  6      
  testq %rbx, %rbx                                                 #  15    0x47234  3      
  je .L_47320                                                      #  16    0x47237  6      
  subl %ebx, %r13d                                                 #  17    0x4723d  3      
  xorl %esi, %esi                                                  #  18    0x47240  2      
  movl %r13d, %edi                                                 #  19    0x47242  3      
  nop                                                              #  20    0x47245  1      
  nop                                                              #  21    0x47246  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                            #  22    0x47247  5      
  cmpl $0x1, %r13d                                                 #  23    0x4724c  4      
  movl %eax, %r14d                                                 #  24    0x47250  3      
  leal 0xc(%r14), %r12d                                            #  25    0x47253  4      
  je .L_47300                                                      #  26    0x47257  6      
  nop                                                              #  27    0x4725d  1      
.L_47280:                                                          #        0x4725e  0      
  movl %r13d, %edx                                                 #  28    0x4725e  3      
  movl %ebx, %esi                                                  #  29    0x47261  2      
  movl %r12d, %edi                                                 #  30    0x47263  3      
  nop                                                              #  31    0x47266  1      
  nop                                                              #  32    0x47267  1      
  callq .memcpy                                                    #  33    0x47268  5      
.L_472a0:                                                          #        0x4726d  0      
  movl %r14d, %r14d                                                #  34    0x4726d  3      
  movl %r13d, (%r15,%r14,1)                                        #  35    0x47270  4      
  addl %r12d, %r13d                                                #  36    0x47274  3      
  movl %r14d, %r14d                                                #  37    0x47277  3      
  movl $0x0, 0x8(%r15,%r14,1)                                      #  38    0x4727a  9      
  movl %r13d, %r13d                                                #  39    0x47283  3      
  movb $0x0, (%r15,%r13,1)                                         #  40    0x47286  5      
  xchgw %ax, %ax                                                   #  41    0x4728b  3      
.L_472c0:                                                          #        0x4728e  0      
  movl %r12d, %eax                                                 #  42    0x4728e  3      
  movq 0x8(%rsp), %rbx                                             #  43    0x47291  5      
  movq 0x10(%rsp), %r12                                            #  44    0x47296  5      
  movq 0x18(%rsp), %r13                                            #  45    0x4729b  5      
  movq 0x20(%rsp), %r14                                            #  46    0x472a0  5      
  addl $0x28, %esp                                                 #  47    0x472a5  3      
  addq %r15, %rsp                                                  #  48    0x472a8  3      
  popq %r11                                                        #  49    0x472ab  3      
  nop                                                              #  50    0x472ae  1      
  andl $0xffffffe0, %r11d                                          #  51    0x472af  7      
  addq %r15, %r11                                                  #  52    0x472b6  3      
  jmpq %r11                                                        #  53    0x472b9  3      
  nop                                                              #  54    0x472bc  1      
  nop                                                              #  55    0x472bd  1      
.L_47300:                                                          #        0x472be  0      
  movl %ebx, %ebx                                                  #  56    0x472be  2      
  movzbl (%r15,%rbx,1), %eax                                       #  57    0x472c0  5      
  movl %r12d, %r12d                                                #  58    0x472c5  3      
  movb %al, (%r15,%r12,1)                                          #  59    0x472c8  4      
  jmpq .L_472a0                                                    #  60    0x472cc  5      
  nop                                                              #  61    0x472d1  1      
  nop                                                              #  62    0x472d2  1      
.L_47320:                                                          #        0x472d3  0      
  testq %r13, %r13                                                 #  63    0x472d3  3      
  je .L_47340                                                      #  64    0x472d6  6      
  movl $0x10020aa8, %edi                                           #  65    0x472dc  5      
  xchgw %ax, %ax                                                   #  66    0x472e1  3      
  nop                                                              #  67    0x472e4  1      
  callq ._ZSt19__throw_logic_errorPKc                              #  68    0x472e5  5      
.L_47340:                                                          #        0x472ea  0      
  xorl %esi, %esi                                                  #  69    0x472ea  2      
  xorl %edi, %edi                                                  #  70    0x472ec  2      
  xorl %r13d, %r13d                                                #  71    0x472ee  3      
  nop                                                              #  72    0x472f1  1      
  nop                                                              #  73    0x472f2  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                            #  74    0x472f3  5      
  movl %eax, %r14d                                                 #  75    0x472f8  3      
  leal 0xc(%r14), %r12d                                            #  76    0x472fb  4      
  jmpq .L_47280                                                    #  77    0x472ff  5      
  nop                                                              #  78    0x47304  1      
  nop                                                              #  79    0x47305  1      
  nop                                                              #  80    0x47306  1      
  nop                                                              #  81    0x47307  1      
  nop                                                              #  82    0x47308  1      
  nop                                                              #  83    0x47309  1      
  nop                                                              #  84    0x4730a  1      
  nop                                                              #  85    0x4730b  1      
  nop                                                              #  86    0x4730c  1      
  nop                                                              #  87    0x4730d  1      
  nop                                                              #  88    0x4730e  1      
  nop                                                              #  89    0x4730f  1      
  nop                                                              #  90    0x47310  1      
  nop                                                              #  91    0x47311  1      
  nop                                                              #  92    0x47312  1      
  nop                                                              #  93    0x47313  1      
  nop                                                              #  94    0x47314  1      
  nop                                                              #  95    0x47315  1      
  nop                                                              #  96    0x47316  1      
  nop                                                              #  97    0x47317  1      
                                                                                            
.size _ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag

