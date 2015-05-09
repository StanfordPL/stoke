  .text
  .globl __get_locale_env
  .type __get_locale_env, @function

#! file-offset 0x7bac0
#! rip-offset  0x7bac0
#! capacity    256 bytes

# Text                                #  Line  RIP      Bytes  
.__get_locale_env:                    #        0x7bac0  0      
  pushq %r12                          #  1     0x7bac0  3      
  movl %esi, %r12d                    #  2     0x7bac3  3      
  movl $0x100242a0, %esi              #  3     0x7bac6  5      
  pushq %rbx                          #  4     0x7bacb  2      
  movl %edi, %ebx                     #  5     0x7bacd  2      
  movl %ebx, %edi                     #  6     0x7bacf  2      
  subl $0x8, %esp                     #  7     0x7bad1  3      
  addq %r15, %rsp                     #  8     0x7bad4  3      
  nop                                 #  9     0x7bad7  1      
  callq ._getenv_r                    #  10    0x7bad8  5      
  movl %eax, %eax                     #  11    0x7badd  2      
  testq %rax, %rax                    #  12    0x7badf  3      
  je .L_7bb00                         #  13    0x7bae2  6      
  movl %eax, %eax                     #  14    0x7bae8  2      
  cmpb $0x0, (%r15,%rax,1)            #  15    0x7baea  5      
  jne .L_7bba0                        #  16    0x7baef  6      
  nop                                 #  17    0x7baf5  1      
.L_7bb00:                             #        0x7baf6  0      
  shll $0x2, %r12d                    #  18    0x7baf6  4      
  movl %ebx, %edi                     #  19    0x7bafa  2      
  movslq %r12d, %r12                  #  20    0x7bafc  3      
  movl %r12d, %r12d                   #  21    0x7baff  3      
  movl 0x10024540(%r15,%r12,1), %esi  #  22    0x7bb02  8      
  nop                                 #  23    0x7bb0a  1      
  callq ._getenv_r                    #  24    0x7bb0b  5      
  movl %eax, %eax                     #  25    0x7bb10  2      
  testq %rax, %rax                    #  26    0x7bb12  3      
  je .L_7bb40                         #  27    0x7bb15  6      
  movl %eax, %eax                     #  28    0x7bb1b  2      
  cmpb $0x0, (%r15,%rax,1)            #  29    0x7bb1d  5      
  jne .L_7bba0                        #  30    0x7bb22  6      
  nop                                 #  31    0x7bb28  1      
  nop                                 #  32    0x7bb29  1      
.L_7bb40:                             #        0x7bb2a  0      
  movl $0x100242a7, %esi              #  33    0x7bb2a  5      
  movl %ebx, %edi                     #  34    0x7bb2f  2      
  nop                                 #  35    0x7bb31  1      
  nop                                 #  36    0x7bb32  1      
  callq ._getenv_r                    #  37    0x7bb33  5      
  movl %eax, %eax                     #  38    0x7bb38  2      
  testq %rax, %rax                    #  39    0x7bb3a  3      
  je .L_7bb80                         #  40    0x7bb3d  6      
  movl %eax, %eax                     #  41    0x7bb43  2      
  cmpb $0x0, (%r15,%rax,1)            #  42    0x7bb45  5      
  jne .L_7bba0                        #  43    0x7bb4a  6      
  nop                                 #  44    0x7bb50  1      
  nop                                 #  45    0x7bb51  1      
.L_7bb80:                             #        0x7bb52  0      
  movl $0x10030a40, %eax              #  46    0x7bb52  5      
  nop                                 #  47    0x7bb57  1      
  nop                                 #  48    0x7bb58  1      
.L_7bba0:                             #        0x7bb59  0      
  addl $0x8, %esp                     #  49    0x7bb59  3      
  addq %r15, %rsp                     #  50    0x7bb5c  3      
  popq %rbx                           #  51    0x7bb5f  2      
  popq %r12                           #  52    0x7bb61  3      
  popq %r11                           #  53    0x7bb64  3      
  andl $0xffffffe0, %r11d             #  54    0x7bb67  7      
  addq %r15, %r11                     #  55    0x7bb6e  3      
  jmpq %r11                           #  56    0x7bb71  3      
  nop                                 #  57    0x7bb74  1      
                                                               
.size __get_locale_env, .-__get_locale_env

