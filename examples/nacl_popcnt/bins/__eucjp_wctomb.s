  .text
  .globl __eucjp_wctomb
  .type __eucjp_wctomb, @function

#! file-offset 0x77800
#! rip-offset  0x77800
#! capacity    320 bytes

# Text                        #  Line  RIP      Bytes  
.__eucjp_wctomb:              #        0x77800  0      
  movl %esi, %esi             #  1     0x77800  2      
  xorl %eax, %eax             #  2     0x77802  2      
  movl %edi, %edi             #  3     0x77804  2      
  testq %rsi, %rsi            #  4     0x77806  3      
  je .L_77880                 #  5     0x77809  6      
  movl %edx, %eax             #  6     0x7780f  2      
  shrl $0x8, %eax             #  7     0x77811  3      
  testb %al, %al              #  8     0x77814  2      
  je .L_77860                 #  9     0x77816  6      
  leal 0x5f(%rax), %ecx       #  10    0x7781c  3      
  cmpb $0x5d, %cl             #  11    0x7781f  3      
  setbe %r8b                  #  12    0x77822  4      
  xchgw %ax, %ax              #  13    0x77826  3      
  jbe .L_778a0                #  14    0x77829  6      
  leal 0x72(%rax), %ecx       #  15    0x7782f  3      
  cmpb $0x1, %cl              #  16    0x77832  3      
  jbe .L_778a0                #  17    0x77835  6      
  nop                         #  18    0x7783b  1      
  nop                         #  19    0x7783c  1      
.L_77840:                     #        0x7783d  0      
  movl %edi, %edi             #  20    0x7783d  2      
  movl $0x54, (%r15,%rdi,1)   #  21    0x7783f  8      
  movl $0xffffffff, %eax      #  22    0x77847  5      
  popq %r11                   #  23    0x7784c  3      
  andl $0xffffffe0, %r11d     #  24    0x7784f  7      
  addq %r15, %r11             #  25    0x77856  3      
  jmpq %r11                   #  26    0x77859  3      
  nop                         #  27    0x7785c  1      
.L_77860:                     #        0x7785d  0      
  movl %esi, %esi             #  28    0x7785d  2      
  movb %dl, (%r15,%rsi,1)     #  29    0x7785f  4      
  movl $0x1, %eax             #  30    0x77863  5      
  nop                         #  31    0x77868  1      
  nop                         #  32    0x77869  1      
.L_77880:                     #        0x7786a  0      
  popq %r11                   #  33    0x7786a  3      
  andl $0xffffffe0, %r11d     #  34    0x7786d  7      
  addq %r15, %r11             #  35    0x77874  3      
  jmpq %r11                   #  36    0x77877  3      
  nop                         #  37    0x7787a  1      
  nop                         #  38    0x7787b  1      
.L_778a0:                     #        0x7787c  0      
  movl %edx, %ecx             #  39    0x7787c  2      
  leal 0x5f(%rcx), %r9d       #  40    0x7787e  4      
  cmpb $0x5d, %r9b            #  41    0x77882  4      
  ja .L_778e0                 #  42    0x77886  6      
  movl %esi, %esi             #  43    0x7788c  2      
  movb %al, (%r15,%rsi,1)     #  44    0x7788e  4      
  movl %esi, %esi             #  45    0x77892  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  46    0x77894  5      
  movl $0x2, %eax             #  47    0x77899  5      
  popq %r11                   #  48    0x7789e  3      
  andl $0xffffffe0, %r11d     #  49    0x778a1  7      
  addq %r15, %r11             #  50    0x778a8  3      
  jmpq %r11                   #  51    0x778ab  3      
  nop                         #  52    0x778ae  1      
  nop                         #  53    0x778af  1      
.L_778e0:                     #        0x778b0  0      
  testb %r8b, %r8b            #  54    0x778b0  3      
  je .L_77840                 #  55    0x778b3  6      
  orl $0xffffff80, %edx       #  56    0x778b9  6      
  leal 0x5f(%rdx), %ecx       #  57    0x778bf  3      
  cmpb $0x5d, %cl             #  58    0x778c2  3      
  ja .L_77840                 #  59    0x778c5  6      
  movl %esi, %esi             #  60    0x778cb  2      
  movb $0x8f, (%r15,%rsi,1)   #  61    0x778cd  5      
  nop                         #  62    0x778d2  1      
  addl $0x1, %esi             #  63    0x778d3  3      
  movl %esi, %esi             #  64    0x778d6  2      
  movb %al, (%r15,%rsi,1)     #  65    0x778d8  4      
  movl %esi, %esi             #  66    0x778dc  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  67    0x778de  5      
  movl $0x3, %eax             #  68    0x778e3  5      
  popq %r11                   #  69    0x778e8  3      
  nop                         #  70    0x778eb  1      
  andl $0xffffffe0, %r11d     #  71    0x778ec  7      
  addq %r15, %r11             #  72    0x778f3  3      
  jmpq %r11                   #  73    0x778f6  3      
  nop                         #  74    0x778f9  1      
  nop                         #  75    0x778fa  1      
                                                       
.size __eucjp_wctomb, .-__eucjp_wctomb

