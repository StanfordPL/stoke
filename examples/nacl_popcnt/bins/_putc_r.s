  .text
  .globl _putc_r
  .type _putc_r, @function

#! file-offset 0x6a620
#! rip-offset  0x6a620
#! capacity    640 bytes

# Text                                   #  Line  RIP      Bytes  
._putc_r:                                #        0x6a620  0      
  movq %r12, -0x10(%rsp)                 #  1     0x6a620  5      
  movl %edi, %r12d                       #  2     0x6a625  3      
  movq %rbx, -0x18(%rsp)                 #  3     0x6a628  5      
  movq %r13, -0x8(%rsp)                  #  4     0x6a62d  5      
  subl $0x28, %esp                       #  5     0x6a632  3      
  addq %r15, %rsp                        #  6     0x6a635  3      
  testq %r12, %r12                       #  7     0x6a638  3      
  movl %esi, %r13d                       #  8     0x6a63b  3      
  movl %edx, %ebx                        #  9     0x6a63e  2      
  je .L_6a660                            #  10    0x6a640  6      
  movl %r12d, %r12d                      #  11    0x6a646  3      
  movl 0x38(%r15,%r12,1), %edx           #  12    0x6a649  5      
  testl %edx, %edx                       #  13    0x6a64e  2      
  je .L_6a7e0                            #  14    0x6a650  6      
  nop                                    #  15    0x6a656  1      
.L_6a660:                                #        0x6a657  0      
  movl %ebx, %ebx                        #  16    0x6a657  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  17    0x6a659  6      
  je .L_6a760                            #  18    0x6a65f  6      
  movl %ebx, %ebx                        #  19    0x6a665  2      
  movl 0x8(%r15,%rbx,1), %eax            #  20    0x6a667  5      
  subl $0x1, %eax                        #  21    0x6a66c  3      
  testl %eax, %eax                       #  22    0x6a66f  2      
  nop                                    #  23    0x6a671  1      
  movl %ebx, %ebx                        #  24    0x6a672  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  25    0x6a674  5      
  js .L_6a7a0                            #  26    0x6a679  6      
  nop                                    #  27    0x6a67f  1      
  nop                                    #  28    0x6a680  1      
.L_6a6a0:                                #        0x6a681  0      
  movl %ebx, %ebx                        #  29    0x6a681  2      
  movl (%r15,%rbx,1), %eax               #  30    0x6a683  4      
  movl %eax, %eax                        #  31    0x6a687  2      
  movb %r13b, (%r15,%rax,1)              #  32    0x6a689  4      
  movl %ebx, %ebx                        #  33    0x6a68d  2      
  movl (%r15,%rbx,1), %edx               #  34    0x6a68f  4      
  movl %edx, %edx                        #  35    0x6a693  2      
  movzbl (%r15,%rdx,1), %eax             #  36    0x6a695  5      
  addl $0x1, %edx                        #  37    0x6a69a  3      
  nop                                    #  38    0x6a69d  1      
  movl %ebx, %ebx                        #  39    0x6a69e  2      
  movl %edx, (%r15,%rbx,1)               #  40    0x6a6a0  4      
  nop                                    #  41    0x6a6a4  1      
  nop                                    #  42    0x6a6a5  1      
.L_6a6e0:                                #        0x6a6a6  0      
  movl %ebx, %ebx                        #  43    0x6a6a6  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  44    0x6a6a8  6      
  jne .L_6a720                           #  45    0x6a6ae  6      
  leal 0x5c(%rbx), %edi                  #  46    0x6a6b4  3      
  movl %eax, 0x8(%rsp)                   #  47    0x6a6b7  4      
  nop                                    #  48    0x6a6bb  1      
  callq .__local_lock_release_recursive  #  49    0x6a6bc  5      
  movl 0x8(%rsp), %eax                   #  50    0x6a6c1  4      
  nop                                    #  51    0x6a6c5  1      
  nop                                    #  52    0x6a6c6  1      
.L_6a720:                                #        0x6a6c7  0      
  movq 0x10(%rsp), %rbx                  #  53    0x6a6c7  5      
  movq 0x18(%rsp), %r12                  #  54    0x6a6cc  5      
  movq 0x20(%rsp), %r13                  #  55    0x6a6d1  5      
  addl $0x28, %esp                       #  56    0x6a6d6  3      
  addq %r15, %rsp                        #  57    0x6a6d9  3      
  popq %r11                              #  58    0x6a6dc  3      
  nop                                    #  59    0x6a6df  1      
  andl $0xffffffe0, %r11d                #  60    0x6a6e0  7      
  addq %r15, %r11                        #  61    0x6a6e7  3      
  jmpq %r11                              #  62    0x6a6ea  3      
  nop                                    #  63    0x6a6ed  1      
  nop                                    #  64    0x6a6ee  1      
