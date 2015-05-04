  .text
  .globl putc
  .type putc, @function

#! file-offset 0x6a380
#! rip-offset  0x6a380
#! capacity    672 bytes

# Text                                   #  Line  RIP      Bytes  
.putc:                                   #        0x6a380  0      
  movq %rbx, -0x18(%rsp)                 #  1     0x6a380  5      
  movq %r12, -0x10(%rsp)                 #  2     0x6a385  5      
  movl %esi, %ebx                        #  3     0x6a38a  2      
  movq %r13, -0x8(%rsp)                  #  4     0x6a38c  5      
  subl $0x28, %esp                       #  5     0x6a391  3      
  addq %r15, %rsp                        #  6     0x6a394  3      
  movl %edi, %r12d                       #  7     0x6a397  3      
  nop                                    #  8     0x6a39a  1      
  callq .__nacl_read_tp                  #  9     0x6a39b  5      
  leaq -0x480(%rax), %rax                #  10    0x6a3a0  7      
  movl %eax, %eax                        #  11    0x6a3a7  2      
  movl (%r15,%rax,1), %r13d              #  12    0x6a3a9  4      
  testq %r13, %r13                       #  13    0x6a3ad  3      
  je .L_6a3e0                            #  14    0x6a3b0  6      
  movl %r13d, %r13d                      #  15    0x6a3b6  3      
  movl 0x38(%r15,%r13,1), %eax           #  16    0x6a3b9  5      
  testl %eax, %eax                       #  17    0x6a3be  2      
  nop                                    #  18    0x6a3c0  1      
  je .L_6a560                            #  19    0x6a3c1  6      
  nop                                    #  20    0x6a3c7  1      
  nop                                    #  21    0x6a3c8  1      
.L_6a3e0:                                #        0x6a3c9  0      
  movl %ebx, %ebx                        #  22    0x6a3c9  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  23    0x6a3cb  6      
  je .L_6a4e0                            #  24    0x6a3d1  6      
  movl %ebx, %ebx                        #  25    0x6a3d7  2      
  movl 0x8(%r15,%rbx,1), %eax            #  26    0x6a3d9  5      
  subl $0x1, %eax                        #  27    0x6a3de  3      
  testl %eax, %eax                       #  28    0x6a3e1  2      
  nop                                    #  29    0x6a3e3  1      
  movl %ebx, %ebx                        #  30    0x6a3e4  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  31    0x6a3e6  5      
  js .L_6a520                            #  32    0x6a3eb  6      
  nop                                    #  33    0x6a3f1  1      
  nop                                    #  34    0x6a3f2  1      
.L_6a420:                                #        0x6a3f3  0      
  movl %ebx, %ebx                        #  35    0x6a3f3  2      
  movl (%r15,%rbx,1), %eax               #  36    0x6a3f5  4      
  movl %eax, %eax                        #  37    0x6a3f9  2      
  movb %r12b, (%r15,%rax,1)              #  38    0x6a3fb  4      
  movl %ebx, %ebx                        #  39    0x6a3ff  2      
  movl (%r15,%rbx,1), %edx               #  40    0x6a401  4      
  movl %edx, %edx                        #  41    0x6a405  2      
  movzbl (%r15,%rdx,1), %eax             #  42    0x6a407  5      
  addl $0x1, %edx                        #  43    0x6a40c  3      
  nop                                    #  44    0x6a40f  1      
  movl %ebx, %ebx                        #  45    0x6a410  2      
  movl %edx, (%r15,%rbx,1)               #  46    0x6a412  4      
  nop                                    #  47    0x6a416  1      
  nop                                    #  48    0x6a417  1      
.L_6a460:                                #        0x6a418  0      
  movl %ebx, %ebx                        #  49    0x6a418  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  50    0x6a41a  6      
  jne .L_6a4a0                           #  51    0x6a420  6      
  leal 0x5c(%rbx), %edi                  #  52    0x6a426  3      
  movl %eax, 0x8(%rsp)                   #  53    0x6a429  4      
  nop                                    #  54    0x6a42d  1      
  callq .__local_lock_release_recursive  #  55    0x6a42e  5      
  movl 0x8(%rsp), %eax                   #  56    0x6a433  4      
  nop                                    #  57    0x6a437  1      
  nop                                    #  58    0x6a438  1      
