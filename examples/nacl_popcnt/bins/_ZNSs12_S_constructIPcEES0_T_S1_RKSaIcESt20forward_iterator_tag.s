  .text
  .globl _ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag
  .type _ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag, @function

#! file-offset 0x47660
#! rip-offset  0x47660
#! capacity    384 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag:  #        0x47660  0      
  movq %rbx, -0x20(%rsp)                                           #  1     0x47660  5      
  movq %r13, -0x10(%rsp)                                           #  2     0x47665  5      
  movl %edi, %ebx                                                  #  3     0x4766a  2      
  movl %esi, %r13d                                                 #  4     0x4766c  3      
  movq %r12, -0x18(%rsp)                                           #  5     0x4766f  5      
  movq %r14, -0x8(%rsp)                                            #  6     0x47674  5      
  movl $0x10031dac, %r12d                                          #  7     0x47679  6      
  nop                                                              #  8     0x4767f  1      
  subl $0x28, %esp                                                 #  9     0x47680  3      
  addq %r15, %rsp                                                  #  10    0x47683  3      
  cmpl %r13d, %ebx                                                 #  11    0x47686  3      
  movl %edx, %edx                                                  #  12    0x47689  2      
  movl %r12d, %r12d                                                #  13    0x4768b  3      
  je .L_47720                                                      #  14    0x4768e  6      
  testq %rbx, %rbx                                                 #  15    0x47694  3      
  je .L_47780                                                      #  16    0x47697  6      
  subl %ebx, %r13d                                                 #  17    0x4769d  3      
  xorl %esi, %esi                                                  #  18    0x476a0  2      
  movl %r13d, %edi                                                 #  19    0x476a2  3      
  nop                                                              #  20    0x476a5  1      
  nop                                                              #  21    0x476a6  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                            #  22    0x476a7  5      
  cmpl $0x1, %r13d                                                 #  23    0x476ac  4      
  movl %eax, %r14d                                                 #  24    0x476b0  3      
  leal 0xc(%r14), %r12d                                            #  25    0x476b3  4      
  je .L_47760                                                      #  26    0x476b7  6      
  nop                                                              #  27    0x476bd  1      
.L_476e0:                                                          #        0x476be  0      
  movl %r13d, %edx                                                 #  28    0x476be  3      
  movl %ebx, %esi                                                  #  29    0x476c1  2      
  movl %r12d, %edi                                                 #  30    0x476c3  3      
  nop                                                              #  31    0x476c6  1      
  nop                                                              #  32    0x476c7  1      
  callq .memcpy                                                    #  33    0x476c8  5      
.L_47700:                                                          #        0x476cd  0      
  movl %r14d, %r14d                                                #  34    0x476cd  3      
  movl %r13d, (%r15,%r14,1)                                        #  35    0x476d0  4      
  addl %r12d, %r13d                                                #  36    0x476d4  3      
  movl %r14d, %r14d                                                #  37    0x476d7  3      
  movl $0x0, 0x8(%r15,%r14,1)                                      #  38    0x476da  9      
  movl %r13d, %r13d                                                #  39    0x476e3  3      
  movb $0x0, (%r15,%r13,1)                                         #  40    0x476e6  5      
  xchgw %ax, %ax                                                   #  41    0x476eb  3      
.L_47720:                                                          #        0x476ee  0      
  movl %r12d, %eax                                                 #  42    0x476ee  3      
  movq 0x8(%rsp), %rbx                                             #  43    0x476f1  5      
  movq 0x10(%rsp), %r12                                            #  44    0x476f6  5      
  movq 0x18(%rsp), %r13                                            #  45    0x476fb  5      
  movq 0x20(%rsp), %r14                                            #  46    0x47700  5      
  addl $0x28, %esp                                                 #  47    0x47705  3      
  addq %r15, %rsp                                                  #  48    0x47708  3      
  popq %r11                                                        #  49    0x4770b  3      
  nop                                                              #  50    0x4770e  1      
  andl $0xffffffe0, %r11d                                          #  51    0x4770f  7      
  addq %r15, %r11                                                  #  52    0x47716  3      
  jmpq %r11                                                        #  53    0x47719  3      
  nop                                                              #  54    0x4771c  1      
  nop                                                              #  55    0x4771d  1      
.L_47760:                                                          #        0x4771e  0      
  movl %ebx, %ebx                                                  #  56    0x4771e  2      
  movzbl (%r15,%rbx,1), %eax                                       #  57    0x47720  5      
  movl %r12d, %r12d                                                #  58    0x47725  3      
  movb %al, (%r15,%r12,1)                                          #  59    0x47728  4      
  jmpq .L_47700                                                    #  60    0x4772c  5      
  nop                                                              #  61    0x47731  1      
  nop                                                              #  62    0x47732  1      
.L_47780:                                                          #        0x47733  0      
  testq %r13, %r13                                                 #  63    0x47733  3      
  je .L_477a0                                                      #  64    0x47736  6      
  movl $0x10020aa8, %edi                                           #  65    0x4773c  5      
  xchgw %ax, %ax                                                   #  66    0x47741  3      
  nop                                                              #  67    0x47744  1      
  callq ._ZSt19__throw_logic_errorPKc                              #  68    0x47745  5      
.L_477a0:                                                          #        0x4774a  0      
  xorl %esi, %esi                                                  #  69    0x4774a  2      
  xorl %edi, %edi                                                  #  70    0x4774c  2      
  xorl %r13d, %r13d                                                #  71    0x4774e  3      
  nop                                                              #  72    0x47751  1      
  nop                                                              #  73    0x47752  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                            #  74    0x47753  5      
  movl %eax, %r14d                                                 #  75    0x47758  3      
  leal 0xc(%r14), %r12d                                            #  76    0x4775b  4      
  jmpq .L_476e0                                                    #  77    0x4775f  5      
  nop                                                              #  78    0x47764  1      
  nop                                                              #  79    0x47765  1      
  nop                                                              #  80    0x47766  1      
  nop                                                              #  81    0x47767  1      
  nop                                                              #  82    0x47768  1      
  nop                                                              #  83    0x47769  1      
  nop                                                              #  84    0x4776a  1      
  nop                                                              #  85    0x4776b  1      
  nop                                                              #  86    0x4776c  1      
  nop                                                              #  87    0x4776d  1      
  nop                                                              #  88    0x4776e  1      
  nop                                                              #  89    0x4776f  1      
  nop                                                              #  90    0x47770  1      
  nop                                                              #  91    0x47771  1      
  nop                                                              #  92    0x47772  1      
  nop                                                              #  93    0x47773  1      
  nop                                                              #  94    0x47774  1      
  nop                                                              #  95    0x47775  1      
  nop                                                              #  96    0x47776  1      
  nop                                                              #  97    0x47777  1      
                                                                                            
.size _ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag

