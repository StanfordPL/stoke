  .text
  .globl __cxa_allocate_dependent_exception
  .type __cxa_allocate_dependent_exception, @function

#! file-offset 0x4c000
#! rip-offset  0x4c000
#! capacity    384 bytes

# Text                                #  Line  RIP      Bytes  
.__cxa_allocate_dependent_exception:  #        0x4c000  0      
  pushq %rbx                          #  1     0x4c000  2      
  movl $0x50, %edi                    #  2     0x4c002  5      
  nop                                 #  3     0x4c007  1      
  nop                                 #  4     0x4c008  1      
  callq .malloc                       #  5     0x4c009  5      
  movl %eax, %ebx                     #  6     0x4c00e  2      
  testq %rbx, %rbx                    #  7     0x4c010  3      
  je .L_4c0a0                         #  8     0x4c013  6      
  nop                                 #  9     0x4c019  1      
  nop                                 #  10    0x4c01a  1      
.L_4c040:                             #        0x4c01b  0      
  nop                                 #  11    0x4c01b  1      
  nop                                 #  12    0x4c01c  1      
  callq .__cxa_get_globals            #  13    0x4c01d  5      
  movl %eax, %eax                     #  14    0x4c022  2      
  movq %rbx, %rdi                     #  15    0x4c024  3      
  movl $0xa, %ecx                     #  16    0x4c027  5      
  movl %eax, %eax                     #  17    0x4c02c  2      
  addl $0x1, 0x4(%r15,%rax,1)         #  18    0x4c02e  6      
  xorl %eax, %eax                     #  19    0x4c034  2      
  movl %edi, %edi                     #  20    0x4c036  2      
  leaq (%r15,%rdi,1), %rdi            #  21    0x4c038  4      
  rep stosq %es:(%rdi)                #  22    0x4c03c  4      
  movl %edi, %edi                     #  23    0x4c040  2      
  nop                                 #  24    0x4c042  1      
  movl %ebx, %eax                     #  25    0x4c043  2      
  popq %rbx                           #  26    0x4c045  2      
  popq %r11                           #  27    0x4c047  3      
  andl $0xffffffe0, %r11d             #  28    0x4c04a  7      
  addq %r15, %r11                     #  29    0x4c051  3      
  jmpq %r11                           #  30    0x4c054  3      
  xchgw %ax, %ax                      #  31    0x4c057  3      
  nop                                 #  32    0x4c05a  1      
.L_4c0a0:                             #        0x4c05b  0      
  movl 0xffe679f(%rip), %edx          #  33    0x4c05b  6      
  xorl %ecx, %ecx                     #  34    0x4c061  2      
  movl %edx, %eax                     #  35    0x4c063  2      
  jmpq .L_4c0e0                       #  36    0x4c065  5      
  nop                                 #  37    0x4c06a  1      
  nop                                 #  38    0x4c06b  1      
.L_4c0c0:                             #        0x4c06c  0      
  addl $0x1, %ecx                     #  39    0x4c06c  3      
  cmpl $0x20, %ecx                    #  40    0x4c06f  3      
  je .L_4c120                         #  41    0x4c072  6      
  shrl $0x1, %eax                     #  42    0x4c078  2      
  nop                                 #  43    0x4c07a  1      
  nop                                 #  44    0x4c07b  1      
.L_4c0e0:                             #        0x4c07c  0      
  testb $0x1, %al                     #  45    0x4c07c  2      
  jne .L_4c0c0                        #  46    0x4c07e  6      
  movl $0x1, %eax                     #  47    0x4c084  5      
  shll %cl, %eax                      #  48    0x4c089  2      
  leal (%rcx,%rcx,4), %ecx            #  49    0x4c08b  3      
  orl %edx, %eax                      #  50    0x4c08e  2      
  shll $0x4, %ecx                     #  51    0x4c090  3      
  movl %eax, 0xffe6767(%rip)          #  52    0x4c093  6      
  leal 0x10031e00(%rcx), %ebx         #  53    0x4c099  6      
  nop                                 #  54    0x4c09f  1      
  jmpq .L_4c040                       #  55    0x4c0a0  5      
  nop                                 #  56    0x4c0a5  1      
  nop                                 #  57    0x4c0a6  1      
.L_4c120:                             #        0x4c0a7  0      
  nop                                 #  58    0x4c0a7  1      
  nop                                 #  59    0x4c0a8  1      
  callq ._ZSt9terminatev              #  60    0x4c0a9  5      
  cmpq $0xffffffffffffffff, %rdx      #  61    0x4c0ae  4      
  movl %eax, %edi                     #  62    0x4c0b2  2      
  je .L_4c160                         #  63    0x4c0b4  6      
  nop                                 #  64    0x4c0ba  1      
  nop                                 #  65    0x4c0bb  1      
  callq ._Unwind_Resume               #  66    0x4c0bc  5      
.L_4c160:                             #        0x4c0c1  0      
  nop                                 #  67    0x4c0c1  1      
  nop                                 #  68    0x4c0c2  1      
  callq .__cxa_call_unexpected        #  69    0x4c0c3  5      
                                                               
.size __cxa_allocate_dependent_exception, .-__cxa_allocate_dependent_exception

