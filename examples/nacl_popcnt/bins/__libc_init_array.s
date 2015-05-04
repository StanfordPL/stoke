  .text
  .globl __libc_init_array
  .type __libc_init_array, @function

#! file-offset 0x69bc0
#! rip-offset  0x69bc0
#! capacity    288 bytes

# Text                                #  Line  RIP      Bytes  
.__libc_init_array:                   #        0x69bc0  0      
  pushq %r12                          #  1     0x69bc0  3      
  movl $0x10030478, %r12d             #  2     0x69bc3  6      
  subl $0x10030478, %r12d             #  3     0x69bc9  7      
  pushq %rbx                          #  4     0x69bd0  2      
  sarl $0x2, %r12d                    #  5     0x69bd2  4      
  subl $0x8, %esp                     #  6     0x69bd6  3      
  addq %r15, %rsp                     #  7     0x69bd9  3      
  testl %r12d, %r12d                  #  8     0x69bdc  3      
  nop                                 #  9     0x69bdf  1      
  je .L_69c40                         #  10    0x69be0  6      
  xorl %ebx, %ebx                     #  11    0x69be6  2      
  nop                                 #  12    0x69be8  1      
  nop                                 #  13    0x69be9  1      
.L_69c00:                             #        0x69bea  0      
  movl %ebx, %eax                     #  14    0x69bea  2      
  addl $0x1, %ebx                     #  15    0x69bec  3      
  movl %eax, %eax                     #  16    0x69bef  2      
  movl 0x10030478(%r15,%rax,4), %eax  #  17    0x69bf1  8      
  nop                                 #  18    0x69bf9  1      
  andl $0xffffffe0, %eax              #  19    0x69bfa  5      
  addq %r15, %rax                     #  20    0x69bff  3      
  callq %rax                          #  21    0x69c02  2      
  cmpl %ebx, %r12d                    #  22    0x69c04  3      
  ja .L_69c00                         #  23    0x69c07  6      
  nop                                 #  24    0x69c0d  1      
  nop                                 #  25    0x69c0e  1      
.L_69c40:                             #        0x69c0f  0      
  movl $0x10030484, %r12d             #  26    0x69c0f  6      
  subl $0x10030478, %r12d             #  27    0x69c15  7      
  sarl $0x2, %r12d                    #  28    0x69c1c  4      
  nop                                 #  29    0x69c20  1      
  callq ._init                        #  30    0x69c21  5      
  testl %r12d, %r12d                  #  31    0x69c26  3      
  je .L_69cc0                         #  32    0x69c29  6      
  xorl %ebx, %ebx                     #  33    0x69c2f  2      
  nop                                 #  34    0x69c31  1      
  nop                                 #  35    0x69c32  1      
.L_69c80:                             #        0x69c33  0      
  movl %ebx, %eax                     #  36    0x69c33  2      
  addl $0x1, %ebx                     #  37    0x69c35  3      
  movl %eax, %eax                     #  38    0x69c38  2      
  movl 0x10030478(%r15,%rax,4), %eax  #  39    0x69c3a  8      
  nop                                 #  40    0x69c42  1      
  andl $0xffffffe0, %eax              #  41    0x69c43  5      
  addq %r15, %rax                     #  42    0x69c48  3      
  callq %rax                          #  43    0x69c4b  2      
  cmpl %ebx, %r12d                    #  44    0x69c4d  3      
  ja .L_69c80                         #  45    0x69c50  6      
  nop                                 #  46    0x69c56  1      
  nop                                 #  47    0x69c57  1      
.L_69cc0:                             #        0x69c58  0      
  addl $0x8, %esp                     #  48    0x69c58  3      
  addq %r15, %rsp                     #  49    0x69c5b  3      
  popq %rbx                           #  50    0x69c5e  2      
  popq %r12                           #  51    0x69c60  3      
  popq %r11                           #  52    0x69c63  3      
  andl $0xffffffe0, %r11d             #  53    0x69c66  7      
  addq %r15, %r11                     #  54    0x69c6d  3      
  jmpq %r11                           #  55    0x69c70  3      
  nop                                 #  56    0x69c73  1      
  nop                                 #  57    0x69c74  1      
  nop                                 #  58    0x69c75  1      
  nop                                 #  59    0x69c76  1      
  nop                                 #  60    0x69c77  1      
  nop                                 #  61    0x69c78  1      
  nop                                 #  62    0x69c79  1      
  nop                                 #  63    0x69c7a  1      
  nop                                 #  64    0x69c7b  1      
  nop                                 #  65    0x69c7c  1      
  nop                                 #  66    0x69c7d  1      
                                                               
.size __libc_init_array, .-__libc_init_array

