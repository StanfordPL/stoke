  .text
  .globl __cxa_allocate_exception
  .type __cxa_allocate_exception, @function

#! file-offset 0x4c220
#! rip-offset  0x4c220
#! capacity    672 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_allocate_exception:        #        0x4c220  0      
  pushq %r12                      #  1     0x4c220  3      
  leal 0x60(%rdi), %r12d          #  2     0x4c223  4      
  pushq %rbx                      #  3     0x4c227  2      
  movl %r12d, %edi                #  4     0x4c229  3      
  subl $0x8, %esp                 #  5     0x4c22c  3      
  addq %r15, %rsp                 #  6     0x4c22f  3      
  nop                             #  7     0x4c232  1      
  callq .malloc                   #  8     0x4c233  5      
  movl %eax, %ebx                 #  9     0x4c238  2      
  testq %rbx, %rbx                #  10    0x4c23a  3      
  je .L_4c380                     #  11    0x4c23d  6      
  nop                             #  12    0x4c243  1      
  nop                             #  13    0x4c244  1      
.L_4c260:                         #        0x4c245  0      
  nop                             #  14    0x4c245  1      
  nop                             #  15    0x4c246  1      
  callq .__cxa_get_globals        #  16    0x4c247  5      
  movl %eax, %eax                 #  17    0x4c24c  2      
  movq %rbx, %rdi                 #  18    0x4c24e  3      
  movl $0x60, %edx                #  19    0x4c251  5      
  movl %eax, %eax                 #  20    0x4c256  2      
  addl $0x1, 0x4(%r15,%rax,1)     #  21    0x4c258  6      
  testb $0x1, %bl                 #  22    0x4c25e  3      
  jne .L_4c420                    #  23    0x4c261  6      
  testb $0x2, %dil                #  24    0x4c267  4      
  nop                             #  25    0x4c26b  1      
  jne .L_4c440                    #  26    0x4c26c  6      
  nop                             #  27    0x4c272  1      
  nop                             #  28    0x4c273  1      
.L_4c2c0:                         #        0x4c274  0      
  testb $0x4, %dil                #  29    0x4c274  4      
  jne .L_4c460                    #  30    0x4c278  6      
  nop                             #  31    0x4c27e  1      
  nop                             #  32    0x4c27f  1      
.L_4c2e0:                         #        0x4c280  0      
  movl %edx, %ecx                 #  33    0x4c280  2      
  xorl %eax, %eax                 #  34    0x4c282  2      
  shrl $0x3, %ecx                 #  35    0x4c284  3      
  testb $0x4, %dl                 #  36    0x4c287  3      
  movl %ecx, %ecx                 #  37    0x4c28a  2      
  movl %edi, %edi                 #  38    0x4c28c  2      
  leaq (%r15,%rdi,1), %rdi        #  39    0x4c28e  4      
  rep stosq %es:(%rdi)            #  40    0x4c292  4      
  movl %edi, %edi                 #  41    0x4c296  2      
  je .L_4c320                     #  42    0x4c298  6      
  nop                             #  43    0x4c29e  1      
  movl %edi, %edi                 #  44    0x4c29f  2      
  movl $0x0, (%r15,%rdi,1)        #  45    0x4c2a1  8      
  addq $0x4, %rdi                 #  46    0x4c2a9  4      
  nop                             #  47    0x4c2ad  1      
  nop                             #  48    0x4c2ae  1      
.L_4c320:                         #        0x4c2af  0      
  testb $0x2, %dl                 #  49    0x4c2af  3      
  je .L_4c340                     #  50    0x4c2b2  6      
  movl %edi, %edi                 #  51    0x4c2b8  2      
  movw $0x0, (%r15,%rdi,1)        #  52    0x4c2ba  7      
  addq $0x2, %rdi                 #  53    0x4c2c1  4      
  nop                             #  54    0x4c2c5  1      
.L_4c340:                         #        0x4c2c6  0      
  andl $0x1, %edx                 #  55    0x4c2c6  3      
  je .L_4c360                     #  56    0x4c2c9  6      
  movl %edi, %edi                 #  57    0x4c2cf  2      
  movb $0x0, (%r15,%rdi,1)        #  58    0x4c2d1  5      
  nop                             #  59    0x4c2d6  1      
  nop                             #  60    0x4c2d7  1      
