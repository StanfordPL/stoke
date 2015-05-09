  .text
  .globl _putc_r
  .type _putc_r, @function

#! file-offset 0x6a580
#! rip-offset  0x6a580
#! capacity    640 bytes

# Text                                   #  Line  RIP      Bytes  
._putc_r:                                #        0x6a580  0      
  movq %r12, -0x10(%rsp)                 #  1     0x6a580  5      
  movl %edi, %r12d                       #  2     0x6a585  3      
  movq %rbx, -0x18(%rsp)                 #  3     0x6a588  5      
  movq %r13, -0x8(%rsp)                  #  4     0x6a58d  5      
  subl $0x28, %esp                       #  5     0x6a592  3      
  addq %r15, %rsp                        #  6     0x6a595  3      
  testq %r12, %r12                       #  7     0x6a598  3      
  movl %esi, %r13d                       #  8     0x6a59b  3      
  movl %edx, %ebx                        #  9     0x6a59e  2      
  je .L_6a5c0                            #  10    0x6a5a0  6      
  movl %r12d, %r12d                      #  11    0x6a5a6  3      
  movl 0x38(%r15,%r12,1), %edx           #  12    0x6a5a9  5      
  testl %edx, %edx                       #  13    0x6a5ae  2      
  je .L_6a740                            #  14    0x6a5b0  6      
  nop                                    #  15    0x6a5b6  1      
.L_6a5c0:                                #        0x6a5b7  0      
  movl %ebx, %ebx                        #  16    0x6a5b7  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  17    0x6a5b9  6      
  je .L_6a6c0                            #  18    0x6a5bf  6      
  movl %ebx, %ebx                        #  19    0x6a5c5  2      
  movl 0x8(%r15,%rbx,1), %eax            #  20    0x6a5c7  5      
  subl $0x1, %eax                        #  21    0x6a5cc  3      
  testl %eax, %eax                       #  22    0x6a5cf  2      
  nop                                    #  23    0x6a5d1  1      
  movl %ebx, %ebx                        #  24    0x6a5d2  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  25    0x6a5d4  5      
  js .L_6a700                            #  26    0x6a5d9  6      
  nop                                    #  27    0x6a5df  1      
  nop                                    #  28    0x6a5e0  1      
.L_6a600:                                #        0x6a5e1  0      
  movl %ebx, %ebx                        #  29    0x6a5e1  2      
  movl (%r15,%rbx,1), %eax               #  30    0x6a5e3  4      
  movl %eax, %eax                        #  31    0x6a5e7  2      
  movb %r13b, (%r15,%rax,1)              #  32    0x6a5e9  4      
  movl %ebx, %ebx                        #  33    0x6a5ed  2      
  movl (%r15,%rbx,1), %edx               #  34    0x6a5ef  4      
  movl %edx, %edx                        #  35    0x6a5f3  2      
  movzbl (%r15,%rdx,1), %eax             #  36    0x6a5f5  5      
  addl $0x1, %edx                        #  37    0x6a5fa  3      
  nop                                    #  38    0x6a5fd  1      
  movl %ebx, %ebx                        #  39    0x6a5fe  2      
  movl %edx, (%r15,%rbx,1)               #  40    0x6a600  4      
  nop                                    #  41    0x6a604  1      
  nop                                    #  42    0x6a605  1      
.L_6a640:                                #        0x6a606  0      
  movl %ebx, %ebx                        #  43    0x6a606  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  44    0x6a608  6      
  jne .L_6a680                           #  45    0x6a60e  6      
  leal 0x5c(%rbx), %edi                  #  46    0x6a614  3      
  movl %eax, 0x8(%rsp)                   #  47    0x6a617  4      
  nop                                    #  48    0x6a61b  1      
  callq .__local_lock_release_recursive  #  49    0x6a61c  5      
  movl 0x8(%rsp), %eax                   #  50    0x6a621  4      
  nop                                    #  51    0x6a625  1      
  nop                                    #  52    0x6a626  1      
.L_6a680:                                #        0x6a627  0      
  movq 0x10(%rsp), %rbx                  #  53    0x6a627  5      
  movq 0x18(%rsp), %r12                  #  54    0x6a62c  5      
  movq 0x20(%rsp), %r13                  #  55    0x6a631  5      
  addl $0x28, %esp                       #  56    0x6a636  3      
  addq %r15, %rsp                        #  57    0x6a639  3      
  popq %r11                              #  58    0x6a63c  3      
  nop                                    #  59    0x6a63f  1      
  andl $0xffffffe0, %r11d                #  60    0x6a640  7      
  addq %r15, %r11                        #  61    0x6a647  3      
  jmpq %r11                              #  62    0x6a64a  3      
  nop                                    #  63    0x6a64d  1      
  nop                                    #  64    0x6a64e  1      
