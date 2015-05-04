  .text
  .globl _ZNSt8ios_base7failureD2Ev
  .type _ZNSt8ios_base7failureD2Ev, @function

#! file-offset 0x4e380
#! rip-offset  0x4e380
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt8ios_base7failureD2Ev:             #        0x4e380  0      
  pushq %rbx                             #  1     0x4e380  2      
  movl %edi, %ebx                        #  2     0x4e382  2      
  subl $0x10, %esp                       #  3     0x4e384  3      
  addq %r15, %rsp                        #  4     0x4e387  3      
  movl %ebx, %ebx                        #  5     0x4e38a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4e38c  5      
  movl %ebx, %ebx                        #  7     0x4e391  2      
  movl $0x10021148, (%r15,%rbx,1)        #  8     0x4e393  8      
  subl $0xc, %edi                        #  9     0x4e39b  3      
  nop                                    #  10    0x4e39e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4e39f  6      
  jne .L_4e400                           #  12    0x4e3a5  6      
  nop                                    #  13    0x4e3ab  1      
  nop                                    #  14    0x4e3ac  1      
.L_4e3c0:                                #        0x4e3ad  0      
  movl %ebx, %edi                        #  15    0x4e3ad  2      
  nop                                    #  16    0x4e3af  1      
  nop                                    #  17    0x4e3b0  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4e3b1  5      
  addl $0x10, %esp                       #  19    0x4e3b6  3      
  addq %r15, %rsp                        #  20    0x4e3b9  3      
  popq %rbx                              #  21    0x4e3bc  2      
  popq %r11                              #  22    0x4e3be  3      
  andl $0xffffffe0, %r11d                #  23    0x4e3c1  7      
  addq %r15, %r11                        #  24    0x4e3c8  3      
  jmpq %r11                              #  25    0x4e3cb  3      
  nop                                    #  26    0x4e3ce  1      
.L_4e400:                                #        0x4e3cf  0      
  movl %edi, %edi                        #  27    0x4e3cf  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4e3d1  5      
  leal -0x1(%rax), %edx                  #  29    0x4e3d6  3      
  testl %eax, %eax                       #  30    0x4e3d9  2      
  movl %edi, %edi                        #  31    0x4e3db  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4e3dd  5      
  jg .L_4e3c0                            #  33    0x4e3e2  6      
  leal 0xf(%rsp), %esi                   #  34    0x4e3e8  4      
  xchgw %ax, %ax                         #  35    0x4e3ec  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4e3ef  5      
  jmpq .L_4e3c0                          #  37    0x4e3f4  5      
  nop                                    #  38    0x4e3f9  1      
  nop                                    #  39    0x4e3fa  1      
  nop                                    #  40    0x4e3fb  1      
  nop                                    #  41    0x4e3fc  1      
  nop                                    #  42    0x4e3fd  1      
  nop                                    #  43    0x4e3fe  1      
  nop                                    #  44    0x4e3ff  1      
  nop                                    #  45    0x4e400  1      
  nop                                    #  46    0x4e401  1      
  nop                                    #  47    0x4e402  1      
  nop                                    #  48    0x4e403  1      
  nop                                    #  49    0x4e404  1      
  nop                                    #  50    0x4e405  1      
  nop                                    #  51    0x4e406  1      
  nop                                    #  52    0x4e407  1      
  nop                                    #  53    0x4e408  1      
  nop                                    #  54    0x4e409  1      
  nop                                    #  55    0x4e40a  1      
  nop                                    #  56    0x4e40b  1      
  nop                                    #  57    0x4e40c  1      
  nop                                    #  58    0x4e40d  1      
  nop                                    #  59    0x4e40e  1      
  nop                                    #  60    0x4e40f  1      
  nop                                    #  61    0x4e410  1      
  nop                                    #  62    0x4e411  1      
  nop                                    #  63    0x4e412  1      
  nop                                    #  64    0x4e413  1      
  nop                                    #  65    0x4e414  1      
  nop                                    #  66    0x4e415  1      
  nop                                    #  67    0x4e416  1      
                                                                  
.size _ZNSt8ios_base7failureD2Ev, .-_ZNSt8ios_base7failureD2Ev

