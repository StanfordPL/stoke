  .text
  .globl __cxa_allocate_dependent_exception
  .type __cxa_allocate_dependent_exception, @function

#! file-offset 0x4c020
#! rip-offset  0x4c020
#! capacity    384 bytes

# Text                                #  Line  RIP      Bytes  
.__cxa_allocate_dependent_exception:  #        0x4c020  0      
  pushq %rbx                          #  1     0x4c020  2      
  movl $0x50, %edi                    #  2     0x4c022  5      
  nop                                 #  3     0x4c027  1      
  nop                                 #  4     0x4c028  1      
  callq .malloc                       #  5     0x4c029  5      
  movl %eax, %ebx                     #  6     0x4c02e  2      
  testq %rbx, %rbx                    #  7     0x4c030  3      
  je .L_4c0c0                         #  8     0x4c033  6      
  nop                                 #  9     0x4c039  1      
  nop                                 #  10    0x4c03a  1      
.L_4c060:                             #        0x4c03b  0      
  nop                                 #  11    0x4c03b  1      
  nop                                 #  12    0x4c03c  1      
  callq .__cxa_get_globals            #  13    0x4c03d  5      
  movl %eax, %eax                     #  14    0x4c042  2      
  movq %rbx, %rdi                     #  15    0x4c044  3      
  movl $0xa, %ecx                     #  16    0x4c047  5      
  movl %eax, %eax                     #  17    0x4c04c  2      
  addl $0x1, 0x4(%r15,%rax,1)         #  18    0x4c04e  6      
  xorl %eax, %eax                     #  19    0x4c054  2      
  movl %edi, %edi                     #  20    0x4c056  2      
  leaq (%r15,%rdi,1), %rdi            #  21    0x4c058  4      
  rep stosq %es:(%rdi)                #  22    0x4c05c  4      
  movl %edi, %edi                     #  23    0x4c060  2      
  nop                                 #  24    0x4c062  1      
  movl %ebx, %eax                     #  25    0x4c063  2      
  popq %rbx                           #  26    0x4c065  2      
  popq %r11                           #  27    0x4c067  3      
  andl $0xffffffe0, %r11d             #  28    0x4c06a  7      
  addq %r15, %r11                     #  29    0x4c071  3      
  jmpq %r11                           #  30    0x4c074  3      
  xchgw %ax, %ax                      #  31    0x4c077  3      
  nop                                 #  32    0x4c07a  1      
.L_4c0c0:                             #        0x4c07b  0      
  movl 0xffe677f(%rip), %edx          #  33    0x4c07b  6      
  xorl %ecx, %ecx                     #  34    0x4c081  2      
  movl %edx, %eax                     #  35    0x4c083  2      
  jmpq .L_4c100                       #  36    0x4c085  5      
  nop                                 #  37    0x4c08a  1      
  nop                                 #  38    0x4c08b  1      
.L_4c0e0:                             #        0x4c08c  0      
  addl $0x1, %ecx                     #  39    0x4c08c  3      
  cmpl $0x20, %ecx                    #  40    0x4c08f  3      
  je .L_4c140                         #  41    0x4c092  6      
  shrl $0x1, %eax                     #  42    0x4c098  2      
  nop                                 #  43    0x4c09a  1      
  nop                                 #  44    0x4c09b  1      
.L_4c100:                             #        0x4c09c  0      
  testb $0x1, %al                     #  45    0x4c09c  2      
  jne .L_4c0e0                        #  46    0x4c09e  6      
  movl $0x1, %eax                     #  47    0x4c0a4  5      
  shll %cl, %eax                      #  48    0x4c0a9  2      
  leal (%rcx,%rcx,4), %ecx            #  49    0x4c0ab  3      
  orl %edx, %eax                      #  50    0x4c0ae  2      
  shll $0x4, %ecx                     #  51    0x4c0b0  3      
  movl %eax, 0xffe6747(%rip)          #  52    0x4c0b3  6      
  leal 0x10031e00(%rcx), %ebx         #  53    0x4c0b9  6      
  nop                                 #  54    0x4c0bf  1      
  jmpq .L_4c060                       #  55    0x4c0c0  5      
  nop                                 #  56    0x4c0c5  1      
  nop                                 #  57    0x4c0c6  1      
.L_4c140:                             #        0x4c0c7  0      
  nop                                 #  58    0x4c0c7  1      
  nop                                 #  59    0x4c0c8  1      
  callq ._ZSt9terminatev              #  60    0x4c0c9  5      
  cmpq $0xffffffffffffffff, %rdx      #  61    0x4c0ce  4      
  movl %eax, %edi                     #  62    0x4c0d2  2      
  je .L_4c180                         #  63    0x4c0d4  6      
  nop                                 #  64    0x4c0da  1      
  nop                                 #  65    0x4c0db  1      
  callq ._Unwind_Resume               #  66    0x4c0dc  5      
.L_4c180:                             #        0x4c0e1  0      
  nop                                 #  67    0x4c0e1  1      
  nop                                 #  68    0x4c0e2  1      
  callq .__cxa_call_unexpected        #  69    0x4c0e3  5      
                                                               
.size __cxa_allocate_dependent_exception, .-__cxa_allocate_dependent_exception

