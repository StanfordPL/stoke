  .text
  .globl _ZSt23__throw_underflow_errorPKc
  .type _ZSt23__throw_underflow_errorPKc, @function

#! file-offset 0x4d160
#! rip-offset  0x4d160
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt23__throw_underflow_errorPKc:       #        0x4d160  0      
  pushq %r12                             #  1     0x4d160  3      
  movl %edi, %esi                        #  2     0x4d163  2      
  pushq %rbx                             #  3     0x4d165  2      
  subl $0x28, %esp                       #  4     0x4d167  3      
  addq %r15, %rsp                        #  5     0x4d16a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d16d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d171  4      
  movl %ebx, %edi                        #  8     0x4d175  2      
  nop                                    #  9     0x4d177  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d178  5      
  movl $0x8, %edi                        #  11    0x4d17d  5      
  nop                                    #  12    0x4d182  1      
  nop                                    #  13    0x4d183  1      
  callq .__cxa_allocate_exception        #  14    0x4d184  5      
  movl %eax, %r12d                       #  15    0x4d189  3      
  movl %ebx, %esi                        #  16    0x4d18c  2      
  movl %r12d, %edi                       #  17    0x4d18e  3      
  nop                                    #  18    0x4d191  1      
  nop                                    #  19    0x4d192  1      
  callq ._ZNSt15underflow_errorC1ERKSs   #  20    0x4d193  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d198  4      
  subl $0xc, %edi                        #  22    0x4d19c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d19f  6      
  jne .L_4d200                           #  24    0x4d1a5  6      
  xchgw %ax, %ax                         #  25    0x4d1ab  3      
  nop                                    #  26    0x4d1ae  1      
.L_4d1e0:                                #        0x4d1af  0      
  movl $0x4cc20, %edx                    #  27    0x4d1af  5      
  movl $0x10020f78, %esi                 #  28    0x4d1b4  5      
  movl %r12d, %edi                       #  29    0x4d1b9  3      
  nop                                    #  30    0x4d1bc  1      
  callq .__cxa_throw                     #  31    0x4d1bd  5      
.L_4d200:                                #        0x4d1c2  0      
  movl %edi, %edi                        #  32    0x4d1c2  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d1c4  5      
  leal -0x1(%rax), %edx                  #  34    0x4d1c9  3      
  testl %eax, %eax                       #  35    0x4d1cc  2      
  movl %edi, %edi                        #  36    0x4d1ce  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d1d0  5      
  jg .L_4d1e0                            #  38    0x4d1d5  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d1db  4      
  xchgw %ax, %ax                         #  40    0x4d1df  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d1e2  5      
  jmpq .L_4d1e0                          #  42    0x4d1e7  5      
  nop                                    #  43    0x4d1ec  1      
  nop                                    #  44    0x4d1ed  1      
  movl %r12d, %edi                       #  45    0x4d1ee  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d1f1  4      
  nop                                    #  47    0x4d1f5  1      
  nop                                    #  48    0x4d1f6  1      
  callq .__cxa_free_exception            #  49    0x4d1f7  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d1fc  4      
  movl %ebx, %edi                        #  51    0x4d200  2      
  movl %eax, %r12d                       #  52    0x4d202  3      
  nop                                    #  53    0x4d205  1      
  nop                                    #  54    0x4d206  1      
  callq ._ZNSsD1Ev                       #  55    0x4d207  5      
  movl %r12d, %eax                       #  56    0x4d20c  3      
  nop                                    #  57    0x4d20f  1      
  nop                                    #  58    0x4d210  1      
.L_4d2a0:                                #        0x4d211  0      
  movl %eax, %edi                        #  59    0x4d211  2      
  nop                                    #  60    0x4d213  1      
  nop                                    #  61    0x4d214  1      
  callq ._Unwind_Resume                  #  62    0x4d215  5      
  jmpq .L_4d2a0                          #  63    0x4d21a  5      
  nop                                    #  64    0x4d21f  1      
  nop                                    #  65    0x4d220  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d221  4      
  jne .L_4d2a0                           #  67    0x4d225  6      
  nop                                    #  68    0x4d22b  1      
  nop                                    #  69    0x4d22c  1      
  callq ._ZSt9terminatev                 #  70    0x4d22d  5      
                                                                  
.size _ZSt23__throw_underflow_errorPKc, .-_ZSt23__throw_underflow_errorPKc