.L_4c360:                         #        0x4c2d8  0      
  addl $0x8, %esp                 #  61    0x4c2d8  3      
  addq %r15, %rsp                 #  62    0x4c2db  3      
  leal 0x60(%rbx), %eax           #  63    0x4c2de  3      
  popq %rbx                       #  64    0x4c2e1  2      
  popq %r12                       #  65    0x4c2e3  3      
  popq %r11                       #  66    0x4c2e6  3      
  andl $0xffffffe0, %r11d         #  67    0x4c2e9  7      
  addq %r15, %r11                 #  68    0x4c2f0  3      
  jmpq %r11                       #  69    0x4c2f3  3      
  nop                             #  70    0x4c2f6  1      
.L_4c380:                         #        0x4c2f7  0      
  movl 0xffea523(%rip), %eax      #  71    0x4c2f7  6      
  xorl %ecx, %ecx                 #  72    0x4c2fd  2      
  cmpl $0x200, %r12d              #  73    0x4c2ff  7      
  movl %eax, %edx                 #  74    0x4c306  2      
  jbe .L_4c3e0                    #  75    0x4c308  6      
  nop                             #  76    0x4c30e  1      
.L_4c3a0:                         #        0x4c30f  0      
  nop                             #  77    0x4c30f  1      
  nop                             #  78    0x4c310  1      
  callq ._ZSt9terminatev          #  79    0x4c311  5      
.L_4c3c0:                         #        0x4c316  0      
  addl $0x1, %ecx                 #  80    0x4c316  3      
  cmpl $0x20, %ecx                #  81    0x4c319  3      
  je .L_4c3a0                     #  82    0x4c31c  6      
  shrl $0x1, %edx                 #  83    0x4c322  2      
  nop                             #  84    0x4c324  1      
  nop                             #  85    0x4c325  1      
.L_4c3e0:                         #        0x4c326  0      
  testb $0x1, %dl                 #  86    0x4c326  3      
  jne .L_4c3c0                    #  87    0x4c329  6      
  movl $0x1, %edx                 #  88    0x4c32f  5      
  shll %cl, %edx                  #  89    0x4c334  2      
  shll $0x9, %ecx                 #  90    0x4c336  3      
  orl %eax, %edx                  #  91    0x4c339  2      
  leal 0x10032820(%rcx), %ebx     #  92    0x4c33b  6      
  movl %edx, 0xffea4d9(%rip)      #  93    0x4c341  6      
  nop                             #  94    0x4c347  1      
  jmpq .L_4c260                   #  95    0x4c348  5      
  nop                             #  96    0x4c34d  1      
  nop                             #  97    0x4c34e  1      
.L_4c420:                         #        0x4c34f  0      
  leaq 0x1(%rbx), %rdi            #  98    0x4c34f  4      
  movl %ebx, %ebx                 #  99    0x4c353  2      
  movb $0x0, (%r15,%rbx,1)        #  100   0x4c355  5      
  movb $0x5f, %dl                 #  101   0x4c35a  2      
  testb $0x2, %dil                #  102   0x4c35c  4      
  je .L_4c2c0                     #  103   0x4c360  6      
  nop                             #  104   0x4c366  1      
.L_4c440:                         #        0x4c367  0      
  movl %edi, %edi                 #  105   0x4c367  2      
  movw $0x0, (%r15,%rdi,1)        #  106   0x4c369  7      
  addq $0x2, %rdi                 #  107   0x4c370  4      
  subl $0x2, %edx                 #  108   0x4c374  3      
  testb $0x4, %dil                #  109   0x4c377  4      
  je .L_4c2e0                     #  110   0x4c37b  6      
  nop                             #  111   0x4c381  1      
.L_4c460:                         #        0x4c382  0      
  movl %edi, %edi                 #  112   0x4c382  2      
  movl $0x0, (%r15,%rdi,1)        #  113   0x4c384  8      
  subl $0x4, %edx                 #  114   0x4c38c  3      
  addq $0x4, %rdi                 #  115   0x4c38f  4      
  jmpq .L_4c2e0                   #  116   0x4c393  5      
  nop                             #  117   0x4c398  1      
  cmpq $0xffffffffffffffff, %rdx  #  118   0x4c399  4      
  movl %eax, %edi                 #  119   0x4c39d  2      
  je .L_4c4a0                     #  120   0x4c39f  6      
  nop                             #  121   0x4c3a5  1      
  nop                             #  122   0x4c3a6  1      
  callq ._Unwind_Resume           #  123   0x4c3a7  5      
.L_4c4a0:                         #        0x4c3ac  0      
  nop                             #  124   0x4c3ac  1      
  nop                             #  125   0x4c3ad  1      
  callq .__cxa_call_unexpected    #  126   0x4c3ae  5      
                                                           
.size __cxa_allocate_exception, .-__cxa_allocate_exception

