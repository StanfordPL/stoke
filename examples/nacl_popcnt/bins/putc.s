  .text
  .globl putc
  .type putc, @function

#! file-offset 0x6a300
#! rip-offset  0x6a300
#! capacity    672 bytes

# Text                                   #  Line  RIP      Bytes  
.putc:                                   #        0x6a300  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x6a300  5      
  movq %r12, -0x10(%rsp)                 #  2     0x6a305  5      
  movl %esi, %ebx                        #  3     0x6a30a  2      
  movq %r13, -0x8(%rsp)                  #  4     0x6a30c  5      
  subl $0x28, %esp                       #  5     0x6a311  3      
  addq %r15, %rsp                        #  6     0x6a314  3      
  movl %edi, %r12d                       #  7     0x6a317  3      
  nop                                    #  8     0x6a31a  1      
  callq .__nacl_read_tp                  #  9     0x6a31b  5      
  leaq -0x480(%rax), %rax                #  10    0x6a320  7      
  movl %eax, %eax                        #  11    0x6a327  2      
  movl (%r15,%rax,1), %r13d              #  12    0x6a329  4      
  testq %r13, %r13                       #  13    0x6a32d  3      
  je .L_6a360                            #  14    0x6a330  6      
  movl %r13d, %r13d                      #  15    0x6a336  3      
  movl 0x38(%r15,%r13,1), %eax           #  16    0x6a339  5      
  testl %eax, %eax                       #  17    0x6a33e  2      
  nop                                    #  18    0x6a340  1      
  je .L_6a4e0                            #  19    0x6a341  6      
  nop                                    #  20    0x6a347  1      
  nop                                    #  21    0x6a348  1      
.L_6a360:                                #        0x6a349  0      
  movl %ebx, %ebx                        #  22    0x6a349  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  23    0x6a34b  6      
  je .L_6a460                            #  24    0x6a351  6      
  movl %ebx, %ebx                        #  25    0x6a357  2      
  movl 0x8(%r15,%rbx,1), %eax            #  26    0x6a359  5      
  subl $0x1, %eax                        #  27    0x6a35e  3      
  testl %eax, %eax                       #  28    0x6a361  2      
  nop                                    #  29    0x6a363  1      
  movl %ebx, %ebx                        #  30    0x6a364  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  31    0x6a366  5      
  js .L_6a4a0                            #  32    0x6a36b  6      
  nop                                    #  33    0x6a371  1      
  nop                                    #  34    0x6a372  1      
.L_6a3a0:                                #        0x6a373  0      
  movl %ebx, %ebx                        #  35    0x6a373  2      
  movl (%r15,%rbx,1), %eax               #  36    0x6a375  4      
  movl %eax, %eax                        #  37    0x6a379  2      
  movb %r12b, (%r15,%rax,1)              #  38    0x6a37b  4      
  movl %ebx, %ebx                        #  39    0x6a37f  2      
  movl (%r15,%rbx,1), %edx               #  40    0x6a381  4      
  movl %edx, %edx                        #  41    0x6a385  2      
  movzbl (%r15,%rdx,1), %eax             #  42    0x6a387  5      
  addl $0x1, %edx                        #  43    0x6a38c  3      
  nop                                    #  44    0x6a38f  1      
  movl %ebx, %ebx                        #  45    0x6a390  2      
  movl %edx, (%r15,%rbx,1)               #  46    0x6a392  4      
  nop                                    #  47    0x6a396  1      
  nop                                    #  48    0x6a397  1      
.L_6a3e0:                                #        0x6a398  0      
  movl %ebx, %ebx                        #  49    0x6a398  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  50    0x6a39a  6      
  jne .L_6a420                           #  51    0x6a3a0  6      
  leal 0x5c(%rbx), %edi                  #  52    0x6a3a6  3      
  movl %eax, 0x8(%rsp)                   #  53    0x6a3a9  4      
  nop                                    #  54    0x6a3ad  1      
  callq .__local_lock_release_recursive  #  55    0x6a3ae  5      
  movl 0x8(%rsp), %eax                   #  56    0x6a3b3  4      
  nop                                    #  57    0x6a3b7  1      
  nop                                    #  58    0x6a3b8  1      
