  .text
  .globl __get_locale_env
  .type __get_locale_env, @function

#! file-offset 0x7bb60
#! rip-offset  0x7bb60
#! capacity    256 bytes

# Text                                #  Line  RIP      Bytes  
.__get_locale_env:                    #        0x7bb60  0      
  pushq %r12                          #  1     0x7bb60  3      
  movl %esi, %r12d                    #  2     0x7bb63  3      
  movl $0x100242a0, %esi              #  3     0x7bb66  5      
  pushq %rbx                          #  4     0x7bb6b  2      
  movl %edi, %ebx                     #  5     0x7bb6d  2      
  movl %ebx, %edi                     #  6     0x7bb6f  2      
  subl $0x8, %esp                     #  7     0x7bb71  3      
  addq %r15, %rsp                     #  8     0x7bb74  3      
  nop                                 #  9     0x7bb77  1      
  callq ._getenv_r                    #  10    0x7bb78  5      
  movl %eax, %eax                     #  11    0x7bb7d  2      
  testq %rax, %rax                    #  12    0x7bb7f  3      
  je .L_7bba0                         #  13    0x7bb82  6      
  movl %eax, %eax                     #  14    0x7bb88  2      
  cmpb $0x0, (%r15,%rax,1)            #  15    0x7bb8a  5      
  jne .L_7bc40                        #  16    0x7bb8f  6      
  nop                                 #  17    0x7bb95  1      
.L_7bba0:                             #        0x7bb96  0      
  shll $0x2, %r12d                    #  18    0x7bb96  4      
  movl %ebx, %edi                     #  19    0x7bb9a  2      
  movslq %r12d, %r12                  #  20    0x7bb9c  3      
  movl %r12d, %r12d                   #  21    0x7bb9f  3      
  movl 0x10024540(%r15,%r12,1), %esi  #  22    0x7bba2  8      
  nop                                 #  23    0x7bbaa  1      
  callq ._getenv_r                    #  24    0x7bbab  5      
  movl %eax, %eax                     #  25    0x7bbb0  2      
  testq %rax, %rax                    #  26    0x7bbb2  3      
  je .L_7bbe0                         #  27    0x7bbb5  6      
  movl %eax, %eax                     #  28    0x7bbbb  2      
  cmpb $0x0, (%r15,%rax,1)            #  29    0x7bbbd  5      
  jne .L_7bc40                        #  30    0x7bbc2  6      
  nop                                 #  31    0x7bbc8  1      
  nop                                 #  32    0x7bbc9  1      
.L_7bbe0:                             #        0x7bbca  0      
  movl $0x100242a7, %esi              #  33    0x7bbca  5      
  movl %ebx, %edi                     #  34    0x7bbcf  2      
  nop                                 #  35    0x7bbd1  1      
  nop                                 #  36    0x7bbd2  1      
  callq ._getenv_r                    #  37    0x7bbd3  5      
  movl %eax, %eax                     #  38    0x7bbd8  2      
  testq %rax, %rax                    #  39    0x7bbda  3      
  je .L_7bc20                         #  40    0x7bbdd  6      
  movl %eax, %eax                     #  41    0x7bbe3  2      
  cmpb $0x0, (%r15,%rax,1)            #  42    0x7bbe5  5      
  jne .L_7bc40                        #  43    0x7bbea  6      
  nop                                 #  44    0x7bbf0  1      
  nop                                 #  45    0x7bbf1  1      
.L_7bc20:                             #        0x7bbf2  0      
  movl $0x10030a40, %eax              #  46    0x7bbf2  5      
  nop                                 #  47    0x7bbf7  1      
  nop                                 #  48    0x7bbf8  1      
.L_7bc40:                             #        0x7bbf9  0      
  addl $0x8, %esp                     #  49    0x7bbf9  3      
  addq %r15, %rsp                     #  50    0x7bbfc  3      
  popq %rbx                           #  51    0x7bbff  2      
  popq %r12                           #  52    0x7bc01  3      
  popq %r11                           #  53    0x7bc04  3      
  andl $0xffffffe0, %r11d             #  54    0x7bc07  7      
  addq %r15, %r11                     #  55    0x7bc0e  3      
  jmpq %r11                           #  56    0x7bc11  3      
  nop                                 #  57    0x7bc14  1      
                                                               
.size __get_locale_env, .-__get_locale_env

