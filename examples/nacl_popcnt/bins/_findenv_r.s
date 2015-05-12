  .text
  .globl _findenv_r
  .type _findenv_r, @function

#! file-offset 0x698c0
#! rip-offset  0x698c0
#! capacity    448 bytes

# Text                        #  Line  RIP      Bytes  
._findenv_r:                  #        0x698c0  0      
  pushq %r14                  #  1     0x698c0  3      
  movl %edi, %r14d            #  2     0x698c3  3      
  movl %edx, %edx             #  3     0x698c6  2      
  movl %r14d, %edi            #  4     0x698c8  3      
  pushq %r13                  #  5     0x698cb  3      
  movl %esi, %r13d            #  6     0x698ce  3      
  pushq %r12                  #  7     0x698d1  3      
  pushq %rbx                  #  8     0x698d4  2      
  subl $0x18, %esp            #  9     0x698d6  3      
  addq %r15, %rsp             #  10    0x698d9  3      
  movq %rdx, 0x8(%rsp)        #  11    0x698dc  5      
  nop                         #  12    0x698e1  1      
  nop                         #  13    0x698e2  1      
  nop                         #  14    0x698e3  1      
  callq .__env_lock           #  15    0x698e4  5      
  movl 0xffc6c09(%rip), %ebx  #  16    0x698e9  6      
  testq %rbx, %rbx            #  17    0x698ef  3      
  je .L_699e0                 #  18    0x698f2  6      
  movl %r13d, %r13d           #  19    0x698f8  3      
  movzbl (%r15,%r13,1), %eax  #  20    0x698fb  5      
  cmpb $0x3d, %al             #  21    0x69900  2      
  je .L_69a60                 #  22    0x69902  6      
  nop                         #  23    0x69908  1      
  testb %al, %al              #  24    0x69909  2      
  movq %r13, %r12             #  25    0x6990b  3      
  je .L_69a60                 #  26    0x6990e  6      
  nop                         #  27    0x69914  1      
  nop                         #  28    0x69915  1      
.L_69940:                     #        0x69916  0      
  addl $0x1, %r12d            #  29    0x69916  4      
  movl %r12d, %r12d           #  30    0x6991a  3      
  movzbl (%r15,%r12,1), %eax  #  31    0x6991d  5      
  cmpb $0x3d, %al             #  32    0x69922  2      
  je .L_699e0                 #  33    0x69924  6      
  testb %al, %al              #  34    0x6992a  2      
  jne .L_69940                #  35    0x6992c  6      
  nop                         #  36    0x69932  1      
.L_69960:                     #        0x69933  0      
  cmpb $0x3d, %al             #  37    0x69933  2      
  je .L_699e0                 #  38    0x69935  6      
  movl %ebx, %ebx             #  39    0x6993b  2      
  movl (%r15,%rbx,1), %edi    #  40    0x6993d  4      
  testq %rdi, %rdi            #  41    0x69941  3      
  je .L_699e0                 #  42    0x69944  6      
  subl %r13d, %r12d           #  43    0x6994a  3      
  nop                         #  44    0x6994d  1      
.L_69980:                     #        0x6994e  0      
  movl %r12d, %edx            #  45    0x6994e  3      
  movl %r13d, %esi            #  46    0x69951  3      
  nop                         #  47    0x69954  1      
  nop                         #  48    0x69955  1      
  callq .strncmp              #  49    0x69956  5      
  testl %eax, %eax            #  50    0x6995b  2      
  jne .L_699c0                #  51    0x6995d  6      
  movl %ebx, %ebx             #  52    0x69963  2      
  movl (%r15,%rbx,1), %eax    #  53    0x69965  4      
  addl %r12d, %eax            #  54    0x69969  3      
  movl %eax, %eax             #  55    0x6996c  2      
  cmpb $0x3d, (%r15,%rax,1)   #  56    0x6996e  5      
  je .L_69a20                 #  57    0x69973  6      
  nop                         #  58    0x69979  1      
.L_699c0:                     #        0x6997a  0      
  addl $0x4, %ebx             #  59    0x6997a  3      
  movl %ebx, %ebx             #  60    0x6997d  2      
  movl (%r15,%rbx,1), %edi    #  61    0x6997f  4      
  testq %rdi, %rdi            #  62    0x69983  3      
  jne .L_69980                #  63    0x69986  6      
  nop                         #  64    0x6998c  1      
  nop                         #  65    0x6998d  1      
.L_699e0:                     #        0x6998e  0      
  movl %r14d, %edi            #  66    0x6998e  3      
  nop                         #  67    0x69991  1      
  nop                         #  68    0x69992  1      
  callq .__env_unlock         #  69    0x69993  5      
  addl $0x18, %esp            #  70    0x69998  3      
  addq %r15, %rsp             #  71    0x6999b  3      
  xorl %eax, %eax             #  72    0x6999e  2      
  popq %rbx                   #  73    0x699a0  2      
  popq %r12                   #  74    0x699a2  3      
  popq %r13                   #  75    0x699a5  3      
  popq %r14                   #  76    0x699a8  3      
  popq %r11                   #  77    0x699ab  3      
  andl $0xffffffe0, %r11d     #  78    0x699ae  7      
  addq %r15, %r11             #  79    0x699b5  3      
  jmpq %r11                   #  80    0x699b8  3      
  nop                         #  81    0x699bb  1      
.L_69a20:                     #        0x699bc  0      
  subl 0xffc6b36(%rip), %ebx  #  82    0x699bc  6      
  movq 0x8(%rsp), %rdx        #  83    0x699c2  5      
  movl %r14d, %edi            #  84    0x699c7  3      
  movq %rax, (%rsp)           #  85    0x699ca  4      
  sarl $0x2, %ebx             #  86    0x699ce  3      
  movl %edx, %edx             #  87    0x699d1  2      
  movl %ebx, (%r15,%rdx,1)    #  88    0x699d3  4      
  callq .__env_unlock         #  89    0x699d7  5      
  movq (%rsp), %rax           #  90    0x699dc  4      
  addl $0x18, %esp            #  91    0x699e0  3      
  addq %r15, %rsp             #  92    0x699e3  3      
  popq %rbx                   #  93    0x699e6  2      
  popq %r12                   #  94    0x699e8  3      
  popq %r13                   #  95    0x699eb  3      
  popq %r14                   #  96    0x699ee  3      
  popq %r11                   #  97    0x699f1  3      
  addl $0x1, %eax             #  98    0x699f4  3      
  andl $0xffffffe0, %r11d     #  99    0x699f7  7      
  addq %r15, %r11             #  100   0x699fe  3      
  jmpq %r11                   #  101   0x69a01  3      
.L_69a60:                     #        0x69a04  0      
  movq %r13, %r12             #  102   0x69a04  3      
  jmpq .L_69960               #  103   0x69a07  5      
  nop                         #  104   0x69a0c  1      
  nop                         #  105   0x69a0d  1      
                                                       
.size _findenv_r, .-_findenv_r

