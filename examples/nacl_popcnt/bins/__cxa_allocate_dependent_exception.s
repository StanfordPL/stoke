  .text
  .globl __cxa_allocate_dependent_exception
  .type __cxa_allocate_dependent_exception, @function

#! file-offset 0x4c0a0
#! rip-offset  0x4c0a0
#! capacity    384 bytes

# Text                                #  Line  RIP      Bytes  
.__cxa_allocate_dependent_exception:  #        0x4c0a0  0      
  pushq %rbx                          #  1     0x4c0a0  2      
  movl $0x50, %edi                    #  2     0x4c0a2  5      
  nop                                 #  3     0x4c0a7  1      
  nop                                 #  4     0x4c0a8  1      
  callq .malloc                       #  5     0x4c0a9  5      
  movl %eax, %ebx                     #  6     0x4c0ae  2      
  testq %rbx, %rbx                    #  7     0x4c0b0  3      
  je .L_4c140                         #  8     0x4c0b3  6      
  nop                                 #  9     0x4c0b9  1      
  nop                                 #  10    0x4c0ba  1      
.L_4c0e0:                             #        0x4c0bb  0      
  nop                                 #  11    0x4c0bb  1      
  nop                                 #  12    0x4c0bc  1      
  callq .__cxa_get_globals            #  13    0x4c0bd  5      
  movl %eax, %eax                     #  14    0x4c0c2  2      
  movq %rbx, %rdi                     #  15    0x4c0c4  3      
  movl $0xa, %ecx                     #  16    0x4c0c7  5      
  movl %eax, %eax                     #  17    0x4c0cc  2      
  addl $0x1, 0x4(%r15,%rax,1)         #  18    0x4c0ce  6      
  xorl %eax, %eax                     #  19    0x4c0d4  2      
  movl %edi, %edi                     #  20    0x4c0d6  2      
  leaq (%r15,%rdi,1), %rdi            #  21    0x4c0d8  4      
  rep stosq %es:(%rdi)                #  22    0x4c0dc  4      
  movl %edi, %edi                     #  23    0x4c0e0  2      
  nop                                 #  24    0x4c0e2  1      
  movl %ebx, %eax                     #  25    0x4c0e3  2      
  popq %rbx                           #  26    0x4c0e5  2      
  popq %r11                           #  27    0x4c0e7  3      
  andl $0xffffffe0, %r11d             #  28    0x4c0ea  7      
  addq %r15, %r11                     #  29    0x4c0f1  3      
  jmpq %r11                           #  30    0x4c0f4  3      
  xchgw %ax, %ax                      #  31    0x4c0f7  3      
  nop                                 #  32    0x4c0fa  1      
.L_4c140:                             #        0x4c0fb  0      
  movl 0xffe66ff(%rip), %edx          #  33    0x4c0fb  6      
  xorl %ecx, %ecx                     #  34    0x4c101  2      
  movl %edx, %eax                     #  35    0x4c103  2      
  jmpq .L_4c180                       #  36    0x4c105  5      
  nop                                 #  37    0x4c10a  1      
  nop                                 #  38    0x4c10b  1      
.L_4c160:                             #        0x4c10c  0      
  addl $0x1, %ecx                     #  39    0x4c10c  3      
  cmpl $0x20, %ecx                    #  40    0x4c10f  3      
  je .L_4c1c0                         #  41    0x4c112  6      
  shrl $0x1, %eax                     #  42    0x4c118  2      
  nop                                 #  43    0x4c11a  1      
  nop                                 #  44    0x4c11b  1      
.L_4c180:                             #        0x4c11c  0      
  testb $0x1, %al                     #  45    0x4c11c  2      
  jne .L_4c160                        #  46    0x4c11e  6      
  movl $0x1, %eax                     #  47    0x4c124  5      
  shll %cl, %eax                      #  48    0x4c129  2      
  leal (%rcx,%rcx,4), %ecx            #  49    0x4c12b  3      
  orl %edx, %eax                      #  50    0x4c12e  2      
  shll $0x4, %ecx                     #  51    0x4c130  3      
  movl %eax, 0xffe66c7(%rip)          #  52    0x4c133  6      
  leal 0x10031e00(%rcx), %ebx         #  53    0x4c139  6      
  nop                                 #  54    0x4c13f  1      
  jmpq .L_4c0e0                       #  55    0x4c140  5      
  nop                                 #  56    0x4c145  1      
  nop                                 #  57    0x4c146  1      
.L_4c1c0:                             #        0x4c147  0      
  nop                                 #  58    0x4c147  1      
  nop                                 #  59    0x4c148  1      
  callq ._ZSt9terminatev              #  60    0x4c149  5      
  cmpq $0xffffffffffffffff, %rdx      #  61    0x4c14e  4      
  movl %eax, %edi                     #  62    0x4c152  2      
  je .L_4c200                         #  63    0x4c154  6      
  nop                                 #  64    0x4c15a  1      
  nop                                 #  65    0x4c15b  1      
  callq ._Unwind_Resume               #  66    0x4c15c  5      
.L_4c200:                             #        0x4c161  0      
  nop                                 #  67    0x4c161  1      
  nop                                 #  68    0x4c162  1      
  callq .__cxa_call_unexpected        #  69    0x4c163  5      
                                                               
.size __cxa_allocate_dependent_exception, .-__cxa_allocate_dependent_exception

