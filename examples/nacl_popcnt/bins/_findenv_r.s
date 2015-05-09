  .text
  .globl _findenv_r
  .type _findenv_r, @function

#! file-offset 0x698a0
#! rip-offset  0x698a0
#! capacity    448 bytes

# Text                        #  Line  RIP      Bytes  
._findenv_r:                  #        0x698a0  0      
  pushq %r14                  #  1     0x698a0  3      
  movl %edi, %r14d            #  2     0x698a3  3      
  movl %edx, %edx             #  3     0x698a6  2      
  movl %r14d, %edi            #  4     0x698a8  3      
  pushq %r13                  #  5     0x698ab  3      
  movl %esi, %r13d            #  6     0x698ae  3      
  pushq %r12                  #  7     0x698b1  3      
  pushq %rbx                  #  8     0x698b4  2      
  subl $0x18, %esp            #  9     0x698b6  3      
  addq %r15, %rsp             #  10    0x698b9  3      
  movq %rdx, 0x8(%rsp)        #  11    0x698bc  5      
  nop                         #  12    0x698c1  1      
  nop                         #  13    0x698c2  1      
  nop                         #  14    0x698c3  1      
  callq .__env_lock           #  15    0x698c4  5      
  movl 0xffc6c29(%rip), %ebx  #  16    0x698c9  6      
  testq %rbx, %rbx            #  17    0x698cf  3      
  je .L_699c0                 #  18    0x698d2  6      
  movl %r13d, %r13d           #  19    0x698d8  3      
  movzbl (%r15,%r13,1), %eax  #  20    0x698db  5      
  cmpb $0x3d, %al             #  21    0x698e0  2      
  je .L_69a40                 #  22    0x698e2  6      
  nop                         #  23    0x698e8  1      
  testb %al, %al              #  24    0x698e9  2      
  movq %r13, %r12             #  25    0x698eb  3      
  je .L_69a40                 #  26    0x698ee  6      
  nop                         #  27    0x698f4  1      
  nop                         #  28    0x698f5  1      
.L_69920:                     #        0x698f6  0      
  addl $0x1, %r12d            #  29    0x698f6  4      
  movl %r12d, %r12d           #  30    0x698fa  3      
  movzbl (%r15,%r12,1), %eax  #  31    0x698fd  5      
  cmpb $0x3d, %al             #  32    0x69902  2      
  je .L_699c0                 #  33    0x69904  6      
  testb %al, %al              #  34    0x6990a  2      
  jne .L_69920                #  35    0x6990c  6      
  nop                         #  36    0x69912  1      
.L_69940:                     #        0x69913  0      
  cmpb $0x3d, %al             #  37    0x69913  2      
  je .L_699c0                 #  38    0x69915  6      
  movl %ebx, %ebx             #  39    0x6991b  2      
  movl (%r15,%rbx,1), %edi    #  40    0x6991d  4      
  testq %rdi, %rdi            #  41    0x69921  3      
  je .L_699c0                 #  42    0x69924  6      
  subl %r13d, %r12d           #  43    0x6992a  3      
  nop                         #  44    0x6992d  1      
.L_69960:                     #        0x6992e  0      
  movl %r12d, %edx            #  45    0x6992e  3      
  movl %r13d, %esi            #  46    0x69931  3      
  nop                         #  47    0x69934  1      
  nop                         #  48    0x69935  1      
  callq .strncmp              #  49    0x69936  5      
  testl %eax, %eax            #  50    0x6993b  2      
  jne .L_699a0                #  51    0x6993d  6      
  movl %ebx, %ebx             #  52    0x69943  2      
  movl (%r15,%rbx,1), %eax    #  53    0x69945  4      
  addl %r12d, %eax            #  54    0x69949  3      
  movl %eax, %eax             #  55    0x6994c  2      
  cmpb $0x3d, (%r15,%rax,1)   #  56    0x6994e  5      
  je .L_69a00                 #  57    0x69953  6      
  nop                         #  58    0x69959  1      
.L_699a0:                     #        0x6995a  0      
  addl $0x4, %ebx             #  59    0x6995a  3      
  movl %ebx, %ebx             #  60    0x6995d  2      
  movl (%r15,%rbx,1), %edi    #  61    0x6995f  4      
  testq %rdi, %rdi            #  62    0x69963  3      
  jne .L_69960                #  63    0x69966  6      
  nop                         #  64    0x6996c  1      
  nop                         #  65    0x6996d  1      
.L_699c0:                     #        0x6996e  0      
  movl %r14d, %edi            #  66    0x6996e  3      
  nop                         #  67    0x69971  1      
  nop                         #  68    0x69972  1      
  callq .__env_unlock         #  69    0x69973  5      
  addl $0x18, %esp            #  70    0x69978  3      
  addq %r15, %rsp             #  71    0x6997b  3      
  xorl %eax, %eax             #  72    0x6997e  2      
  popq %rbx                   #  73    0x69980  2      
  popq %r12                   #  74    0x69982  3      
  popq %r13                   #  75    0x69985  3      
  popq %r14                   #  76    0x69988  3      
  popq %r11                   #  77    0x6998b  3      
  andl $0xffffffe0, %r11d     #  78    0x6998e  7      
  addq %r15, %r11             #  79    0x69995  3      
  jmpq %r11                   #  80    0x69998  3      
  nop                         #  81    0x6999b  1      
.L_69a00:                     #        0x6999c  0      
  subl 0xffc6b56(%rip), %ebx  #  82    0x6999c  6      
  movq 0x8(%rsp), %rdx        #  83    0x699a2  5      
  movl %r14d, %edi            #  84    0x699a7  3      
  movq %rax, (%rsp)           #  85    0x699aa  4      
  sarl $0x2, %ebx             #  86    0x699ae  3      
  movl %edx, %edx             #  87    0x699b1  2      
  movl %ebx, (%r15,%rdx,1)    #  88    0x699b3  4      
  callq .__env_unlock         #  89    0x699b7  5      
  movq (%rsp), %rax           #  90    0x699bc  4      
  addl $0x18, %esp            #  91    0x699c0  3      
  addq %r15, %rsp             #  92    0x699c3  3      
  popq %rbx                   #  93    0x699c6  2      
  popq %r12                   #  94    0x699c8  3      
  popq %r13                   #  95    0x699cb  3      
  popq %r14                   #  96    0x699ce  3      
  popq %r11                   #  97    0x699d1  3      
  addl $0x1, %eax             #  98    0x699d4  3      
  andl $0xffffffe0, %r11d     #  99    0x699d7  7      
  addq %r15, %r11             #  100   0x699de  3      
  jmpq %r11                   #  101   0x699e1  3      
.L_69a40:                     #        0x699e4  0      
  movq %r13, %r12             #  102   0x699e4  3      
  jmpq .L_69940               #  103   0x699e7  5      
  nop                         #  104   0x699ec  1      
  nop                         #  105   0x699ed  1      
                                                       
.size _findenv_r, .-_findenv_r

