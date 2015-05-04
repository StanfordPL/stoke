  .text
  .globl _ZSt19__throw_ios_failurePKc
  .type _ZSt19__throw_ios_failurePKc, @function

#! file-offset 0x4d0e0
#! rip-offset  0x4d0e0
#! capacity    256 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt19__throw_ios_failurePKc:           #        0x4d0e0  0      
  pushq %r12                             #  1     0x4d0e0  3      
  movl %edi, %esi                        #  2     0x4d0e3  2      
  pushq %rbx                             #  3     0x4d0e5  2      
  subl $0x18, %esp                       #  4     0x4d0e7  3      
  addq %r15, %rsp                        #  5     0x4d0ea  3      
  leal 0xf(%rsp), %edx                   #  6     0x4d0ed  4      
  movl %esp, %edi                        #  7     0x4d0f1  2      
  nop                                    #  8     0x4d0f3  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  9     0x4d0f4  5      
  movl $0x8, %edi                        #  10    0x4d0f9  5      
  nop                                    #  11    0x4d0fe  1      
  nop                                    #  12    0x4d0ff  1      
  callq .__cxa_allocate_exception        #  13    0x4d100  5      
  movl %eax, %r12d                       #  14    0x4d105  3      
  movl %esp, %esi                        #  15    0x4d108  2      
  movl %r12d, %edi                       #  16    0x4d10a  3      
  nop                                    #  17    0x4d10d  1      
  nop                                    #  18    0x4d10e  1      
  callq ._ZNSt8ios_base7failureC1ERKSs   #  19    0x4d10f  5      
  movl (%rsp), %edi                      #  20    0x4d114  3      
  subl $0xc, %edi                        #  21    0x4d117  3      
  cmpl $0x10031da0, %edi                 #  22    0x4d11a  6      
  jne .L_4d180                           #  23    0x4d120  6      
  nop                                    #  24    0x4d126  1      
  nop                                    #  25    0x4d127  1      
.L_4d160:                                #        0x4d128  0      
  movl $0x4e2c0, %edx                    #  26    0x4d128  5      
  movl $0x10021178, %esi                 #  27    0x4d12d  5      
  movl %r12d, %edi                       #  28    0x4d132  3      
  nop                                    #  29    0x4d135  1      
  callq .__cxa_throw                     #  30    0x4d136  5      
.L_4d180:                                #        0x4d13b  0      
  movl %edi, %edi                        #  31    0x4d13b  2      
  movl 0x8(%r15,%rdi,1), %eax            #  32    0x4d13d  5      
  leal -0x1(%rax), %edx                  #  33    0x4d142  3      
  testl %eax, %eax                       #  34    0x4d145  2      
  movl %edi, %edi                        #  35    0x4d147  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  36    0x4d149  5      
  jg .L_4d160                            #  37    0x4d14e  6      
  leal 0xe(%rsp), %esi                   #  38    0x4d154  4      
  xchgw %ax, %ax                         #  39    0x4d158  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  40    0x4d15b  5      
  jmpq .L_4d160                          #  41    0x4d160  5      
  nop                                    #  42    0x4d165  1      
  nop                                    #  43    0x4d166  1      
  movl %eax, %edi                        #  44    0x4d167  2      
  nop                                    #  45    0x4d169  1      
  nop                                    #  46    0x4d16a  1      
  callq ._Unwind_Resume                  #  47    0x4d16b  5      
                                                                  
.size _ZSt19__throw_ios_failurePKc, .-_ZSt19__throw_ios_failurePKc

