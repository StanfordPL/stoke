  .text
  .globl _ZSt19__throw_ios_failurePKc
  .type _ZSt19__throw_ios_failurePKc, @function

#! file-offset 0x4d040
#! rip-offset  0x4d040
#! capacity    256 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt19__throw_ios_failurePKc:           #        0x4d040  0      
  pushq %r12                             #  1     0x4d040  3      
  movl %edi, %esi                        #  2     0x4d043  2      
  pushq %rbx                             #  3     0x4d045  2      
  subl $0x18, %esp                       #  4     0x4d047  3      
  addq %r15, %rsp                        #  5     0x4d04a  3      
  leal 0xf(%rsp), %edx                   #  6     0x4d04d  4      
  movl %esp, %edi                        #  7     0x4d051  2      
  nop                                    #  8     0x4d053  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  9     0x4d054  5      
  movl $0x8, %edi                        #  10    0x4d059  5      
  nop                                    #  11    0x4d05e  1      
  nop                                    #  12    0x4d05f  1      
  callq .__cxa_allocate_exception        #  13    0x4d060  5      
  movl %eax, %r12d                       #  14    0x4d065  3      
  movl %esp, %esi                        #  15    0x4d068  2      
  movl %r12d, %edi                       #  16    0x4d06a  3      
  nop                                    #  17    0x4d06d  1      
  nop                                    #  18    0x4d06e  1      
  callq ._ZNSt8ios_base7failureC1ERKSs   #  19    0x4d06f  5      
  movl (%rsp), %edi                      #  20    0x4d074  3      
  subl $0xc, %edi                        #  21    0x4d077  3      
  cmpl $0x10031da0, %edi                 #  22    0x4d07a  6      
  jne .L_4d0e0                           #  23    0x4d080  6      
  nop                                    #  24    0x4d086  1      
  nop                                    #  25    0x4d087  1      
.L_4d0c0:                                #        0x4d088  0      
  movl $0x4e220, %edx                    #  26    0x4d088  5      
  movl $0x10021178, %esi                 #  27    0x4d08d  5      
  movl %r12d, %edi                       #  28    0x4d092  3      
  nop                                    #  29    0x4d095  1      
  callq .__cxa_throw                     #  30    0x4d096  5      
.L_4d0e0:                                #        0x4d09b  0      
  movl %edi, %edi                        #  31    0x4d09b  2      
  movl 0x8(%r15,%rdi,1), %eax            #  32    0x4d09d  5      
  leal -0x1(%rax), %edx                  #  33    0x4d0a2  3      
  testl %eax, %eax                       #  34    0x4d0a5  2      
  movl %edi, %edi                        #  35    0x4d0a7  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  36    0x4d0a9  5      
  jg .L_4d0c0                            #  37    0x4d0ae  6      
  leal 0xe(%rsp), %esi                   #  38    0x4d0b4  4      
  xchgw %ax, %ax                         #  39    0x4d0b8  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  40    0x4d0bb  5      
  jmpq .L_4d0c0                          #  41    0x4d0c0  5      
  nop                                    #  42    0x4d0c5  1      
  nop                                    #  43    0x4d0c6  1      
  movl %eax, %edi                        #  44    0x4d0c7  2      
  nop                                    #  45    0x4d0c9  1      
  nop                                    #  46    0x4d0ca  1      
  callq ._Unwind_Resume                  #  47    0x4d0cb  5      
                                                                  
.size _ZSt19__throw_ios_failurePKc, .-_ZSt19__throw_ios_failurePKc

