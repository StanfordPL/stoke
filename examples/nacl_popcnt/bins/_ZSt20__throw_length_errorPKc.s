  .text
  .globl _ZSt20__throw_length_errorPKc
  .type _ZSt20__throw_length_errorPKc, @function

#! file-offset 0x4da00
#! rip-offset  0x4da00
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt20__throw_length_errorPKc:          #        0x4da00  0      
  pushq %r12                             #  1     0x4da00  3      
  movl %edi, %esi                        #  2     0x4da03  2      
  pushq %rbx                             #  3     0x4da05  2      
  subl $0x28, %esp                       #  4     0x4da07  3      
  addq %r15, %rsp                        #  5     0x4da0a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4da0d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4da11  4      
  movl %ebx, %edi                        #  8     0x4da15  2      
  nop                                    #  9     0x4da17  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4da18  5      
  movl $0x8, %edi                        #  11    0x4da1d  5      
  nop                                    #  12    0x4da22  1      
  nop                                    #  13    0x4da23  1      
  callq .__cxa_allocate_exception        #  14    0x4da24  5      
  movl %eax, %r12d                       #  15    0x4da29  3      
  movl %ebx, %esi                        #  16    0x4da2c  2      
  movl %r12d, %edi                       #  17    0x4da2e  3      
  nop                                    #  18    0x4da31  1      
  nop                                    #  19    0x4da32  1      
  callq ._ZNSt12length_errorC1ERKSs      #  20    0x4da33  5      
  movl 0x10(%rsp), %edi                  #  21    0x4da38  4      
  subl $0xc, %edi                        #  22    0x4da3c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4da3f  6      
  jne .L_4daa0                           #  24    0x4da45  6      
  xchgw %ax, %ax                         #  25    0x4da4b  3      
  nop                                    #  26    0x4da4e  1      
.L_4da80:                                #        0x4da4f  0      
  movl $0x4ce20, %edx                    #  27    0x4da4f  5      
  movl $0x10021074, %esi                 #  28    0x4da54  5      
  movl %r12d, %edi                       #  29    0x4da59  3      
  nop                                    #  30    0x4da5c  1      
  callq .__cxa_throw                     #  31    0x4da5d  5      
.L_4daa0:                                #        0x4da62  0      
  movl %edi, %edi                        #  32    0x4da62  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4da64  5      
  leal -0x1(%rax), %edx                  #  34    0x4da69  3      
  testl %eax, %eax                       #  35    0x4da6c  2      
  movl %edi, %edi                        #  36    0x4da6e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4da70  5      
  jg .L_4da80                            #  38    0x4da75  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4da7b  4      
  xchgw %ax, %ax                         #  40    0x4da7f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4da82  5      
  jmpq .L_4da80                          #  42    0x4da87  5      
  nop                                    #  43    0x4da8c  1      
  nop                                    #  44    0x4da8d  1      
  movl %r12d, %edi                       #  45    0x4da8e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4da91  4      
  nop                                    #  47    0x4da95  1      
  nop                                    #  48    0x4da96  1      
  callq .__cxa_free_exception            #  49    0x4da97  5      
  movl 0x8(%rsp), %eax                   #  50    0x4da9c  4      
  movl %ebx, %edi                        #  51    0x4daa0  2      
  movl %eax, %r12d                       #  52    0x4daa2  3      
  nop                                    #  53    0x4daa5  1      
  nop                                    #  54    0x4daa6  1      
  callq ._ZNSsD1Ev                       #  55    0x4daa7  5      
  movl %r12d, %eax                       #  56    0x4daac  3      
  nop                                    #  57    0x4daaf  1      
  nop                                    #  58    0x4dab0  1      
.L_4db40:                                #        0x4dab1  0      
  movl %eax, %edi                        #  59    0x4dab1  2      
  nop                                    #  60    0x4dab3  1      
  nop                                    #  61    0x4dab4  1      
  callq ._Unwind_Resume                  #  62    0x4dab5  5      
  jmpq .L_4db40                          #  63    0x4daba  5      
  nop                                    #  64    0x4dabf  1      
  nop                                    #  65    0x4dac0  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4dac1  4      
  jne .L_4db40                           #  67    0x4dac5  6      
  nop                                    #  68    0x4dacb  1      
  nop                                    #  69    0x4dacc  1      
  callq ._ZSt9terminatev                 #  70    0x4dacd  5      
                                                                  
.size _ZSt20__throw_length_errorPKc, .-_ZSt20__throw_length_errorPKc

