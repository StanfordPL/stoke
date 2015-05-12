  .text
  .globl _ZSt20__throw_out_of_rangePKc
  .type _ZSt20__throw_out_of_rangePKc, @function

#! file-offset 0x4d7e0
#! rip-offset  0x4d7e0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt20__throw_out_of_rangePKc:          #        0x4d7e0  0      
  pushq %r12                             #  1     0x4d7e0  3      
  movl %edi, %esi                        #  2     0x4d7e3  2      
  pushq %rbx                             #  3     0x4d7e5  2      
  subl $0x28, %esp                       #  4     0x4d7e7  3      
  addq %r15, %rsp                        #  5     0x4d7ea  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d7ed  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d7f1  4      
  movl %ebx, %edi                        #  8     0x4d7f5  2      
  nop                                    #  9     0x4d7f7  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d7f8  5      
  movl $0x8, %edi                        #  11    0x4d7fd  5      
  nop                                    #  12    0x4d802  1      
  nop                                    #  13    0x4d803  1      
  callq .__cxa_allocate_exception        #  14    0x4d804  5      
  movl %eax, %r12d                       #  15    0x4d809  3      
  movl %ebx, %esi                        #  16    0x4d80c  2      
  movl %r12d, %edi                       #  17    0x4d80e  3      
  nop                                    #  18    0x4d811  1      
  nop                                    #  19    0x4d812  1      
  callq ._ZNSt12out_of_rangeC1ERKSs      #  20    0x4d813  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d818  4      
  subl $0xc, %edi                        #  22    0x4d81c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d81f  6      
  jne .L_4d880                           #  24    0x4d825  6      
  xchgw %ax, %ax                         #  25    0x4d82b  3      
  nop                                    #  26    0x4d82e  1      
.L_4d860:                                #        0x4d82f  0      
  movl $0x4cd40, %edx                    #  27    0x4d82f  5      
  movl $0x10021034, %esi                 #  28    0x4d834  5      
  movl %r12d, %edi                       #  29    0x4d839  3      
  nop                                    #  30    0x4d83c  1      
  callq .__cxa_throw                     #  31    0x4d83d  5      
.L_4d880:                                #        0x4d842  0      
  movl %edi, %edi                        #  32    0x4d842  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d844  5      
  leal -0x1(%rax), %edx                  #  34    0x4d849  3      
  testl %eax, %eax                       #  35    0x4d84c  2      
  movl %edi, %edi                        #  36    0x4d84e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d850  5      
  jg .L_4d860                            #  38    0x4d855  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d85b  4      
  xchgw %ax, %ax                         #  40    0x4d85f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d862  5      
  jmpq .L_4d860                          #  42    0x4d867  5      
  nop                                    #  43    0x4d86c  1      
  nop                                    #  44    0x4d86d  1      
  movl %r12d, %edi                       #  45    0x4d86e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d871  4      
  nop                                    #  47    0x4d875  1      
  nop                                    #  48    0x4d876  1      
  callq .__cxa_free_exception            #  49    0x4d877  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d87c  4      
  movl %ebx, %edi                        #  51    0x4d880  2      
  movl %eax, %r12d                       #  52    0x4d882  3      
  nop                                    #  53    0x4d885  1      
  nop                                    #  54    0x4d886  1      
  callq ._ZNSsD1Ev                       #  55    0x4d887  5      
  movl %r12d, %eax                       #  56    0x4d88c  3      
  nop                                    #  57    0x4d88f  1      
  nop                                    #  58    0x4d890  1      
.L_4d920:                                #        0x4d891  0      
  movl %eax, %edi                        #  59    0x4d891  2      
  nop                                    #  60    0x4d893  1      
  nop                                    #  61    0x4d894  1      
  callq ._Unwind_Resume                  #  62    0x4d895  5      
  jmpq .L_4d920                          #  63    0x4d89a  5      
  nop                                    #  64    0x4d89f  1      
  nop                                    #  65    0x4d8a0  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d8a1  4      
  jne .L_4d920                           #  67    0x4d8a5  6      
  nop                                    #  68    0x4d8ab  1      
  nop                                    #  69    0x4d8ac  1      
  callq ._ZSt9terminatev                 #  70    0x4d8ad  5      
                                                                  
.size _ZSt20__throw_out_of_rangePKc, .-_ZSt20__throw_out_of_rangePKc