.L_6a420:                                #        0x6a3b9  0      
  movq 0x10(%rsp), %rbx                  #  59    0x6a3b9  5      
  movq 0x18(%rsp), %r12                  #  60    0x6a3be  5      
  movq 0x20(%rsp), %r13                  #  61    0x6a3c3  5      
  addl $0x28, %esp                       #  62    0x6a3c8  3      
  addq %r15, %rsp                        #  63    0x6a3cb  3      
  popq %r11                              #  64    0x6a3ce  3      
  nop                                    #  65    0x6a3d1  1      
  andl $0xffffffe0, %r11d                #  66    0x6a3d2  7      
  addq %r15, %r11                        #  67    0x6a3d9  3      
  jmpq %r11                              #  68    0x6a3dc  3      
  nop                                    #  69    0x6a3df  1      
  nop                                    #  70    0x6a3e0  1      
.L_6a460:                                #        0x6a3e1  0      
  leal 0x5c(%rbx), %edi                  #  71    0x6a3e1  3      
  nop                                    #  72    0x6a3e4  1      
  nop                                    #  73    0x6a3e5  1      
  callq .__local_lock_acquire_recursive  #  74    0x6a3e6  5      
  movl %ebx, %ebx                        #  75    0x6a3eb  2      
  movl 0x8(%r15,%rbx,1), %eax            #  76    0x6a3ed  5      
  subl $0x1, %eax                        #  77    0x6a3f2  3      
  testl %eax, %eax                       #  78    0x6a3f5  2      
  movl %ebx, %ebx                        #  79    0x6a3f7  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  80    0x6a3f9  5      
  jns .L_6a3a0                           #  81    0x6a3fe  6      
  nop                                    #  82    0x6a404  1      
.L_6a4a0:                                #        0x6a405  0      
  movl %ebx, %ebx                        #  83    0x6a405  2      
  cmpl 0x18(%r15,%rbx,1), %eax           #  84    0x6a407  5      
  jl .L_6a520                            #  85    0x6a40c  6      
  movl %ebx, %ebx                        #  86    0x6a412  2      
  movl (%r15,%rbx,1), %eax               #  87    0x6a414  4      
  movl %eax, %eax                        #  88    0x6a418  2      
  movb %r12b, (%r15,%rax,1)              #  89    0x6a41a  4      
  movl %ebx, %ebx                        #  90    0x6a41e  2      
  movl (%r15,%rbx,1), %edx               #  91    0x6a420  4      
  nop                                    #  92    0x6a424  1      
  movl %edx, %edx                        #  93    0x6a425  2      
  movzbl (%r15,%rdx,1), %eax             #  94    0x6a427  5      
  cmpb $0xa, %al                         #  95    0x6a42c  2      
  je .L_6a560                            #  96    0x6a42e  6      
  addl $0x1, %edx                        #  97    0x6a434  3      
  movzbl %al, %eax                       #  98    0x6a437  3      
  movl %ebx, %ebx                        #  99    0x6a43a  2      
  movl %edx, (%r15,%rbx,1)               #  100   0x6a43c  4      
  jmpq .L_6a3e0                          #  101   0x6a440  5      
.L_6a4e0:                                #        0x6a445  0      
  movl %r13d, %edi                       #  102   0x6a445  3      
  nop                                    #  103   0x6a448  1      
  nop                                    #  104   0x6a449  1      
  callq .__sinit                         #  105   0x6a44a  5      
  jmpq .L_6a360                          #  106   0x6a44f  5      
  nop                                    #  107   0x6a454  1      
  nop                                    #  108   0x6a455  1      
.L_6a520:                                #        0x6a456  0      
  movl %ebx, %edx                        #  109   0x6a456  2      
  movl %r12d, %esi                       #  110   0x6a458  3      
  movl %r13d, %edi                       #  111   0x6a45b  3      
  nop                                    #  112   0x6a45e  1      
  nop                                    #  113   0x6a45f  1      
  callq .__swbuf_r                       #  114   0x6a460  5      
  jmpq .L_6a3e0                          #  115   0x6a465  5      
  nop                                    #  116   0x6a46a  1      
  nop                                    #  117   0x6a46b  1      
.L_6a560:                                #        0x6a46c  0      
  movl %ebx, %edx                        #  118   0x6a46c  2      
  movl $0xa, %esi                        #  119   0x6a46e  5      
  movl %r13d, %edi                       #  120   0x6a473  3      
  xchgw %ax, %ax                         #  121   0x6a476  3      
  nop                                    #  122   0x6a479  1      
  callq .__swbuf_r                       #  123   0x6a47a  5      
  jmpq .L_6a3e0                          #  124   0x6a47f  5      
  nop                                    #  125   0x6a484  1      
  nop                                    #  126   0x6a485  1      
                                                                  
.size putc, .-putc

