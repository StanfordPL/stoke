  .text
  .globl _ZNSt13runtime_errorD2Ev
  .type _ZNSt13runtime_errorD2Ev, @function

#! file-offset 0x4ec60
#! rip-offset  0x4ec60
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt13runtime_errorD2Ev:               #        0x4ec60  0      
  pushq %rbx                             #  1     0x4ec60  2      
  movl %edi, %ebx                        #  2     0x4ec62  2      
  subl $0x10, %esp                       #  3     0x4ec64  3      
  addq %r15, %rsp                        #  4     0x4ec67  3      
  movl %ebx, %ebx                        #  5     0x4ec6a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4ec6c  5      
  movl %ebx, %ebx                        #  7     0x4ec71  2      
  movl $0x10021198, (%r15,%rbx,1)        #  8     0x4ec73  8      
  subl $0xc, %edi                        #  9     0x4ec7b  3      
  nop                                    #  10    0x4ec7e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4ec7f  6      
  jne .L_4ece0                           #  12    0x4ec85  6      
  nop                                    #  13    0x4ec8b  1      
  nop                                    #  14    0x4ec8c  1      
.L_4eca0:                                #        0x4ec8d  0      
  movl %ebx, %edi                        #  15    0x4ec8d  2      
  nop                                    #  16    0x4ec8f  1      
  nop                                    #  17    0x4ec90  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4ec91  5      
  addl $0x10, %esp                       #  19    0x4ec96  3      
  addq %r15, %rsp                        #  20    0x4ec99  3      
  popq %rbx                              #  21    0x4ec9c  2      
  popq %r11                              #  22    0x4ec9e  3      
  andl $0xffffffe0, %r11d                #  23    0x4eca1  7      
  addq %r15, %r11                        #  24    0x4eca8  3      
  jmpq %r11                              #  25    0x4ecab  3      
  nop                                    #  26    0x4ecae  1      
.L_4ece0:                                #        0x4ecaf  0      
  movl %edi, %edi                        #  27    0x4ecaf  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4ecb1  5      
  leal -0x1(%rax), %edx                  #  29    0x4ecb6  3      
  testl %eax, %eax                       #  30    0x4ecb9  2      
  movl %edi, %edi                        #  31    0x4ecbb  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4ecbd  5      
  jg .L_4eca0                            #  33    0x4ecc2  6      
  leal 0xf(%rsp), %esi                   #  34    0x4ecc8  4      
  xchgw %ax, %ax                         #  35    0x4eccc  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4eccf  5      
  jmpq .L_4eca0                          #  37    0x4ecd4  5      
  nop                                    #  38    0x4ecd9  1      
  nop                                    #  39    0x4ecda  1      
  nop                                    #  40    0x4ecdb  1      
  nop                                    #  41    0x4ecdc  1      
  nop                                    #  42    0x4ecdd  1      
  nop                                    #  43    0x4ecde  1      
  nop                                    #  44    0x4ecdf  1      
  nop                                    #  45    0x4ece0  1      
  nop                                    #  46    0x4ece1  1      
  nop                                    #  47    0x4ece2  1      
  nop                                    #  48    0x4ece3  1      
  nop                                    #  49    0x4ece4  1      
  nop                                    #  50    0x4ece5  1      
  nop                                    #  51    0x4ece6  1      
  nop                                    #  52    0x4ece7  1      
  nop                                    #  53    0x4ece8  1      
  nop                                    #  54    0x4ece9  1      
  nop                                    #  55    0x4ecea  1      
  nop                                    #  56    0x4eceb  1      
  nop                                    #  57    0x4ecec  1      
  nop                                    #  58    0x4eced  1      
  nop                                    #  59    0x4ecee  1      
  nop                                    #  60    0x4ecef  1      
  nop                                    #  61    0x4ecf0  1      
  nop                                    #  62    0x4ecf1  1      
  nop                                    #  63    0x4ecf2  1      
  nop                                    #  64    0x4ecf3  1      
  nop                                    #  65    0x4ecf4  1      
  nop                                    #  66    0x4ecf5  1      
  nop                                    #  67    0x4ecf6  1      
                                                                  
.size _ZNSt13runtime_errorD2Ev, .-_ZNSt13runtime_errorD2Ev

