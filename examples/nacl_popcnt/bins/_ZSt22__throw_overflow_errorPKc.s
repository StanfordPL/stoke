  .text
  .globl _ZSt22__throw_overflow_errorPKc
  .type _ZSt22__throw_overflow_errorPKc, @function

#! file-offset 0x4d2e0
#! rip-offset  0x4d2e0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt22__throw_overflow_errorPKc:        #        0x4d2e0  0      
  pushq %r12                             #  1     0x4d2e0  3      
  movl %edi, %esi                        #  2     0x4d2e3  2      
  pushq %rbx                             #  3     0x4d2e5  2      
  subl $0x28, %esp                       #  4     0x4d2e7  3      
  addq %r15, %rsp                        #  5     0x4d2ea  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d2ed  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d2f1  4      
  movl %ebx, %edi                        #  8     0x4d2f5  2      
  nop                                    #  9     0x4d2f7  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d2f8  5      
  movl $0x8, %edi                        #  11    0x4d2fd  5      
  nop                                    #  12    0x4d302  1      
  nop                                    #  13    0x4d303  1      
  callq .__cxa_allocate_exception        #  14    0x4d304  5      
  movl %eax, %r12d                       #  15    0x4d309  3      
  movl %ebx, %esi                        #  16    0x4d30c  2      
  movl %r12d, %edi                       #  17    0x4d30e  3      
  nop                                    #  18    0x4d311  1      
  nop                                    #  19    0x4d312  1      
  callq ._ZNSt14overflow_errorC1ERKSs    #  20    0x4d313  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d318  4      
  subl $0xc, %edi                        #  22    0x4d31c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d31f  6      
  jne .L_4d380                           #  24    0x4d325  6      
  xchgw %ax, %ax                         #  25    0x4d32b  3      
  nop                                    #  26    0x4d32e  1      
.L_4d360:                                #        0x4d32f  0      
  movl $0x4cc20, %edx                    #  27    0x4d32f  5      
  movl $0x10020fc4, %esi                 #  28    0x4d334  5      
  movl %r12d, %edi                       #  29    0x4d339  3      
  nop                                    #  30    0x4d33c  1      
  callq .__cxa_throw                     #  31    0x4d33d  5      
.L_4d380:                                #        0x4d342  0      
  movl %edi, %edi                        #  32    0x4d342  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d344  5      
  leal -0x1(%rax), %edx                  #  34    0x4d349  3      
  testl %eax, %eax                       #  35    0x4d34c  2      
  movl %edi, %edi                        #  36    0x4d34e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d350  5      
  jg .L_4d360                            #  38    0x4d355  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d35b  4      
  xchgw %ax, %ax                         #  40    0x4d35f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d362  5      
  jmpq .L_4d360                          #  42    0x4d367  5      
  nop                                    #  43    0x4d36c  1      
  nop                                    #  44    0x4d36d  1      
  movl %r12d, %edi                       #  45    0x4d36e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d371  4      
  nop                                    #  47    0x4d375  1      
  nop                                    #  48    0x4d376  1      
  callq .__cxa_free_exception            #  49    0x4d377  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d37c  4      
  movl %ebx, %edi                        #  51    0x4d380  2      
  movl %eax, %r12d                       #  52    0x4d382  3      
  nop                                    #  53    0x4d385  1      
  nop                                    #  54    0x4d386  1      
  callq ._ZNSsD1Ev                       #  55    0x4d387  5      
  movl %r12d, %eax                       #  56    0x4d38c  3      
  nop                                    #  57    0x4d38f  1      
  nop                                    #  58    0x4d390  1      
.L_4d420:                                #        0x4d391  0      
  movl %eax, %edi                        #  59    0x4d391  2      
  nop                                    #  60    0x4d393  1      
  nop                                    #  61    0x4d394  1      
  callq ._Unwind_Resume                  #  62    0x4d395  5      
  jmpq .L_4d420                          #  63    0x4d39a  5      
  nop                                    #  64    0x4d39f  1      
  nop                                    #  65    0x4d3a0  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d3a1  4      
  jne .L_4d420                           #  67    0x4d3a5  6      
  nop                                    #  68    0x4d3ab  1      
  nop                                    #  69    0x4d3ac  1      
  callq ._ZSt9terminatev                 #  70    0x4d3ad  5      
                                                                  
.size _ZSt22__throw_overflow_errorPKc, .-_ZSt22__throw_overflow_errorPKc

