  .text
  .globl __sread
  .type __sread, @function

#! file-offset 0x80140
#! rip-offset  0x80140
#! capacity    96 bytes

# Text                            #  Line  RIP      Bytes  
.__sread:                         #        0x80140  0      
  pushq %rbx                      #  1     0x80140  2      
  movl %esi, %ebx                 #  2     0x80142  2      
  movl %edx, %esi                 #  3     0x80144  2      
  movl %ebx, %ebx                 #  4     0x80146  2      
  movswl 0xe(%r15,%rbx,1), %edi   #  5     0x80148  6      
  movl %ecx, %edx                 #  6     0x8014e  2      
  nop                             #  7     0x80150  1      
  callq .read                     #  8     0x80151  5      
  testl %eax, %eax                #  9     0x80156  2      
  js .L_80180                     #  10    0x80158  6      
  movslq %eax, %rdx               #  11    0x8015e  3      
  movl %ebx, %ebx                 #  12    0x80161  2      
  addq %rdx, 0x50(%r15,%rbx,1)    #  13    0x80163  5      
  popq %rbx                       #  14    0x80168  2      
  popq %r11                       #  15    0x8016a  3      
  andl $0xffffffe0, %r11d         #  16    0x8016d  7      
  addq %r15, %r11                 #  17    0x80174  3      
  jmpq %r11                       #  18    0x80177  3      
  nop                             #  19    0x8017a  1      
.L_80180:                         #        0x8017b  0      
  movl %ebx, %ebx                 #  20    0x8017b  2      
  andw $0xefff, 0xc(%r15,%rbx,1)  #  21    0x8017d  8      
  popq %rbx                       #  22    0x80185  2      
  popq %r11                       #  23    0x80187  3      
  andl $0xffffffe0, %r11d         #  24    0x8018a  7      
  addq %r15, %r11                 #  25    0x80191  3      
  jmpq %r11                       #  26    0x80194  3      
  nop                             #  27    0x80197  1      
  nop                             #  28    0x80198  1      
  nop                             #  29    0x80199  1      
  nop                             #  30    0x8019a  1      
  nop                             #  31    0x8019b  1      
  nop                             #  32    0x8019c  1      
  nop                             #  33    0x8019d  1      
  nop                             #  34    0x8019e  1      
  nop                             #  35    0x8019f  1      
                                                           
.size __sread, .-__sread

