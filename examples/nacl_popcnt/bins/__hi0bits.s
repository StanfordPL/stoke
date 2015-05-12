  .text
  .globl __hi0bits
  .type __hi0bits, @function

#! file-offset 0x7e3e0
#! rip-offset  0x7e3e0
#! capacity    192 bytes

# Text                     #  Line  RIP      Bytes  
.__hi0bits:                #        0x7e3e0  0      
  xorl %eax, %eax          #  1     0x7e3e0  2      
  testl $0xffff0000, %edi  #  2     0x7e3e2  6      
  jne .L_7e400             #  3     0x7e3e8  6      
  shll $0x10, %edi         #  4     0x7e3ee  3      
  movb $0x10, %al          #  5     0x7e3f1  2      
  xchgw %ax, %ax           #  6     0x7e3f3  3      
  nop                      #  7     0x7e3f6  1      
.L_7e400:                  #        0x7e3f7  0      
  testl $0xff000000, %edi  #  8     0x7e3f7  6      
  jne .L_7e420             #  9     0x7e3fd  6      
  addl $0x8, %eax          #  10    0x7e403  3      
  shll $0x8, %edi          #  11    0x7e406  3      
  nop                      #  12    0x7e409  1      
  nop                      #  13    0x7e40a  1      
.L_7e420:                  #        0x7e40b  0      
  testl $0xf0000000, %edi  #  14    0x7e40b  6      
  jne .L_7e440             #  15    0x7e411  6      
  addl $0x4, %eax          #  16    0x7e417  3      
  shll $0x4, %edi          #  17    0x7e41a  3      
  nop                      #  18    0x7e41d  1      
  nop                      #  19    0x7e41e  1      
.L_7e440:                  #        0x7e41f  0      
  testl $0xc0000000, %edi  #  20    0x7e41f  6      
  jne .L_7e460             #  21    0x7e425  6      
  addl $0x2, %eax          #  22    0x7e42b  3      
  shll $0x2, %edi          #  23    0x7e42e  3      
  nop                      #  24    0x7e431  1      
  nop                      #  25    0x7e432  1      
.L_7e460:                  #        0x7e433  0      
  testl %edi, %edi         #  26    0x7e433  2      
  js .L_7e480              #  27    0x7e435  6      
  leal 0x1(%rax), %edx     #  28    0x7e43b  3      
  andl $0x40000000, %edi   #  29    0x7e43e  6      
  movl $0x20, %eax         #  30    0x7e444  5      
  cmovnel %edx, %eax       #  31    0x7e449  3      
  nop                      #  32    0x7e44c  1      
.L_7e480:                  #        0x7e44d  0      
  popq %r11                #  33    0x7e44d  3      
  andl $0xffffffe0, %r11d  #  34    0x7e450  7      
  addq %r15, %r11          #  35    0x7e457  3      
  jmpq %r11                #  36    0x7e45a  3      
  nop                      #  37    0x7e45d  1      
  nop                      #  38    0x7e45e  1      
                                                    
.size __hi0bits, .-__hi0bits

