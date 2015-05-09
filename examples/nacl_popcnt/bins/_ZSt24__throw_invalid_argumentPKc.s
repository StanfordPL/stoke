  .text
  .globl _ZSt24__throw_invalid_argumentPKc
  .type _ZSt24__throw_invalid_argumentPKc, @function

#! file-offset 0x4db00
#! rip-offset  0x4db00
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt24__throw_invalid_argumentPKc:      #        0x4db00  0      
  pushq %r12                             #  1     0x4db00  3      
  movl %edi, %esi                        #  2     0x4db03  2      
  pushq %rbx                             #  3     0x4db05  2      
  subl $0x28, %esp                       #  4     0x4db07  3      
  addq %r15, %rsp                        #  5     0x4db0a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4db0d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4db11  4      
  movl %ebx, %edi                        #  8     0x4db15  2      
  nop                                    #  9     0x4db17  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4db18  5      
  movl $0x8, %edi                        #  11    0x4db1d  5      
  nop                                    #  12    0x4db22  1      
  nop                                    #  13    0x4db23  1      
  callq .__cxa_allocate_exception        #  14    0x4db24  5      
  movl %eax, %r12d                       #  15    0x4db29  3      
  movl %ebx, %esi                        #  16    0x4db2c  2      
  movl %r12d, %edi                       #  17    0x4db2e  3      
  nop                                    #  18    0x4db31  1      
  nop                                    #  19    0x4db32  1      
  callq ._ZNSt16invalid_argumentC1ERKSs  #  20    0x4db33  5      
  movl 0x10(%rsp), %edi                  #  21    0x4db38  4      
  subl $0xc, %edi                        #  22    0x4db3c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4db3f  6      
  jne .L_4dba0                           #  24    0x4db45  6      
  xchgw %ax, %ax                         #  25    0x4db4b  3      
  nop                                    #  26    0x4db4e  1      
.L_4db80:                                #        0x4db4f  0      
  movl $0x4cde0, %edx                    #  27    0x4db4f  5      
  movl $0x100210b4, %esi                 #  28    0x4db54  5      
  movl %r12d, %edi                       #  29    0x4db59  3      
  nop                                    #  30    0x4db5c  1      
  callq .__cxa_throw                     #  31    0x4db5d  5      
.L_4dba0:                                #        0x4db62  0      
  movl %edi, %edi                        #  32    0x4db62  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4db64  5      
  leal -0x1(%rax), %edx                  #  34    0x4db69  3      
  testl %eax, %eax                       #  35    0x4db6c  2      
  movl %edi, %edi                        #  36    0x4db6e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4db70  5      
  jg .L_4db80                            #  38    0x4db75  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4db7b  4      
  xchgw %ax, %ax                         #  40    0x4db7f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4db82  5      
  jmpq .L_4db80                          #  42    0x4db87  5      
  nop                                    #  43    0x4db8c  1      
  nop                                    #  44    0x4db8d  1      
  movl %r12d, %edi                       #  45    0x4db8e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4db91  4      
  nop                                    #  47    0x4db95  1      
  nop                                    #  48    0x4db96  1      
  callq .__cxa_free_exception            #  49    0x4db97  5      
  movl 0x8(%rsp), %eax                   #  50    0x4db9c  4      
  movl %ebx, %edi                        #  51    0x4dba0  2      
  movl %eax, %r12d                       #  52    0x4dba2  3      
  nop                                    #  53    0x4dba5  1      
  nop                                    #  54    0x4dba6  1      
  callq ._ZNSsD1Ev                       #  55    0x4dba7  5      
  movl %r12d, %eax                       #  56    0x4dbac  3      
  nop                                    #  57    0x4dbaf  1      
  nop                                    #  58    0x4dbb0  1      
.L_4dc40:                                #        0x4dbb1  0      
  movl %eax, %edi                        #  59    0x4dbb1  2      
  nop                                    #  60    0x4dbb3  1      
  nop                                    #  61    0x4dbb4  1      
  callq ._Unwind_Resume                  #  62    0x4dbb5  5      
  jmpq .L_4dc40                          #  63    0x4dbba  5      
  nop                                    #  64    0x4dbbf  1      
  nop                                    #  65    0x4dbc0  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4dbc1  4      
  jne .L_4dc40                           #  67    0x4dbc5  6      
  nop                                    #  68    0x4dbcb  1      
  nop                                    #  69    0x4dbcc  1      
  callq ._ZSt9terminatev                 #  70    0x4dbcd  5      
                                                                  
.size _ZSt24__throw_invalid_argumentPKc, .-_ZSt24__throw_invalid_argumentPKc