.L_6a6c0:                                #        0x6a64f  0      
  leal 0x5c(%rbx), %edi                  #  65    0x6a64f  3      
  nop                                    #  66    0x6a652  1      
  nop                                    #  67    0x6a653  1      
  callq .__local_lock_acquire_recursive  #  68    0x6a654  5      
  movl %ebx, %ebx                        #  69    0x6a659  2      
  movl 0x8(%r15,%rbx,1), %eax            #  70    0x6a65b  5      
  subl $0x1, %eax                        #  71    0x6a660  3      
  testl %eax, %eax                       #  72    0x6a663  2      
  movl %ebx, %ebx                        #  73    0x6a665  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  74    0x6a667  5      
  jns .L_6a600                           #  75    0x6a66c  6      
  nop                                    #  76    0x6a672  1      
.L_6a700:                                #        0x6a673  0      
  movl %ebx, %ebx                        #  77    0x6a673  2      
  cmpl 0x18(%r15,%rbx,1), %eax           #  78    0x6a675  5      
  jl .L_6a780                            #  79    0x6a67a  6      
  movl %ebx, %ebx                        #  80    0x6a680  2      
  movl (%r15,%rbx,1), %eax               #  81    0x6a682  4      
  movl %eax, %eax                        #  82    0x6a686  2      
  movb %r13b, (%r15,%rax,1)              #  83    0x6a688  4      
  movl %ebx, %ebx                        #  84    0x6a68c  2      
  movl (%r15,%rbx,1), %edx               #  85    0x6a68e  4      
  nop                                    #  86    0x6a692  1      
  movl %edx, %edx                        #  87    0x6a693  2      
  movzbl (%r15,%rdx,1), %eax             #  88    0x6a695  5      
  cmpb $0xa, %al                         #  89    0x6a69a  2      
  je .L_6a7c0                            #  90    0x6a69c  6      
  addl $0x1, %edx                        #  91    0x6a6a2  3      
  movzbl %al, %eax                       #  92    0x6a6a5  3      
  movl %ebx, %ebx                        #  93    0x6a6a8  2      
  movl %edx, (%r15,%rbx,1)               #  94    0x6a6aa  4      
  jmpq .L_6a640                          #  95    0x6a6ae  5      
.L_6a740:                                #        0x6a6b3  0      
  movl %r12d, %edi                       #  96    0x6a6b3  3      
  nop                                    #  97    0x6a6b6  1      
  nop                                    #  98    0x6a6b7  1      
  callq .__sinit                         #  99    0x6a6b8  5      
  jmpq .L_6a5c0                          #  100   0x6a6bd  5      
  nop                                    #  101   0x6a6c2  1      
  nop                                    #  102   0x6a6c3  1      
.L_6a780:                                #        0x6a6c4  0      
  movl %ebx, %edx                        #  103   0x6a6c4  2      
  movl %r13d, %esi                       #  104   0x6a6c6  3      
  movl %r12d, %edi                       #  105   0x6a6c9  3      
  nop                                    #  106   0x6a6cc  1      
  nop                                    #  107   0x6a6cd  1      
  callq .__swbuf_r                       #  108   0x6a6ce  5      
  jmpq .L_6a640                          #  109   0x6a6d3  5      
  nop                                    #  110   0x6a6d8  1      
  nop                                    #  111   0x6a6d9  1      
.L_6a7c0:                                #        0x6a6da  0      
  movl %ebx, %edx                        #  112   0x6a6da  2      
  movl $0xa, %esi                        #  113   0x6a6dc  5      
  movl %r12d, %edi                       #  114   0x6a6e1  3      
  xchgw %ax, %ax                         #  115   0x6a6e4  3      
  nop                                    #  116   0x6a6e7  1      
  callq .__swbuf_r                       #  117   0x6a6e8  5      
  jmpq .L_6a640                          #  118   0x6a6ed  5      
  nop                                    #  119   0x6a6f2  1      
  nop                                    #  120   0x6a6f3  1      
  nop                                    #  121   0x6a6f4  1      
  nop                                    #  122   0x6a6f5  1      
  nop                                    #  123   0x6a6f6  1      
  nop                                    #  124   0x6a6f7  1      
  nop                                    #  125   0x6a6f8  1      
  nop                                    #  126   0x6a6f9  1      
  nop                                    #  127   0x6a6fa  1      
  nop                                    #  128   0x6a6fb  1      
  nop                                    #  129   0x6a6fc  1      
  nop                                    #  130   0x6a6fd  1      
  nop                                    #  131   0x6a6fe  1      
  nop                                    #  132   0x6a6ff  1      
  nop                                    #  133   0x6a700  1      
  nop                                    #  134   0x6a701  1      
  nop                                    #  135   0x6a702  1      
  nop                                    #  136   0x6a703  1      
  nop                                    #  137   0x6a704  1      
  nop                                    #  138   0x6a705  1      
  nop                                    #  139   0x6a706  1      
  nop                                    #  140   0x6a707  1      
  nop                                    #  141   0x6a708  1      
  nop                                    #  142   0x6a709  1      
  nop                                    #  143   0x6a70a  1      
  nop                                    #  144   0x6a70b  1      
  nop                                    #  145   0x6a70c  1      
                                                                  
.size _putc_r, .-_putc_r

