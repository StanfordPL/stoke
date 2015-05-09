  .text
  .globl __sprint_r
  .type __sprint_r, @function

#! file-offset 0x84000
#! rip-offset  0x84000
#! capacity    512 bytes

# Text                            #  Line  RIP      Bytes  
.__sprint_r:                      #        0x84000  0      
  pushq %r14                      #  1     0x84000  3      
  movl %edx, %edx                 #  2     0x84003  2      
  movl %edi, %edi                 #  3     0x84005  2      
  movl %esi, %r14d                #  4     0x84007  3      
  pushq %r13                      #  5     0x8400a  3      
  pushq %r12                      #  6     0x8400d  3      
  pushq %rbx                      #  7     0x84010  2      
  subl $0x28, %esp                #  8     0x84012  3      
  addq %r15, %rsp                 #  9     0x84015  3      
  movl %edx, %edx                 #  10    0x84018  2      
  movl 0x8(%r15,%rdx,1), %eax     #  11    0x8401a  5      
  movq %rdi, 0x8(%rsp)            #  12    0x8401f  5      
  movq %rdx, 0x10(%rsp)           #  13    0x84024  5      
  testl %eax, %eax                #  14    0x84029  2      
  je .L_84180                     #  15    0x8402b  6      
  movl %r14d, %r14d               #  16    0x84031  3      
  testb $0x20, 0x79(%r15,%r14,1)  #  17    0x84034  6      
  je .L_841c0                     #  18    0x8403a  6      
  nop                             #  19    0x84040  1      
  movq 0x10(%rsp), %rax           #  20    0x84041  5      
  movl %eax, %eax                 #  21    0x84046  2      
  movl (%r15,%rax,1), %eax        #  22    0x84048  4      
  movq %rax, 0x18(%rsp)           #  23    0x8404c  5      
  nop                             #  24    0x84051  1      
  nop                             #  25    0x84052  1      
.L_84060:                         #        0x84053  0      
  movq 0x18(%rsp), %rdx           #  26    0x84053  5      
  movl %edx, %edx                 #  27    0x84058  2      
  movl 0x4(%r15,%rdx,1), %r13d    #  28    0x8405a  5      
  movl %edx, %edx                 #  29    0x8405f  2      
  movl (%r15,%rdx,1), %ebx        #  30    0x84061  4      
  shrl $0x2, %r13d                #  31    0x84065  4      
  testl %r13d, %r13d              #  32    0x84069  3      
  jle .L_84140                    #  33    0x8406c  6      
  nop                             #  34    0x84072  1      
  xorl %r12d, %r12d               #  35    0x84073  3      
  jmpq .L_840c0                   #  36    0x84076  5      
  nop                             #  37    0x8407b  1      
  nop                             #  38    0x8407c  1      
.L_840a0:                         #        0x8407d  0      
  addl $0x1, %r12d                #  39    0x8407d  4      
  addl $0x4, %ebx                 #  40    0x84081  3      
  cmpl %r12d, %r13d               #  41    0x84084  3      
  jle .L_84140                    #  42    0x84087  6      
  nop                             #  43    0x8408d  1      
  nop                             #  44    0x8408e  1      
.L_840c0:                         #        0x8408f  0      
  movl %ebx, %eax                 #  45    0x8408f  2      
  movl 0x8(%rsp), %edi            #  46    0x84091  4      
  movl %r14d, %edx                #  47    0x84095  3      
  movl %eax, %eax                 #  48    0x84098  2      
  movl (%r15,%rax,1), %esi        #  49    0x8409a  4      
  nop                             #  50    0x8409e  1      
  callq ._fputwc_r                #  51    0x8409f  5      
  cmpl $0xffffffff, %eax          #  52    0x840a4  5      
  jne .L_840a0                    #  53    0x840a9  6      
  nop                             #  54    0x840af  1      
  nop                             #  55    0x840b0  1      
.L_84100:                         #        0x840b1  0      
  movq 0x10(%rsp), %rdx           #  56    0x840b1  5      
  movl %edx, %edx                 #  57    0x840b6  2      
  movl $0x0, 0x8(%r15,%rdx,1)     #  58    0x840b8  9      
  movl %edx, %edx                 #  59    0x840c1  2      
  movl $0x0, 0x4(%r15,%rdx,1)     #  60    0x840c3  9      
  nop                             #  61    0x840cc  1      
  addl $0x28, %esp                #  62    0x840cd  3      
  addq %r15, %rsp                 #  63    0x840d0  3      
  popq %rbx                       #  64    0x840d3  2      
  popq %r12                       #  65    0x840d5  3      
  popq %r13                       #  66    0x840d8  3      
  popq %r14                       #  67    0x840db  3      
  popq %r11                       #  68    0x840de  3      
  andl $0xffffffe0, %r11d         #  69    0x840e1  7      
  addq %r15, %r11                 #  70    0x840e8  3      
  jmpq %r11                       #  71    0x840eb  3      
  nop                             #  72    0x840ee  1      
.L_84140:                         #        0x840ef  0      
  movq 0x10(%rsp), %rdx           #  73    0x840ef  5      
  shll $0x2, %r13d                #  74    0x840f4  4      
  movl %edx, %edx                 #  75    0x840f8  2      
  movl 0x8(%r15,%rdx,1), %eax     #  76    0x840fa  5      
  subl %r13d, %eax                #  77    0x840ff  3      
  testl %eax, %eax                #  78    0x84102  2      
  movl %edx, %edx                 #  79    0x84104  2      
  movl %eax, 0x8(%r15,%rdx,1)     #  80    0x84106  5      
  nop                             #  81    0x8410b  1      
  je .L_84100                     #  82    0x8410c  6      
  movl 0x18(%rsp), %eax           #  83    0x84112  4      
  addl $0x8, %eax                 #  84    0x84116  3      
  movq %rax, 0x18(%rsp)           #  85    0x84119  5      
  jmpq .L_84060                   #  86    0x8411e  5      
  nop                             #  87    0x84123  1      
.L_84180:                         #        0x84124  0      
  movl %edx, %edx                 #  88    0x84124  2      
  movl $0x0, 0x4(%r15,%rdx,1)     #  89    0x84126  9      
  addl $0x28, %esp                #  90    0x8412f  3      
  addq %r15, %rsp                 #  91    0x84132  3      
  xorl %eax, %eax                 #  92    0x84135  2      
  popq %rbx                       #  93    0x84137  2      
  popq %r12                       #  94    0x84139  3      
  popq %r13                       #  95    0x8413c  3      
  popq %r14                       #  96    0x8413f  3      
  popq %r11                       #  97    0x84142  3      
  nop                             #  98    0x84145  1      
  andl $0xffffffe0, %r11d         #  99    0x84146  7      
  addq %r15, %r11                 #  100   0x8414d  3      
  jmpq %r11                       #  101   0x84150  3      
  nop                             #  102   0x84153  1      
  nop                             #  103   0x84154  1      
.L_841c0:                         #        0x84155  0      
  movl 0x10(%rsp), %edx           #  104   0x84155  4      
  movl 0x8(%rsp), %edi            #  105   0x84159  4      
  movl %r14d, %esi                #  106   0x8415d  3      
  nop                             #  107   0x84160  1      
  nop                             #  108   0x84161  1      
  callq .__sfvwrite_r             #  109   0x84162  5      
  jmpq .L_84100                   #  110   0x84167  5      
  nop                             #  111   0x8416c  1      
  nop                             #  112   0x8416d  1      
                                                           
.size __sprint_r, .-__sprint_r

