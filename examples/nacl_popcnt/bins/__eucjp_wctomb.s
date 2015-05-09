  .text
  .globl __eucjp_wctomb
  .type __eucjp_wctomb, @function

#! file-offset 0x77760
#! rip-offset  0x77760
#! capacity    320 bytes

# Text                        #  Line  RIP      Bytes  
.__eucjp_wctomb:              #        0x77760  0      
  movl %esi, %esi             #  1     0x77760  2      
  xorl %eax, %eax             #  2     0x77762  2      
  movl %edi, %edi             #  3     0x77764  2      
  testq %rsi, %rsi            #  4     0x77766  3      
  je .L_777e0                 #  5     0x77769  6      
  movl %edx, %eax             #  6     0x7776f  2      
  shrl $0x8, %eax             #  7     0x77771  3      
  testb %al, %al              #  8     0x77774  2      
  je .L_777c0                 #  9     0x77776  6      
  leal 0x5f(%rax), %ecx       #  10    0x7777c  3      
  cmpb $0x5d, %cl             #  11    0x7777f  3      
  setbe %r8b                  #  12    0x77782  4      
  xchgw %ax, %ax              #  13    0x77786  3      
  jbe .L_77800                #  14    0x77789  6      
  leal 0x72(%rax), %ecx       #  15    0x7778f  3      
  cmpb $0x1, %cl              #  16    0x77792  3      
  jbe .L_77800                #  17    0x77795  6      
  nop                         #  18    0x7779b  1      
  nop                         #  19    0x7779c  1      
.L_777a0:                     #        0x7779d  0      
  movl %edi, %edi             #  20    0x7779d  2      
  movl $0x54, (%r15,%rdi,1)   #  21    0x7779f  8      
  movl $0xffffffff, %eax      #  22    0x777a7  5      
  popq %r11                   #  23    0x777ac  3      
  andl $0xffffffe0, %r11d     #  24    0x777af  7      
  addq %r15, %r11             #  25    0x777b6  3      
  jmpq %r11                   #  26    0x777b9  3      
  nop                         #  27    0x777bc  1      
.L_777c0:                     #        0x777bd  0      
  movl %esi, %esi             #  28    0x777bd  2      
  movb %dl, (%r15,%rsi,1)     #  29    0x777bf  4      
  movl $0x1, %eax             #  30    0x777c3  5      
  nop                         #  31    0x777c8  1      
  nop                         #  32    0x777c9  1      
.L_777e0:                     #        0x777ca  0      
  popq %r11                   #  33    0x777ca  3      
  andl $0xffffffe0, %r11d     #  34    0x777cd  7      
  addq %r15, %r11             #  35    0x777d4  3      
  jmpq %r11                   #  36    0x777d7  3      
  nop                         #  37    0x777da  1      
  nop                         #  38    0x777db  1      
.L_77800:                     #        0x777dc  0      
  movl %edx, %ecx             #  39    0x777dc  2      
  leal 0x5f(%rcx), %r9d       #  40    0x777de  4      
  cmpb $0x5d, %r9b            #  41    0x777e2  4      
  ja .L_77840                 #  42    0x777e6  6      
  movl %esi, %esi             #  43    0x777ec  2      
  movb %al, (%r15,%rsi,1)     #  44    0x777ee  4      
  movl %esi, %esi             #  45    0x777f2  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  46    0x777f4  5      
  movl $0x2, %eax             #  47    0x777f9  5      
  popq %r11                   #  48    0x777fe  3      
  andl $0xffffffe0, %r11d     #  49    0x77801  7      
  addq %r15, %r11             #  50    0x77808  3      
  jmpq %r11                   #  51    0x7780b  3      
  nop                         #  52    0x7780e  1      
  nop                         #  53    0x7780f  1      
.L_77840:                     #        0x77810  0      
  testb %r8b, %r8b            #  54    0x77810  3      
  je .L_777a0                 #  55    0x77813  6      
  orl $0xffffff80, %edx       #  56    0x77819  6      
  leal 0x5f(%rdx), %ecx       #  57    0x7781f  3      
  cmpb $0x5d, %cl             #  58    0x77822  3      
  ja .L_777a0                 #  59    0x77825  6      
  movl %esi, %esi             #  60    0x7782b  2      
  movb $0x8f, (%r15,%rsi,1)   #  61    0x7782d  5      
  nop                         #  62    0x77832  1      
  addl $0x1, %esi             #  63    0x77833  3      
  movl %esi, %esi             #  64    0x77836  2      
  movb %al, (%r15,%rsi,1)     #  65    0x77838  4      
  movl %esi, %esi             #  66    0x7783c  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  67    0x7783e  5      
  movl $0x3, %eax             #  68    0x77843  5      
  popq %r11                   #  69    0x77848  3      
  nop                         #  70    0x7784b  1      
  andl $0xffffffe0, %r11d     #  71    0x7784c  7      
  addq %r15, %r11             #  72    0x77853  3      
  jmpq %r11                   #  73    0x77856  3      
  nop                         #  74    0x77859  1      
  nop                         #  75    0x7785a  1      
                                                       
.size __eucjp_wctomb, .-__eucjp_wctomb

