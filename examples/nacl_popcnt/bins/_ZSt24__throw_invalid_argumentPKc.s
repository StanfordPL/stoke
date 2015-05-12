  .text
  .globl _ZSt24__throw_invalid_argumentPKc
  .type _ZSt24__throw_invalid_argumentPKc, @function

#! file-offset 0x4db20
#! rip-offset  0x4db20
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt24__throw_invalid_argumentPKc:      #        0x4db20  0      
  pushq %r12                             #  1     0x4db20  3      
  movl %edi, %esi                        #  2     0x4db23  2      
  pushq %rbx                             #  3     0x4db25  2      
  subl $0x28, %esp                       #  4     0x4db27  3      
  addq %r15, %rsp                        #  5     0x4db2a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4db2d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4db31  4      
  movl %ebx, %edi                        #  8     0x4db35  2      
  nop                                    #  9     0x4db37  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4db38  5      
  movl $0x8, %edi                        #  11    0x4db3d  5      
  nop                                    #  12    0x4db42  1      
  nop                                    #  13    0x4db43  1      
  callq .__cxa_allocate_exception        #  14    0x4db44  5      
  movl %eax, %r12d                       #  15    0x4db49  3      
  movl %ebx, %esi                        #  16    0x4db4c  2      
  movl %r12d, %edi                       #  17    0x4db4e  3      
  nop                                    #  18    0x4db51  1      
  nop                                    #  19    0x4db52  1      
  callq ._ZNSt16invalid_argumentC1ERKSs  #  20    0x4db53  5      
  movl 0x10(%rsp), %edi                  #  21    0x4db58  4      
  subl $0xc, %edi                        #  22    0x4db5c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4db5f  6      
  jne .L_4dbc0                           #  24    0x4db65  6      
  xchgw %ax, %ax                         #  25    0x4db6b  3      
  nop                                    #  26    0x4db6e  1      
.L_4dba0:                                #        0x4db6f  0      
  movl $0x4ce00, %edx                    #  27    0x4db6f  5      
  movl $0x100210b4, %esi                 #  28    0x4db74  5      
  movl %r12d, %edi                       #  29    0x4db79  3      
  nop                                    #  30    0x4db7c  1      
  callq .__cxa_throw                     #  31    0x4db7d  5      
.L_4dbc0:                                #        0x4db82  0      
  movl %edi, %edi                        #  32    0x4db82  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4db84  5      
  leal -0x1(%rax), %edx                  #  34    0x4db89  3      
  testl %eax, %eax                       #  35    0x4db8c  2      
  movl %edi, %edi                        #  36    0x4db8e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4db90  5      
  jg .L_4dba0                            #  38    0x4db95  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4db9b  4      
  xchgw %ax, %ax                         #  40    0x4db9f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4dba2  5      
  jmpq .L_4dba0                          #  42    0x4dba7  5      
  nop                                    #  43    0x4dbac  1      
  nop                                    #  44    0x4dbad  1      
  movl %r12d, %edi                       #  45    0x4dbae  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4dbb1  4      
  nop                                    #  47    0x4dbb5  1      
  nop                                    #  48    0x4dbb6  1      
  callq .__cxa_free_exception            #  49    0x4dbb7  5      
  movl 0x8(%rsp), %eax                   #  50    0x4dbbc  4      
  movl %ebx, %edi                        #  51    0x4dbc0  2      
  movl %eax, %r12d                       #  52    0x4dbc2  3      
  nop                                    #  53    0x4dbc5  1      
  nop                                    #  54    0x4dbc6  1      
  callq ._ZNSsD1Ev                       #  55    0x4dbc7  5      
  movl %r12d, %eax                       #  56    0x4dbcc  3      
  nop                                    #  57    0x4dbcf  1      
  nop                                    #  58    0x4dbd0  1      
.L_4dc60:                                #        0x4dbd1  0      
  movl %eax, %edi                        #  59    0x4dbd1  2      
  nop                                    #  60    0x4dbd3  1      
  nop                                    #  61    0x4dbd4  1      
  callq ._Unwind_Resume                  #  62    0x4dbd5  5      
  jmpq .L_4dc60                          #  63    0x4dbda  5      
  nop                                    #  64    0x4dbdf  1      
  nop                                    #  65    0x4dbe0  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4dbe1  4      
  jne .L_4dc60                           #  67    0x4dbe5  6      
  nop                                    #  68    0x4dbeb  1      
  nop                                    #  69    0x4dbec  1      
  callq ._ZSt9terminatev                 #  70    0x4dbed  5      
                                                                  
.size _ZSt24__throw_invalid_argumentPKc, .-_ZSt24__throw_invalid_argumentPKc

