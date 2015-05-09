  .text
  .globl __sjis_wctomb
  .type __sjis_wctomb, @function

#! file-offset 0x77680
#! rip-offset  0x77680
#! capacity    224 bytes

# Text                        #  Line  RIP      Bytes  
.__sjis_wctomb:               #        0x77680  0      
  movl %esi, %esi             #  1     0x77680  2      
  xorl %eax, %eax             #  2     0x77682  2      
  movl %edi, %edi             #  3     0x77684  2      
  testq %rsi, %rsi            #  4     0x77686  3      
  je .L_77720                 #  5     0x77689  6      
  movl %edx, %eax             #  6     0x7768f  2      
  shrl $0x8, %eax             #  7     0x77691  3      
  testb %al, %al              #  8     0x77694  2      
  je .L_77700                 #  9     0x77696  6      
  leal 0x20(%rax), %ecx       #  10    0x7769c  3      
  cmpb $0xf, %cl              #  11    0x7769f  3      
  xchgw %ax, %ax              #  12    0x776a2  3      
  jbe .L_776c0                #  13    0x776a5  6      
  leal 0x7f(%rax), %ecx       #  14    0x776ab  3      
  cmpb $0x1e, %cl             #  15    0x776ae  3      
  ja .L_776e0                 #  16    0x776b1  6      
  nop                         #  17    0x776b7  1      
  nop                         #  18    0x776b8  1      
.L_776c0:                     #        0x776b9  0      
  leal -0x80(%rdx), %ecx      #  19    0x776b9  3      
  cmpb $0x7c, %cl             #  20    0x776bc  3      
  jbe .L_77740                #  21    0x776bf  6      
  leal -0x40(%rdx), %ecx      #  22    0x776c5  3      
  cmpb $0x3e, %cl             #  23    0x776c8  3      
  jbe .L_77740                #  24    0x776cb  6      
  nop                         #  25    0x776d1  1      
  nop                         #  26    0x776d2  1      
.L_776e0:                     #        0x776d3  0      
  movl %edi, %edi             #  27    0x776d3  2      
  movl $0x54, (%r15,%rdi,1)   #  28    0x776d5  8      
  movl $0xffffffff, %eax      #  29    0x776dd  5      
  popq %r11                   #  30    0x776e2  3      
  andl $0xffffffe0, %r11d     #  31    0x776e5  7      
  addq %r15, %r11             #  32    0x776ec  3      
  jmpq %r11                   #  33    0x776ef  3      
  nop                         #  34    0x776f2  1      
.L_77700:                     #        0x776f3  0      
  movl %esi, %esi             #  35    0x776f3  2      
  movb %dl, (%r15,%rsi,1)     #  36    0x776f5  4      
  movl $0x1, %eax             #  37    0x776f9  5      
  nop                         #  38    0x776fe  1      
  nop                         #  39    0x776ff  1      
.L_77720:                     #        0x77700  0      
  popq %r11                   #  40    0x77700  3      
  andl $0xffffffe0, %r11d     #  41    0x77703  7      
  addq %r15, %r11             #  42    0x7770a  3      
  jmpq %r11                   #  43    0x7770d  3      
  nop                         #  44    0x77710  1      
  nop                         #  45    0x77711  1      
.L_77740:                     #        0x77712  0      
  movl %esi, %esi             #  46    0x77712  2      
  movb %al, (%r15,%rsi,1)     #  47    0x77714  4      
  movl %esi, %esi             #  48    0x77718  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  49    0x7771a  5      
  movl $0x2, %eax             #  50    0x7771f  5      
  popq %r11                   #  51    0x77724  3      
  andl $0xffffffe0, %r11d     #  52    0x77727  7      
  addq %r15, %r11             #  53    0x7772e  3      
  jmpq %r11                   #  54    0x77731  3      
  xchgw %ax, %ax              #  55    0x77734  3      
                                                       
.size __sjis_wctomb, .-__sjis_wctomb

