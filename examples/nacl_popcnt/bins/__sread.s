  .text
  .globl __sread
  .type __sread, @function

#! file-offset 0x80160
#! rip-offset  0x80160
#! capacity    96 bytes

# Text                            #  Line  RIP      Bytes  
.__sread:                         #        0x80160  0      
  pushq %rbx                      #  1     0x80160  2      
  movl %esi, %ebx                 #  2     0x80162  2      
  movl %edx, %esi                 #  3     0x80164  2      
  movl %ebx, %ebx                 #  4     0x80166  2      
  movswl 0xe(%r15,%rbx,1), %edi   #  5     0x80168  6      
  movl %ecx, %edx                 #  6     0x8016e  2      
  nop                             #  7     0x80170  1      
  callq .read                     #  8     0x80171  5      
  testl %eax, %eax                #  9     0x80176  2      
  js .L_801a0                     #  10    0x80178  6      
  movslq %eax, %rdx               #  11    0x8017e  3      
  movl %ebx, %ebx                 #  12    0x80181  2      
  addq %rdx, 0x50(%r15,%rbx,1)    #  13    0x80183  5      
  popq %rbx                       #  14    0x80188  2      
  popq %r11                       #  15    0x8018a  3      
  andl $0xffffffe0, %r11d         #  16    0x8018d  7      
  addq %r15, %r11                 #  17    0x80194  3      
  jmpq %r11                       #  18    0x80197  3      
  nop                             #  19    0x8019a  1      
.L_801a0:                         #        0x8019b  0      
  movl %ebx, %ebx                 #  20    0x8019b  2      
  andw $0xefff, 0xc(%r15,%rbx,1)  #  21    0x8019d  8      
  popq %rbx                       #  22    0x801a5  2      
  popq %r11                       #  23    0x801a7  3      
  andl $0xffffffe0, %r11d         #  24    0x801aa  7      
  addq %r15, %r11                 #  25    0x801b1  3      
  jmpq %r11                       #  26    0x801b4  3      
  nop                             #  27    0x801b7  1      
  nop                             #  28    0x801b8  1      
  nop                             #  29    0x801b9  1      
  nop                             #  30    0x801ba  1      
  nop                             #  31    0x801bb  1      
  nop                             #  32    0x801bc  1      
  nop                             #  33    0x801bd  1      
  nop                             #  34    0x801be  1      
  nop                             #  35    0x801bf  1      
                                                           
.size __sread, .-__sread

