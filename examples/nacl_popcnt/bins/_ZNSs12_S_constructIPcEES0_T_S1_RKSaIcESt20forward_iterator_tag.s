  .text
  .globl _ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag
  .type _ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag, @function

#! file-offset 0x47680
#! rip-offset  0x47680
#! capacity    384 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag:  #        0x47680  0      
  movq %rbx, -0x20(%rsp)                                           #  1     0x47680  5      
  movq %r13, -0x10(%rsp)                                           #  2     0x47685  5      
  movl %edi, %ebx                                                  #  3     0x4768a  2      
  movl %esi, %r13d                                                 #  4     0x4768c  3      
  movq %r12, -0x18(%rsp)                                           #  5     0x4768f  5      
  movq %r14, -0x8(%rsp)                                            #  6     0x47694  5      
  movl $0x10031dac, %r12d                                          #  7     0x47699  6      
  nop                                                              #  8     0x4769f  1      
  subl $0x28, %esp                                                 #  9     0x476a0  3      
  addq %r15, %rsp                                                  #  10    0x476a3  3      
  cmpl %r13d, %ebx                                                 #  11    0x476a6  3      
  movl %edx, %edx                                                  #  12    0x476a9  2      
  movl %r12d, %r12d                                                #  13    0x476ab  3      
  je .L_47740                                                      #  14    0x476ae  6      
  testq %rbx, %rbx                                                 #  15    0x476b4  3      
  je .L_477a0                                                      #  16    0x476b7  6      
  subl %ebx, %r13d                                                 #  17    0x476bd  3      
  xorl %esi, %esi                                                  #  18    0x476c0  2      
  movl %r13d, %edi                                                 #  19    0x476c2  3      
  nop                                                              #  20    0x476c5  1      
  nop                                                              #  21    0x476c6  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                            #  22    0x476c7  5      
  cmpl $0x1, %r13d                                                 #  23    0x476cc  4      
  movl %eax, %r14d                                                 #  24    0x476d0  3      
  leal 0xc(%r14), %r12d                                            #  25    0x476d3  4      
  je .L_47780                                                      #  26    0x476d7  6      
  nop                                                              #  27    0x476dd  1      
.L_47700:                                                          #        0x476de  0      
  movl %r13d, %edx                                                 #  28    0x476de  3      
  movl %ebx, %esi                                                  #  29    0x476e1  2      
  movl %r12d, %edi                                                 #  30    0x476e3  3      
  nop                                                              #  31    0x476e6  1      
  nop                                                              #  32    0x476e7  1      
  callq .memcpy                                                    #  33    0x476e8  5      
.L_47720:                                                          #        0x476ed  0      
  movl %r14d, %r14d                                                #  34    0x476ed  3      
  movl %r13d, (%r15,%r14,1)                                        #  35    0x476f0  4      
  addl %r12d, %r13d                                                #  36    0x476f4  3      
  movl %r14d, %r14d                                                #  37    0x476f7  3      
  movl $0x0, 0x8(%r15,%r14,1)                                      #  38    0x476fa  9      
  movl %r13d, %r13d                                                #  39    0x47703  3      
  movb $0x0, (%r15,%r13,1)                                         #  40    0x47706  5      
  xchgw %ax, %ax                                                   #  41    0x4770b  3      
.L_47740:                                                          #        0x4770e  0      
  movl %r12d, %eax                                                 #  42    0x4770e  3      
  movq 0x8(%rsp), %rbx                                             #  43    0x47711  5      
  movq 0x10(%rsp), %r12                                            #  44    0x47716  5      
  movq 0x18(%rsp), %r13                                            #  45    0x4771b  5      
  movq 0x20(%rsp), %r14                                            #  46    0x47720  5      
  addl $0x28, %esp                                                 #  47    0x47725  3      
  addq %r15, %rsp                                                  #  48    0x47728  3      
  popq %r11                                                        #  49    0x4772b  3      
  nop                                                              #  50    0x4772e  1      
  andl $0xffffffe0, %r11d                                          #  51    0x4772f  7      
  addq %r15, %r11                                                  #  52    0x47736  3      
  jmpq %r11                                                        #  53    0x47739  3      
  nop                                                              #  54    0x4773c  1      
  nop                                                              #  55    0x4773d  1      
.L_47780:                                                          #        0x4773e  0      
  movl %ebx, %ebx                                                  #  56    0x4773e  2      
  movzbl (%r15,%rbx,1), %eax                                       #  57    0x47740  5      
  movl %r12d, %r12d                                                #  58    0x47745  3      
  movb %al, (%r15,%r12,1)                                          #  59    0x47748  4      
  jmpq .L_47720                                                    #  60    0x4774c  5      
  nop                                                              #  61    0x47751  1      
  nop                                                              #  62    0x47752  1      
.L_477a0:                                                          #        0x47753  0      
  testq %r13, %r13                                                 #  63    0x47753  3      
  je .L_477c0                                                      #  64    0x47756  6      
  movl $0x10020aa8, %edi                                           #  65    0x4775c  5      
  xchgw %ax, %ax                                                   #  66    0x47761  3      
  nop                                                              #  67    0x47764  1      
  callq ._ZSt19__throw_logic_errorPKc                              #  68    0x47765  5      
.L_477c0:                                                          #        0x4776a  0      
  xorl %esi, %esi                                                  #  69    0x4776a  2      
  xorl %edi, %edi                                                  #  70    0x4776c  2      
  xorl %r13d, %r13d                                                #  71    0x4776e  3      
  nop                                                              #  72    0x47771  1      
  nop                                                              #  73    0x47772  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                            #  74    0x47773  5      
  movl %eax, %r14d                                                 #  75    0x47778  3      
  leal 0xc(%r14), %r12d                                            #  76    0x4777b  4      
  jmpq .L_47700                                                    #  77    0x4777f  5      
  nop                                                              #  78    0x47784  1      
  nop                                                              #  79    0x47785  1      
  nop                                                              #  80    0x47786  1      
  nop                                                              #  81    0x47787  1      
  nop                                                              #  82    0x47788  1      
  nop                                                              #  83    0x47789  1      
  nop                                                              #  84    0x4778a  1      
  nop                                                              #  85    0x4778b  1      
  nop                                                              #  86    0x4778c  1      
  nop                                                              #  87    0x4778d  1      
  nop                                                              #  88    0x4778e  1      
  nop                                                              #  89    0x4778f  1      
  nop                                                              #  90    0x47790  1      
  nop                                                              #  91    0x47791  1      
  nop                                                              #  92    0x47792  1      
  nop                                                              #  93    0x47793  1      
  nop                                                              #  94    0x47794  1      
  nop                                                              #  95    0x47795  1      
  nop                                                              #  96    0x47796  1      
  nop                                                              #  97    0x47797  1      
                                                                                            
.size _ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag

