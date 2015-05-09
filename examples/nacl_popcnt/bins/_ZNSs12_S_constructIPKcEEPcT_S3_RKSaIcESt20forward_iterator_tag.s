  .text
  .globl _ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag
  .type _ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag, @function

#! file-offset 0x471e0
#! rip-offset  0x471e0
#! capacity    384 bytes

# Text                                                             #  Line  RIP      Bytes  
._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag:  #        0x471e0  0      
  movq %rbx, -0x20(%rsp)                                           #  1     0x471e0  5      
  movq %r13, -0x10(%rsp)                                           #  2     0x471e5  5      
  movl %edi, %ebx                                                  #  3     0x471ea  2      
  movl %esi, %r13d                                                 #  4     0x471ec  3      
  movq %r12, -0x18(%rsp)                                           #  5     0x471ef  5      
  movq %r14, -0x8(%rsp)                                            #  6     0x471f4  5      
  movl $0x10031dac, %r12d                                          #  7     0x471f9  6      
  nop                                                              #  8     0x471ff  1      
  subl $0x28, %esp                                                 #  9     0x47200  3      
  addq %r15, %rsp                                                  #  10    0x47203  3      
  cmpl %r13d, %ebx                                                 #  11    0x47206  3      
  movl %edx, %edx                                                  #  12    0x47209  2      
  movl %r12d, %r12d                                                #  13    0x4720b  3      
  je .L_472a0                                                      #  14    0x4720e  6      
  testq %rbx, %rbx                                                 #  15    0x47214  3      
  je .L_47300                                                      #  16    0x47217  6      
  subl %ebx, %r13d                                                 #  17    0x4721d  3      
  xorl %esi, %esi                                                  #  18    0x47220  2      
  movl %r13d, %edi                                                 #  19    0x47222  3      
  nop                                                              #  20    0x47225  1      
  nop                                                              #  21    0x47226  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                            #  22    0x47227  5      
  cmpl $0x1, %r13d                                                 #  23    0x4722c  4      
  movl %eax, %r14d                                                 #  24    0x47230  3      
  leal 0xc(%r14), %r12d                                            #  25    0x47233  4      
  je .L_472e0                                                      #  26    0x47237  6      
  nop                                                              #  27    0x4723d  1      
.L_47260:                                                          #        0x4723e  0      
  movl %r13d, %edx                                                 #  28    0x4723e  3      
  movl %ebx, %esi                                                  #  29    0x47241  2      
  movl %r12d, %edi                                                 #  30    0x47243  3      
  nop                                                              #  31    0x47246  1      
  nop                                                              #  32    0x47247  1      
  callq .memcpy                                                    #  33    0x47248  5      
.L_47280:                                                          #        0x4724d  0      
  movl %r14d, %r14d                                                #  34    0x4724d  3      
  movl %r13d, (%r15,%r14,1)                                        #  35    0x47250  4      
  addl %r12d, %r13d                                                #  36    0x47254  3      
  movl %r14d, %r14d                                                #  37    0x47257  3      
  movl $0x0, 0x8(%r15,%r14,1)                                      #  38    0x4725a  9      
  movl %r13d, %r13d                                                #  39    0x47263  3      
  movb $0x0, (%r15,%r13,1)                                         #  40    0x47266  5      
  xchgw %ax, %ax                                                   #  41    0x4726b  3      
.L_472a0:                                                          #        0x4726e  0      
  movl %r12d, %eax                                                 #  42    0x4726e  3      
  movq 0x8(%rsp), %rbx                                             #  43    0x47271  5      
  movq 0x10(%rsp), %r12                                            #  44    0x47276  5      
  movq 0x18(%rsp), %r13                                            #  45    0x4727b  5      
  movq 0x20(%rsp), %r14                                            #  46    0x47280  5      
  addl $0x28, %esp                                                 #  47    0x47285  3      
  addq %r15, %rsp                                                  #  48    0x47288  3      
  popq %r11                                                        #  49    0x4728b  3      
  nop                                                              #  50    0x4728e  1      
  andl $0xffffffe0, %r11d                                          #  51    0x4728f  7      
  addq %r15, %r11                                                  #  52    0x47296  3      
  jmpq %r11                                                        #  53    0x47299  3      
  nop                                                              #  54    0x4729c  1      
  nop                                                              #  55    0x4729d  1      
.L_472e0:                                                          #        0x4729e  0      
  movl %ebx, %ebx                                                  #  56    0x4729e  2      
  movzbl (%r15,%rbx,1), %eax                                       #  57    0x472a0  5      
  movl %r12d, %r12d                                                #  58    0x472a5  3      
  movb %al, (%r15,%r12,1)                                          #  59    0x472a8  4      
  jmpq .L_47280                                                    #  60    0x472ac  5      
  nop                                                              #  61    0x472b1  1      
  nop                                                              #  62    0x472b2  1      
.L_47300:                                                          #        0x472b3  0      
  testq %r13, %r13                                                 #  63    0x472b3  3      
  je .L_47320                                                      #  64    0x472b6  6      
  movl $0x10020aa8, %edi                                           #  65    0x472bc  5      
  xchgw %ax, %ax                                                   #  66    0x472c1  3      
  nop                                                              #  67    0x472c4  1      
  callq ._ZSt19__throw_logic_errorPKc                              #  68    0x472c5  5      
.L_47320:                                                          #        0x472ca  0      
  xorl %esi, %esi                                                  #  69    0x472ca  2      
  xorl %edi, %edi                                                  #  70    0x472cc  2      
  xorl %r13d, %r13d                                                #  71    0x472ce  3      
  nop                                                              #  72    0x472d1  1      
  nop                                                              #  73    0x472d2  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE                            #  74    0x472d3  5      
  movl %eax, %r14d                                                 #  75    0x472d8  3      
  leal 0xc(%r14), %r12d                                            #  76    0x472db  4      
  jmpq .L_47260                                                    #  77    0x472df  5      
  nop                                                              #  78    0x472e4  1      
  nop                                                              #  79    0x472e5  1      
  nop                                                              #  80    0x472e6  1      
  nop                                                              #  81    0x472e7  1      
  nop                                                              #  82    0x472e8  1      
  nop                                                              #  83    0x472e9  1      
  nop                                                              #  84    0x472ea  1      
  nop                                                              #  85    0x472eb  1      
  nop                                                              #  86    0x472ec  1      
  nop                                                              #  87    0x472ed  1      
  nop                                                              #  88    0x472ee  1      
  nop                                                              #  89    0x472ef  1      
  nop                                                              #  90    0x472f0  1      
  nop                                                              #  91    0x472f1  1      
  nop                                                              #  92    0x472f2  1      
  nop                                                              #  93    0x472f3  1      
  nop                                                              #  94    0x472f4  1      
  nop                                                              #  95    0x472f5  1      
  nop                                                              #  96    0x472f6  1      
  nop                                                              #  97    0x472f7  1      
                                                                                            
.size _ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag, .-_ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag

