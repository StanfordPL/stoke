  .text
  .globl __cxa_allocate_exception
  .type __cxa_allocate_exception, @function

#! file-offset 0x4c1a0
#! rip-offset  0x4c1a0
#! capacity    672 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_allocate_exception:        #        0x4c1a0  0      
  pushq %r12                      #  1     0x4c1a0  3      
  leal 0x60(%rdi), %r12d          #  2     0x4c1a3  4      
  pushq %rbx                      #  3     0x4c1a7  2      
  movl %r12d, %edi                #  4     0x4c1a9  3      
  subl $0x8, %esp                 #  5     0x4c1ac  3      
  addq %r15, %rsp                 #  6     0x4c1af  3      
  nop                             #  7     0x4c1b2  1      
  callq .malloc                   #  8     0x4c1b3  5      
  movl %eax, %ebx                 #  9     0x4c1b8  2      
  testq %rbx, %rbx                #  10    0x4c1ba  3      
  je .L_4c300                     #  11    0x4c1bd  6      
  nop                             #  12    0x4c1c3  1      
  nop                             #  13    0x4c1c4  1      
.L_4c1e0:                         #        0x4c1c5  0      
  nop                             #  14    0x4c1c5  1      
  nop                             #  15    0x4c1c6  1      
  callq .__cxa_get_globals        #  16    0x4c1c7  5      
  movl %eax, %eax                 #  17    0x4c1cc  2      
  movq %rbx, %rdi                 #  18    0x4c1ce  3      
  movl $0x60, %edx                #  19    0x4c1d1  5      
  movl %eax, %eax                 #  20    0x4c1d6  2      
  addl $0x1, 0x4(%r15,%rax,1)     #  21    0x4c1d8  6      
  testb $0x1, %bl                 #  22    0x4c1de  3      
  jne .L_4c3a0                    #  23    0x4c1e1  6      
  testb $0x2, %dil                #  24    0x4c1e7  4      
  nop                             #  25    0x4c1eb  1      
  jne .L_4c3c0                    #  26    0x4c1ec  6      
  nop                             #  27    0x4c1f2  1      
  nop                             #  28    0x4c1f3  1      
.L_4c240:                         #        0x4c1f4  0      
  testb $0x4, %dil                #  29    0x4c1f4  4      
  jne .L_4c3e0                    #  30    0x4c1f8  6      
  nop                             #  31    0x4c1fe  1      
  nop                             #  32    0x4c1ff  1      
.L_4c260:                         #        0x4c200  0      
  movl %edx, %ecx                 #  33    0x4c200  2      
  xorl %eax, %eax                 #  34    0x4c202  2      
  shrl $0x3, %ecx                 #  35    0x4c204  3      
  testb $0x4, %dl                 #  36    0x4c207  3      
  movl %ecx, %ecx                 #  37    0x4c20a  2      
  movl %edi, %edi                 #  38    0x4c20c  2      
  leaq (%r15,%rdi,1), %rdi        #  39    0x4c20e  4      
  rep stosq %es:(%rdi)            #  40    0x4c212  4      
  movl %edi, %edi                 #  41    0x4c216  2      
  je .L_4c2a0                     #  42    0x4c218  6      
  nop                             #  43    0x4c21e  1      
  movl %edi, %edi                 #  44    0x4c21f  2      
  movl $0x0, (%r15,%rdi,1)        #  45    0x4c221  8      
  addq $0x4, %rdi                 #  46    0x4c229  4      
  nop                             #  47    0x4c22d  1      
  nop                             #  48    0x4c22e  1      
.L_4c2a0:                         #        0x4c22f  0      
  testb $0x2, %dl                 #  49    0x4c22f  3      
  je .L_4c2c0                     #  50    0x4c232  6      
  movl %edi, %edi                 #  51    0x4c238  2      
  movw $0x0, (%r15,%rdi,1)        #  52    0x4c23a  7      
  addq $0x2, %rdi                 #  53    0x4c241  4      
  nop                             #  54    0x4c245  1      
.L_4c2c0:                         #        0x4c246  0      
  andl $0x1, %edx                 #  55    0x4c246  3      
  je .L_4c2e0                     #  56    0x4c249  6      
  movl %edi, %edi                 #  57    0x4c24f  2      
  movb $0x0, (%r15,%rdi,1)        #  58    0x4c251  5      
  nop                             #  59    0x4c256  1      
  nop                             #  60    0x4c257  1      
