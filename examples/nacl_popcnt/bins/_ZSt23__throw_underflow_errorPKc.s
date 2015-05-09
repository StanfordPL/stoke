  .text
  .globl _ZSt23__throw_underflow_errorPKc
  .type _ZSt23__throw_underflow_errorPKc, @function

#! file-offset 0x4d140
#! rip-offset  0x4d140
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt23__throw_underflow_errorPKc:       #        0x4d140  0      
  pushq %r12                             #  1     0x4d140  3      
  movl %edi, %esi                        #  2     0x4d143  2      
  pushq %rbx                             #  3     0x4d145  2      
  subl $0x28, %esp                       #  4     0x4d147  3      
  addq %r15, %rsp                        #  5     0x4d14a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d14d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d151  4      
  movl %ebx, %edi                        #  8     0x4d155  2      
  nop                                    #  9     0x4d157  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d158  5      
  movl $0x8, %edi                        #  11    0x4d15d  5      
  nop                                    #  12    0x4d162  1      
  nop                                    #  13    0x4d163  1      
  callq .__cxa_allocate_exception        #  14    0x4d164  5      
  movl %eax, %r12d                       #  15    0x4d169  3      
  movl %ebx, %esi                        #  16    0x4d16c  2      
  movl %r12d, %edi                       #  17    0x4d16e  3      
  nop                                    #  18    0x4d171  1      
  nop                                    #  19    0x4d172  1      
  callq ._ZNSt15underflow_errorC1ERKSs   #  20    0x4d173  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d178  4      
  subl $0xc, %edi                        #  22    0x4d17c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d17f  6      
  jne .L_4d1e0                           #  24    0x4d185  6      
  xchgw %ax, %ax                         #  25    0x4d18b  3      
  nop                                    #  26    0x4d18e  1      
.L_4d1c0:                                #        0x4d18f  0      
  movl $0x4cc00, %edx                    #  27    0x4d18f  5      
  movl $0x10020f78, %esi                 #  28    0x4d194  5      
  movl %r12d, %edi                       #  29    0x4d199  3      
  nop                                    #  30    0x4d19c  1      
  callq .__cxa_throw                     #  31    0x4d19d  5      
.L_4d1e0:                                #        0x4d1a2  0      
  movl %edi, %edi                        #  32    0x4d1a2  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d1a4  5      
  leal -0x1(%rax), %edx                  #  34    0x4d1a9  3      
  testl %eax, %eax                       #  35    0x4d1ac  2      
  movl %edi, %edi                        #  36    0x4d1ae  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d1b0  5      
  jg .L_4d1c0                            #  38    0x4d1b5  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d1bb  4      
  xchgw %ax, %ax                         #  40    0x4d1bf  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d1c2  5      
  jmpq .L_4d1c0                          #  42    0x4d1c7  5      
  nop                                    #  43    0x4d1cc  1      
  nop                                    #  44    0x4d1cd  1      
  movl %r12d, %edi                       #  45    0x4d1ce  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d1d1  4      
  nop                                    #  47    0x4d1d5  1      
  nop                                    #  48    0x4d1d6  1      
  callq .__cxa_free_exception            #  49    0x4d1d7  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d1dc  4      
  movl %ebx, %edi                        #  51    0x4d1e0  2      
  movl %eax, %r12d                       #  52    0x4d1e2  3      
  nop                                    #  53    0x4d1e5  1      
  nop                                    #  54    0x4d1e6  1      
  callq ._ZNSsD1Ev                       #  55    0x4d1e7  5      
  movl %r12d, %eax                       #  56    0x4d1ec  3      
  nop                                    #  57    0x4d1ef  1      
  nop                                    #  58    0x4d1f0  1      
.L_4d280:                                #        0x4d1f1  0      
  movl %eax, %edi                        #  59    0x4d1f1  2      
  nop                                    #  60    0x4d1f3  1      
  nop                                    #  61    0x4d1f4  1      
  callq ._Unwind_Resume                  #  62    0x4d1f5  5      
  jmpq .L_4d280                          #  63    0x4d1fa  5      
  nop                                    #  64    0x4d1ff  1      
  nop                                    #  65    0x4d200  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d201  4      
  jne .L_4d280                           #  67    0x4d205  6      
  nop                                    #  68    0x4d20b  1      
  nop                                    #  69    0x4d20c  1      
  callq ._ZSt9terminatev                 #  70    0x4d20d  5      
                                                                  
.size _ZSt23__throw_underflow_errorPKc, .-_ZSt23__throw_underflow_errorPKc

