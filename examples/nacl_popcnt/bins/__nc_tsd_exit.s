  .text
  .globl __nc_tsd_exit
  .type __nc_tsd_exit, @function

#! file-offset 0x3ffa0
#! rip-offset  0x3ffa0
#! capacity    672 bytes

# Text                                #  Line  RIP      Bytes  
.__nc_tsd_exit:                       #        0x3ffa0  0      
  pushq %r13                          #  1     0x3ffa0  3      
  pushq %r12                          #  2     0x3ffa3  3      
  xorl %r12d, %r12d                   #  3     0x3ffa6  3      
  pushq %rbx                          #  4     0x3ffa9  2      
  nop                                 #  5     0x3ffab  1      
  nop                                 #  6     0x3ffac  1      
  callq .__nacl_read_tp               #  7     0x3ffad  5      
  movl %eax, %eax                     #  8     0x3ffb2  2      
  movl -0x4(%r15,%rax,1), %esi        #  9     0x3ffb4  5      
  testq %rsi, %rsi                    #  10    0x3ffb9  3      
  je .L_40220                         #  11    0x3ffbc  6      
  nop                                 #  12    0x3ffc2  1      
.L_3ffe0:                             #        0x3ffc3  0      
  xorl %ebx, %ebx                     #  13    0x3ffc3  2      
  xorl %r13d, %r13d                   #  14    0x3ffc5  3      
  jmpq .L_40080                       #  15    0x3ffc8  5      
  nop                                 #  16    0x3ffcd  1      
  nop                                 #  17    0x3ffce  1      
.L_40000:                             #        0x3ffcf  0      
  leaq (%rsi,%rdx,1), %rdx            #  18    0x3ffcf  4      
  movl %edx, %edx                     #  19    0x3ffd3  2      
  cmpl %ecx, 0x4(%r15,%rdx,1)         #  20    0x3ffd5  5      
  je .L_40140                         #  21    0x3ffda  6      
  nop                                 #  22    0x3ffe0  1      
.L_40020:                             #        0x3ffe1  0      
  addl $0x1, %ebx                     #  23    0x3ffe1  3      
  cmpl $0x200, %ebx                   #  24    0x3ffe4  6      
  je .L_40100                         #  25    0x3ffea  6      
  xchgw %ax, %ax                      #  26    0x3fff0  3      
  nop                                 #  27    0x3fff3  1      
.L_40040:                             #        0x3fff4  0      
  nop                                 #  28    0x3fff4  1      
  nop                                 #  29    0x3fff5  1      
  callq .__nacl_read_tp               #  30    0x3fff6  5      
  movl %eax, %eax                     #  31    0x3fffb  2      
  movl -0x4(%r15,%rax,1), %esi        #  32    0x3fffd  5      
  nop                                 #  33    0x40002  1      
  nop                                 #  34    0x40003  1      
.L_40080:                             #        0x40004  0      
  movl %ebx, %eax                     #  35    0x40004  2      
  leal (,%rbx,8), %edx                #  36    0x40006  7      
  movl %eax, %eax                     #  37    0x4000d  2      
  movl 0x10030da0(%r15,%rax,8), %eax  #  38    0x4000f  8      
  movslq %edx, %rdx                   #  39    0x40017  3      
  leaq 0x10030da4(%rdx), %rcx         #  40    0x4001a  7      
  testq %rax, %rax                    #  41    0x40021  3      
  movl %ecx, %ecx                     #  42    0x40024  2      
  movl (%r15,%rcx,1), %ecx            #  43    0x40026  4      
  je .L_400c0                         #  44    0x4002a  6      
  testb $0x1, %cl                     #  45    0x40030  3      
  jne .L_40000                        #  46    0x40033  6      
  nop                                 #  47    0x40039  1      
