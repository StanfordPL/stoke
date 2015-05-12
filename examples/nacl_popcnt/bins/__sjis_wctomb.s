  .text
  .globl __sjis_wctomb
  .type __sjis_wctomb, @function

#! file-offset 0x776a0
#! rip-offset  0x776a0
#! capacity    224 bytes

# Text                        #  Line  RIP      Bytes  
.__sjis_wctomb:               #        0x776a0  0      
  movl %esi, %esi             #  1     0x776a0  2      
  xorl %eax, %eax             #  2     0x776a2  2      
  movl %edi, %edi             #  3     0x776a4  2      
  testq %rsi, %rsi            #  4     0x776a6  3      
  je .L_77740                 #  5     0x776a9  6      
  movl %edx, %eax             #  6     0x776af  2      
  shrl $0x8, %eax             #  7     0x776b1  3      
  testb %al, %al              #  8     0x776b4  2      
  je .L_77720                 #  9     0x776b6  6      
  leal 0x20(%rax), %ecx       #  10    0x776bc  3      
  cmpb $0xf, %cl              #  11    0x776bf  3      
  xchgw %ax, %ax              #  12    0x776c2  3      
  jbe .L_776e0                #  13    0x776c5  6      
  leal 0x7f(%rax), %ecx       #  14    0x776cb  3      
  cmpb $0x1e, %cl             #  15    0x776ce  3      
  ja .L_77700                 #  16    0x776d1  6      
  nop                         #  17    0x776d7  1      
  nop                         #  18    0x776d8  1      
.L_776e0:                     #        0x776d9  0      
  leal -0x80(%rdx), %ecx      #  19    0x776d9  3      
  cmpb $0x7c, %cl             #  20    0x776dc  3      
  jbe .L_77760                #  21    0x776df  6      
  leal -0x40(%rdx), %ecx      #  22    0x776e5  3      
  cmpb $0x3e, %cl             #  23    0x776e8  3      
  jbe .L_77760                #  24    0x776eb  6      
  nop                         #  25    0x776f1  1      
  nop                         #  26    0x776f2  1      
.L_77700:                     #        0x776f3  0      
  movl %edi, %edi             #  27    0x776f3  2      
  movl $0x54, (%r15,%rdi,1)   #  28    0x776f5  8      
  movl $0xffffffff, %eax      #  29    0x776fd  5      
  popq %r11                   #  30    0x77702  3      
  andl $0xffffffe0, %r11d     #  31    0x77705  7      
  addq %r15, %r11             #  32    0x7770c  3      
  jmpq %r11                   #  33    0x7770f  3      
  nop                         #  34    0x77712  1      
.L_77720:                     #        0x77713  0      
  movl %esi, %esi             #  35    0x77713  2      
  movb %dl, (%r15,%rsi,1)     #  36    0x77715  4      
  movl $0x1, %eax             #  37    0x77719  5      
  nop                         #  38    0x7771e  1      
  nop                         #  39    0x7771f  1      
.L_77740:                     #        0x77720  0      
  popq %r11                   #  40    0x77720  3      
  andl $0xffffffe0, %r11d     #  41    0x77723  7      
  addq %r15, %r11             #  42    0x7772a  3      
  jmpq %r11                   #  43    0x7772d  3      
  nop                         #  44    0x77730  1      
  nop                         #  45    0x77731  1      
.L_77760:                     #        0x77732  0      
  movl %esi, %esi             #  46    0x77732  2      
  movb %al, (%r15,%rsi,1)     #  47    0x77734  4      
  movl %esi, %esi             #  48    0x77738  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  49    0x7773a  5      
  movl $0x2, %eax             #  50    0x7773f  5      
  popq %r11                   #  51    0x77744  3      
  andl $0xffffffe0, %r11d     #  52    0x77747  7      
  addq %r15, %r11             #  53    0x7774e  3      
  jmpq %r11                   #  54    0x77751  3      
  xchgw %ax, %ax              #  55    0x77754  3      
                                                       
.size __sjis_wctomb, .-__sjis_wctomb