.L_4c2e0:                         #        0x4c258  0      
  addl $0x8, %esp                 #  61    0x4c258  3      
  addq %r15, %rsp                 #  62    0x4c25b  3      
  leal 0x60(%rbx), %eax           #  63    0x4c25e  3      
  popq %rbx                       #  64    0x4c261  2      
  popq %r12                       #  65    0x4c263  3      
  popq %r11                       #  66    0x4c266  3      
  andl $0xffffffe0, %r11d         #  67    0x4c269  7      
  addq %r15, %r11                 #  68    0x4c270  3      
  jmpq %r11                       #  69    0x4c273  3      
  nop                             #  70    0x4c276  1      
.L_4c300:                         #        0x4c277  0      
  movl 0xffea5a3(%rip), %eax      #  71    0x4c277  6      
  xorl %ecx, %ecx                 #  72    0x4c27d  2      
  cmpl $0x200, %r12d              #  73    0x4c27f  7      
  movl %eax, %edx                 #  74    0x4c286  2      
  jbe .L_4c360                    #  75    0x4c288  6      
  nop                             #  76    0x4c28e  1      
.L_4c320:                         #        0x4c28f  0      
  nop                             #  77    0x4c28f  1      
  nop                             #  78    0x4c290  1      
  callq ._ZSt9terminatev          #  79    0x4c291  5      
.L_4c340:                         #        0x4c296  0      
  addl $0x1, %ecx                 #  80    0x4c296  3      
  cmpl $0x20, %ecx                #  81    0x4c299  3      
  je .L_4c320                     #  82    0x4c29c  6      
  shrl $0x1, %edx                 #  83    0x4c2a2  2      
  nop                             #  84    0x4c2a4  1      
  nop                             #  85    0x4c2a5  1      
.L_4c360:                         #        0x4c2a6  0      
  testb $0x1, %dl                 #  86    0x4c2a6  3      
  jne .L_4c340                    #  87    0x4c2a9  6      
  movl $0x1, %edx                 #  88    0x4c2af  5      
  shll %cl, %edx                  #  89    0x4c2b4  2      
  shll $0x9, %ecx                 #  90    0x4c2b6  3      
  orl %eax, %edx                  #  91    0x4c2b9  2      
  leal 0x10032820(%rcx), %ebx     #  92    0x4c2bb  6      
  movl %edx, 0xffea559(%rip)      #  93    0x4c2c1  6      
  nop                             #  94    0x4c2c7  1      
  jmpq .L_4c1e0                   #  95    0x4c2c8  5      
  nop                             #  96    0x4c2cd  1      
  nop                             #  97    0x4c2ce  1      
.L_4c3a0:                         #        0x4c2cf  0      
  leaq 0x1(%rbx), %rdi            #  98    0x4c2cf  4      
  movl %ebx, %ebx                 #  99    0x4c2d3  2      
  movb $0x0, (%r15,%rbx,1)        #  100   0x4c2d5  5      
  movb $0x5f, %dl                 #  101   0x4c2da  2      
  testb $0x2, %dil                #  102   0x4c2dc  4      
  je .L_4c240                     #  103   0x4c2e0  6      
  nop                             #  104   0x4c2e6  1      
.L_4c3c0:                         #        0x4c2e7  0      
  movl %edi, %edi                 #  105   0x4c2e7  2      
  movw $0x0, (%r15,%rdi,1)        #  106   0x4c2e9  7      
  addq $0x2, %rdi                 #  107   0x4c2f0  4      
  subl $0x2, %edx                 #  108   0x4c2f4  3      
  testb $0x4, %dil                #  109   0x4c2f7  4      
  je .L_4c260                     #  110   0x4c2fb  6      
  nop                             #  111   0x4c301  1      
.L_4c3e0:                         #        0x4c302  0      
  movl %edi, %edi                 #  112   0x4c302  2      
  movl $0x0, (%r15,%rdi,1)        #  113   0x4c304  8      
  subl $0x4, %edx                 #  114   0x4c30c  3      
  addq $0x4, %rdi                 #  115   0x4c30f  4      
  jmpq .L_4c260                   #  116   0x4c313  5      
  nop                             #  117   0x4c318  1      
  cmpq $0xffffffffffffffff, %rdx  #  118   0x4c319  4      
  movl %eax, %edi                 #  119   0x4c31d  2      
  je .L_4c420                     #  120   0x4c31f  6      
  nop                             #  121   0x4c325  1      
  nop                             #  122   0x4c326  1      
  callq ._Unwind_Resume           #  123   0x4c327  5      
.L_4c420:                         #        0x4c32c  0      
  nop                             #  124   0x4c32c  1      
  nop                             #  125   0x4c32d  1      
  callq .__cxa_call_unexpected    #  126   0x4c32e  5      
                                                           
.size __cxa_allocate_exception, .-__cxa_allocate_exception

