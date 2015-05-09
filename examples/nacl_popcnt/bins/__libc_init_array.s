  .text
  .globl __libc_init_array
  .type __libc_init_array, @function

#! file-offset 0x69b20
#! rip-offset  0x69b20
#! capacity    288 bytes

# Text                                #  Line  RIP      Bytes  
.__libc_init_array:                   #        0x69b20  0      
  pushq %r12                          #  1     0x69b20  3      
  movl $0x10030478, %r12d             #  2     0x69b23  6      
  subl $0x10030478, %r12d             #  3     0x69b29  7      
  pushq %rbx                          #  4     0x69b30  2      
  sarl $0x2, %r12d                    #  5     0x69b32  4      
  subl $0x8, %esp                     #  6     0x69b36  3      
  addq %r15, %rsp                     #  7     0x69b39  3      
  testl %r12d, %r12d                  #  8     0x69b3c  3      
  nop                                 #  9     0x69b3f  1      
  je .L_69ba0                         #  10    0x69b40  6      
  xorl %ebx, %ebx                     #  11    0x69b46  2      
  nop                                 #  12    0x69b48  1      
  nop                                 #  13    0x69b49  1      
.L_69b60:                             #        0x69b4a  0      
  movl %ebx, %eax                     #  14    0x69b4a  2      
  addl $0x1, %ebx                     #  15    0x69b4c  3      
  movl %eax, %eax                     #  16    0x69b4f  2      
  movl 0x10030478(%r15,%rax,4), %eax  #  17    0x69b51  8      
  nop                                 #  18    0x69b59  1      
  andl $0xffffffe0, %eax              #  19    0x69b5a  5      
  addq %r15, %rax                     #  20    0x69b5f  3      
  callq %rax                          #  21    0x69b62  2      
  cmpl %ebx, %r12d                    #  22    0x69b64  3      
  ja .L_69b60                         #  23    0x69b67  6      
  nop                                 #  24    0x69b6d  1      
  nop                                 #  25    0x69b6e  1      
.L_69ba0:                             #        0x69b6f  0      
  movl $0x10030484, %r12d             #  26    0x69b6f  6      
  subl $0x10030478, %r12d             #  27    0x69b75  7      
  sarl $0x2, %r12d                    #  28    0x69b7c  4      
  nop                                 #  29    0x69b80  1      
  callq ._init                        #  30    0x69b81  5      
  testl %r12d, %r12d                  #  31    0x69b86  3      
  je .L_69c20                         #  32    0x69b89  6      
  xorl %ebx, %ebx                     #  33    0x69b8f  2      
  nop                                 #  34    0x69b91  1      
  nop                                 #  35    0x69b92  1      
.L_69be0:                             #        0x69b93  0      
  movl %ebx, %eax                     #  36    0x69b93  2      
  addl $0x1, %ebx                     #  37    0x69b95  3      
  movl %eax, %eax                     #  38    0x69b98  2      
  movl 0x10030478(%r15,%rax,4), %eax  #  39    0x69b9a  8      
  nop                                 #  40    0x69ba2  1      
  andl $0xffffffe0, %eax              #  41    0x69ba3  5      
  addq %r15, %rax                     #  42    0x69ba8  3      
  callq %rax                          #  43    0x69bab  2      
  cmpl %ebx, %r12d                    #  44    0x69bad  3      
  ja .L_69be0                         #  45    0x69bb0  6      
  nop                                 #  46    0x69bb6  1      
  nop                                 #  47    0x69bb7  1      
.L_69c20:                             #        0x69bb8  0      
  addl $0x8, %esp                     #  48    0x69bb8  3      
  addq %r15, %rsp                     #  49    0x69bbb  3      
  popq %rbx                           #  50    0x69bbe  2      
  popq %r12                           #  51    0x69bc0  3      
  popq %r11                           #  52    0x69bc3  3      
  andl $0xffffffe0, %r11d             #  53    0x69bc6  7      
  addq %r15, %r11                     #  54    0x69bcd  3      
  jmpq %r11                           #  55    0x69bd0  3      
  nop                                 #  56    0x69bd3  1      
  nop                                 #  57    0x69bd4  1      
  nop                                 #  58    0x69bd5  1      
  nop                                 #  59    0x69bd6  1      
  nop                                 #  60    0x69bd7  1      
  nop                                 #  61    0x69bd8  1      
  nop                                 #  62    0x69bd9  1      
  nop                                 #  63    0x69bda  1      
  nop                                 #  64    0x69bdb  1      
  nop                                 #  65    0x69bdc  1      
  nop                                 #  66    0x69bdd  1      
                                                               
.size __libc_init_array, .-__libc_init_array

