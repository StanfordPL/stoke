  .text
  .globl _ZSt24__throw_invalid_argumentPKc
  .type _ZSt24__throw_invalid_argumentPKc, @function

#! file-offset 0x4dba0
#! rip-offset  0x4dba0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt24__throw_invalid_argumentPKc:      #        0x4dba0  0      
  pushq %r12                             #  1     0x4dba0  3      
  movl %edi, %esi                        #  2     0x4dba3  2      
  pushq %rbx                             #  3     0x4dba5  2      
  subl $0x28, %esp                       #  4     0x4dba7  3      
  addq %r15, %rsp                        #  5     0x4dbaa  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4dbad  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4dbb1  4      
  movl %ebx, %edi                        #  8     0x4dbb5  2      
  nop                                    #  9     0x4dbb7  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4dbb8  5      
  movl $0x8, %edi                        #  11    0x4dbbd  5      
  nop                                    #  12    0x4dbc2  1      
  nop                                    #  13    0x4dbc3  1      
  callq .__cxa_allocate_exception        #  14    0x4dbc4  5      
  movl %eax, %r12d                       #  15    0x4dbc9  3      
  movl %ebx, %esi                        #  16    0x4dbcc  2      
  movl %r12d, %edi                       #  17    0x4dbce  3      
  nop                                    #  18    0x4dbd1  1      
  nop                                    #  19    0x4dbd2  1      
  callq ._ZNSt16invalid_argumentC1ERKSs  #  20    0x4dbd3  5      
  movl 0x10(%rsp), %edi                  #  21    0x4dbd8  4      
  subl $0xc, %edi                        #  22    0x4dbdc  3      
  cmpl $0x10031da0, %edi                 #  23    0x4dbdf  6      
  jne .L_4dc40                           #  24    0x4dbe5  6      
  xchgw %ax, %ax                         #  25    0x4dbeb  3      
  nop                                    #  26    0x4dbee  1      
.L_4dc20:                                #        0x4dbef  0      
  movl $0x4ce80, %edx                    #  27    0x4dbef  5      
  movl $0x100210b4, %esi                 #  28    0x4dbf4  5      
  movl %r12d, %edi                       #  29    0x4dbf9  3      
  nop                                    #  30    0x4dbfc  1      
  callq .__cxa_throw                     #  31    0x4dbfd  5      
.L_4dc40:                                #        0x4dc02  0      
  movl %edi, %edi                        #  32    0x4dc02  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4dc04  5      
  leal -0x1(%rax), %edx                  #  34    0x4dc09  3      
  testl %eax, %eax                       #  35    0x4dc0c  2      
  movl %edi, %edi                        #  36    0x4dc0e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4dc10  5      
  jg .L_4dc20                            #  38    0x4dc15  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4dc1b  4      
  xchgw %ax, %ax                         #  40    0x4dc1f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4dc22  5      
  jmpq .L_4dc20                          #  42    0x4dc27  5      
  nop                                    #  43    0x4dc2c  1      
  nop                                    #  44    0x4dc2d  1      
  movl %r12d, %edi                       #  45    0x4dc2e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4dc31  4      
  nop                                    #  47    0x4dc35  1      
  nop                                    #  48    0x4dc36  1      
  callq .__cxa_free_exception            #  49    0x4dc37  5      
  movl 0x8(%rsp), %eax                   #  50    0x4dc3c  4      
  movl %ebx, %edi                        #  51    0x4dc40  2      
  movl %eax, %r12d                       #  52    0x4dc42  3      
  nop                                    #  53    0x4dc45  1      
  nop                                    #  54    0x4dc46  1      
  callq ._ZNSsD1Ev                       #  55    0x4dc47  5      
  movl %r12d, %eax                       #  56    0x4dc4c  3      
  nop                                    #  57    0x4dc4f  1      
  nop                                    #  58    0x4dc50  1      
.L_4dce0:                                #        0x4dc51  0      
  movl %eax, %edi                        #  59    0x4dc51  2      
  nop                                    #  60    0x4dc53  1      
  nop                                    #  61    0x4dc54  1      
  callq ._Unwind_Resume                  #  62    0x4dc55  5      
  jmpq .L_4dce0                          #  63    0x4dc5a  5      
  nop                                    #  64    0x4dc5f  1      
  nop                                    #  65    0x4dc60  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4dc61  4      
  jne .L_4dce0                           #  67    0x4dc65  6      
  nop                                    #  68    0x4dc6b  1      
  nop                                    #  69    0x4dc6c  1      
  callq ._ZSt9terminatev                 #  70    0x4dc6d  5      
                                                                  
.size _ZSt24__throw_invalid_argumentPKc, .-_ZSt24__throw_invalid_argumentPKc

