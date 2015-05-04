  .text
  .globl _ZNSt11logic_errorD0Ev
  .type _ZNSt11logic_errorD0Ev, @function

#! file-offset 0x4ed20
#! rip-offset  0x4ed20
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt11logic_errorD0Ev:                 #        0x4ed20  0      
  pushq %rbx                             #  1     0x4ed20  2      
  movl %edi, %ebx                        #  2     0x4ed22  2      
  subl $0x10, %esp                       #  3     0x4ed24  3      
  addq %r15, %rsp                        #  4     0x4ed27  3      
  movl %ebx, %ebx                        #  5     0x4ed2a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4ed2c  5      
  movl %ebx, %ebx                        #  7     0x4ed31  2      
  movl $0x100211b8, (%r15,%rbx,1)        #  8     0x4ed33  8      
  subl $0xc, %edi                        #  9     0x4ed3b  3      
  nop                                    #  10    0x4ed3e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4ed3f  6      
  jne .L_4edc0                           #  12    0x4ed45  6      
  nop                                    #  13    0x4ed4b  1      
  nop                                    #  14    0x4ed4c  1      
.L_4ed60:                                #        0x4ed4d  0      
  movl %ebx, %edi                        #  15    0x4ed4d  2      
  nop                                    #  16    0x4ed4f  1      
  nop                                    #  17    0x4ed50  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4ed51  5      
  movl %ebx, %edi                        #  19    0x4ed56  2      
  nop                                    #  20    0x4ed58  1      
  nop                                    #  21    0x4ed59  1      
  callq ._ZdlPv                          #  22    0x4ed5a  5      
  addl $0x10, %esp                       #  23    0x4ed5f  3      
  addq %r15, %rsp                        #  24    0x4ed62  3      
  popq %rbx                              #  25    0x4ed65  2      
  popq %r11                              #  26    0x4ed67  3      
  andl $0xffffffe0, %r11d                #  27    0x4ed6a  7      
  addq %r15, %r11                        #  28    0x4ed71  3      
  jmpq %r11                              #  29    0x4ed74  3      
  nop                                    #  30    0x4ed77  1      
.L_4edc0:                                #        0x4ed78  0      
  movl %edi, %edi                        #  31    0x4ed78  2      
  movl 0x8(%r15,%rdi,1), %eax            #  32    0x4ed7a  5      
  leal -0x1(%rax), %edx                  #  33    0x4ed7f  3      
  testl %eax, %eax                       #  34    0x4ed82  2      
  movl %edi, %edi                        #  35    0x4ed84  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  36    0x4ed86  5      
  jg .L_4ed60                            #  37    0x4ed8b  6      
  leal 0xf(%rsp), %esi                   #  38    0x4ed91  4      
  xchgw %ax, %ax                         #  39    0x4ed95  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  40    0x4ed98  5      
  jmpq .L_4ed60                          #  41    0x4ed9d  5      
  nop                                    #  42    0x4eda2  1      
  nop                                    #  43    0x4eda3  1      
  nop                                    #  44    0x4eda4  1      
  nop                                    #  45    0x4eda5  1      
  nop                                    #  46    0x4eda6  1      
  nop                                    #  47    0x4eda7  1      
  nop                                    #  48    0x4eda8  1      
  nop                                    #  49    0x4eda9  1      
  nop                                    #  50    0x4edaa  1      
  nop                                    #  51    0x4edab  1      
  nop                                    #  52    0x4edac  1      
  nop                                    #  53    0x4edad  1      
  nop                                    #  54    0x4edae  1      
  nop                                    #  55    0x4edaf  1      
  nop                                    #  56    0x4edb0  1      
  nop                                    #  57    0x4edb1  1      
  nop                                    #  58    0x4edb2  1      
  nop                                    #  59    0x4edb3  1      
  nop                                    #  60    0x4edb4  1      
  nop                                    #  61    0x4edb5  1      
  nop                                    #  62    0x4edb6  1      
  nop                                    #  63    0x4edb7  1      
  nop                                    #  64    0x4edb8  1      
  nop                                    #  65    0x4edb9  1      
  nop                                    #  66    0x4edba  1      
  nop                                    #  67    0x4edbb  1      
  nop                                    #  68    0x4edbc  1      
                                                                  
.size _ZNSt11logic_errorD0Ev, .-_ZNSt11logic_errorD0Ev

