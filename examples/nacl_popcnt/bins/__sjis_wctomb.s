  .text
  .globl __sjis_wctomb
  .type __sjis_wctomb, @function

#! file-offset 0x77720
#! rip-offset  0x77720
#! capacity    224 bytes

# Text                        #  Line  RIP      Bytes  
.__sjis_wctomb:               #        0x77720  0      
  movl %esi, %esi             #  1     0x77720  2      
  xorl %eax, %eax             #  2     0x77722  2      
  movl %edi, %edi             #  3     0x77724  2      
  testq %rsi, %rsi            #  4     0x77726  3      
  je .L_777c0                 #  5     0x77729  6      
  movl %edx, %eax             #  6     0x7772f  2      
  shrl $0x8, %eax             #  7     0x77731  3      
  testb %al, %al              #  8     0x77734  2      
  je .L_777a0                 #  9     0x77736  6      
  leal 0x20(%rax), %ecx       #  10    0x7773c  3      
  cmpb $0xf, %cl              #  11    0x7773f  3      
  xchgw %ax, %ax              #  12    0x77742  3      
  jbe .L_77760                #  13    0x77745  6      
  leal 0x7f(%rax), %ecx       #  14    0x7774b  3      
  cmpb $0x1e, %cl             #  15    0x7774e  3      
  ja .L_77780                 #  16    0x77751  6      
  nop                         #  17    0x77757  1      
  nop                         #  18    0x77758  1      
.L_77760:                     #        0x77759  0      
  leal -0x80(%rdx), %ecx      #  19    0x77759  3      
  cmpb $0x7c, %cl             #  20    0x7775c  3      
  jbe .L_777e0                #  21    0x7775f  6      
  leal -0x40(%rdx), %ecx      #  22    0x77765  3      
  cmpb $0x3e, %cl             #  23    0x77768  3      
  jbe .L_777e0                #  24    0x7776b  6      
  nop                         #  25    0x77771  1      
  nop                         #  26    0x77772  1      
.L_77780:                     #        0x77773  0      
  movl %edi, %edi             #  27    0x77773  2      
  movl $0x54, (%r15,%rdi,1)   #  28    0x77775  8      
  movl $0xffffffff, %eax      #  29    0x7777d  5      
  popq %r11                   #  30    0x77782  3      
  andl $0xffffffe0, %r11d     #  31    0x77785  7      
  addq %r15, %r11             #  32    0x7778c  3      
  jmpq %r11                   #  33    0x7778f  3      
  nop                         #  34    0x77792  1      
.L_777a0:                     #        0x77793  0      
  movl %esi, %esi             #  35    0x77793  2      
  movb %dl, (%r15,%rsi,1)     #  36    0x77795  4      
  movl $0x1, %eax             #  37    0x77799  5      
  nop                         #  38    0x7779e  1      
  nop                         #  39    0x7779f  1      
.L_777c0:                     #        0x777a0  0      
  popq %r11                   #  40    0x777a0  3      
  andl $0xffffffe0, %r11d     #  41    0x777a3  7      
  addq %r15, %r11             #  42    0x777aa  3      
  jmpq %r11                   #  43    0x777ad  3      
  nop                         #  44    0x777b0  1      
  nop                         #  45    0x777b1  1      
.L_777e0:                     #        0x777b2  0      
  movl %esi, %esi             #  46    0x777b2  2      
  movb %al, (%r15,%rsi,1)     #  47    0x777b4  4      
  movl %esi, %esi             #  48    0x777b8  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  49    0x777ba  5      
  movl $0x2, %eax             #  50    0x777bf  5      
  popq %r11                   #  51    0x777c4  3      
  andl $0xffffffe0, %r11d     #  52    0x777c7  7      
  addq %r15, %r11             #  53    0x777ce  3      
  jmpq %r11                   #  54    0x777d1  3      
  xchgw %ax, %ax              #  55    0x777d4  3      
                                                       
.size __sjis_wctomb, .-__sjis_wctomb

