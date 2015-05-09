  .text
  .globl putc
  .type putc, @function

#! file-offset 0x6a2e0
#! rip-offset  0x6a2e0
#! capacity    672 bytes

# Text                                   #  Line  RIP      Bytes  
.putc:                                   #        0x6a2e0  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x6a2e0  5      
  movq %r12, -0x10(%rsp)                 #  2     0x6a2e5  5      
  movl %esi, %ebx                        #  3     0x6a2ea  2      
  movq %r13, -0x8(%rsp)                  #  4     0x6a2ec  5      
  subl $0x28, %esp                       #  5     0x6a2f1  3      
  addq %r15, %rsp                        #  6     0x6a2f4  3      
  movl %edi, %r12d                       #  7     0x6a2f7  3      
  nop                                    #  8     0x6a2fa  1      
  callq .__nacl_read_tp                  #  9     0x6a2fb  5      
  leaq -0x480(%rax), %rax                #  10    0x6a300  7      
  movl %eax, %eax                        #  11    0x6a307  2      
  movl (%r15,%rax,1), %r13d              #  12    0x6a309  4      
  testq %r13, %r13                       #  13    0x6a30d  3      
  je .L_6a340                            #  14    0x6a310  6      
  movl %r13d, %r13d                      #  15    0x6a316  3      
  movl 0x38(%r15,%r13,1), %eax           #  16    0x6a319  5      
  testl %eax, %eax                       #  17    0x6a31e  2      
  nop                                    #  18    0x6a320  1      
  je .L_6a4c0                            #  19    0x6a321  6      
  nop                                    #  20    0x6a327  1      
  nop                                    #  21    0x6a328  1      
.L_6a340:                                #        0x6a329  0      
  movl %ebx, %ebx                        #  22    0x6a329  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  23    0x6a32b  6      
  je .L_6a440                            #  24    0x6a331  6      
  movl %ebx, %ebx                        #  25    0x6a337  2      
  movl 0x8(%r15,%rbx,1), %eax            #  26    0x6a339  5      
  subl $0x1, %eax                        #  27    0x6a33e  3      
  testl %eax, %eax                       #  28    0x6a341  2      
  nop                                    #  29    0x6a343  1      
  movl %ebx, %ebx                        #  30    0x6a344  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  31    0x6a346  5      
  js .L_6a480                            #  32    0x6a34b  6      
  nop                                    #  33    0x6a351  1      
  nop                                    #  34    0x6a352  1      
.L_6a380:                                #        0x6a353  0      
  movl %ebx, %ebx                        #  35    0x6a353  2      
  movl (%r15,%rbx,1), %eax               #  36    0x6a355  4      
  movl %eax, %eax                        #  37    0x6a359  2      
  movb %r12b, (%r15,%rax,1)              #  38    0x6a35b  4      
  movl %ebx, %ebx                        #  39    0x6a35f  2      
  movl (%r15,%rbx,1), %edx               #  40    0x6a361  4      
  movl %edx, %edx                        #  41    0x6a365  2      
  movzbl (%r15,%rdx,1), %eax             #  42    0x6a367  5      
  addl $0x1, %edx                        #  43    0x6a36c  3      
  nop                                    #  44    0x6a36f  1      
  movl %ebx, %ebx                        #  45    0x6a370  2      
  movl %edx, (%r15,%rbx,1)               #  46    0x6a372  4      
  nop                                    #  47    0x6a376  1      
  nop                                    #  48    0x6a377  1      
.L_6a3c0:                                #        0x6a378  0      
  movl %ebx, %ebx                        #  49    0x6a378  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  50    0x6a37a  6      
  jne .L_6a400                           #  51    0x6a380  6      
  leal 0x5c(%rbx), %edi                  #  52    0x6a386  3      
  movl %eax, 0x8(%rsp)                   #  53    0x6a389  4      
  nop                                    #  54    0x6a38d  1      
  callq .__local_lock_release_recursive  #  55    0x6a38e  5      
  movl 0x8(%rsp), %eax                   #  56    0x6a393  4      
  nop                                    #  57    0x6a397  1      
  nop                                    #  58    0x6a398  1      
