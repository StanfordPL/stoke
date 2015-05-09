  .text
  .globl __cxa_allocate_exception
  .type __cxa_allocate_exception, @function

#! file-offset 0x4c180
#! rip-offset  0x4c180
#! capacity    672 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_allocate_exception:        #        0x4c180  0      
  pushq %r12                      #  1     0x4c180  3      
  leal 0x60(%rdi), %r12d          #  2     0x4c183  4      
  pushq %rbx                      #  3     0x4c187  2      
  movl %r12d, %edi                #  4     0x4c189  3      
  subl $0x8, %esp                 #  5     0x4c18c  3      
  addq %r15, %rsp                 #  6     0x4c18f  3      
  nop                             #  7     0x4c192  1      
  callq .malloc                   #  8     0x4c193  5      
  movl %eax, %ebx                 #  9     0x4c198  2      
  testq %rbx, %rbx                #  10    0x4c19a  3      
  je .L_4c2e0                     #  11    0x4c19d  6      
  nop                             #  12    0x4c1a3  1      
  nop                             #  13    0x4c1a4  1      
.L_4c1c0:                         #        0x4c1a5  0      
  nop                             #  14    0x4c1a5  1      
  nop                             #  15    0x4c1a6  1      
  callq .__cxa_get_globals        #  16    0x4c1a7  5      
  movl %eax, %eax                 #  17    0x4c1ac  2      
  movq %rbx, %rdi                 #  18    0x4c1ae  3      
  movl $0x60, %edx                #  19    0x4c1b1  5      
  movl %eax, %eax                 #  20    0x4c1b6  2      
  addl $0x1, 0x4(%r15,%rax,1)     #  21    0x4c1b8  6      
  testb $0x1, %bl                 #  22    0x4c1be  3      
  jne .L_4c380                    #  23    0x4c1c1  6      
  testb $0x2, %dil                #  24    0x4c1c7  4      
  nop                             #  25    0x4c1cb  1      
  jne .L_4c3a0                    #  26    0x4c1cc  6      
  nop                             #  27    0x4c1d2  1      
  nop                             #  28    0x4c1d3  1      
.L_4c220:                         #        0x4c1d4  0      
  testb $0x4, %dil                #  29    0x4c1d4  4      
  jne .L_4c3c0                    #  30    0x4c1d8  6      
  nop                             #  31    0x4c1de  1      
  nop                             #  32    0x4c1df  1      
.L_4c240:                         #        0x4c1e0  0      
  movl %edx, %ecx                 #  33    0x4c1e0  2      
  xorl %eax, %eax                 #  34    0x4c1e2  2      
  shrl $0x3, %ecx                 #  35    0x4c1e4  3      
  testb $0x4, %dl                 #  36    0x4c1e7  3      
  movl %ecx, %ecx                 #  37    0x4c1ea  2      
  movl %edi, %edi                 #  38    0x4c1ec  2      
  leaq (%r15,%rdi,1), %rdi        #  39    0x4c1ee  4      
  rep stosq %es:(%rdi)            #  40    0x4c1f2  4      
  movl %edi, %edi                 #  41    0x4c1f6  2      
  je .L_4c280                     #  42    0x4c1f8  6      
  nop                             #  43    0x4c1fe  1      
  movl %edi, %edi                 #  44    0x4c1ff  2      
  movl $0x0, (%r15,%rdi,1)        #  45    0x4c201  8      
  addq $0x4, %rdi                 #  46    0x4c209  4      
  nop                             #  47    0x4c20d  1      
  nop                             #  48    0x4c20e  1      
.L_4c280:                         #        0x4c20f  0      
  testb $0x2, %dl                 #  49    0x4c20f  3      
  je .L_4c2a0                     #  50    0x4c212  6      
  movl %edi, %edi                 #  51    0x4c218  2      
  movw $0x0, (%r15,%rdi,1)        #  52    0x4c21a  7      
  addq $0x2, %rdi                 #  53    0x4c221  4      
  nop                             #  54    0x4c225  1      
.L_4c2a0:                         #        0x4c226  0      
  andl $0x1, %edx                 #  55    0x4c226  3      
  je .L_4c2c0                     #  56    0x4c229  6      
  movl %edi, %edi                 #  57    0x4c22f  2      
  movb $0x0, (%r15,%rdi,1)        #  58    0x4c231  5      
  nop                             #  59    0x4c236  1      
  nop                             #  60    0x4c237  1      
