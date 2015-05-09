  .text
  .globl __hi0bits
  .type __hi0bits, @function

#! file-offset 0x7e3c0
#! rip-offset  0x7e3c0
#! capacity    192 bytes

# Text                     #  Line  RIP      Bytes  
.__hi0bits:                #        0x7e3c0  0      
  xorl %eax, %eax          #  1     0x7e3c0  2      
  testl $0xffff0000, %edi  #  2     0x7e3c2  6      
  jne .L_7e3e0             #  3     0x7e3c8  6      
  shll $0x10, %edi         #  4     0x7e3ce  3      
  movb $0x10, %al          #  5     0x7e3d1  2      
  xchgw %ax, %ax           #  6     0x7e3d3  3      
  nop                      #  7     0x7e3d6  1      
.L_7e3e0:                  #        0x7e3d7  0      
  testl $0xff000000, %edi  #  8     0x7e3d7  6      
  jne .L_7e400             #  9     0x7e3dd  6      
  addl $0x8, %eax          #  10    0x7e3e3  3      
  shll $0x8, %edi          #  11    0x7e3e6  3      
  nop                      #  12    0x7e3e9  1      
  nop                      #  13    0x7e3ea  1      
.L_7e400:                  #        0x7e3eb  0      
  testl $0xf0000000, %edi  #  14    0x7e3eb  6      
  jne .L_7e420             #  15    0x7e3f1  6      
  addl $0x4, %eax          #  16    0x7e3f7  3      
  shll $0x4, %edi          #  17    0x7e3fa  3      
  nop                      #  18    0x7e3fd  1      
  nop                      #  19    0x7e3fe  1      
.L_7e420:                  #        0x7e3ff  0      
  testl $0xc0000000, %edi  #  20    0x7e3ff  6      
  jne .L_7e440             #  21    0x7e405  6      
  addl $0x2, %eax          #  22    0x7e40b  3      
  shll $0x2, %edi          #  23    0x7e40e  3      
  nop                      #  24    0x7e411  1      
  nop                      #  25    0x7e412  1      
.L_7e440:                  #        0x7e413  0      
  testl %edi, %edi         #  26    0x7e413  2      
  js .L_7e460              #  27    0x7e415  6      
  leal 0x1(%rax), %edx     #  28    0x7e41b  3      
  andl $0x40000000, %edi   #  29    0x7e41e  6      
  movl $0x20, %eax         #  30    0x7e424  5      
  cmovnel %edx, %eax       #  31    0x7e429  3      
  nop                      #  32    0x7e42c  1      
.L_7e460:                  #        0x7e42d  0      
  popq %r11                #  33    0x7e42d  3      
  andl $0xffffffe0, %r11d  #  34    0x7e430  7      
  addq %r15, %r11          #  35    0x7e437  3      
  jmpq %r11                #  36    0x7e43a  3      
  nop                      #  37    0x7e43d  1      
  nop                      #  38    0x7e43e  1      
                                                    
.size __hi0bits, .-__hi0bits

