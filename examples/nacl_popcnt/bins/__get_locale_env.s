  .text
  .globl __get_locale_env
  .type __get_locale_env, @function

#! file-offset 0x7bae0
#! rip-offset  0x7bae0
#! capacity    256 bytes

# Text                                #  Line  RIP      Bytes  
.__get_locale_env:                    #        0x7bae0  0      
  pushq %r12                          #  1     0x7bae0  3      
  movl %esi, %r12d                    #  2     0x7bae3  3      
  movl $0x100242a0, %esi              #  3     0x7bae6  5      
  pushq %rbx                          #  4     0x7baeb  2      
  movl %edi, %ebx                     #  5     0x7baed  2      
  movl %ebx, %edi                     #  6     0x7baef  2      
  subl $0x8, %esp                     #  7     0x7baf1  3      
  addq %r15, %rsp                     #  8     0x7baf4  3      
  nop                                 #  9     0x7baf7  1      
  callq ._getenv_r                    #  10    0x7baf8  5      
  movl %eax, %eax                     #  11    0x7bafd  2      
  testq %rax, %rax                    #  12    0x7baff  3      
  je .L_7bb20                         #  13    0x7bb02  6      
  movl %eax, %eax                     #  14    0x7bb08  2      
  cmpb $0x0, (%r15,%rax,1)            #  15    0x7bb0a  5      
  jne .L_7bbc0                        #  16    0x7bb0f  6      
  nop                                 #  17    0x7bb15  1      
.L_7bb20:                             #        0x7bb16  0      
  shll $0x2, %r12d                    #  18    0x7bb16  4      
  movl %ebx, %edi                     #  19    0x7bb1a  2      
  movslq %r12d, %r12                  #  20    0x7bb1c  3      
  movl %r12d, %r12d                   #  21    0x7bb1f  3      
  movl 0x10024540(%r15,%r12,1), %esi  #  22    0x7bb22  8      
  nop                                 #  23    0x7bb2a  1      
  callq ._getenv_r                    #  24    0x7bb2b  5      
  movl %eax, %eax                     #  25    0x7bb30  2      
  testq %rax, %rax                    #  26    0x7bb32  3      
  je .L_7bb60                         #  27    0x7bb35  6      
  movl %eax, %eax                     #  28    0x7bb3b  2      
  cmpb $0x0, (%r15,%rax,1)            #  29    0x7bb3d  5      
  jne .L_7bbc0                        #  30    0x7bb42  6      
  nop                                 #  31    0x7bb48  1      
  nop                                 #  32    0x7bb49  1      
.L_7bb60:                             #        0x7bb4a  0      
  movl $0x100242a7, %esi              #  33    0x7bb4a  5      
  movl %ebx, %edi                     #  34    0x7bb4f  2      
  nop                                 #  35    0x7bb51  1      
  nop                                 #  36    0x7bb52  1      
  callq ._getenv_r                    #  37    0x7bb53  5      
  movl %eax, %eax                     #  38    0x7bb58  2      
  testq %rax, %rax                    #  39    0x7bb5a  3      
  je .L_7bba0                         #  40    0x7bb5d  6      
  movl %eax, %eax                     #  41    0x7bb63  2      
  cmpb $0x0, (%r15,%rax,1)            #  42    0x7bb65  5      
  jne .L_7bbc0                        #  43    0x7bb6a  6      
  nop                                 #  44    0x7bb70  1      
  nop                                 #  45    0x7bb71  1      
.L_7bba0:                             #        0x7bb72  0      
  movl $0x10030a40, %eax              #  46    0x7bb72  5      
  nop                                 #  47    0x7bb77  1      
  nop                                 #  48    0x7bb78  1      
.L_7bbc0:                             #        0x7bb79  0      
  addl $0x8, %esp                     #  49    0x7bb79  3      
  addq %r15, %rsp                     #  50    0x7bb7c  3      
  popq %rbx                           #  51    0x7bb7f  2      
  popq %r12                           #  52    0x7bb81  3      
  popq %r11                           #  53    0x7bb84  3      
  andl $0xffffffe0, %r11d             #  54    0x7bb87  7      
  addq %r15, %r11                     #  55    0x7bb8e  3      
  jmpq %r11                           #  56    0x7bb91  3      
  nop                                 #  57    0x7bb94  1      
                                                               
.size __get_locale_env, .-__get_locale_env

