  .text
  .globl _ZSt21__throw_runtime_errorPKc
  .type _ZSt21__throw_runtime_errorPKc, @function

#! file-offset 0x4d6c0
#! rip-offset  0x4d6c0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt21__throw_runtime_errorPKc:         #        0x4d6c0  0      
  pushq %r12                             #  1     0x4d6c0  3      
  movl %edi, %esi                        #  2     0x4d6c3  2      
  pushq %rbx                             #  3     0x4d6c5  2      
  subl $0x28, %esp                       #  4     0x4d6c7  3      
  addq %r15, %rsp                        #  5     0x4d6ca  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d6cd  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d6d1  4      
  movl %ebx, %edi                        #  8     0x4d6d5  2      
  nop                                    #  9     0x4d6d7  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d6d8  5      
  movl $0x8, %edi                        #  11    0x4d6dd  5      
  nop                                    #  12    0x4d6e2  1      
  nop                                    #  13    0x4d6e3  1      
  callq .__cxa_allocate_exception        #  14    0x4d6e4  5      
  movl %eax, %r12d                       #  15    0x4d6e9  3      
  movl %ebx, %esi                        #  16    0x4d6ec  2      
  movl %r12d, %edi                       #  17    0x4d6ee  3      
  nop                                    #  18    0x4d6f1  1      
  nop                                    #  19    0x4d6f2  1      
  callq ._ZNSt13runtime_errorC1ERKSs     #  20    0x4d6f3  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d6f8  4      
  subl $0xc, %edi                        #  22    0x4d6fc  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d6ff  6      
  jne .L_4d760                           #  24    0x4d705  6      
  xchgw %ax, %ax                         #  25    0x4d70b  3      
  nop                                    #  26    0x4d70e  1      
.L_4d740:                                #        0x4d70f  0      
  movl $0x4eba0, %edx                    #  27    0x4d70f  5      
  movl $0x100211e4, %esi                 #  28    0x4d714  5      
  movl %r12d, %edi                       #  29    0x4d719  3      
  nop                                    #  30    0x4d71c  1      
  callq .__cxa_throw                     #  31    0x4d71d  5      
.L_4d760:                                #        0x4d722  0      
  movl %edi, %edi                        #  32    0x4d722  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d724  5      
  leal -0x1(%rax), %edx                  #  34    0x4d729  3      
  testl %eax, %eax                       #  35    0x4d72c  2      
  movl %edi, %edi                        #  36    0x4d72e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d730  5      
  jg .L_4d740                            #  38    0x4d735  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d73b  4      
  xchgw %ax, %ax                         #  40    0x4d73f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d742  5      
  jmpq .L_4d740                          #  42    0x4d747  5      
  nop                                    #  43    0x4d74c  1      
  nop                                    #  44    0x4d74d  1      
  movl %r12d, %edi                       #  45    0x4d74e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d751  4      
  nop                                    #  47    0x4d755  1      
  nop                                    #  48    0x4d756  1      
  callq .__cxa_free_exception            #  49    0x4d757  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d75c  4      
  movl %ebx, %edi                        #  51    0x4d760  2      
  movl %eax, %r12d                       #  52    0x4d762  3      
  nop                                    #  53    0x4d765  1      
  nop                                    #  54    0x4d766  1      
  callq ._ZNSsD1Ev                       #  55    0x4d767  5      
  movl %r12d, %eax                       #  56    0x4d76c  3      
  nop                                    #  57    0x4d76f  1      
  nop                                    #  58    0x4d770  1      
.L_4d800:                                #        0x4d771  0      
  movl %eax, %edi                        #  59    0x4d771  2      
  nop                                    #  60    0x4d773  1      
  nop                                    #  61    0x4d774  1      
  callq ._Unwind_Resume                  #  62    0x4d775  5      
  jmpq .L_4d800                          #  63    0x4d77a  5      
  nop                                    #  64    0x4d77f  1      
  nop                                    #  65    0x4d780  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d781  4      
  jne .L_4d800                           #  67    0x4d785  6      
  nop                                    #  68    0x4d78b  1      
  nop                                    #  69    0x4d78c  1      
  callq ._ZSt9terminatev                 #  70    0x4d78d  5      
                                                                  
.size _ZSt21__throw_runtime_errorPKc, .-_ZSt21__throw_runtime_errorPKc