.L_6a760:                                #        0x6a6ef  0      
  leal 0x5c(%rbx), %edi                  #  65    0x6a6ef  3      
  nop                                    #  66    0x6a6f2  1      
  nop                                    #  67    0x6a6f3  1      
  callq .__local_lock_acquire_recursive  #  68    0x6a6f4  5      
  movl %ebx, %ebx                        #  69    0x6a6f9  2      
  movl 0x8(%r15,%rbx,1), %eax            #  70    0x6a6fb  5      
  subl $0x1, %eax                        #  71    0x6a700  3      
  testl %eax, %eax                       #  72    0x6a703  2      
  movl %ebx, %ebx                        #  73    0x6a705  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  74    0x6a707  5      
  jns .L_6a6a0                           #  75    0x6a70c  6      
  nop                                    #  76    0x6a712  1      
.L_6a7a0:                                #        0x6a713  0      
  movl %ebx, %ebx                        #  77    0x6a713  2      
  cmpl 0x18(%r15,%rbx,1), %eax           #  78    0x6a715  5      
  jl .L_6a820                            #  79    0x6a71a  6      
  movl %ebx, %ebx                        #  80    0x6a720  2      
  movl (%r15,%rbx,1), %eax               #  81    0x6a722  4      
  movl %eax, %eax                        #  82    0x6a726  2      
  movb %r13b, (%r15,%rax,1)              #  83    0x6a728  4      
  movl %ebx, %ebx                        #  84    0x6a72c  2      
  movl (%r15,%rbx,1), %edx               #  85    0x6a72e  4      
  nop                                    #  86    0x6a732  1      
  movl %edx, %edx                        #  87    0x6a733  2      
  movzbl (%r15,%rdx,1), %eax             #  88    0x6a735  5      
  cmpb $0xa, %al                         #  89    0x6a73a  2      
  je .L_6a860                            #  90    0x6a73c  6      
  addl $0x1, %edx                        #  91    0x6a742  3      
  movzbl %al, %eax                       #  92    0x6a745  3      
  movl %ebx, %ebx                        #  93    0x6a748  2      
  movl %edx, (%r15,%rbx,1)               #  94    0x6a74a  4      
  jmpq .L_6a6e0                          #  95    0x6a74e  5      
.L_6a7e0:                                #        0x6a753  0      
  movl %r12d, %edi                       #  96    0x6a753  3      
  nop                                    #  97    0x6a756  1      
  nop                                    #  98    0x6a757  1      
  callq .__sinit                         #  99    0x6a758  5      
  jmpq .L_6a660                          #  100   0x6a75d  5      
  nop                                    #  101   0x6a762  1      
  nop                                    #  102   0x6a763  1      
.L_6a820:                                #        0x6a764  0      
  movl %ebx, %edx                        #  103   0x6a764  2      
  movl %r13d, %esi                       #  104   0x6a766  3      
  movl %r12d, %edi                       #  105   0x6a769  3      
  nop                                    #  106   0x6a76c  1      
  nop                                    #  107   0x6a76d  1      
  callq .__swbuf_r                       #  108   0x6a76e  5      
  jmpq .L_6a6e0                          #  109   0x6a773  5      
  nop                                    #  110   0x6a778  1      
  nop                                    #  111   0x6a779  1      
.L_6a860:                                #        0x6a77a  0      
  movl %ebx, %edx                        #  112   0x6a77a  2      
  movl $0xa, %esi                        #  113   0x6a77c  5      
  movl %r12d, %edi                       #  114   0x6a781  3      
  xchgw %ax, %ax                         #  115   0x6a784  3      
  nop                                    #  116   0x6a787  1      
  callq .__swbuf_r                       #  117   0x6a788  5      
  jmpq .L_6a6e0                          #  118   0x6a78d  5      
  nop                                    #  119   0x6a792  1      
  nop                                    #  120   0x6a793  1      
  nop                                    #  121   0x6a794  1      
  nop                                    #  122   0x6a795  1      
  nop                                    #  123   0x6a796  1      
  nop                                    #  124   0x6a797  1      
  nop                                    #  125   0x6a798  1      
  nop                                    #  126   0x6a799  1      
  nop                                    #  127   0x6a79a  1      
  nop                                    #  128   0x6a79b  1      
  nop                                    #  129   0x6a79c  1      
  nop                                    #  130   0x6a79d  1      
  nop                                    #  131   0x6a79e  1      
  nop                                    #  132   0x6a79f  1      
  nop                                    #  133   0x6a7a0  1      
  nop                                    #  134   0x6a7a1  1      
  nop                                    #  135   0x6a7a2  1      
  nop                                    #  136   0x6a7a3  1      
  nop                                    #  137   0x6a7a4  1      
  nop                                    #  138   0x6a7a5  1      
  nop                                    #  139   0x6a7a6  1      
  nop                                    #  140   0x6a7a7  1      
  nop                                    #  141   0x6a7a8  1      
  nop                                    #  142   0x6a7a9  1      
  nop                                    #  143   0x6a7aa  1      
  nop                                    #  144   0x6a7ab  1      
  nop                                    #  145   0x6a7ac  1      
                                                                  
.size _putc_r, .-_putc_r

