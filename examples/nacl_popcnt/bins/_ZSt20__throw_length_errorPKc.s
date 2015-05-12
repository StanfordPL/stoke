  .text
  .globl _ZSt20__throw_length_errorPKc
  .type _ZSt20__throw_length_errorPKc, @function

#! file-offset 0x4d980
#! rip-offset  0x4d980
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt20__throw_length_errorPKc:          #        0x4d980  0      
  pushq %r12                             #  1     0x4d980  3      
  movl %edi, %esi                        #  2     0x4d983  2      
  pushq %rbx                             #  3     0x4d985  2      
  subl $0x28, %esp                       #  4     0x4d987  3      
  addq %r15, %rsp                        #  5     0x4d98a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d98d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d991  4      
  movl %ebx, %edi                        #  8     0x4d995  2      
  nop                                    #  9     0x4d997  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d998  5      
  movl $0x8, %edi                        #  11    0x4d99d  5      
  nop                                    #  12    0x4d9a2  1      
  nop                                    #  13    0x4d9a3  1      
  callq .__cxa_allocate_exception        #  14    0x4d9a4  5      
  movl %eax, %r12d                       #  15    0x4d9a9  3      
  movl %ebx, %esi                        #  16    0x4d9ac  2      
  movl %r12d, %edi                       #  17    0x4d9ae  3      
  nop                                    #  18    0x4d9b1  1      
  nop                                    #  19    0x4d9b2  1      
  callq ._ZNSt12length_errorC1ERKSs      #  20    0x4d9b3  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d9b8  4      
  subl $0xc, %edi                        #  22    0x4d9bc  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d9bf  6      
  jne .L_4da20                           #  24    0x4d9c5  6      
  xchgw %ax, %ax                         #  25    0x4d9cb  3      
  nop                                    #  26    0x4d9ce  1      
.L_4da00:                                #        0x4d9cf  0      
  movl $0x4cda0, %edx                    #  27    0x4d9cf  5      
  movl $0x10021074, %esi                 #  28    0x4d9d4  5      
  movl %r12d, %edi                       #  29    0x4d9d9  3      
  nop                                    #  30    0x4d9dc  1      
  callq .__cxa_throw                     #  31    0x4d9dd  5      
.L_4da20:                                #        0x4d9e2  0      
  movl %edi, %edi                        #  32    0x4d9e2  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d9e4  5      
  leal -0x1(%rax), %edx                  #  34    0x4d9e9  3      
  testl %eax, %eax                       #  35    0x4d9ec  2      
  movl %edi, %edi                        #  36    0x4d9ee  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d9f0  5      
  jg .L_4da00                            #  38    0x4d9f5  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d9fb  4      
  xchgw %ax, %ax                         #  40    0x4d9ff  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4da02  5      
  jmpq .L_4da00                          #  42    0x4da07  5      
  nop                                    #  43    0x4da0c  1      
  nop                                    #  44    0x4da0d  1      
  movl %r12d, %edi                       #  45    0x4da0e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4da11  4      
  nop                                    #  47    0x4da15  1      
  nop                                    #  48    0x4da16  1      
  callq .__cxa_free_exception            #  49    0x4da17  5      
  movl 0x8(%rsp), %eax                   #  50    0x4da1c  4      
  movl %ebx, %edi                        #  51    0x4da20  2      
  movl %eax, %r12d                       #  52    0x4da22  3      
  nop                                    #  53    0x4da25  1      
  nop                                    #  54    0x4da26  1      
  callq ._ZNSsD1Ev                       #  55    0x4da27  5      
  movl %r12d, %eax                       #  56    0x4da2c  3      
  nop                                    #  57    0x4da2f  1      
  nop                                    #  58    0x4da30  1      
.L_4dac0:                                #        0x4da31  0      
  movl %eax, %edi                        #  59    0x4da31  2      
  nop                                    #  60    0x4da33  1      
  nop                                    #  61    0x4da34  1      
  callq ._Unwind_Resume                  #  62    0x4da35  5      
  jmpq .L_4dac0                          #  63    0x4da3a  5      
  nop                                    #  64    0x4da3f  1      
  nop                                    #  65    0x4da40  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4da41  4      
  jne .L_4dac0                           #  67    0x4da45  6      
  nop                                    #  68    0x4da4b  1      
  nop                                    #  69    0x4da4c  1      
  callq ._ZSt9terminatev                 #  70    0x4da4d  5      
                                                                  
.size _ZSt20__throw_length_errorPKc, .-_ZSt20__throw_length_errorPKc

