  .text
  .globl _ZSt22__throw_overflow_errorPKc
  .type _ZSt22__throw_overflow_errorPKc, @function

#! file-offset 0x4d380
#! rip-offset  0x4d380
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt22__throw_overflow_errorPKc:        #        0x4d380  0      
  pushq %r12                             #  1     0x4d380  3      
  movl %edi, %esi                        #  2     0x4d383  2      
  pushq %rbx                             #  3     0x4d385  2      
  subl $0x28, %esp                       #  4     0x4d387  3      
  addq %r15, %rsp                        #  5     0x4d38a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d38d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d391  4      
  movl %ebx, %edi                        #  8     0x4d395  2      
  nop                                    #  9     0x4d397  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d398  5      
  movl $0x8, %edi                        #  11    0x4d39d  5      
  nop                                    #  12    0x4d3a2  1      
  nop                                    #  13    0x4d3a3  1      
  callq .__cxa_allocate_exception        #  14    0x4d3a4  5      
  movl %eax, %r12d                       #  15    0x4d3a9  3      
  movl %ebx, %esi                        #  16    0x4d3ac  2      
  movl %r12d, %edi                       #  17    0x4d3ae  3      
  nop                                    #  18    0x4d3b1  1      
  nop                                    #  19    0x4d3b2  1      
  callq ._ZNSt14overflow_errorC1ERKSs    #  20    0x4d3b3  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d3b8  4      
  subl $0xc, %edi                        #  22    0x4d3bc  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d3bf  6      
  jne .L_4d420                           #  24    0x4d3c5  6      
  xchgw %ax, %ax                         #  25    0x4d3cb  3      
  nop                                    #  26    0x4d3ce  1      
.L_4d400:                                #        0x4d3cf  0      
  movl $0x4ccc0, %edx                    #  27    0x4d3cf  5      
  movl $0x10020fc4, %esi                 #  28    0x4d3d4  5      
  movl %r12d, %edi                       #  29    0x4d3d9  3      
  nop                                    #  30    0x4d3dc  1      
  callq .__cxa_throw                     #  31    0x4d3dd  5      
.L_4d420:                                #        0x4d3e2  0      
  movl %edi, %edi                        #  32    0x4d3e2  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d3e4  5      
  leal -0x1(%rax), %edx                  #  34    0x4d3e9  3      
  testl %eax, %eax                       #  35    0x4d3ec  2      
  movl %edi, %edi                        #  36    0x4d3ee  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d3f0  5      
  jg .L_4d400                            #  38    0x4d3f5  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d3fb  4      
  xchgw %ax, %ax                         #  40    0x4d3ff  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d402  5      
  jmpq .L_4d400                          #  42    0x4d407  5      
  nop                                    #  43    0x4d40c  1      
  nop                                    #  44    0x4d40d  1      
  movl %r12d, %edi                       #  45    0x4d40e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d411  4      
  nop                                    #  47    0x4d415  1      
  nop                                    #  48    0x4d416  1      
  callq .__cxa_free_exception            #  49    0x4d417  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d41c  4      
  movl %ebx, %edi                        #  51    0x4d420  2      
  movl %eax, %r12d                       #  52    0x4d422  3      
  nop                                    #  53    0x4d425  1      
  nop                                    #  54    0x4d426  1      
  callq ._ZNSsD1Ev                       #  55    0x4d427  5      
  movl %r12d, %eax                       #  56    0x4d42c  3      
  nop                                    #  57    0x4d42f  1      
  nop                                    #  58    0x4d430  1      
.L_4d4c0:                                #        0x4d431  0      
  movl %eax, %edi                        #  59    0x4d431  2      
  nop                                    #  60    0x4d433  1      
  nop                                    #  61    0x4d434  1      
  callq ._Unwind_Resume                  #  62    0x4d435  5      
  jmpq .L_4d4c0                          #  63    0x4d43a  5      
  nop                                    #  64    0x4d43f  1      
  nop                                    #  65    0x4d440  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d441  4      
  jne .L_4d4c0                           #  67    0x4d445  6      
  nop                                    #  68    0x4d44b  1      
  nop                                    #  69    0x4d44c  1      
  callq ._ZSt9terminatev                 #  70    0x4d44d  5      
                                                                  
.size _ZSt22__throw_overflow_errorPKc, .-_ZSt22__throw_overflow_errorPKc

