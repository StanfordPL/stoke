  .text
  .globl __utf8_wctomb
  .type __utf8_wctomb, @function

#! file-offset 0x774e0
#! rip-offset  0x774e0
#! capacity    416 bytes

# Text                        #  Line  RIP      Bytes  
.__utf8_wctomb:               #        0x774e0  0      
  movl %esi, %esi             #  1     0x774e0  2      
  xorl %eax, %eax             #  2     0x774e2  2      
  movl %edi, %edi             #  3     0x774e4  2      
  testq %rsi, %rsi            #  4     0x774e6  3      
  je .L_77560                 #  5     0x774e9  6      
  cmpl $0x7f, %edx            #  6     0x774ef  3      
  jbe .L_77580                #  7     0x774f2  6      
  leal -0x80(%rdx), %eax      #  8     0x774f8  3      
  cmpl $0x77f, %eax           #  9     0x774fb  5      
  nop                         #  10    0x77500  1      
  ja .L_775a0                 #  11    0x77501  6      
  movl %edx, %eax             #  12    0x77507  2      
  andl $0x3f, %edx            #  13    0x77509  3      
  andl $0x7c0, %eax           #  14    0x7750c  5      
  orl $0xffffff80, %edx       #  15    0x77511  6      
  shrl $0x6, %eax             #  16    0x77517  3      
  movl %esi, %esi             #  17    0x7751a  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  18    0x7751c  5      
  orl $0xffffffc0, %eax       #  19    0x77521  5      
  movl %esi, %esi             #  20    0x77526  2      
  movb %al, (%r15,%rsi,1)     #  21    0x77528  4      
  movl $0x2, %eax             #  22    0x7752c  5      
  popq %r11                   #  23    0x77531  3      
  andl $0xffffffe0, %r11d     #  24    0x77534  7      
  addq %r15, %r11             #  25    0x7753b  3      
  jmpq %r11                   #  26    0x7753e  3      
  nop                         #  27    0x77541  1      
.L_77540:                     #        0x77542  0      
  movl %edi, %edi             #  28    0x77542  2      
  movl $0x54, (%r15,%rdi,1)   #  29    0x77544  8      
  movl $0xffffffff, %eax      #  30    0x7754c  5      
  xchgw %ax, %ax              #  31    0x77551  3      
  nop                         #  32    0x77554  1      
.L_77560:                     #        0x77555  0      
  popq %r11                   #  33    0x77555  3      
  andl $0xffffffe0, %r11d     #  34    0x77558  7      
  addq %r15, %r11             #  35    0x7755f  3      
  jmpq %r11                   #  36    0x77562  3      
  nop                         #  37    0x77565  1      
  nop                         #  38    0x77566  1      
.L_77580:                     #        0x77567  0      
  movl %esi, %esi             #  39    0x77567  2      
  movb %dl, (%r15,%rsi,1)     #  40    0x77569  4      
  movb $0x1, %al              #  41    0x7756d  2      
  popq %r11                   #  42    0x7756f  3      
  andl $0xffffffe0, %r11d     #  43    0x77572  7      
  addq %r15, %r11             #  44    0x77579  3      
  jmpq %r11                   #  45    0x7757c  3      
  nop                         #  46    0x7757f  1      
.L_775a0:                     #        0x77580  0      
  leal -0x800(%rdx), %eax     #  47    0x77580  6      
  cmpl $0xf7ff, %eax          #  48    0x77586  5      
  ja .L_77600                 #  49    0x7758b  6      
  movl %edx, %eax             #  50    0x77591  2      
  andl $0xf000, %eax          #  51    0x77593  5      
  shrl $0xc, %eax             #  52    0x77598  3      
  orl $0xffffffe0, %eax       #  53    0x7759b  5      
  movl %esi, %esi             #  54    0x775a0  2      
  movb %al, (%r15,%rsi,1)     #  55    0x775a2  4      
  movl %edx, %eax             #  56    0x775a6  2      
  andl $0x3f, %edx            #  57    0x775a8  3      
  andl $0xfc0, %eax           #  58    0x775ab  5      
  addl $0x1, %esi             #  59    0x775b0  3      
  orl $0xffffff80, %edx       #  60    0x775b3  6      
  shrl $0x6, %eax             #  61    0x775b9  3      
  movl %esi, %esi             #  62    0x775bc  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  63    0x775be  5      
  orl $0xffffff80, %eax       #  64    0x775c3  5      
  nop                         #  65    0x775c8  1      
  movl %esi, %esi             #  66    0x775c9  2      
  movb %al, (%r15,%rsi,1)     #  67    0x775cb  4      
  movl $0x3, %eax             #  68    0x775cf  5      
  popq %r11                   #  69    0x775d4  3      
  andl $0xffffffe0, %r11d     #  70    0x775d7  7      
  addq %r15, %r11             #  71    0x775de  3      
  jmpq %r11                   #  72    0x775e1  3      
  nop                         #  73    0x775e4  1      
.L_77600:                     #        0x775e5  0      
  leal -0x10000(%rdx), %eax   #  74    0x775e5  6      
  cmpl $0xfffff, %eax         #  75    0x775eb  5      
  ja .L_77540                 #  76    0x775f0  6      
  movl %edx, %eax             #  77    0x775f6  2      
  andl $0x1c0000, %eax        #  78    0x775f8  5      
  shrl $0x12, %eax            #  79    0x775fd  3      
  orl $0xfffffff0, %eax       #  80    0x77600  5      
  xchgw %ax, %ax              #  81    0x77605  3      
  movl %esi, %esi             #  82    0x77608  2      
  movb %al, (%r15,%rsi,1)     #  83    0x7760a  4      
  movl %edx, %eax             #  84    0x7760e  2      
  addl $0x1, %esi             #  85    0x77610  3      
  andl $0x3f000, %eax         #  86    0x77613  5      
  shrl $0xc, %eax             #  87    0x77618  3      
  orl $0xffffff80, %eax       #  88    0x7761b  5      
  movl %esi, %esi             #  89    0x77620  2      
  movb %al, (%r15,%rsi,1)     #  90    0x77622  4      
  movl %edx, %eax             #  91    0x77626  2      
  xchgw %ax, %ax              #  92    0x77628  3      
  andl $0x3f, %edx            #  93    0x7762b  3      
  andl $0xfc0, %eax           #  94    0x7762e  5      
  addl $0x1, %esi             #  95    0x77633  3      
  orl $0xffffff80, %edx       #  96    0x77636  6      
  shrl $0x6, %eax             #  97    0x7763c  3      
  movl %esi, %esi             #  98    0x7763f  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  99    0x77641  5      
  orl $0xffffff80, %eax       #  100   0x77646  5      
  nop                         #  101   0x7764b  1      
  movl %esi, %esi             #  102   0x7764c  2      
  movb %al, (%r15,%rsi,1)     #  103   0x7764e  4      
  movl $0x4, %eax             #  104   0x77652  5      
  popq %r11                   #  105   0x77657  3      
  andl $0xffffffe0, %r11d     #  106   0x7765a  7      
  addq %r15, %r11             #  107   0x77661  3      
  jmpq %r11                   #  108   0x77664  3      
  nop                         #  109   0x77667  1      
                                                       
.size __utf8_wctomb, .-__utf8_wctomb