.L_4c2c0:                         #        0x4c238  0      
  addl $0x8, %esp                 #  61    0x4c238  3      
  addq %r15, %rsp                 #  62    0x4c23b  3      
  leal 0x60(%rbx), %eax           #  63    0x4c23e  3      
  popq %rbx                       #  64    0x4c241  2      
  popq %r12                       #  65    0x4c243  3      
  popq %r11                       #  66    0x4c246  3      
  andl $0xffffffe0, %r11d         #  67    0x4c249  7      
  addq %r15, %r11                 #  68    0x4c250  3      
  jmpq %r11                       #  69    0x4c253  3      
  nop                             #  70    0x4c256  1      
.L_4c2e0:                         #        0x4c257  0      
  movl 0xffea5c3(%rip), %eax      #  71    0x4c257  6      
  xorl %ecx, %ecx                 #  72    0x4c25d  2      
  cmpl $0x200, %r12d              #  73    0x4c25f  7      
  movl %eax, %edx                 #  74    0x4c266  2      
  jbe .L_4c340                    #  75    0x4c268  6      
  nop                             #  76    0x4c26e  1      
.L_4c300:                         #        0x4c26f  0      
  nop                             #  77    0x4c26f  1      
  nop                             #  78    0x4c270  1      
  callq ._ZSt9terminatev          #  79    0x4c271  5      
.L_4c320:                         #        0x4c276  0      
  addl $0x1, %ecx                 #  80    0x4c276  3      
  cmpl $0x20, %ecx                #  81    0x4c279  3      
  je .L_4c300                     #  82    0x4c27c  6      
  shrl $0x1, %edx                 #  83    0x4c282  2      
  nop                             #  84    0x4c284  1      
  nop                             #  85    0x4c285  1      
.L_4c340:                         #        0x4c286  0      
  testb $0x1, %dl                 #  86    0x4c286  3      
  jne .L_4c320                    #  87    0x4c289  6      
  movl $0x1, %edx                 #  88    0x4c28f  5      
  shll %cl, %edx                  #  89    0x4c294  2      
  shll $0x9, %ecx                 #  90    0x4c296  3      
  orl %eax, %edx                  #  91    0x4c299  2      
  leal 0x10032820(%rcx), %ebx     #  92    0x4c29b  6      
  movl %edx, 0xffea579(%rip)      #  93    0x4c2a1  6      
  nop                             #  94    0x4c2a7  1      
  jmpq .L_4c1c0                   #  95    0x4c2a8  5      
  nop                             #  96    0x4c2ad  1      
  nop                             #  97    0x4c2ae  1      
.L_4c380:                         #        0x4c2af  0      
  leaq 0x1(%rbx), %rdi            #  98    0x4c2af  4      
  movl %ebx, %ebx                 #  99    0x4c2b3  2      
  movb $0x0, (%r15,%rbx,1)        #  100   0x4c2b5  5      
  movb $0x5f, %dl                 #  101   0x4c2ba  2      
  testb $0x2, %dil                #  102   0x4c2bc  4      
  je .L_4c220                     #  103   0x4c2c0  6      
  nop                             #  104   0x4c2c6  1      
.L_4c3a0:                         #        0x4c2c7  0      
  movl %edi, %edi                 #  105   0x4c2c7  2      
  movw $0x0, (%r15,%rdi,1)        #  106   0x4c2c9  7      
  addq $0x2, %rdi                 #  107   0x4c2d0  4      
  subl $0x2, %edx                 #  108   0x4c2d4  3      
  testb $0x4, %dil                #  109   0x4c2d7  4      
  je .L_4c240                     #  110   0x4c2db  6      
  nop                             #  111   0x4c2e1  1      
.L_4c3c0:                         #        0x4c2e2  0      
  movl %edi, %edi                 #  112   0x4c2e2  2      
  movl $0x0, (%r15,%rdi,1)        #  113   0x4c2e4  8      
  subl $0x4, %edx                 #  114   0x4c2ec  3      
  addq $0x4, %rdi                 #  115   0x4c2ef  4      
  jmpq .L_4c240                   #  116   0x4c2f3  5      
  nop                             #  117   0x4c2f8  1      
  cmpq $0xffffffffffffffff, %rdx  #  118   0x4c2f9  4      
  movl %eax, %edi                 #  119   0x4c2fd  2      
  je .L_4c400                     #  120   0x4c2ff  6      
  nop                             #  121   0x4c305  1      
  nop                             #  122   0x4c306  1      
  callq ._Unwind_Resume           #  123   0x4c307  5      
.L_4c400:                         #        0x4c30c  0      
  nop                             #  124   0x4c30c  1      
  nop                             #  125   0x4c30d  1      
  callq .__cxa_call_unexpected    #  126   0x4c30e  5      
                                                           
.size __cxa_allocate_exception, .-__cxa_allocate_exception

