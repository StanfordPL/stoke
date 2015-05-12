  .text
  .globl _ZSt22__throw_overflow_errorPKc
  .type _ZSt22__throw_overflow_errorPKc, @function

#! file-offset 0x4d300
#! rip-offset  0x4d300
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt22__throw_overflow_errorPKc:        #        0x4d300  0      
  pushq %r12                             #  1     0x4d300  3      
  movl %edi, %esi                        #  2     0x4d303  2      
  pushq %rbx                             #  3     0x4d305  2      
  subl $0x28, %esp                       #  4     0x4d307  3      
  addq %r15, %rsp                        #  5     0x4d30a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d30d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d311  4      
  movl %ebx, %edi                        #  8     0x4d315  2      
  nop                                    #  9     0x4d317  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d318  5      
  movl $0x8, %edi                        #  11    0x4d31d  5      
  nop                                    #  12    0x4d322  1      
  nop                                    #  13    0x4d323  1      
  callq .__cxa_allocate_exception        #  14    0x4d324  5      
  movl %eax, %r12d                       #  15    0x4d329  3      
  movl %ebx, %esi                        #  16    0x4d32c  2      
  movl %r12d, %edi                       #  17    0x4d32e  3      
  nop                                    #  18    0x4d331  1      
  nop                                    #  19    0x4d332  1      
  callq ._ZNSt14overflow_errorC1ERKSs    #  20    0x4d333  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d338  4      
  subl $0xc, %edi                        #  22    0x4d33c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d33f  6      
  jne .L_4d3a0                           #  24    0x4d345  6      
  xchgw %ax, %ax                         #  25    0x4d34b  3      
  nop                                    #  26    0x4d34e  1      
.L_4d380:                                #        0x4d34f  0      
  movl $0x4cc40, %edx                    #  27    0x4d34f  5      
  movl $0x10020fc4, %esi                 #  28    0x4d354  5      
  movl %r12d, %edi                       #  29    0x4d359  3      
  nop                                    #  30    0x4d35c  1      
  callq .__cxa_throw                     #  31    0x4d35d  5      
.L_4d3a0:                                #        0x4d362  0      
  movl %edi, %edi                        #  32    0x4d362  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d364  5      
  leal -0x1(%rax), %edx                  #  34    0x4d369  3      
  testl %eax, %eax                       #  35    0x4d36c  2      
  movl %edi, %edi                        #  36    0x4d36e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d370  5      
  jg .L_4d380                            #  38    0x4d375  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d37b  4      
  xchgw %ax, %ax                         #  40    0x4d37f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d382  5      
  jmpq .L_4d380                          #  42    0x4d387  5      
  nop                                    #  43    0x4d38c  1      
  nop                                    #  44    0x4d38d  1      
  movl %r12d, %edi                       #  45    0x4d38e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d391  4      
  nop                                    #  47    0x4d395  1      
  nop                                    #  48    0x4d396  1      
  callq .__cxa_free_exception            #  49    0x4d397  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d39c  4      
  movl %ebx, %edi                        #  51    0x4d3a0  2      
  movl %eax, %r12d                       #  52    0x4d3a2  3      
  nop                                    #  53    0x4d3a5  1      
  nop                                    #  54    0x4d3a6  1      
  callq ._ZNSsD1Ev                       #  55    0x4d3a7  5      
  movl %r12d, %eax                       #  56    0x4d3ac  3      
  nop                                    #  57    0x4d3af  1      
  nop                                    #  58    0x4d3b0  1      
.L_4d440:                                #        0x4d3b1  0      
  movl %eax, %edi                        #  59    0x4d3b1  2      
  nop                                    #  60    0x4d3b3  1      
  nop                                    #  61    0x4d3b4  1      
  callq ._Unwind_Resume                  #  62    0x4d3b5  5      
  jmpq .L_4d440                          #  63    0x4d3ba  5      
  nop                                    #  64    0x4d3bf  1      
  nop                                    #  65    0x4d3c0  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d3c1  4      
  jne .L_4d440                           #  67    0x4d3c5  6      
  nop                                    #  68    0x4d3cb  1      
  nop                                    #  69    0x4d3cc  1      
  callq ._ZSt9terminatev                 #  70    0x4d3cd  5      
                                                                  
.size _ZSt22__throw_overflow_errorPKc, .-_ZSt22__throw_overflow_errorPKc