.L_6a400:                                #        0x6a399  0      
  movq 0x10(%rsp), %rbx                  #  59    0x6a399  5      
  movq 0x18(%rsp), %r12                  #  60    0x6a39e  5      
  movq 0x20(%rsp), %r13                  #  61    0x6a3a3  5      
  addl $0x28, %esp                       #  62    0x6a3a8  3      
  addq %r15, %rsp                        #  63    0x6a3ab  3      
  popq %r11                              #  64    0x6a3ae  3      
  nop                                    #  65    0x6a3b1  1      
  andl $0xffffffe0, %r11d                #  66    0x6a3b2  7      
  addq %r15, %r11                        #  67    0x6a3b9  3      
  jmpq %r11                              #  68    0x6a3bc  3      
  nop                                    #  69    0x6a3bf  1      
  nop                                    #  70    0x6a3c0  1      
.L_6a440:                                #        0x6a3c1  0      
  leal 0x5c(%rbx), %edi                  #  71    0x6a3c1  3      
  nop                                    #  72    0x6a3c4  1      
  nop                                    #  73    0x6a3c5  1      
  callq .__local_lock_acquire_recursive  #  74    0x6a3c6  5      
  movl %ebx, %ebx                        #  75    0x6a3cb  2      
  movl 0x8(%r15,%rbx,1), %eax            #  76    0x6a3cd  5      
  subl $0x1, %eax                        #  77    0x6a3d2  3      
  testl %eax, %eax                       #  78    0x6a3d5  2      
  movl %ebx, %ebx                        #  79    0x6a3d7  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  80    0x6a3d9  5      
  jns .L_6a380                           #  81    0x6a3de  6      
  nop                                    #  82    0x6a3e4  1      
.L_6a480:                                #        0x6a3e5  0      
  movl %ebx, %ebx                        #  83    0x6a3e5  2      
  cmpl 0x18(%r15,%rbx,1), %eax           #  84    0x6a3e7  5      
  jl .L_6a500                            #  85    0x6a3ec  6      
  movl %ebx, %ebx                        #  86    0x6a3f2  2      
  movl (%r15,%rbx,1), %eax               #  87    0x6a3f4  4      
  movl %eax, %eax                        #  88    0x6a3f8  2      
  movb %r12b, (%r15,%rax,1)              #  89    0x6a3fa  4      
  movl %ebx, %ebx                        #  90    0x6a3fe  2      
  movl (%r15,%rbx,1), %edx               #  91    0x6a400  4      
  nop                                    #  92    0x6a404  1      
  movl %edx, %edx                        #  93    0x6a405  2      
  movzbl (%r15,%rdx,1), %eax             #  94    0x6a407  5      
  cmpb $0xa, %al                         #  95    0x6a40c  2      
  je .L_6a540                            #  96    0x6a40e  6      
  addl $0x1, %edx                        #  97    0x6a414  3      
  movzbl %al, %eax                       #  98    0x6a417  3      
  movl %ebx, %ebx                        #  99    0x6a41a  2      
  movl %edx, (%r15,%rbx,1)               #  100   0x6a41c  4      
  jmpq .L_6a3c0                          #  101   0x6a420  5      
.L_6a4c0:                                #        0x6a425  0      
  movl %r13d, %edi                       #  102   0x6a425  3      
  nop                                    #  103   0x6a428  1      
  nop                                    #  104   0x6a429  1      
  callq .__sinit                         #  105   0x6a42a  5      
  jmpq .L_6a340                          #  106   0x6a42f  5      
  nop                                    #  107   0x6a434  1      
  nop                                    #  108   0x6a435  1      
.L_6a500:                                #        0x6a436  0      
  movl %ebx, %edx                        #  109   0x6a436  2      
  movl %r12d, %esi                       #  110   0x6a438  3      
  movl %r13d, %edi                       #  111   0x6a43b  3      
  nop                                    #  112   0x6a43e  1      
  nop                                    #  113   0x6a43f  1      
  callq .__swbuf_r                       #  114   0x6a440  5      
  jmpq .L_6a3c0                          #  115   0x6a445  5      
  nop                                    #  116   0x6a44a  1      
  nop                                    #  117   0x6a44b  1      
.L_6a540:                                #        0x6a44c  0      
  movl %ebx, %edx                        #  118   0x6a44c  2      
  movl $0xa, %esi                        #  119   0x6a44e  5      
  movl %r13d, %edi                       #  120   0x6a453  3      
  xchgw %ax, %ax                         #  121   0x6a456  3      
  nop                                    #  122   0x6a459  1      
  callq .__swbuf_r                       #  123   0x6a45a  5      
  jmpq .L_6a3c0                          #  124   0x6a45f  5      
  nop                                    #  125   0x6a464  1      
  nop                                    #  126   0x6a465  1      
                                                                  
.size putc, .-putc

