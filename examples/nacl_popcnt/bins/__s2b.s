  .text
  .globl __s2b
  .type __s2b, @function

#! file-offset 0x7fc80
#! rip-offset  0x7fc80
#! capacity    416 bytes

# Text                           #  Line  RIP      Bytes  
.__s2b:                          #        0x7fc80  0      
  pushq %r14                     #  1     0x7fc80  3      
  movl %ecx, %r14d               #  2     0x7fc83  3      
  leal 0x8(%r14), %ecx           #  3     0x7fc86  4      
  pushq %r13                     #  4     0x7fc8a  3      
  movl %edi, %r13d               #  5     0x7fc8d  3      
  movl %ecx, %eax                #  6     0x7fc90  2      
  sarl $0x1f, %ecx               #  7     0x7fc92  3      
  pushq %r12                     #  8     0x7fc95  3      
  movl %esi, %r12d               #  9     0x7fc98  3      
  xorl %esi, %esi                #  10    0x7fc9b  2      
  pushq %rbx                     #  11    0x7fc9d  2      
  movl %r8d, %ebx                #  12    0x7fc9f  3      
  xchgw %ax, %ax                 #  13    0x7fca2  3      
  subl $0x18, %esp               #  14    0x7fca5  3      
  addq %r15, %rsp                #  15    0x7fca8  3      
  movl %edx, 0x4(%rsp)           #  16    0x7fcab  4      
  movl $0x38e38e39, %edx         #  17    0x7fcaf  5      
  imull %edx                     #  18    0x7fcb4  2      
  movl $0x1, %eax                #  19    0x7fcb6  5      
  sarl $0x1, %edx                #  20    0x7fcbb  2      
  subl %ecx, %edx                #  21    0x7fcbd  2      
  cmpl $0x1, %edx                #  22    0x7fcbf  3      
  nop                            #  23    0x7fcc2  1      
  jle .L_7fd00                   #  24    0x7fcc3  6      
  nop                            #  25    0x7fcc9  1      
  nop                            #  26    0x7fcca  1      
.L_7fce0:                        #        0x7fccb  0      
  addl %eax, %eax                #  27    0x7fccb  2      
  addl $0x1, %esi                #  28    0x7fccd  3      
  cmpl %eax, %edx                #  29    0x7fcd0  2      
  jg .L_7fce0                    #  30    0x7fcd2  6      
  nop                            #  31    0x7fcd8  1      
  nop                            #  32    0x7fcd9  1      
.L_7fd00:                        #        0x7fcda  0      
  movl %r13d, %edi               #  33    0x7fcda  3      
  nop                            #  34    0x7fcdd  1      
  nop                            #  35    0x7fcde  1      
  callq ._Balloc                 #  36    0x7fcdf  5      
  cmpl $0x9, 0x4(%rsp)           #  37    0x7fce4  5      
  movl %eax, %esi                #  38    0x7fce9  2      
  movl %esi, %esi                #  39    0x7fceb  2      
  movl %ebx, 0x14(%r15,%rsi,1)   #  40    0x7fced  5      
  movl %esi, %esi                #  41    0x7fcf2  2      
  movl $0x1, 0x10(%r15,%rsi,1)   #  42    0x7fcf4  9      
  jle .L_7fe00                   #  43    0x7fcfd  6      
  nop                            #  44    0x7fd03  1      
  addl $0x9, %r12d               #  45    0x7fd04  4      
  movl $0x9, %ebx                #  46    0x7fd08  5      
  movq %r12, 0x8(%rsp)           #  47    0x7fd0d  5      
  nop                            #  48    0x7fd12  1      
  nop                            #  49    0x7fd13  1      
