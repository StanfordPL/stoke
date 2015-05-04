  .text
  .globl _ZSt19__throw_logic_errorPKc
  .type _ZSt19__throw_logic_errorPKc, @function

#! file-offset 0x4dee0
#! rip-offset  0x4dee0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt19__throw_logic_errorPKc:           #        0x4dee0  0      
  pushq %r12                             #  1     0x4dee0  3      
  movl %edi, %esi                        #  2     0x4dee3  2      
  pushq %rbx                             #  3     0x4dee5  2      
  subl $0x28, %esp                       #  4     0x4dee7  3      
  addq %r15, %rsp                        #  5     0x4deea  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4deed  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4def1  4      
  movl %ebx, %edi                        #  8     0x4def5  2      
  nop                                    #  9     0x4def7  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4def8  5      
  movl $0x8, %edi                        #  11    0x4defd  5      
  nop                                    #  12    0x4df02  1      
  nop                                    #  13    0x4df03  1      
  callq .__cxa_allocate_exception        #  14    0x4df04  5      
  movl %eax, %r12d                       #  15    0x4df09  3      
  movl %ebx, %esi                        #  16    0x4df0c  2      
  movl %r12d, %edi                       #  17    0x4df0e  3      
  nop                                    #  18    0x4df11  1      
  nop                                    #  19    0x4df12  1      
  callq ._ZNSt11logic_errorC1ERKSs       #  20    0x4df13  5      
  movl 0x10(%rsp), %edi                  #  21    0x4df18  4      
  subl $0xc, %edi                        #  22    0x4df1c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4df1f  6      
  jne .L_4df80                           #  24    0x4df25  6      
  xchgw %ax, %ax                         #  25    0x4df2b  3      
  nop                                    #  26    0x4df2e  1      
.L_4df60:                                #        0x4df2f  0      
  movl $0x4ee00, %edx                    #  27    0x4df2f  5      
  movl $0x10021200, %esi                 #  28    0x4df34  5      
  movl %r12d, %edi                       #  29    0x4df39  3      
  nop                                    #  30    0x4df3c  1      
  callq .__cxa_throw                     #  31    0x4df3d  5      
.L_4df80:                                #        0x4df42  0      
  movl %edi, %edi                        #  32    0x4df42  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4df44  5      
  leal -0x1(%rax), %edx                  #  34    0x4df49  3      
  testl %eax, %eax                       #  35    0x4df4c  2      
  movl %edi, %edi                        #  36    0x4df4e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4df50  5      
  jg .L_4df60                            #  38    0x4df55  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4df5b  4      
  xchgw %ax, %ax                         #  40    0x4df5f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4df62  5      
  jmpq .L_4df60                          #  42    0x4df67  5      
  nop                                    #  43    0x4df6c  1      
  nop                                    #  44    0x4df6d  1      
  movl %r12d, %edi                       #  45    0x4df6e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4df71  4      
  nop                                    #  47    0x4df75  1      
  nop                                    #  48    0x4df76  1      
  callq .__cxa_free_exception            #  49    0x4df77  5      
  movl 0x8(%rsp), %eax                   #  50    0x4df7c  4      
  movl %ebx, %edi                        #  51    0x4df80  2      
  movl %eax, %r12d                       #  52    0x4df82  3      
  nop                                    #  53    0x4df85  1      
  nop                                    #  54    0x4df86  1      
  callq ._ZNSsD1Ev                       #  55    0x4df87  5      
  movl %r12d, %eax                       #  56    0x4df8c  3      
  nop                                    #  57    0x4df8f  1      
  nop                                    #  58    0x4df90  1      
.L_4e020:                                #        0x4df91  0      
  movl %eax, %edi                        #  59    0x4df91  2      
  nop                                    #  60    0x4df93  1      
  nop                                    #  61    0x4df94  1      
  callq ._Unwind_Resume                  #  62    0x4df95  5      
  jmpq .L_4e020                          #  63    0x4df9a  5      
  nop                                    #  64    0x4df9f  1      
  nop                                    #  65    0x4dfa0  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4dfa1  4      
  jne .L_4e020                           #  67    0x4dfa5  6      
  nop                                    #  68    0x4dfab  1      
  nop                                    #  69    0x4dfac  1      
  callq ._ZSt9terminatev                 #  70    0x4dfad  5      
                                                                  
.size _ZSt19__throw_logic_errorPKc, .-_ZSt19__throw_logic_errorPKc

