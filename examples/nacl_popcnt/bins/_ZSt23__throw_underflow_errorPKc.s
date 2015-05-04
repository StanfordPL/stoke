  .text
  .globl _ZSt23__throw_underflow_errorPKc
  .type _ZSt23__throw_underflow_errorPKc, @function

#! file-offset 0x4d1e0
#! rip-offset  0x4d1e0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt23__throw_underflow_errorPKc:       #        0x4d1e0  0      
  pushq %r12                             #  1     0x4d1e0  3      
  movl %edi, %esi                        #  2     0x4d1e3  2      
  pushq %rbx                             #  3     0x4d1e5  2      
  subl $0x28, %esp                       #  4     0x4d1e7  3      
  addq %r15, %rsp                        #  5     0x4d1ea  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d1ed  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d1f1  4      
  movl %ebx, %edi                        #  8     0x4d1f5  2      
  nop                                    #  9     0x4d1f7  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d1f8  5      
  movl $0x8, %edi                        #  11    0x4d1fd  5      
  nop                                    #  12    0x4d202  1      
  nop                                    #  13    0x4d203  1      
  callq .__cxa_allocate_exception        #  14    0x4d204  5      
  movl %eax, %r12d                       #  15    0x4d209  3      
  movl %ebx, %esi                        #  16    0x4d20c  2      
  movl %r12d, %edi                       #  17    0x4d20e  3      
  nop                                    #  18    0x4d211  1      
  nop                                    #  19    0x4d212  1      
  callq ._ZNSt15underflow_errorC1ERKSs   #  20    0x4d213  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d218  4      
  subl $0xc, %edi                        #  22    0x4d21c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d21f  6      
  jne .L_4d280                           #  24    0x4d225  6      
  xchgw %ax, %ax                         #  25    0x4d22b  3      
  nop                                    #  26    0x4d22e  1      
.L_4d260:                                #        0x4d22f  0      
  movl $0x4cca0, %edx                    #  27    0x4d22f  5      
  movl $0x10020f78, %esi                 #  28    0x4d234  5      
  movl %r12d, %edi                       #  29    0x4d239  3      
  nop                                    #  30    0x4d23c  1      
  callq .__cxa_throw                     #  31    0x4d23d  5      
.L_4d280:                                #        0x4d242  0      
  movl %edi, %edi                        #  32    0x4d242  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d244  5      
  leal -0x1(%rax), %edx                  #  34    0x4d249  3      
  testl %eax, %eax                       #  35    0x4d24c  2      
  movl %edi, %edi                        #  36    0x4d24e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d250  5      
  jg .L_4d260                            #  38    0x4d255  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d25b  4      
  xchgw %ax, %ax                         #  40    0x4d25f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d262  5      
  jmpq .L_4d260                          #  42    0x4d267  5      
  nop                                    #  43    0x4d26c  1      
  nop                                    #  44    0x4d26d  1      
  movl %r12d, %edi                       #  45    0x4d26e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d271  4      
  nop                                    #  47    0x4d275  1      
  nop                                    #  48    0x4d276  1      
  callq .__cxa_free_exception            #  49    0x4d277  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d27c  4      
  movl %ebx, %edi                        #  51    0x4d280  2      
  movl %eax, %r12d                       #  52    0x4d282  3      
  nop                                    #  53    0x4d285  1      
  nop                                    #  54    0x4d286  1      
  callq ._ZNSsD1Ev                       #  55    0x4d287  5      
  movl %r12d, %eax                       #  56    0x4d28c  3      
  nop                                    #  57    0x4d28f  1      
  nop                                    #  58    0x4d290  1      
.L_4d320:                                #        0x4d291  0      
  movl %eax, %edi                        #  59    0x4d291  2      
  nop                                    #  60    0x4d293  1      
  nop                                    #  61    0x4d294  1      
  callq ._Unwind_Resume                  #  62    0x4d295  5      
  jmpq .L_4d320                          #  63    0x4d29a  5      
  nop                                    #  64    0x4d29f  1      
  nop                                    #  65    0x4d2a0  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d2a1  4      
  jne .L_4d320                           #  67    0x4d2a5  6      
  nop                                    #  68    0x4d2ab  1      
  nop                                    #  69    0x4d2ac  1      
  callq ._ZSt9terminatev                 #  70    0x4d2ad  5      
                                                                  
.size _ZSt23__throw_underflow_errorPKc, .-_ZSt23__throw_underflow_errorPKc