.L_7fd60:                        #        0x7fd14  0      
  movl %r12d, %r12d              #  50    0x7fd14  3      
  movsbl (%r15,%r12,1), %ecx     #  51    0x7fd17  5      
  movl $0xa, %edx                #  52    0x7fd1c  5      
  movl %r13d, %edi               #  53    0x7fd21  3      
  addl $0x1, %r12d               #  54    0x7fd24  4      
  addl $0x1, %ebx                #  55    0x7fd28  3      
  subl $0x30, %ecx               #  56    0x7fd2b  3      
  nop                            #  57    0x7fd2e  1      
  callq .__multadd               #  58    0x7fd2f  5      
  cmpl %ebx, 0x4(%rsp)           #  59    0x7fd34  4      
  movl %eax, %esi                #  60    0x7fd38  2      
  jg .L_7fd60                    #  61    0x7fd3a  6      
  movl 0x4(%rsp), %edx           #  62    0x7fd40  4      
  movl 0x8(%rsp), %eax           #  63    0x7fd44  4      
  movl %edx, %ebx                #  64    0x7fd48  2      
  leal -0x8(%rdx,%rax,1), %r12d  #  65    0x7fd4a  5      
  jmpq .L_7fde0                  #  66    0x7fd4f  5      
  nop                            #  67    0x7fd54  1      
.L_7fda0:                        #        0x7fd55  0      
  movl %r12d, %r12d              #  68    0x7fd55  3      
  movsbl (%r15,%r12,1), %ecx     #  69    0x7fd58  5      
  movl $0xa, %edx                #  70    0x7fd5d  5      
  movl %r13d, %edi               #  71    0x7fd62  3      
  addl $0x1, %r12d               #  72    0x7fd65  4      
  addl $0x1, %ebx                #  73    0x7fd69  3      
  subl $0x30, %ecx               #  74    0x7fd6c  3      
  nop                            #  75    0x7fd6f  1      
  callq .__multadd               #  76    0x7fd70  5      
  movl %eax, %esi                #  77    0x7fd75  2      
  nop                            #  78    0x7fd77  1      
  nop                            #  79    0x7fd78  1      
.L_7fde0:                        #        0x7fd79  0      
  cmpl %ebx, %r14d               #  80    0x7fd79  3      
  jg .L_7fda0                    #  81    0x7fd7c  6      
  addl $0x18, %esp               #  82    0x7fd82  3      
  addq %r15, %rsp                #  83    0x7fd85  3      
  movl %esi, %eax                #  84    0x7fd88  2      
  popq %rbx                      #  85    0x7fd8a  2      
  popq %r12                      #  86    0x7fd8c  3      
  popq %r13                      #  87    0x7fd8f  3      
  popq %r14                      #  88    0x7fd92  3      
  popq %r11                      #  89    0x7fd95  3      
  andl $0xffffffe0, %r11d        #  90    0x7fd98  7      
  addq %r15, %r11                #  91    0x7fd9f  3      
  jmpq %r11                      #  92    0x7fda2  3      
.L_7fe00:                        #        0x7fda5  0      
  addl $0xa, %r12d               #  93    0x7fda5  4      
  movl $0x9, %ebx                #  94    0x7fda9  5      
  jmpq .L_7fde0                  #  95    0x7fdae  5      
  nop                            #  96    0x7fdb3  1      
  nop                            #  97    0x7fdb4  1      
  nop                            #  98    0x7fdb5  1      
  nop                            #  99    0x7fdb6  1      
  nop                            #  100   0x7fdb7  1      
  nop                            #  101   0x7fdb8  1      
  nop                            #  102   0x7fdb9  1      
  nop                            #  103   0x7fdba  1      
  nop                            #  104   0x7fdbb  1      
  nop                            #  105   0x7fdbc  1      
  nop                            #  106   0x7fdbd  1      
  nop                            #  107   0x7fdbe  1      
  nop                            #  108   0x7fdbf  1      
  nop                            #  109   0x7fdc0  1      
  nop                            #  110   0x7fdc1  1      
  nop                            #  111   0x7fdc2  1      
  nop                            #  112   0x7fdc3  1      
  nop                            #  113   0x7fdc4  1      
  nop                            #  114   0x7fdc5  1      
  nop                            #  115   0x7fdc6  1      
  nop                            #  116   0x7fdc7  1      
                                                          
.size __s2b, .-__s2b

