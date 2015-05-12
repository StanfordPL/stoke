  .text
  .globl _ZSt20__throw_domain_errorPKc
  .type _ZSt20__throw_domain_errorPKc, @function

#! file-offset 0x4dcc0
#! rip-offset  0x4dcc0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt20__throw_domain_errorPKc:          #        0x4dcc0  0      
  pushq %r12                             #  1     0x4dcc0  3      
  movl %edi, %esi                        #  2     0x4dcc3  2      
  pushq %rbx                             #  3     0x4dcc5  2      
  subl $0x28, %esp                       #  4     0x4dcc7  3      
  addq %r15, %rsp                        #  5     0x4dcca  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4dccd  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4dcd1  4      
  movl %ebx, %edi                        #  8     0x4dcd5  2      
  nop                                    #  9     0x4dcd7  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4dcd8  5      
  movl $0x8, %edi                        #  11    0x4dcdd  5      
  nop                                    #  12    0x4dce2  1      
  nop                                    #  13    0x4dce3  1      
  callq .__cxa_allocate_exception        #  14    0x4dce4  5      
  movl %eax, %r12d                       #  15    0x4dce9  3      
  movl %ebx, %esi                        #  16    0x4dcec  2      
  movl %r12d, %edi                       #  17    0x4dcee  3      
  nop                                    #  18    0x4dcf1  1      
  nop                                    #  19    0x4dcf2  1      
  callq ._ZNSt12domain_errorC1ERKSs      #  20    0x4dcf3  5      
  movl 0x10(%rsp), %edi                  #  21    0x4dcf8  4      
  subl $0xc, %edi                        #  22    0x4dcfc  3      
  cmpl $0x10031da0, %edi                 #  23    0x4dcff  6      
  jne .L_4dd60                           #  24    0x4dd05  6      
  xchgw %ax, %ax                         #  25    0x4dd0b  3      
  nop                                    #  26    0x4dd0e  1      
.L_4dd40:                                #        0x4dd0f  0      
  movl $0x4ce60, %edx                    #  27    0x4dd0f  5      
  movl $0x100210f4, %esi                 #  28    0x4dd14  5      
  movl %r12d, %edi                       #  29    0x4dd19  3      
  nop                                    #  30    0x4dd1c  1      
  callq .__cxa_throw                     #  31    0x4dd1d  5      
.L_4dd60:                                #        0x4dd22  0      
  movl %edi, %edi                        #  32    0x4dd22  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4dd24  5      
  leal -0x1(%rax), %edx                  #  34    0x4dd29  3      
  testl %eax, %eax                       #  35    0x4dd2c  2      
  movl %edi, %edi                        #  36    0x4dd2e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4dd30  5      
  jg .L_4dd40                            #  38    0x4dd35  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4dd3b  4      
  xchgw %ax, %ax                         #  40    0x4dd3f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4dd42  5      
  jmpq .L_4dd40                          #  42    0x4dd47  5      
  nop                                    #  43    0x4dd4c  1      
  nop                                    #  44    0x4dd4d  1      
  movl %r12d, %edi                       #  45    0x4dd4e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4dd51  4      
  nop                                    #  47    0x4dd55  1      
  nop                                    #  48    0x4dd56  1      
  callq .__cxa_free_exception            #  49    0x4dd57  5      
  movl 0x8(%rsp), %eax                   #  50    0x4dd5c  4      
  movl %ebx, %edi                        #  51    0x4dd60  2      
  movl %eax, %r12d                       #  52    0x4dd62  3      
  nop                                    #  53    0x4dd65  1      
  nop                                    #  54    0x4dd66  1      
  callq ._ZNSsD1Ev                       #  55    0x4dd67  5      
  movl %r12d, %eax                       #  56    0x4dd6c  3      
  nop                                    #  57    0x4dd6f  1      
  nop                                    #  58    0x4dd70  1      
.L_4de00:                                #        0x4dd71  0      
  movl %eax, %edi                        #  59    0x4dd71  2      
  nop                                    #  60    0x4dd73  1      
  nop                                    #  61    0x4dd74  1      
  callq ._Unwind_Resume                  #  62    0x4dd75  5      
  jmpq .L_4de00                          #  63    0x4dd7a  5      
  nop                                    #  64    0x4dd7f  1      
  nop                                    #  65    0x4dd80  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4dd81  4      
  jne .L_4de00                           #  67    0x4dd85  6      
  nop                                    #  68    0x4dd8b  1      
  nop                                    #  69    0x4dd8c  1      
  callq ._ZSt9terminatev                 #  70    0x4dd8d  5      
                                                                  
.size _ZSt20__throw_domain_errorPKc, .-_ZSt20__throw_domain_errorPKc