.L_6a4a0:                                #        0x6a439  0      
  movq 0x10(%rsp), %rbx                  #  59    0x6a439  5      
  movq 0x18(%rsp), %r12                  #  60    0x6a43e  5      
  movq 0x20(%rsp), %r13                  #  61    0x6a443  5      
  addl $0x28, %esp                       #  62    0x6a448  3      
  addq %r15, %rsp                        #  63    0x6a44b  3      
  popq %r11                              #  64    0x6a44e  3      
  nop                                    #  65    0x6a451  1      
  andl $0xffffffe0, %r11d                #  66    0x6a452  7      
  addq %r15, %r11                        #  67    0x6a459  3      
  jmpq %r11                              #  68    0x6a45c  3      
  nop                                    #  69    0x6a45f  1      
  nop                                    #  70    0x6a460  1      
.L_6a4e0:                                #        0x6a461  0      
  leal 0x5c(%rbx), %edi                  #  71    0x6a461  3      
  nop                                    #  72    0x6a464  1      
  nop                                    #  73    0x6a465  1      
  callq .__local_lock_acquire_recursive  #  74    0x6a466  5      
  movl %ebx, %ebx                        #  75    0x6a46b  2      
  movl 0x8(%r15,%rbx,1), %eax            #  76    0x6a46d  5      
  subl $0x1, %eax                        #  77    0x6a472  3      
  testl %eax, %eax                       #  78    0x6a475  2      
  movl %ebx, %ebx                        #  79    0x6a477  2      
  movl %eax, 0x8(%r15,%rbx,1)            #  80    0x6a479  5      
  jns .L_6a420                           #  81    0x6a47e  6      
  nop                                    #  82    0x6a484  1      
.L_6a520:                                #        0x6a485  0      
  movl %ebx, %ebx                        #  83    0x6a485  2      
  cmpl 0x18(%r15,%rbx,1), %eax           #  84    0x6a487  5      
  jl .L_6a5a0                            #  85    0x6a48c  6      
  movl %ebx, %ebx                        #  86    0x6a492  2      
  movl (%r15,%rbx,1), %eax               #  87    0x6a494  4      
  movl %eax, %eax                        #  88    0x6a498  2      
  movb %r12b, (%r15,%rax,1)              #  89    0x6a49a  4      
  movl %ebx, %ebx                        #  90    0x6a49e  2      
  movl (%r15,%rbx,1), %edx               #  91    0x6a4a0  4      
  nop                                    #  92    0x6a4a4  1      
  movl %edx, %edx                        #  93    0x6a4a5  2      
  movzbl (%r15,%rdx,1), %eax             #  94    0x6a4a7  5      
  cmpb $0xa, %al                         #  95    0x6a4ac  2      
  je .L_6a5e0                            #  96    0x6a4ae  6      
  addl $0x1, %edx                        #  97    0x6a4b4  3      
  movzbl %al, %eax                       #  98    0x6a4b7  3      
  movl %ebx, %ebx                        #  99    0x6a4ba  2      
  movl %edx, (%r15,%rbx,1)               #  100   0x6a4bc  4      
  jmpq .L_6a460                          #  101   0x6a4c0  5      
.L_6a560:                                #        0x6a4c5  0      
  movl %r13d, %edi                       #  102   0x6a4c5  3      
  nop                                    #  103   0x6a4c8  1      
  nop                                    #  104   0x6a4c9  1      
  callq .__sinit                         #  105   0x6a4ca  5      
  jmpq .L_6a3e0                          #  106   0x6a4cf  5      
  nop                                    #  107   0x6a4d4  1      
  nop                                    #  108   0x6a4d5  1      
.L_6a5a0:                                #        0x6a4d6  0      
  movl %ebx, %edx                        #  109   0x6a4d6  2      
  movl %r12d, %esi                       #  110   0x6a4d8  3      
  movl %r13d, %edi                       #  111   0x6a4db  3      
  nop                                    #  112   0x6a4de  1      
  nop                                    #  113   0x6a4df  1      
  callq .__swbuf_r                       #  114   0x6a4e0  5      
  jmpq .L_6a460                          #  115   0x6a4e5  5      
  nop                                    #  116   0x6a4ea  1      
  nop                                    #  117   0x6a4eb  1      
.L_6a5e0:                                #        0x6a4ec  0      
  movl %ebx, %edx                        #  118   0x6a4ec  2      
  movl $0xa, %esi                        #  119   0x6a4ee  5      
  movl %r13d, %edi                       #  120   0x6a4f3  3      
  xchgw %ax, %ax                         #  121   0x6a4f6  3      
  nop                                    #  122   0x6a4f9  1      
  callq .__swbuf_r                       #  123   0x6a4fa  5      
  jmpq .L_6a460                          #  124   0x6a4ff  5      
  nop                                    #  125   0x6a504  1      
  nop                                    #  126   0x6a505  1      
                                                                  
.size putc, .-putc

