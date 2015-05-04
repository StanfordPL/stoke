  .text
  .globl _ZSt20__throw_out_of_rangePKc
  .type _ZSt20__throw_out_of_rangePKc, @function

#! file-offset 0x4d860
#! rip-offset  0x4d860
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt20__throw_out_of_rangePKc:          #        0x4d860  0      
  pushq %r12                             #  1     0x4d860  3      
  movl %edi, %esi                        #  2     0x4d863  2      
  pushq %rbx                             #  3     0x4d865  2      
  subl $0x28, %esp                       #  4     0x4d867  3      
  addq %r15, %rsp                        #  5     0x4d86a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d86d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d871  4      
  movl %ebx, %edi                        #  8     0x4d875  2      
  nop                                    #  9     0x4d877  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d878  5      
  movl $0x8, %edi                        #  11    0x4d87d  5      
  nop                                    #  12    0x4d882  1      
  nop                                    #  13    0x4d883  1      
  callq .__cxa_allocate_exception        #  14    0x4d884  5      
  movl %eax, %r12d                       #  15    0x4d889  3      
  movl %ebx, %esi                        #  16    0x4d88c  2      
  movl %r12d, %edi                       #  17    0x4d88e  3      
  nop                                    #  18    0x4d891  1      
  nop                                    #  19    0x4d892  1      
  callq ._ZNSt12out_of_rangeC1ERKSs      #  20    0x4d893  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d898  4      
  subl $0xc, %edi                        #  22    0x4d89c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d89f  6      
  jne .L_4d900                           #  24    0x4d8a5  6      
  xchgw %ax, %ax                         #  25    0x4d8ab  3      
  nop                                    #  26    0x4d8ae  1      
.L_4d8e0:                                #        0x4d8af  0      
  movl $0x4cdc0, %edx                    #  27    0x4d8af  5      
  movl $0x10021034, %esi                 #  28    0x4d8b4  5      
  movl %r12d, %edi                       #  29    0x4d8b9  3      
  nop                                    #  30    0x4d8bc  1      
  callq .__cxa_throw                     #  31    0x4d8bd  5      
.L_4d900:                                #        0x4d8c2  0      
  movl %edi, %edi                        #  32    0x4d8c2  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d8c4  5      
  leal -0x1(%rax), %edx                  #  34    0x4d8c9  3      
  testl %eax, %eax                       #  35    0x4d8cc  2      
  movl %edi, %edi                        #  36    0x4d8ce  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d8d0  5      
  jg .L_4d8e0                            #  38    0x4d8d5  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d8db  4      
  xchgw %ax, %ax                         #  40    0x4d8df  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d8e2  5      
  jmpq .L_4d8e0                          #  42    0x4d8e7  5      
  nop                                    #  43    0x4d8ec  1      
  nop                                    #  44    0x4d8ed  1      
  movl %r12d, %edi                       #  45    0x4d8ee  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d8f1  4      
  nop                                    #  47    0x4d8f5  1      
  nop                                    #  48    0x4d8f6  1      
  callq .__cxa_free_exception            #  49    0x4d8f7  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d8fc  4      
  movl %ebx, %edi                        #  51    0x4d900  2      
  movl %eax, %r12d                       #  52    0x4d902  3      
  nop                                    #  53    0x4d905  1      
  nop                                    #  54    0x4d906  1      
  callq ._ZNSsD1Ev                       #  55    0x4d907  5      
  movl %r12d, %eax                       #  56    0x4d90c  3      
  nop                                    #  57    0x4d90f  1      
  nop                                    #  58    0x4d910  1      
.L_4d9a0:                                #        0x4d911  0      
  movl %eax, %edi                        #  59    0x4d911  2      
  nop                                    #  60    0x4d913  1      
  nop                                    #  61    0x4d914  1      
  callq ._Unwind_Resume                  #  62    0x4d915  5      
  jmpq .L_4d9a0                          #  63    0x4d91a  5      
  nop                                    #  64    0x4d91f  1      
  nop                                    #  65    0x4d920  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d921  4      
  jne .L_4d9a0                           #  67    0x4d925  6      
  nop                                    #  68    0x4d92b  1      
  nop                                    #  69    0x4d92c  1      
  callq ._ZSt9terminatev                 #  70    0x4d92d  5      
                                                                  
.size _ZSt20__throw_out_of_rangePKc, .-_ZSt20__throw_out_of_rangePKc

