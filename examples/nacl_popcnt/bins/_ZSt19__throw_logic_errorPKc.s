  .text
  .globl _ZSt19__throw_logic_errorPKc
  .type _ZSt19__throw_logic_errorPKc, @function

#! file-offset 0x4de60
#! rip-offset  0x4de60
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt19__throw_logic_errorPKc:           #        0x4de60  0      
  pushq %r12                             #  1     0x4de60  3      
  movl %edi, %esi                        #  2     0x4de63  2      
  pushq %rbx                             #  3     0x4de65  2      
  subl $0x28, %esp                       #  4     0x4de67  3      
  addq %r15, %rsp                        #  5     0x4de6a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4de6d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4de71  4      
  movl %ebx, %edi                        #  8     0x4de75  2      
  nop                                    #  9     0x4de77  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4de78  5      
  movl $0x8, %edi                        #  11    0x4de7d  5      
  nop                                    #  12    0x4de82  1      
  nop                                    #  13    0x4de83  1      
  callq .__cxa_allocate_exception        #  14    0x4de84  5      
  movl %eax, %r12d                       #  15    0x4de89  3      
  movl %ebx, %esi                        #  16    0x4de8c  2      
  movl %r12d, %edi                       #  17    0x4de8e  3      
  nop                                    #  18    0x4de91  1      
  nop                                    #  19    0x4de92  1      
  callq ._ZNSt11logic_errorC1ERKSs       #  20    0x4de93  5      
  movl 0x10(%rsp), %edi                  #  21    0x4de98  4      
  subl $0xc, %edi                        #  22    0x4de9c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4de9f  6      
  jne .L_4df00                           #  24    0x4dea5  6      
  xchgw %ax, %ax                         #  25    0x4deab  3      
  nop                                    #  26    0x4deae  1      
.L_4dee0:                                #        0x4deaf  0      
  movl $0x4ed80, %edx                    #  27    0x4deaf  5      
  movl $0x10021200, %esi                 #  28    0x4deb4  5      
  movl %r12d, %edi                       #  29    0x4deb9  3      
  nop                                    #  30    0x4debc  1      
  callq .__cxa_throw                     #  31    0x4debd  5      
.L_4df00:                                #        0x4dec2  0      
  movl %edi, %edi                        #  32    0x4dec2  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4dec4  5      
  leal -0x1(%rax), %edx                  #  34    0x4dec9  3      
  testl %eax, %eax                       #  35    0x4decc  2      
  movl %edi, %edi                        #  36    0x4dece  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4ded0  5      
  jg .L_4dee0                            #  38    0x4ded5  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4dedb  4      
  xchgw %ax, %ax                         #  40    0x4dedf  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4dee2  5      
  jmpq .L_4dee0                          #  42    0x4dee7  5      
  nop                                    #  43    0x4deec  1      
  nop                                    #  44    0x4deed  1      
  movl %r12d, %edi                       #  45    0x4deee  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4def1  4      
  nop                                    #  47    0x4def5  1      
  nop                                    #  48    0x4def6  1      
  callq .__cxa_free_exception            #  49    0x4def7  5      
  movl 0x8(%rsp), %eax                   #  50    0x4defc  4      
  movl %ebx, %edi                        #  51    0x4df00  2      
  movl %eax, %r12d                       #  52    0x4df02  3      
  nop                                    #  53    0x4df05  1      
  nop                                    #  54    0x4df06  1      
  callq ._ZNSsD1Ev                       #  55    0x4df07  5      
  movl %r12d, %eax                       #  56    0x4df0c  3      
  nop                                    #  57    0x4df0f  1      
  nop                                    #  58    0x4df10  1      
.L_4dfa0:                                #        0x4df11  0      
  movl %eax, %edi                        #  59    0x4df11  2      
  nop                                    #  60    0x4df13  1      
  nop                                    #  61    0x4df14  1      
  callq ._Unwind_Resume                  #  62    0x4df15  5      
  jmpq .L_4dfa0                          #  63    0x4df1a  5      
  nop                                    #  64    0x4df1f  1      
  nop                                    #  65    0x4df20  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4df21  4      
  jne .L_4dfa0                           #  67    0x4df25  6      
  nop                                    #  68    0x4df2b  1      
  nop                                    #  69    0x4df2c  1      
  callq ._ZSt9terminatev                 #  70    0x4df2d  5      
                                                                  
.size _ZSt19__throw_logic_errorPKc, .-_ZSt19__throw_logic_errorPKc

