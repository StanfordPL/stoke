  .text
  .globl _ZSt19__throw_logic_errorPKc
  .type _ZSt19__throw_logic_errorPKc, @function

#! file-offset 0x4de40
#! rip-offset  0x4de40
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt19__throw_logic_errorPKc:           #        0x4de40  0      
  pushq %r12                             #  1     0x4de40  3      
  movl %edi, %esi                        #  2     0x4de43  2      
  pushq %rbx                             #  3     0x4de45  2      
  subl $0x28, %esp                       #  4     0x4de47  3      
  addq %r15, %rsp                        #  5     0x4de4a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4de4d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4de51  4      
  movl %ebx, %edi                        #  8     0x4de55  2      
  nop                                    #  9     0x4de57  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4de58  5      
  movl $0x8, %edi                        #  11    0x4de5d  5      
  nop                                    #  12    0x4de62  1      
  nop                                    #  13    0x4de63  1      
  callq .__cxa_allocate_exception        #  14    0x4de64  5      
  movl %eax, %r12d                       #  15    0x4de69  3      
  movl %ebx, %esi                        #  16    0x4de6c  2      
  movl %r12d, %edi                       #  17    0x4de6e  3      
  nop                                    #  18    0x4de71  1      
  nop                                    #  19    0x4de72  1      
  callq ._ZNSt11logic_errorC1ERKSs       #  20    0x4de73  5      
  movl 0x10(%rsp), %edi                  #  21    0x4de78  4      
  subl $0xc, %edi                        #  22    0x4de7c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4de7f  6      
  jne .L_4dee0                           #  24    0x4de85  6      
  xchgw %ax, %ax                         #  25    0x4de8b  3      
  nop                                    #  26    0x4de8e  1      
.L_4dec0:                                #        0x4de8f  0      
  movl $0x4ed60, %edx                    #  27    0x4de8f  5      
  movl $0x10021200, %esi                 #  28    0x4de94  5      
  movl %r12d, %edi                       #  29    0x4de99  3      
  nop                                    #  30    0x4de9c  1      
  callq .__cxa_throw                     #  31    0x4de9d  5      
.L_4dee0:                                #        0x4dea2  0      
  movl %edi, %edi                        #  32    0x4dea2  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4dea4  5      
  leal -0x1(%rax), %edx                  #  34    0x4dea9  3      
  testl %eax, %eax                       #  35    0x4deac  2      
  movl %edi, %edi                        #  36    0x4deae  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4deb0  5      
  jg .L_4dec0                            #  38    0x4deb5  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4debb  4      
  xchgw %ax, %ax                         #  40    0x4debf  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4dec2  5      
  jmpq .L_4dec0                          #  42    0x4dec7  5      
  nop                                    #  43    0x4decc  1      
  nop                                    #  44    0x4decd  1      
  movl %r12d, %edi                       #  45    0x4dece  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4ded1  4      
  nop                                    #  47    0x4ded5  1      
  nop                                    #  48    0x4ded6  1      
  callq .__cxa_free_exception            #  49    0x4ded7  5      
  movl 0x8(%rsp), %eax                   #  50    0x4dedc  4      
  movl %ebx, %edi                        #  51    0x4dee0  2      
  movl %eax, %r12d                       #  52    0x4dee2  3      
  nop                                    #  53    0x4dee5  1      
  nop                                    #  54    0x4dee6  1      
  callq ._ZNSsD1Ev                       #  55    0x4dee7  5      
  movl %r12d, %eax                       #  56    0x4deec  3      
  nop                                    #  57    0x4deef  1      
  nop                                    #  58    0x4def0  1      
.L_4df80:                                #        0x4def1  0      
  movl %eax, %edi                        #  59    0x4def1  2      
  nop                                    #  60    0x4def3  1      
  nop                                    #  61    0x4def4  1      
  callq ._Unwind_Resume                  #  62    0x4def5  5      
  jmpq .L_4df80                          #  63    0x4defa  5      
  nop                                    #  64    0x4deff  1      
  nop                                    #  65    0x4df00  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4df01  4      
  jne .L_4df80                           #  67    0x4df05  6      
  nop                                    #  68    0x4df0b  1      
  nop                                    #  69    0x4df0c  1      
  callq ._ZSt9terminatev                 #  70    0x4df0d  5      
                                                                  
.size _ZSt19__throw_logic_errorPKc, .-_ZSt19__throw_logic_errorPKc

