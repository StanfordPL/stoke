  .text
  .globl _ZSt20__throw_domain_errorPKc
  .type _ZSt20__throw_domain_errorPKc, @function

#! file-offset 0x4dca0
#! rip-offset  0x4dca0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt20__throw_domain_errorPKc:          #        0x4dca0  0      
  pushq %r12                             #  1     0x4dca0  3      
  movl %edi, %esi                        #  2     0x4dca3  2      
  pushq %rbx                             #  3     0x4dca5  2      
  subl $0x28, %esp                       #  4     0x4dca7  3      
  addq %r15, %rsp                        #  5     0x4dcaa  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4dcad  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4dcb1  4      
  movl %ebx, %edi                        #  8     0x4dcb5  2      
  nop                                    #  9     0x4dcb7  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4dcb8  5      
  movl $0x8, %edi                        #  11    0x4dcbd  5      
  nop                                    #  12    0x4dcc2  1      
  nop                                    #  13    0x4dcc3  1      
  callq .__cxa_allocate_exception        #  14    0x4dcc4  5      
  movl %eax, %r12d                       #  15    0x4dcc9  3      
  movl %ebx, %esi                        #  16    0x4dccc  2      
  movl %r12d, %edi                       #  17    0x4dcce  3      
  nop                                    #  18    0x4dcd1  1      
  nop                                    #  19    0x4dcd2  1      
  callq ._ZNSt12domain_errorC1ERKSs      #  20    0x4dcd3  5      
  movl 0x10(%rsp), %edi                  #  21    0x4dcd8  4      
  subl $0xc, %edi                        #  22    0x4dcdc  3      
  cmpl $0x10031da0, %edi                 #  23    0x4dcdf  6      
  jne .L_4dd40                           #  24    0x4dce5  6      
  xchgw %ax, %ax                         #  25    0x4dceb  3      
  nop                                    #  26    0x4dcee  1      
.L_4dd20:                                #        0x4dcef  0      
  movl $0x4ce40, %edx                    #  27    0x4dcef  5      
  movl $0x100210f4, %esi                 #  28    0x4dcf4  5      
  movl %r12d, %edi                       #  29    0x4dcf9  3      
  nop                                    #  30    0x4dcfc  1      
  callq .__cxa_throw                     #  31    0x4dcfd  5      
.L_4dd40:                                #        0x4dd02  0      
  movl %edi, %edi                        #  32    0x4dd02  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4dd04  5      
  leal -0x1(%rax), %edx                  #  34    0x4dd09  3      
  testl %eax, %eax                       #  35    0x4dd0c  2      
  movl %edi, %edi                        #  36    0x4dd0e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4dd10  5      
  jg .L_4dd20                            #  38    0x4dd15  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4dd1b  4      
  xchgw %ax, %ax                         #  40    0x4dd1f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4dd22  5      
  jmpq .L_4dd20                          #  42    0x4dd27  5      
  nop                                    #  43    0x4dd2c  1      
  nop                                    #  44    0x4dd2d  1      
  movl %r12d, %edi                       #  45    0x4dd2e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4dd31  4      
  nop                                    #  47    0x4dd35  1      
  nop                                    #  48    0x4dd36  1      
  callq .__cxa_free_exception            #  49    0x4dd37  5      
  movl 0x8(%rsp), %eax                   #  50    0x4dd3c  4      
  movl %ebx, %edi                        #  51    0x4dd40  2      
  movl %eax, %r12d                       #  52    0x4dd42  3      
  nop                                    #  53    0x4dd45  1      
  nop                                    #  54    0x4dd46  1      
  callq ._ZNSsD1Ev                       #  55    0x4dd47  5      
  movl %r12d, %eax                       #  56    0x4dd4c  3      
  nop                                    #  57    0x4dd4f  1      
  nop                                    #  58    0x4dd50  1      
.L_4dde0:                                #        0x4dd51  0      
  movl %eax, %edi                        #  59    0x4dd51  2      
  nop                                    #  60    0x4dd53  1      
  nop                                    #  61    0x4dd54  1      
  callq ._Unwind_Resume                  #  62    0x4dd55  5      
  jmpq .L_4dde0                          #  63    0x4dd5a  5      
  nop                                    #  64    0x4dd5f  1      
  nop                                    #  65    0x4dd60  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4dd61  4      
  jne .L_4dde0                           #  67    0x4dd65  6      
  nop                                    #  68    0x4dd6b  1      
  nop                                    #  69    0x4dd6c  1      
  callq ._ZSt9terminatev                 #  70    0x4dd6d  5      
                                                                  
.size _ZSt20__throw_domain_errorPKc, .-_ZSt20__throw_domain_errorPKc

