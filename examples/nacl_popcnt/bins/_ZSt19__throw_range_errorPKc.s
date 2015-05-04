  .text
  .globl _ZSt19__throw_range_errorPKc
  .type _ZSt19__throw_range_errorPKc, @function

#! file-offset 0x4d520
#! rip-offset  0x4d520
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt19__throw_range_errorPKc:           #        0x4d520  0      
  pushq %r12                             #  1     0x4d520  3      
  movl %edi, %esi                        #  2     0x4d523  2      
  pushq %rbx                             #  3     0x4d525  2      
  subl $0x28, %esp                       #  4     0x4d527  3      
  addq %r15, %rsp                        #  5     0x4d52a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d52d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d531  4      
  movl %ebx, %edi                        #  8     0x4d535  2      
  nop                                    #  9     0x4d537  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d538  5      
  movl $0x8, %edi                        #  11    0x4d53d  5      
  nop                                    #  12    0x4d542  1      
  nop                                    #  13    0x4d543  1      
  callq .__cxa_allocate_exception        #  14    0x4d544  5      
  movl %eax, %r12d                       #  15    0x4d549  3      
  movl %ebx, %esi                        #  16    0x4d54c  2      
  movl %r12d, %edi                       #  17    0x4d54e  3      
  nop                                    #  18    0x4d551  1      
  nop                                    #  19    0x4d552  1      
  callq ._ZNSt11range_errorC1ERKSs       #  20    0x4d553  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d558  4      
  subl $0xc, %edi                        #  22    0x4d55c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d55f  6      
  jne .L_4d5c0                           #  24    0x4d565  6      
  xchgw %ax, %ax                         #  25    0x4d56b  3      
  nop                                    #  26    0x4d56e  1      
.L_4d5a0:                                #        0x4d56f  0      
  movl $0x4cce0, %edx                    #  27    0x4d56f  5      
  movl $0x10021004, %esi                 #  28    0x4d574  5      
  movl %r12d, %edi                       #  29    0x4d579  3      
  nop                                    #  30    0x4d57c  1      
  callq .__cxa_throw                     #  31    0x4d57d  5      
.L_4d5c0:                                #        0x4d582  0      
  movl %edi, %edi                        #  32    0x4d582  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d584  5      
  leal -0x1(%rax), %edx                  #  34    0x4d589  3      
  testl %eax, %eax                       #  35    0x4d58c  2      
  movl %edi, %edi                        #  36    0x4d58e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d590  5      
  jg .L_4d5a0                            #  38    0x4d595  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d59b  4      
  xchgw %ax, %ax                         #  40    0x4d59f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d5a2  5      
  jmpq .L_4d5a0                          #  42    0x4d5a7  5      
  nop                                    #  43    0x4d5ac  1      
  nop                                    #  44    0x4d5ad  1      
  movl %r12d, %edi                       #  45    0x4d5ae  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d5b1  4      
  nop                                    #  47    0x4d5b5  1      
  nop                                    #  48    0x4d5b6  1      
  callq .__cxa_free_exception            #  49    0x4d5b7  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d5bc  4      
  movl %ebx, %edi                        #  51    0x4d5c0  2      
  movl %eax, %r12d                       #  52    0x4d5c2  3      
  nop                                    #  53    0x4d5c5  1      
  nop                                    #  54    0x4d5c6  1      
  callq ._ZNSsD1Ev                       #  55    0x4d5c7  5      
  movl %r12d, %eax                       #  56    0x4d5cc  3      
  nop                                    #  57    0x4d5cf  1      
  nop                                    #  58    0x4d5d0  1      
.L_4d660:                                #        0x4d5d1  0      
  movl %eax, %edi                        #  59    0x4d5d1  2      
  nop                                    #  60    0x4d5d3  1      
  nop                                    #  61    0x4d5d4  1      
  callq ._Unwind_Resume                  #  62    0x4d5d5  5      
  jmpq .L_4d660                          #  63    0x4d5da  5      
  nop                                    #  64    0x4d5df  1      
  nop                                    #  65    0x4d5e0  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d5e1  4      
  jne .L_4d660                           #  67    0x4d5e5  6      
  nop                                    #  68    0x4d5eb  1      
  nop                                    #  69    0x4d5ec  1      
  callq ._ZSt9terminatev                 #  70    0x4d5ed  5      
                                                                  
.size _ZSt19__throw_range_errorPKc, .-_ZSt19__throw_range_errorPKc

