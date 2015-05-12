  .text
  .globl _putc_r
  .type _putc_r, @function

#! file-offset 0x6a5a0
#! rip-offset  0x6a5a0
#! capacity    640 bytes

# Text                                   #  Line  RIP      Bytes  
._putc_r:                                #        0x6a5a0  0      
  movq %r12, -0x10(%rsp)                 #  1     0x6a5a0  5      
  movl %edi, %r12d                       #  2     0x6a5a5  3      
  movq %rbx, -0x18(%rsp)                 #  3     0x6a5a8  5      
  movq %r13, -0x8(%rsp)                  #  4     0x6a5ad  5      
  subl $0x28, %esp                       #  5     0x6a5b2  3      
  addq %r15, %rsp                        #  6     0x6a5b5  3      
  testq %r12, %r12                       #  7     0x6a5b8  3      
  movl %esi, %r13d                       #  8     0x6a5bb  3      
  movl %edx, %ebx                        #  9     0x6a5be  2      
  je .L_6a5e0                            #  10    0x6a5c0  6      
  movl %r12d, %r12d                      #  11    0x6a5c6  3      
  movl 0x38(%r15,%r12,1), %edx           #  12    0x6a5c9  5      
  testl %edx, %edx                       #  13    0x6a5ce  2      
  je .L_6a760                            #  14    0x6a5d0  6      
  nop                                    #  15    0x6a5d6  1      
.L_6a5e0:                                #        0x6a5d7  0      
  movl %ebx, %ebx                        #  16    0x6a5d7  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  17    0x6a5d9  6      
  je .L_6a6e0                            #  18    0x6a5df  6      
  movl %ebx, %ebx                        #  19    0x6a5e5  2      
  movl 0x8(%r15,%rbx,1), %eax            #  20    0x6a5e7  5      
  subl $0x1, %eax                        #  21    0x6a5ec  3      
  testl %eax, %eax                       #  22    0x6a5ef  2      
  nop                                    #  23    0x6a5f1  1      
  movl %ebx, %ebx                        #  24    0x6a5f2  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  25    0x6a5f4  5      
  js .L_6a720                            #  26    0x6a5f9  6      
  nop                                    #  27    0x6a5ff  1      
  nop                                    #  28    0x6a600  1      
.L_6a620:                                #        0x6a601  0      
  movl %ebx, %ebx                        #  29    0x6a601  2      
  movl (%r15,%rbx,1), %eax               #  30    0x6a603  4      
  movl %eax, %eax                        #  31    0x6a607  2      
  movb %r13b, (%r15,%rax,1)              #  32    0x6a609  4      
  movl %ebx, %ebx                        #  33    0x6a60d  2      
  movl (%r15,%rbx,1), %edx               #  34    0x6a60f  4      
  movl %edx, %edx                        #  35    0x6a613  2      
  movzbl (%r15,%rdx,1), %eax             #  36    0x6a615  5      
  addl $0x1, %edx                        #  37    0x6a61a  3      
  nop                                    #  38    0x6a61d  1      
  movl %ebx, %ebx                        #  39    0x6a61e  2      
  movl %edx, (%r15,%rbx,1)               #  40    0x6a620  4      
  nop                                    #  41    0x6a624  1      
  nop                                    #  42    0x6a625  1      
.L_6a660:                                #        0x6a626  0      
  movl %ebx, %ebx                        #  43    0x6a626  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  44    0x6a628  6      
  jne .L_6a6a0                           #  45    0x6a62e  6      
  leal 0x5c(%rbx), %edi                  #  46    0x6a634  3      
  movl %eax, 0x8(%rsp)                   #  47    0x6a637  4      
  nop                                    #  48    0x6a63b  1      
  callq .__local_lock_release_recursive  #  49    0x6a63c  5      
  movl 0x8(%rsp), %eax                   #  50    0x6a641  4      
  nop                                    #  51    0x6a645  1      
  nop                                    #  52    0x6a646  1      
.L_6a6a0:                                #        0x6a647  0      
  movq 0x10(%rsp), %rbx                  #  53    0x6a647  5      
  movq 0x18(%rsp), %r12                  #  54    0x6a64c  5      
  movq 0x20(%rsp), %r13                  #  55    0x6a651  5      
  addl $0x28, %esp                       #  56    0x6a656  3      
  addq %r15, %rsp                        #  57    0x6a659  3      
  popq %r11                              #  58    0x6a65c  3      
  nop                                    #  59    0x6a65f  1      
  andl $0xffffffe0, %r11d                #  60    0x6a660  7      
  addq %r15, %r11                        #  61    0x6a667  3      
  jmpq %r11                              #  62    0x6a66a  3      
  nop                                    #  63    0x6a66d  1      
  nop                                    #  64    0x6a66e  1      
