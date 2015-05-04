  .text
  .globl __hi0bits
  .type __hi0bits, @function

#! file-offset 0x7e460
#! rip-offset  0x7e460
#! capacity    192 bytes

# Text                     #  Line  RIP      Bytes  
.__hi0bits:                #        0x7e460  0      
  xorl %eax, %eax          #  1     0x7e460  2      
  testl $0xffff0000, %edi  #  2     0x7e462  6      
  jne .L_7e480             #  3     0x7e468  6      
  shll $0x10, %edi         #  4     0x7e46e  3      
  movb $0x10, %al          #  5     0x7e471  2      
  xchgw %ax, %ax           #  6     0x7e473  3      
  nop                      #  7     0x7e476  1      
.L_7e480:                  #        0x7e477  0      
  testl $0xff000000, %edi  #  8     0x7e477  6      
  jne .L_7e4a0             #  9     0x7e47d  6      
  addl $0x8, %eax          #  10    0x7e483  3      
  shll $0x8, %edi          #  11    0x7e486  3      
  nop                      #  12    0x7e489  1      
  nop                      #  13    0x7e48a  1      
.L_7e4a0:                  #        0x7e48b  0      
  testl $0xf0000000, %edi  #  14    0x7e48b  6      
  jne .L_7e4c0             #  15    0x7e491  6      
  addl $0x4, %eax          #  16    0x7e497  3      
  shll $0x4, %edi          #  17    0x7e49a  3      
  nop                      #  18    0x7e49d  1      
  nop                      #  19    0x7e49e  1      
.L_7e4c0:                  #        0x7e49f  0      
  testl $0xc0000000, %edi  #  20    0x7e49f  6      
  jne .L_7e4e0             #  21    0x7e4a5  6      
  addl $0x2, %eax          #  22    0x7e4ab  3      
  shll $0x2, %edi          #  23    0x7e4ae  3      
  nop                      #  24    0x7e4b1  1      
  nop                      #  25    0x7e4b2  1      
.L_7e4e0:                  #        0x7e4b3  0      
  testl %edi, %edi         #  26    0x7e4b3  2      
  js .L_7e500              #  27    0x7e4b5  6      
  leal 0x1(%rax), %edx     #  28    0x7e4bb  3      
  andl $0x40000000, %edi   #  29    0x7e4be  6      
  movl $0x20, %eax         #  30    0x7e4c4  5      
  cmovnel %edx, %eax       #  31    0x7e4c9  3      
  nop                      #  32    0x7e4cc  1      
.L_7e500:                  #        0x7e4cd  0      
  popq %r11                #  33    0x7e4cd  3      
  andl $0xffffffe0, %r11d  #  34    0x7e4d0  7      
  addq %r15, %r11          #  35    0x7e4d7  3      
  jmpq %r11                #  36    0x7e4da  3      
  nop                      #  37    0x7e4dd  1      
  nop                      #  38    0x7e4de  1      
                                                    
.size __hi0bits, .-__hi0bits