.L_400c0:                             #        0x4003a  0      
  addl $0x1, %ebx                     #  48    0x4003a  3      
  nop                                 #  49    0x4003d  1      
  nop                                 #  50    0x4003e  1      
  callq .__nacl_read_tp               #  51    0x4003f  5      
  cmpl $0x200, %ebx                   #  52    0x40044  6      
  movl %eax, %eax                     #  53    0x4004a  2      
  movl -0x4(%r15,%rax,1), %esi        #  54    0x4004c  5      
  jne .L_40040                        #  55    0x40051  6      
  nop                                 #  56    0x40057  1      
.L_40100:                             #        0x40058  0      
  testl %r13d, %r13d                  #  57    0x40058  3      
  je .L_401c0                         #  58    0x4005b  6      
  addl $0x1, %r12d                    #  59    0x40061  4      
  cmpl $0x4, %r12d                    #  60    0x40065  4      
  je .L_401c0                         #  61    0x40069  6      
  nop                                 #  62    0x4006f  1      
  callq .__nacl_read_tp               #  63    0x40070  5      
  movl %eax, %eax                     #  64    0x40075  2      
  movl -0x4(%r15,%rax,1), %esi        #  65    0x40077  5      
  jmpq .L_3ffe0                       #  66    0x4007c  5      
  xchgw %ax, %ax                      #  67    0x40081  3      
  nop                                 #  68    0x40084  1      
.L_40140:                             #        0x40085  0      
  movl %edx, %edx                     #  69    0x40085  2      
  movl (%r15,%rdx,1), %edi            #  70    0x40087  4      
  testq %rdi, %rdi                    #  71    0x4008b  3      
  je .L_40020                         #  72    0x4008e  6      
  movl %edx, %edx                     #  73    0x40094  2      
  movl $0x0, (%r15,%rdx,1)            #  74    0x40096  8      
  movl $0x1, %r13d                    #  75    0x4009e  6      
  nop                                 #  76    0x400a4  1      
  nop                                 #  77    0x400a5  1      
  nop                                 #  78    0x400a6  1      
  andl $0xffffffe0, %eax              #  79    0x400a7  5      
  addq %r15, %rax                     #  80    0x400ac  3      
  callq %rax                          #  81    0x400af  2      
  nop                                 #  82    0x400b1  1      
  nop                                 #  83    0x400b2  1      
  callq .__nacl_read_tp               #  84    0x400b3  5      
  movl %eax, %eax                     #  85    0x400b8  2      
  movl -0x4(%r15,%rax,1), %esi        #  86    0x400ba  5      
  jmpq .L_40020                       #  87    0x400bf  5      
  xchgw %ax, %ax                      #  88    0x400c4  3      
  nop                                 #  89    0x400c7  1      
.L_401c0:                             #        0x400c8  0      
  movl %esi, %edi                     #  90    0x400c8  2      
  nop                                 #  91    0x400ca  1      
  nop                                 #  92    0x400cb  1      
  callq .free                         #  93    0x400cc  5      
  nop                                 #  94    0x400d1  1      
  nop                                 #  95    0x400d2  1      
  callq .__nacl_read_tp               #  96    0x400d3  5      
  movl %eax, %eax                     #  97    0x400d8  2      
  movl $0x0, -0x4(%r15,%rax,1)        #  98    0x400da  9      
  nop                                 #  99    0x400e3  1      
  nop                                 #  100   0x400e4  1      
.L_40220:                             #        0x400e5  0      
  popq %rbx                           #  101   0x400e5  2      
  popq %r12                           #  102   0x400e7  3      
  popq %r13                           #  103   0x400ea  3      
  popq %r11                           #  104   0x400ed  3      
  andl $0xffffffe0, %r11d             #  105   0x400f0  7      
  addq %r15, %r11                     #  106   0x400f7  3      
  jmpq %r11                           #  107   0x400fa  3      
  nop                                 #  108   0x400fd  1      
                                                               
.size __nc_tsd_exit, .-__nc_tsd_exit

