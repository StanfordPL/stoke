  .text
  .globl __deregister_frame_info_bases
  .type __deregister_frame_info_bases, @function

#! file-offset 0x60260
#! rip-offset  0x60260
#! capacity    512 bytes

# Text                           #  Line  RIP      Bytes  
.__deregister_frame_info_bases:  #        0x60260  0      
  movl %edi, %edi                #  1     0x60260  2      
  pushq %rbx                     #  2     0x60262  2      
  testq %rdi, %rdi               #  3     0x60264  3      
  jne .L_602a0                   #  4     0x60267  6      
  nop                            #  5     0x6026d  1      
  nop                            #  6     0x6026e  1      
.L_60280:                        #        0x6026f  0      
  popq %rbx                      #  7     0x6026f  2      
  popq %r11                      #  8     0x60271  3      
  xorl %eax, %eax                #  9     0x60274  2      
  andl $0xffffffe0, %r11d        #  10    0x60276  7      
  addq %r15, %r11                #  11    0x6027d  3      
  jmpq %r11                      #  12    0x60280  3      
  xchgw %ax, %ax                 #  13    0x60283  3      
  nop                            #  14    0x60286  1      
.L_602a0:                        #        0x60287  0      
  movl %edi, %edi                #  15    0x60287  2      
  movl (%r15,%rdi,1), %r10d      #  16    0x60289  4      
  testl %r10d, %r10d             #  17    0x6028d  3      
  je .L_60280                    #  18    0x60290  6      
  movl 0xffd65bc(%rip), %ebx     #  19    0x60296  6      
  testq %rbx, %rbx               #  20    0x6029c  3      
  je .L_60320                    #  21    0x6029f  6      
  movl %ebx, %ebx                #  22    0x602a5  2      
  cmpl %edi, 0xc(%r15,%rbx,1)    #  23    0x602a7  5      
  nop                            #  24    0x602ac  1      
  leal 0xffd6592(%rip), %eax     #  25    0x602ad  6      
  jne .L_60300                   #  26    0x602b3  6      
  jmpq .L_603c0                  #  27    0x602b9  5      
  nop                            #  28    0x602be  1      
  nop                            #  29    0x602bf  1      
.L_602e0:                        #        0x602c0  0      
  movl %ebx, %ebx                #  30    0x602c0  2      
  cmpl %edi, 0xc(%r15,%rbx,1)    #  31    0x602c2  5      
  je .L_603c0                    #  32    0x602c7  6      
  nop                            #  33    0x602cd  1      
  nop                            #  34    0x602ce  1      
.L_60300:                        #        0x602cf  0      
  leal 0x14(%rbx), %eax          #  35    0x602cf  3      
  movl %ebx, %ebx                #  36    0x602d2  2      
  movl 0x14(%r15,%rbx,1), %ebx   #  37    0x602d4  5      
  testq %rbx, %rbx               #  38    0x602d9  3      
  jne .L_602e0                   #  39    0x602dc  6      
  xchgw %ax, %ax                 #  40    0x602e2  3      
  nop                            #  41    0x602e5  1      
.L_60320:                        #        0x602e6  0      
  movl 0xffd6570(%rip), %ebx     #  42    0x602e6  6      
  testq %rbx, %rbx               #  43    0x602ec  3      
  je .L_60440                    #  44    0x602ef  6      
  leal 0xffd6527(%rip), %edx     #  45    0x602f5  6      
  jmpq .L_60380                  #  46    0x602fb  5      
  nop                            #  47    0x60300  1      
.L_60340:                        #        0x60301  0      
  movl %ebx, %ebx                #  48    0x60301  2      
  movl 0xc(%r15,%rbx,1), %eax    #  49    0x60303  5      
  movl %eax, %eax                #  50    0x60308  2      
  cmpl %edi, (%r15,%rax,1)       #  51    0x6030a  4      
  je .L_60400                    #  52    0x6030e  6      
  nop                            #  53    0x60314  1      
.L_60360:                        #        0x60315  0      
  movl %ebx, %ebx                #  54    0x60315  2      
  movl 0x14(%r15,%rbx,1), %eax   #  55    0x60317  5      
  testq %rax, %rax               #  56    0x6031c  3      
  je .L_60440                    #  57    0x6031f  6      
  leal 0x14(%rbx), %edx          #  58    0x60325  3      
  movq %rax, %rbx                #  59    0x60328  3      
  nop                            #  60    0x6032b  1      
.L_60380:                        #        0x6032c  0      
  movl %ebx, %ebx                #  61    0x6032c  2      
  testb $0x1, 0x10(%r15,%rbx,1)  #  62    0x6032e  6      
  jne .L_60340                   #  63    0x60334  6      
  movl %ebx, %ebx                #  64    0x6033a  2      
  cmpl %edi, 0xc(%r15,%rbx,1)    #  65    0x6033c  5      
  jne .L_60360                   #  66    0x60341  6      
  movl %ebx, %ebx                #  67    0x60347  2      
  movl 0x14(%r15,%rbx,1), %eax   #  68    0x60349  5      
  movl %edx, %edx                #  69    0x6034e  2      
  movl %eax, (%r15,%rdx,1)       #  70    0x60350  4      
  jmpq .L_603e0                  #  71    0x60354  5      
  nop                            #  72    0x60359  1      
  nop                            #  73    0x6035a  1      
.L_603c0:                        #        0x6035b  0      
  movl %ebx, %ebx                #  74    0x6035b  2      
  movl 0x14(%r15,%rbx,1), %edx   #  75    0x6035d  5      
  movl %eax, %eax                #  76    0x60362  2      
  movl %edx, (%r15,%rax,1)       #  77    0x60364  4      
  nop                            #  78    0x60368  1      
  nop                            #  79    0x60369  1      
.L_603e0:                        #        0x6036a  0      
  movq %rbx, %rax                #  80    0x6036a  3      
  popq %rbx                      #  81    0x6036d  2      
  popq %r11                      #  82    0x6036f  3      
  andl $0xffffffe0, %r11d        #  83    0x60372  7      
  addq %r15, %r11                #  84    0x60379  3      
  jmpq %r11                      #  85    0x6037c  3      
  nop                            #  86    0x6037f  1      
  nop                            #  87    0x60380  1      
.L_60400:                        #        0x60381  0      
  movl %ebx, %ebx                #  88    0x60381  2      
  movl 0x14(%r15,%rbx,1), %eax   #  89    0x60383  5      
  movl %edx, %edx                #  90    0x60388  2      
  movl %eax, (%r15,%rdx,1)       #  91    0x6038a  4      
  movl %ebx, %ebx                #  92    0x6038e  2      
  movl 0xc(%r15,%rbx,1), %edi    #  93    0x60390  5      
  nop                            #  94    0x60395  1      
  callq .free                    #  95    0x60396  5      
  jmpq .L_603e0                  #  96    0x6039b  5      
  nop                            #  97    0x603a0  1      
  nop                            #  98    0x603a1  1      
.L_60440:                        #        0x603a2  0      
  nop                            #  99    0x603a2  1      
  nop                            #  100   0x603a3  1      
  callq .abort                   #  101   0x603a4  5      
                                                          
.size __deregister_frame_info_bases, .-__deregister_frame_info_bases

