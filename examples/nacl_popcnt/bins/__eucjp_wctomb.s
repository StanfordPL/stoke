  .text
  .globl __eucjp_wctomb
  .type __eucjp_wctomb, @function

#! file-offset 0x77780
#! rip-offset  0x77780
#! capacity    320 bytes

# Text                        #  Line  RIP      Bytes  
.__eucjp_wctomb:              #        0x77780  0      
  movl %esi, %esi             #  1     0x77780  2      
  xorl %eax, %eax             #  2     0x77782  2      
  movl %edi, %edi             #  3     0x77784  2      
  testq %rsi, %rsi            #  4     0x77786  3      
  je .L_77800                 #  5     0x77789  6      
  movl %edx, %eax             #  6     0x7778f  2      
  shrl $0x8, %eax             #  7     0x77791  3      
  testb %al, %al              #  8     0x77794  2      
  je .L_777e0                 #  9     0x77796  6      
  leal 0x5f(%rax), %ecx       #  10    0x7779c  3      
  cmpb $0x5d, %cl             #  11    0x7779f  3      
  setbe %r8b                  #  12    0x777a2  4      
  xchgw %ax, %ax              #  13    0x777a6  3      
  jbe .L_77820                #  14    0x777a9  6      
  leal 0x72(%rax), %ecx       #  15    0x777af  3      
  cmpb $0x1, %cl              #  16    0x777b2  3      
  jbe .L_77820                #  17    0x777b5  6      
  nop                         #  18    0x777bb  1      
  nop                         #  19    0x777bc  1      
.L_777c0:                     #        0x777bd  0      
  movl %edi, %edi             #  20    0x777bd  2      
  movl $0x54, (%r15,%rdi,1)   #  21    0x777bf  8      
  movl $0xffffffff, %eax      #  22    0x777c7  5      
  popq %r11                   #  23    0x777cc  3      
  andl $0xffffffe0, %r11d     #  24    0x777cf  7      
  addq %r15, %r11             #  25    0x777d6  3      
  jmpq %r11                   #  26    0x777d9  3      
  nop                         #  27    0x777dc  1      
.L_777e0:                     #        0x777dd  0      
  movl %esi, %esi             #  28    0x777dd  2      
  movb %dl, (%r15,%rsi,1)     #  29    0x777df  4      
  movl $0x1, %eax             #  30    0x777e3  5      
  nop                         #  31    0x777e8  1      
  nop                         #  32    0x777e9  1      
.L_77800:                     #        0x777ea  0      
  popq %r11                   #  33    0x777ea  3      
  andl $0xffffffe0, %r11d     #  34    0x777ed  7      
  addq %r15, %r11             #  35    0x777f4  3      
  jmpq %r11                   #  36    0x777f7  3      
  nop                         #  37    0x777fa  1      
  nop                         #  38    0x777fb  1      
.L_77820:                     #        0x777fc  0      
  movl %edx, %ecx             #  39    0x777fc  2      
  leal 0x5f(%rcx), %r9d       #  40    0x777fe  4      
  cmpb $0x5d, %r9b            #  41    0x77802  4      
  ja .L_77860                 #  42    0x77806  6      
  movl %esi, %esi             #  43    0x7780c  2      
  movb %al, (%r15,%rsi,1)     #  44    0x7780e  4      
  movl %esi, %esi             #  45    0x77812  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  46    0x77814  5      
  movl $0x2, %eax             #  47    0x77819  5      
  popq %r11                   #  48    0x7781e  3      
  andl $0xffffffe0, %r11d     #  49    0x77821  7      
  addq %r15, %r11             #  50    0x77828  3      
  jmpq %r11                   #  51    0x7782b  3      
  nop                         #  52    0x7782e  1      
  nop                         #  53    0x7782f  1      
.L_77860:                     #        0x77830  0      
  testb %r8b, %r8b            #  54    0x77830  3      
  je .L_777c0                 #  55    0x77833  6      
  orl $0xffffff80, %edx       #  56    0x77839  6      
  leal 0x5f(%rdx), %ecx       #  57    0x7783f  3      
  cmpb $0x5d, %cl             #  58    0x77842  3      
  ja .L_777c0                 #  59    0x77845  6      
  movl %esi, %esi             #  60    0x7784b  2      
  movb $0x8f, (%r15,%rsi,1)   #  61    0x7784d  5      
  nop                         #  62    0x77852  1      
  addl $0x1, %esi             #  63    0x77853  3      
  movl %esi, %esi             #  64    0x77856  2      
  movb %al, (%r15,%rsi,1)     #  65    0x77858  4      
  movl %esi, %esi             #  66    0x7785c  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  67    0x7785e  5      
  movl $0x3, %eax             #  68    0x77863  5      
  popq %r11                   #  69    0x77868  3      
  nop                         #  70    0x7786b  1      
  andl $0xffffffe0, %r11d     #  71    0x7786c  7      
  addq %r15, %r11             #  72    0x77873  3      
  jmpq %r11                   #  73    0x77876  3      
  nop                         #  74    0x77879  1      
  nop                         #  75    0x7787a  1      
                                                       
.size __eucjp_wctomb, .-__eucjp_wctomb

