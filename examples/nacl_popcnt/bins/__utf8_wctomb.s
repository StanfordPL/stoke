  .text
  .globl __utf8_wctomb
  .type __utf8_wctomb, @function

#! file-offset 0x77580
#! rip-offset  0x77580
#! capacity    416 bytes

# Text                        #  Line  RIP      Bytes  
.__utf8_wctomb:               #        0x77580  0      
  movl %esi, %esi             #  1     0x77580  2      
  xorl %eax, %eax             #  2     0x77582  2      
  movl %edi, %edi             #  3     0x77584  2      
  testq %rsi, %rsi            #  4     0x77586  3      
  je .L_77600                 #  5     0x77589  6      
  cmpl $0x7f, %edx            #  6     0x7758f  3      
  jbe .L_77620                #  7     0x77592  6      
  leal -0x80(%rdx), %eax      #  8     0x77598  3      
  cmpl $0x77f, %eax           #  9     0x7759b  5      
  nop                         #  10    0x775a0  1      
  ja .L_77640                 #  11    0x775a1  6      
  movl %edx, %eax             #  12    0x775a7  2      
  andl $0x3f, %edx            #  13    0x775a9  3      
  andl $0x7c0, %eax           #  14    0x775ac  5      
  orl $0xffffff80, %edx       #  15    0x775b1  6      
  shrl $0x6, %eax             #  16    0x775b7  3      
  movl %esi, %esi             #  17    0x775ba  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  18    0x775bc  5      
  orl $0xffffffc0, %eax       #  19    0x775c1  5      
  movl %esi, %esi             #  20    0x775c6  2      
  movb %al, (%r15,%rsi,1)     #  21    0x775c8  4      
  movl $0x2, %eax             #  22    0x775cc  5      
  popq %r11                   #  23    0x775d1  3      
  andl $0xffffffe0, %r11d     #  24    0x775d4  7      
  addq %r15, %r11             #  25    0x775db  3      
  jmpq %r11                   #  26    0x775de  3      
  nop                         #  27    0x775e1  1      
.L_775e0:                     #        0x775e2  0      
  movl %edi, %edi             #  28    0x775e2  2      
  movl $0x54, (%r15,%rdi,1)   #  29    0x775e4  8      
  movl $0xffffffff, %eax      #  30    0x775ec  5      
  xchgw %ax, %ax              #  31    0x775f1  3      
  nop                         #  32    0x775f4  1      
.L_77600:                     #        0x775f5  0      
  popq %r11                   #  33    0x775f5  3      
  andl $0xffffffe0, %r11d     #  34    0x775f8  7      
  addq %r15, %r11             #  35    0x775ff  3      
  jmpq %r11                   #  36    0x77602  3      
  nop                         #  37    0x77605  1      
  nop                         #  38    0x77606  1      
.L_77620:                     #        0x77607  0      
  movl %esi, %esi             #  39    0x77607  2      
  movb %dl, (%r15,%rsi,1)     #  40    0x77609  4      
  movb $0x1, %al              #  41    0x7760d  2      
  popq %r11                   #  42    0x7760f  3      
  andl $0xffffffe0, %r11d     #  43    0x77612  7      
  addq %r15, %r11             #  44    0x77619  3      
  jmpq %r11                   #  45    0x7761c  3      
  nop                         #  46    0x7761f  1      
.L_77640:                     #        0x77620  0      
  leal -0x800(%rdx), %eax     #  47    0x77620  6      
  cmpl $0xf7ff, %eax          #  48    0x77626  5      
  ja .L_776a0                 #  49    0x7762b  6      
  movl %edx, %eax             #  50    0x77631  2      
  andl $0xf000, %eax          #  51    0x77633  5      
  shrl $0xc, %eax             #  52    0x77638  3      
  orl $0xffffffe0, %eax       #  53    0x7763b  5      
  movl %esi, %esi             #  54    0x77640  2      
  movb %al, (%r15,%rsi,1)     #  55    0x77642  4      
  movl %edx, %eax             #  56    0x77646  2      
  andl $0x3f, %edx            #  57    0x77648  3      
  andl $0xfc0, %eax           #  58    0x7764b  5      
  addl $0x1, %esi             #  59    0x77650  3      
  orl $0xffffff80, %edx       #  60    0x77653  6      
  shrl $0x6, %eax             #  61    0x77659  3      
  movl %esi, %esi             #  62    0x7765c  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  63    0x7765e  5      
  orl $0xffffff80, %eax       #  64    0x77663  5      
  nop                         #  65    0x77668  1      
  movl %esi, %esi             #  66    0x77669  2      
  movb %al, (%r15,%rsi,1)     #  67    0x7766b  4      
  movl $0x3, %eax             #  68    0x7766f  5      
  popq %r11                   #  69    0x77674  3      
  andl $0xffffffe0, %r11d     #  70    0x77677  7      
  addq %r15, %r11             #  71    0x7767e  3      
  jmpq %r11                   #  72    0x77681  3      
  nop                         #  73    0x77684  1      
.L_776a0:                     #        0x77685  0      
  leal -0x10000(%rdx), %eax   #  74    0x77685  6      
  cmpl $0xfffff, %eax         #  75    0x7768b  5      
  ja .L_775e0                 #  76    0x77690  6      
  movl %edx, %eax             #  77    0x77696  2      
  andl $0x1c0000, %eax        #  78    0x77698  5      
  shrl $0x12, %eax            #  79    0x7769d  3      
  orl $0xfffffff0, %eax       #  80    0x776a0  5      
  xchgw %ax, %ax              #  81    0x776a5  3      
  movl %esi, %esi             #  82    0x776a8  2      
  movb %al, (%r15,%rsi,1)     #  83    0x776aa  4      
  movl %edx, %eax             #  84    0x776ae  2      
  addl $0x1, %esi             #  85    0x776b0  3      
  andl $0x3f000, %eax         #  86    0x776b3  5      
  shrl $0xc, %eax             #  87    0x776b8  3      
  orl $0xffffff80, %eax       #  88    0x776bb  5      
  movl %esi, %esi             #  89    0x776c0  2      
  movb %al, (%r15,%rsi,1)     #  90    0x776c2  4      
  movl %edx, %eax             #  91    0x776c6  2      
  xchgw %ax, %ax              #  92    0x776c8  3      
  andl $0x3f, %edx            #  93    0x776cb  3      
  andl $0xfc0, %eax           #  94    0x776ce  5      
  addl $0x1, %esi             #  95    0x776d3  3      
  orl $0xffffff80, %edx       #  96    0x776d6  6      
  shrl $0x6, %eax             #  97    0x776dc  3      
  movl %esi, %esi             #  98    0x776df  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  99    0x776e1  5      
  orl $0xffffff80, %eax       #  100   0x776e6  5      
  nop                         #  101   0x776eb  1      
  movl %esi, %esi             #  102   0x776ec  2      
  movb %al, (%r15,%rsi,1)     #  103   0x776ee  4      
  movl $0x4, %eax             #  104   0x776f2  5      
  popq %r11                   #  105   0x776f7  3      
  andl $0xffffffe0, %r11d     #  106   0x776fa  7      
  addq %r15, %r11             #  107   0x77701  3      
  jmpq %r11                   #  108   0x77704  3      
  nop                         #  109   0x77707  1      
                                                       
.size __utf8_wctomb, .-__utf8_wctomb

