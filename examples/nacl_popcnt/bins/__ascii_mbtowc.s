  .text
  .globl __ascii_mbtowc
  .type __ascii_mbtowc, @function

#! file-offset 0x7d560
#! rip-offset  0x7d560
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
.__ascii_mbtowc:              #        0x7d560  0      
  movl %esi, %esi             #  1     0x7d560  2      
  leal -0x4(%rsp), %eax       #  2     0x7d562  4      
  movl %edx, %edx             #  3     0x7d566  2      
  testq %rsi, %rsi            #  4     0x7d568  3      
  cmoveq %rax, %rsi           #  5     0x7d56b  4      
  xorl %eax, %eax             #  6     0x7d56f  2      
  testq %rdx, %rdx            #  7     0x7d571  3      
  jne .L_7d5a0                #  8     0x7d574  6      
  nop                         #  9     0x7d57a  1      
.L_7d580:                     #        0x7d57b  0      
  popq %r11                   #  10    0x7d57b  3      
  andl $0xffffffe0, %r11d     #  11    0x7d57e  7      
  addq %r15, %r11             #  12    0x7d585  3      
  jmpq %r11                   #  13    0x7d588  3      
  nop                         #  14    0x7d58b  1      
  nop                         #  15    0x7d58c  1      
.L_7d5a0:                     #        0x7d58d  0      
  testl %ecx, %ecx            #  16    0x7d58d  2      
  movl $0xfffffffe, %eax      #  17    0x7d58f  5      
  je .L_7d580                 #  18    0x7d594  6      
  movl %edx, %edx             #  19    0x7d59a  2      
  movzbl (%r15,%rdx,1), %eax  #  20    0x7d59c  5      
  movl %esi, %esi             #  21    0x7d5a1  2      
  movl %eax, (%r15,%rsi,1)    #  22    0x7d5a3  4      
  xorl %eax, %eax             #  23    0x7d5a7  2      
  movl %edx, %edx             #  24    0x7d5a9  2      
  cmpb $0x0, (%r15,%rdx,1)    #  25    0x7d5ab  5      
  nop                         #  26    0x7d5b0  1      
  setne %al                   #  27    0x7d5b1  3      
  popq %r11                   #  28    0x7d5b4  3      
  andl $0xffffffe0, %r11d     #  29    0x7d5b7  7      
  addq %r15, %r11             #  30    0x7d5be  3      
  jmpq %r11                   #  31    0x7d5c1  3      
  xchgw %ax, %ax              #  32    0x7d5c4  3      
  nop                         #  33    0x7d5c7  1      
                                                       
.size __ascii_mbtowc, .-__ascii_mbtowc