.L_6a6e0:                                #        0x6a66f  0      
  leal 0x5c(%rbx), %edi                  #  65    0x6a66f  3      
  nop                                    #  66    0x6a672  1      
  nop                                    #  67    0x6a673  1      
  callq .__local_lock_acquire_recursive  #  68    0x6a674  5      
  movl %ebx, %ebx                        #  69    0x6a679  2      
  movl 0x8(%r15,%rbx,1), %eax            #  70    0x6a67b  5      
  subl $0x1, %eax                        #  71    0x6a680  3      
  testl %eax, %eax                       #  72    0x6a683  2      
  movl %ebx, %ebx                        #  73    0x6a685  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  74    0x6a687  5      
  jns .L_6a620                           #  75    0x6a68c  6      
  nop                                    #  76    0x6a692  1      
.L_6a720:                                #        0x6a693  0      
  movl %ebx, %ebx                        #  77    0x6a693  2      
  cmpl 0x18(%r15,%rbx,1), %eax           #  78    0x6a695  5      
  jl .L_6a7a0                            #  79    0x6a69a  6      
  movl %ebx, %ebx                        #  80    0x6a6a0  2      
  movl (%r15,%rbx,1), %eax               #  81    0x6a6a2  4      
  movl %eax, %eax                        #  82    0x6a6a6  2      
  movb %r13b, (%r15,%rax,1)              #  83    0x6a6a8  4      
  movl %ebx, %ebx                        #  84    0x6a6ac  2      
  movl (%r15,%rbx,1), %edx               #  85    0x6a6ae  4      
  nop                                    #  86    0x6a6b2  1      
  movl %edx, %edx                        #  87    0x6a6b3  2      
  movzbl (%r15,%rdx,1), %eax             #  88    0x6a6b5  5      
  cmpb $0xa, %al                         #  89    0x6a6ba  2      
  je .L_6a7e0                            #  90    0x6a6bc  6      
  addl $0x1, %edx                        #  91    0x6a6c2  3      
  movzbl %al, %eax                       #  92    0x6a6c5  3      
  movl %ebx, %ebx                        #  93    0x6a6c8  2      
  movl %edx, (%r15,%rbx,1)               #  94    0x6a6ca  4      
  jmpq .L_6a660                          #  95    0x6a6ce  5      
.L_6a760:                                #        0x6a6d3  0      
  movl %r12d, %edi                       #  96    0x6a6d3  3      
  nop                                    #  97    0x6a6d6  1      
  nop                                    #  98    0x6a6d7  1      
  callq .__sinit                         #  99    0x6a6d8  5      
  jmpq .L_6a5e0                          #  100   0x6a6dd  5      
  nop                                    #  101   0x6a6e2  1      
  nop                                    #  102   0x6a6e3  1      
.L_6a7a0:                                #        0x6a6e4  0      
  movl %ebx, %edx                        #  103   0x6a6e4  2      
  movl %r13d, %esi                       #  104   0x6a6e6  3      
  movl %r12d, %edi                       #  105   0x6a6e9  3      
  nop                                    #  106   0x6a6ec  1      
  nop                                    #  107   0x6a6ed  1      
  callq .__swbuf_r                       #  108   0x6a6ee  5      
  jmpq .L_6a660                          #  109   0x6a6f3  5      
  nop                                    #  110   0x6a6f8  1      
  nop                                    #  111   0x6a6f9  1      
.L_6a7e0:                                #        0x6a6fa  0      
  movl %ebx, %edx                        #  112   0x6a6fa  2      
  movl $0xa, %esi                        #  113   0x6a6fc  5      
  movl %r12d, %edi                       #  114   0x6a701  3      
  xchgw %ax, %ax                         #  115   0x6a704  3      
  nop                                    #  116   0x6a707  1      
  callq .__swbuf_r                       #  117   0x6a708  5      
  jmpq .L_6a660                          #  118   0x6a70d  5      
  nop                                    #  119   0x6a712  1      
  nop                                    #  120   0x6a713  1      
  nop                                    #  121   0x6a714  1      
  nop                                    #  122   0x6a715  1      
  nop                                    #  123   0x6a716  1      
  nop                                    #  124   0x6a717  1      
  nop                                    #  125   0x6a718  1      
  nop                                    #  126   0x6a719  1      
  nop                                    #  127   0x6a71a  1      
  nop                                    #  128   0x6a71b  1      
  nop                                    #  129   0x6a71c  1      
  nop                                    #  130   0x6a71d  1      
  nop                                    #  131   0x6a71e  1      
  nop                                    #  132   0x6a71f  1      
  nop                                    #  133   0x6a720  1      
  nop                                    #  134   0x6a721  1      
  nop                                    #  135   0x6a722  1      
  nop                                    #  136   0x6a723  1      
  nop                                    #  137   0x6a724  1      
  nop                                    #  138   0x6a725  1      
  nop                                    #  139   0x6a726  1      
  nop                                    #  140   0x6a727  1      
  nop                                    #  141   0x6a728  1      
  nop                                    #  142   0x6a729  1      
  nop                                    #  143   0x6a72a  1      
  nop                                    #  144   0x6a72b  1      
  nop                                    #  145   0x6a72c  1      
                                                                  
.size _putc_r, .-_putc_r

