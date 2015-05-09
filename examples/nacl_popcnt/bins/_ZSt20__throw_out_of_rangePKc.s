  .text
  .globl _ZSt20__throw_out_of_rangePKc
  .type _ZSt20__throw_out_of_rangePKc, @function

#! file-offset 0x4d7c0
#! rip-offset  0x4d7c0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt20__throw_out_of_rangePKc:          #        0x4d7c0  0      
  pushq %r12                             #  1     0x4d7c0  3      
  movl %edi, %esi                        #  2     0x4d7c3  2      
  pushq %rbx                             #  3     0x4d7c5  2      
  subl $0x28, %esp                       #  4     0x4d7c7  3      
  addq %r15, %rsp                        #  5     0x4d7ca  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d7cd  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d7d1  4      
  movl %ebx, %edi                        #  8     0x4d7d5  2      
  nop                                    #  9     0x4d7d7  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d7d8  5      
  movl $0x8, %edi                        #  11    0x4d7dd  5      
  nop                                    #  12    0x4d7e2  1      
  nop                                    #  13    0x4d7e3  1      
  callq .__cxa_allocate_exception        #  14    0x4d7e4  5      
  movl %eax, %r12d                       #  15    0x4d7e9  3      
  movl %ebx, %esi                        #  16    0x4d7ec  2      
  movl %r12d, %edi                       #  17    0x4d7ee  3      
  nop                                    #  18    0x4d7f1  1      
  nop                                    #  19    0x4d7f2  1      
  callq ._ZNSt12out_of_rangeC1ERKSs      #  20    0x4d7f3  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d7f8  4      
  subl $0xc, %edi                        #  22    0x4d7fc  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d7ff  6      
  jne .L_4d860                           #  24    0x4d805  6      
  xchgw %ax, %ax                         #  25    0x4d80b  3      
  nop                                    #  26    0x4d80e  1      
.L_4d840:                                #        0x4d80f  0      
  movl $0x4cd20, %edx                    #  27    0x4d80f  5      
  movl $0x10021034, %esi                 #  28    0x4d814  5      
  movl %r12d, %edi                       #  29    0x4d819  3      
  nop                                    #  30    0x4d81c  1      
  callq .__cxa_throw                     #  31    0x4d81d  5      
.L_4d860:                                #        0x4d822  0      
  movl %edi, %edi                        #  32    0x4d822  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d824  5      
  leal -0x1(%rax), %edx                  #  34    0x4d829  3      
  testl %eax, %eax                       #  35    0x4d82c  2      
  movl %edi, %edi                        #  36    0x4d82e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d830  5      
  jg .L_4d840                            #  38    0x4d835  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d83b  4      
  xchgw %ax, %ax                         #  40    0x4d83f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d842  5      
  jmpq .L_4d840                          #  42    0x4d847  5      
  nop                                    #  43    0x4d84c  1      
  nop                                    #  44    0x4d84d  1      
  movl %r12d, %edi                       #  45    0x4d84e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d851  4      
  nop                                    #  47    0x4d855  1      
  nop                                    #  48    0x4d856  1      
  callq .__cxa_free_exception            #  49    0x4d857  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d85c  4      
  movl %ebx, %edi                        #  51    0x4d860  2      
  movl %eax, %r12d                       #  52    0x4d862  3      
  nop                                    #  53    0x4d865  1      
  nop                                    #  54    0x4d866  1      
  callq ._ZNSsD1Ev                       #  55    0x4d867  5      
  movl %r12d, %eax                       #  56    0x4d86c  3      
  nop                                    #  57    0x4d86f  1      
  nop                                    #  58    0x4d870  1      
.L_4d900:                                #        0x4d871  0      
  movl %eax, %edi                        #  59    0x4d871  2      
  nop                                    #  60    0x4d873  1      
  nop                                    #  61    0x4d874  1      
  callq ._Unwind_Resume                  #  62    0x4d875  5      
  jmpq .L_4d900                          #  63    0x4d87a  5      
  nop                                    #  64    0x4d87f  1      
  nop                                    #  65    0x4d880  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d881  4      
  jne .L_4d900                           #  67    0x4d885  6      
  nop                                    #  68    0x4d88b  1      
  nop                                    #  69    0x4d88c  1      
  callq ._ZSt9terminatev                 #  70    0x4d88d  5      
                                                                  
.size _ZSt20__throw_out_of_rangePKc, .-_ZSt20__throw_out_of_rangePKc

