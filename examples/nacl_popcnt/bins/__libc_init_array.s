  .text
  .globl __libc_init_array
  .type __libc_init_array, @function

#! file-offset 0x69b40
#! rip-offset  0x69b40
#! capacity    288 bytes

# Text                                #  Line  RIP      Bytes  
.__libc_init_array:                   #        0x69b40  0      
  pushq %r12                          #  1     0x69b40  3      
  movl $0x10030478, %r12d             #  2     0x69b43  6      
  subl $0x10030478, %r12d             #  3     0x69b49  7      
  pushq %rbx                          #  4     0x69b50  2      
  sarl $0x2, %r12d                    #  5     0x69b52  4      
  subl $0x8, %esp                     #  6     0x69b56  3      
  addq %r15, %rsp                     #  7     0x69b59  3      
  testl %r12d, %r12d                  #  8     0x69b5c  3      
  nop                                 #  9     0x69b5f  1      
  je .L_69bc0                         #  10    0x69b60  6      
  xorl %ebx, %ebx                     #  11    0x69b66  2      
  nop                                 #  12    0x69b68  1      
  nop                                 #  13    0x69b69  1      
.L_69b80:                             #        0x69b6a  0      
  movl %ebx, %eax                     #  14    0x69b6a  2      
  addl $0x1, %ebx                     #  15    0x69b6c  3      
  movl %eax, %eax                     #  16    0x69b6f  2      
  movl 0x10030478(%r15,%rax,4), %eax  #  17    0x69b71  8      
  nop                                 #  18    0x69b79  1      
  andl $0xffffffe0, %eax              #  19    0x69b7a  5      
  addq %r15, %rax                     #  20    0x69b7f  3      
  callq %rax                          #  21    0x69b82  2      
  cmpl %ebx, %r12d                    #  22    0x69b84  3      
  ja .L_69b80                         #  23    0x69b87  6      
  nop                                 #  24    0x69b8d  1      
  nop                                 #  25    0x69b8e  1      
.L_69bc0:                             #        0x69b8f  0      
  movl $0x10030484, %r12d             #  26    0x69b8f  6      
  subl $0x10030478, %r12d             #  27    0x69b95  7      
  sarl $0x2, %r12d                    #  28    0x69b9c  4      
  nop                                 #  29    0x69ba0  1      
  callq ._init                        #  30    0x69ba1  5      
  testl %r12d, %r12d                  #  31    0x69ba6  3      
  je .L_69c40                         #  32    0x69ba9  6      
  xorl %ebx, %ebx                     #  33    0x69baf  2      
  nop                                 #  34    0x69bb1  1      
  nop                                 #  35    0x69bb2  1      
.L_69c00:                             #        0x69bb3  0      
  movl %ebx, %eax                     #  36    0x69bb3  2      
  addl $0x1, %ebx                     #  37    0x69bb5  3      
  movl %eax, %eax                     #  38    0x69bb8  2      
  movl 0x10030478(%r15,%rax,4), %eax  #  39    0x69bba  8      
  nop                                 #  40    0x69bc2  1      
  andl $0xffffffe0, %eax              #  41    0x69bc3  5      
  addq %r15, %rax                     #  42    0x69bc8  3      
  callq %rax                          #  43    0x69bcb  2      
  cmpl %ebx, %r12d                    #  44    0x69bcd  3      
  ja .L_69c00                         #  45    0x69bd0  6      
  nop                                 #  46    0x69bd6  1      
  nop                                 #  47    0x69bd7  1      
.L_69c40:                             #        0x69bd8  0      
  addl $0x8, %esp                     #  48    0x69bd8  3      
  addq %r15, %rsp                     #  49    0x69bdb  3      
  popq %rbx                           #  50    0x69bde  2      
  popq %r12                           #  51    0x69be0  3      
  popq %r11                           #  52    0x69be3  3      
  andl $0xffffffe0, %r11d             #  53    0x69be6  7      
  addq %r15, %r11                     #  54    0x69bed  3      
  jmpq %r11                           #  55    0x69bf0  3      
  nop                                 #  56    0x69bf3  1      
  nop                                 #  57    0x69bf4  1      
  nop                                 #  58    0x69bf5  1      
  nop                                 #  59    0x69bf6  1      
  nop                                 #  60    0x69bf7  1      
  nop                                 #  61    0x69bf8  1      
  nop                                 #  62    0x69bf9  1      
  nop                                 #  63    0x69bfa  1      
  nop                                 #  64    0x69bfb  1      
  nop                                 #  65    0x69bfc  1      
  nop                                 #  66    0x69bfd  1      
                                                               
.size __libc_init_array, .-__libc_init_array

