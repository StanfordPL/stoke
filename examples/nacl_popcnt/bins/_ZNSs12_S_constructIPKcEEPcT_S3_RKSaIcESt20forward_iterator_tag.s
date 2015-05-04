  .text
  .globl _ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag
  .type _ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag, @function

#! file-offset 0x47280
#! rip-offset  0x47280
#! capacity    384 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag:  #        0x47280  0      
  movq %rbx, -0x20(%rsp)                                           #  1     0x47280  5      
  movq %r13, -0x10(%rsp)                                           #  2     0x47285  5      
  movl %edi, %ebx                                                  #  3     0x4728a  2      
  movl %esi, %r13d                                                 #  4     0x4728c  3      
  movq %r12, -0x18(%rsp)                                           #  5     0x4728f  5      
  movq %r14, -0x8(%rsp)                                            #  6     0x47294  5      
  movl $0x10031dac, %r12d                                          #  7     0x47299  6      
  nop                                                              #  8     0x4729f  1      
  subl $0x28, %esp                                                 #  9     0x472a0  3      
  addq %r15, %rsp                                                  #  10    0x472a3  3      
  cmpl %r13d, %ebx                                                 #  11    0x472a6  3      
  movl %edx, %edx                                                  #  12    0x472a9  2      
  movl %r12d, %r12d                                                #  13    0x472ab  3      
  je .L_47340                                                      #  14    0x472ae  6      
  testq %rbx, %rbx                                                 #  15    0x472b4  3      
  je .L_473a0                                                      #  16    0x472b7  6      
  subl %ebx, %r13d                                                 #  17    0x472bd  3      
  xorl %esi, %esi                                                  #  18    0x472c0  2      
  movl %r13d, %edi                                                 #  19    0x472c2  3      
  nop                                                              #  20    0x472c5  1      
  nop                                                              #  21    0x472c6  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                            #  22    0x472c7  5      
  cmpl $0x1, %r13d                                                 #  23    0x472cc  4      
  movl %eax, %r14d                                                 #  24    0x472d0  3      
  leal 0xc(%r14), %r12d                                            #  25    0x472d3  4      
  je .L_47380                                                      #  26    0x472d7  6      
  nop                                                              #  27    0x472dd  1      
.L_47300:                                                          #        0x472de  0      
  movl %r13d, %edx                                                 #  28    0x472de  3      
  movl %ebx, %esi                                                  #  29    0x472e1  2      
  movl %r12d, %edi                                                 #  30    0x472e3  3      
  nop                                                              #  31    0x472e6  1      
  nop                                                              #  32    0x472e7  1      
  callq .memcpy                                                    #  33    0x472e8  5      
.L_47320:                                                          #        0x472ed  0      
  movl %r14d, %r14d                                                #  34    0x472ed  3      
  movl %r13d, (%r15,%r14,1)                                        #  35    0x472f0  4      
  addl %r12d, %r13d                                                #  36    0x472f4  3      
  movl %r14d, %r14d                                                #  37    0x472f7  3      
  movl $0x0, 0x8(%r15,%r14,1)                                      #  38    0x472fa  9      
  movl %r13d, %r13d                                                #  39    0x47303  3      
  movb $0x0, (%r15,%r13,1)                                         #  40    0x47306  5      
  xchgw %ax, %ax                                                   #  41    0x4730b  3      
.L_47340:                                                          #        0x4730e  0      
  movl %r12d, %eax                                                 #  42    0x4730e  3      
  movq 0x8(%rsp), %rbx                                             #  43    0x47311  5      
  movq 0x10(%rsp), %r12                                            #  44    0x47316  5      
  movq 0x18(%rsp), %r13                                            #  45    0x4731b  5      
  movq 0x20(%rsp), %r14                                            #  46    0x47320  5      
  addl $0x28, %esp                                                 #  47    0x47325  3      
  addq %r15, %rsp                                                  #  48    0x47328  3      
  popq %r11                                                        #  49    0x4732b  3      
  nop                                                              #  50    0x4732e  1      
  andl $0xffffffe0, %r11d                                          #  51    0x4732f  7      
  addq %r15, %r11                                                  #  52    0x47336  3      
  jmpq %r11                                                        #  53    0x47339  3      
  nop                                                              #  54    0x4733c  1      
  nop                                                              #  55    0x4733d  1      
.L_47380:                                                          #        0x4733e  0      
  movl %ebx, %ebx                                                  #  56    0x4733e  2      
  movzbl (%r15,%rbx,1), %eax                                       #  57    0x47340  5      
  movl %r12d, %r12d                                                #  58    0x47345  3      
  movb %al, (%r15,%r12,1)                                          #  59    0x47348  4      
  jmpq .L_47320                                                    #  60    0x4734c  5      
  nop                                                              #  61    0x47351  1      
  nop                                                              #  62    0x47352  1      
.L_473a0:                                                          #        0x47353  0      
  testq %r13, %r13                                                 #  63    0x47353  3      
  je .L_473c0                                                      #  64    0x47356  6      
  movl $0x10020aa8, %edi                                           #  65    0x4735c  5      
  xchgw %ax, %ax                                                   #  66    0x47361  3      
  nop                                                              #  67    0x47364  1      
  callq ._ZSt19__throw_logic_errorPKc                              #  68    0x47365  5      
.L_473c0:                                                          #        0x4736a  0      
  xorl %esi, %esi                                                  #  69    0x4736a  2      
  xorl %edi, %edi                                                  #  70    0x4736c  2      
  xorl %r13d, %r13d                                                #  71    0x4736e  3      
  nop                                                              #  72    0x47371  1      
  nop                                                              #  73    0x47372  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                            #  74    0x47373  5      
  movl %eax, %r14d                                                 #  75    0x47378  3      
  leal 0xc(%r14), %r12d                                            #  76    0x4737b  4      
  jmpq .L_47300                                                    #  77    0x4737f  5      
  nop                                                              #  78    0x47384  1      
  nop                                                              #  79    0x47385  1      
  nop                                                              #  80    0x47386  1      
  nop                                                              #  81    0x47387  1      
  nop                                                              #  82    0x47388  1      
  nop                                                              #  83    0x47389  1      
  nop                                                              #  84    0x4738a  1      
  nop                                                              #  85    0x4738b  1      
  nop                                                              #  86    0x4738c  1      
  nop                                                              #  87    0x4738d  1      
  nop                                                              #  88    0x4738e  1      
  nop                                                              #  89    0x4738f  1      
  nop                                                              #  90    0x47390  1      
  nop                                                              #  91    0x47391  1      
  nop                                                              #  92    0x47392  1      
  nop                                                              #  93    0x47393  1      
  nop                                                              #  94    0x47394  1      
  nop                                                              #  95    0x47395  1      
  nop                                                              #  96    0x47396  1      
  nop                                                              #  97    0x47397  1      
                                                                                            
.size _ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag

