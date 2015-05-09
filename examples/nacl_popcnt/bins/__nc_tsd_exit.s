  .text
  .globl __nc_tsd_exit
  .type __nc_tsd_exit, @function

#! file-offset 0x3ff80
#! rip-offset  0x3ff80
#! capacity    672 bytes

# Text                                #  Line  RIP      Bytes  
.__nc_tsd_exit:                       #        0x3ff80  0      
  pushq %r13                          #  1     0x3ff80  3      
  pushq %r12                          #  2     0x3ff83  3      
  xorl %r12d, %r12d                   #  3     0x3ff86  3      
  pushq %rbx                          #  4     0x3ff89  2      
  nop                                 #  5     0x3ff8b  1      
  nop                                 #  6     0x3ff8c  1      
  callq .__nacl_read_tp               #  7     0x3ff8d  5      
  movl %eax, %eax                     #  8     0x3ff92  2      
  movl -0x4(%r15,%rax,1), %esi        #  9     0x3ff94  5      
  testq %rsi, %rsi                    #  10    0x3ff99  3      
  je .L_40200                         #  11    0x3ff9c  6      
  nop                                 #  12    0x3ffa2  1      
.L_3ffc0:                             #        0x3ffa3  0      
  xorl %ebx, %ebx                     #  13    0x3ffa3  2      
  xorl %r13d, %r13d                   #  14    0x3ffa5  3      
  jmpq .L_40060                       #  15    0x3ffa8  5      
  nop                                 #  16    0x3ffad  1      
  nop                                 #  17    0x3ffae  1      
.L_3ffe0:                             #        0x3ffaf  0      
  leaq (%rsi,%rdx,1), %rdx            #  18    0x3ffaf  4      
  movl %edx, %edx                     #  19    0x3ffb3  2      
  cmpl %ecx, 0x4(%r15,%rdx,1)         #  20    0x3ffb5  5      
  je .L_40120                         #  21    0x3ffba  6      
  nop                                 #  22    0x3ffc0  1      
.L_40000:                             #        0x3ffc1  0      
  addl $0x1, %ebx                     #  23    0x3ffc1  3      
  cmpl $0x200, %ebx                   #  24    0x3ffc4  6      
  je .L_400e0                         #  25    0x3ffca  6      
  xchgw %ax, %ax                      #  26    0x3ffd0  3      
  nop                                 #  27    0x3ffd3  1      
.L_40020:                             #        0x3ffd4  0      
  nop                                 #  28    0x3ffd4  1      
  nop                                 #  29    0x3ffd5  1      
  callq .__nacl_read_tp               #  30    0x3ffd6  5      
  movl %eax, %eax                     #  31    0x3ffdb  2      
  movl -0x4(%r15,%rax,1), %esi        #  32    0x3ffdd  5      
  nop                                 #  33    0x3ffe2  1      
  nop                                 #  34    0x3ffe3  1      
.L_40060:                             #        0x3ffe4  0      
  movl %ebx, %eax                     #  35    0x3ffe4  2      
  leal (,%rbx,8), %edx                #  36    0x3ffe6  7      
  movl %eax, %eax                     #  37    0x3ffed  2      
  movl 0x10030da0(%r15,%rax,8), %eax  #  38    0x3ffef  8      
  movslq %edx, %rdx                   #  39    0x3fff7  3      
  leaq 0x10030da4(%rdx), %rcx         #  40    0x3fffa  7      
  testq %rax, %rax                    #  41    0x40001  3      
  movl %ecx, %ecx                     #  42    0x40004  2      
  movl (%r15,%rcx,1), %ecx            #  43    0x40006  4      
  je .L_400a0                         #  44    0x4000a  6      
  testb $0x1, %cl                     #  45    0x40010  3      
  jne .L_3ffe0                        #  46    0x40013  6      
  nop                                 #  47    0x40019  1      
.L_400a0:                             #        0x4001a  0      
  addl $0x1, %ebx                     #  48    0x4001a  3      
  nop                                 #  49    0x4001d  1      
  nop                                 #  50    0x4001e  1      
  callq .__nacl_read_tp               #  51    0x4001f  5      
  cmpl $0x200, %ebx                   #  52    0x40024  6      
  movl %eax, %eax                     #  53    0x4002a  2      
  movl -0x4(%r15,%rax,1), %esi        #  54    0x4002c  5      
  jne .L_40020                        #  55    0x40031  6      
  nop                                 #  56    0x40037  1      
.L_400e0:                             #        0x40038  0      
  testl %r13d, %r13d                  #  57    0x40038  3      
  je .L_401a0                         #  58    0x4003b  6      
  addl $0x1, %r12d                    #  59    0x40041  4      
  cmpl $0x4, %r12d                    #  60    0x40045  4      
  je .L_401a0                         #  61    0x40049  6      
  nop                                 #  62    0x4004f  1      
  callq .__nacl_read_tp               #  63    0x40050  5      
  movl %eax, %eax                     #  64    0x40055  2      
  movl -0x4(%r15,%rax,1), %esi        #  65    0x40057  5      
  jmpq .L_3ffc0                       #  66    0x4005c  5      
  xchgw %ax, %ax                      #  67    0x40061  3      
  nop                                 #  68    0x40064  1      
.L_40120:                             #        0x40065  0      
  movl %edx, %edx                     #  69    0x40065  2      
  movl (%r15,%rdx,1), %edi            #  70    0x40067  4      
  testq %rdi, %rdi                    #  71    0x4006b  3      
  je .L_40000                         #  72    0x4006e  6      
  movl %edx, %edx                     #  73    0x40074  2      
  movl $0x0, (%r15,%rdx,1)            #  74    0x40076  8      
  movl $0x1, %r13d                    #  75    0x4007e  6      
  nop                                 #  76    0x40084  1      
  nop                                 #  77    0x40085  1      
  nop                                 #  78    0x40086  1      
  andl $0xffffffe0, %eax              #  79    0x40087  5      
  addq %r15, %rax                     #  80    0x4008c  3      
  callq %rax                          #  81    0x4008f  2      
  nop                                 #  82    0x40091  1      
  nop                                 #  83    0x40092  1      
  callq .__nacl_read_tp               #  84    0x40093  5      
  movl %eax, %eax                     #  85    0x40098  2      
  movl -0x4(%r15,%rax,1), %esi        #  86    0x4009a  5      
  jmpq .L_40000                       #  87    0x4009f  5      
  xchgw %ax, %ax                      #  88    0x400a4  3      
  nop                                 #  89    0x400a7  1      
.L_401a0:                             #        0x400a8  0      
  movl %esi, %edi                     #  90    0x400a8  2      
  nop                                 #  91    0x400aa  1      
  nop                                 #  92    0x400ab  1      
  callq .free                         #  93    0x400ac  5      
  nop                                 #  94    0x400b1  1      
  nop                                 #  95    0x400b2  1      
  callq .__nacl_read_tp               #  96    0x400b3  5      
  movl %eax, %eax                     #  97    0x400b8  2      
  movl $0x0, -0x4(%r15,%rax,1)        #  98    0x400ba  9      
  nop                                 #  99    0x400c3  1      
  nop                                 #  100   0x400c4  1      
.L_40200:                             #        0x400c5  0      
  popq %rbx                           #  101   0x400c5  2      
  popq %r12                           #  102   0x400c7  3      
  popq %r13                           #  103   0x400ca  3      
  popq %r11                           #  104   0x400cd  3      
  andl $0xffffffe0, %r11d             #  105   0x400d0  7      
  addq %r15, %r11                     #  106   0x400d7  3      
  jmpq %r11                           #  107   0x400da  3      
  nop                                 #  108   0x400dd  1      
                                                               
.size __nc_tsd_exit, .-__nc_tsd_exit

