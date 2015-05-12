  .text
  .globl __utf8_wctomb
  .type __utf8_wctomb, @function

#! file-offset 0x77500
#! rip-offset  0x77500
#! capacity    416 bytes

# Text                        #  Line  RIP      Bytes  
.__utf8_wctomb:               #        0x77500  0      
  movl %esi, %esi             #  1     0x77500  2      
  xorl %eax, %eax             #  2     0x77502  2      
  movl %edi, %edi             #  3     0x77504  2      
  testq %rsi, %rsi            #  4     0x77506  3      
  je .L_77580                 #  5     0x77509  6      
  cmpl $0x7f, %edx            #  6     0x7750f  3      
  jbe .L_775a0                #  7     0x77512  6      
  leal -0x80(%rdx), %eax      #  8     0x77518  3      
  cmpl $0x77f, %eax           #  9     0x7751b  5      
  nop                         #  10    0x77520  1      
  ja .L_775c0                 #  11    0x77521  6      
  movl %edx, %eax             #  12    0x77527  2      
  andl $0x3f, %edx            #  13    0x77529  3      
  andl $0x7c0, %eax           #  14    0x7752c  5      
  orl $0xffffff80, %edx       #  15    0x77531  6      
  shrl $0x6, %eax             #  16    0x77537  3      
  movl %esi, %esi             #  17    0x7753a  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  18    0x7753c  5      
  orl $0xffffffc0, %eax       #  19    0x77541  5      
  movl %esi, %esi             #  20    0x77546  2      
  movb %al, (%r15,%rsi,1)     #  21    0x77548  4      
  movl $0x2, %eax             #  22    0x7754c  5      
  popq %r11                   #  23    0x77551  3      
  andl $0xffffffe0, %r11d     #  24    0x77554  7      
  addq %r15, %r11             #  25    0x7755b  3      
  jmpq %r11                   #  26    0x7755e  3      
  nop                         #  27    0x77561  1      
.L_77560:                     #        0x77562  0      
  movl %edi, %edi             #  28    0x77562  2      
  movl $0x54, (%r15,%rdi,1)   #  29    0x77564  8      
  movl $0xffffffff, %eax      #  30    0x7756c  5      
  xchgw %ax, %ax              #  31    0x77571  3      
  nop                         #  32    0x77574  1      
.L_77580:                     #        0x77575  0      
  popq %r11                   #  33    0x77575  3      
  andl $0xffffffe0, %r11d     #  34    0x77578  7      
  addq %r15, %r11             #  35    0x7757f  3      
  jmpq %r11                   #  36    0x77582  3      
  nop                         #  37    0x77585  1      
  nop                         #  38    0x77586  1      
.L_775a0:                     #        0x77587  0      
  movl %esi, %esi             #  39    0x77587  2      
  movb %dl, (%r15,%rsi,1)     #  40    0x77589  4      
  movb $0x1, %al              #  41    0x7758d  2      
  popq %r11                   #  42    0x7758f  3      
  andl $0xffffffe0, %r11d     #  43    0x77592  7      
  addq %r15, %r11             #  44    0x77599  3      
  jmpq %r11                   #  45    0x7759c  3      
  nop                         #  46    0x7759f  1      
.L_775c0:                     #        0x775a0  0      
  leal -0x800(%rdx), %eax     #  47    0x775a0  6      
  cmpl $0xf7ff, %eax          #  48    0x775a6  5      
  ja .L_77620                 #  49    0x775ab  6      
  movl %edx, %eax             #  50    0x775b1  2      
  andl $0xf000, %eax          #  51    0x775b3  5      
  shrl $0xc, %eax             #  52    0x775b8  3      
  orl $0xffffffe0, %eax       #  53    0x775bb  5      
  movl %esi, %esi             #  54    0x775c0  2      
  movb %al, (%r15,%rsi,1)     #  55    0x775c2  4      
  movl %edx, %eax             #  56    0x775c6  2      
  andl $0x3f, %edx            #  57    0x775c8  3      
  andl $0xfc0, %eax           #  58    0x775cb  5      
  addl $0x1, %esi             #  59    0x775d0  3      
  orl $0xffffff80, %edx       #  60    0x775d3  6      
  shrl $0x6, %eax             #  61    0x775d9  3      
  movl %esi, %esi             #  62    0x775dc  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  63    0x775de  5      
  orl $0xffffff80, %eax       #  64    0x775e3  5      
  nop                         #  65    0x775e8  1      
  movl %esi, %esi             #  66    0x775e9  2      
  movb %al, (%r15,%rsi,1)     #  67    0x775eb  4      
  movl $0x3, %eax             #  68    0x775ef  5      
  popq %r11                   #  69    0x775f4  3      
  andl $0xffffffe0, %r11d     #  70    0x775f7  7      
  addq %r15, %r11             #  71    0x775fe  3      
  jmpq %r11                   #  72    0x77601  3      
  nop                         #  73    0x77604  1      
.L_77620:                     #        0x77605  0      
  leal -0x10000(%rdx), %eax   #  74    0x77605  6      
  cmpl $0xfffff, %eax         #  75    0x7760b  5      
  ja .L_77560                 #  76    0x77610  6      
  movl %edx, %eax             #  77    0x77616  2      
  andl $0x1c0000, %eax        #  78    0x77618  5      
  shrl $0x12, %eax            #  79    0x7761d  3      
  orl $0xfffffff0, %eax       #  80    0x77620  5      
  xchgw %ax, %ax              #  81    0x77625  3      
  movl %esi, %esi             #  82    0x77628  2      
  movb %al, (%r15,%rsi,1)     #  83    0x7762a  4      
  movl %edx, %eax             #  84    0x7762e  2      
  addl $0x1, %esi             #  85    0x77630  3      
  andl $0x3f000, %eax         #  86    0x77633  5      
  shrl $0xc, %eax             #  87    0x77638  3      
  orl $0xffffff80, %eax       #  88    0x7763b  5      
  movl %esi, %esi             #  89    0x77640  2      
  movb %al, (%r15,%rsi,1)     #  90    0x77642  4      
  movl %edx, %eax             #  91    0x77646  2      
  xchgw %ax, %ax              #  92    0x77648  3      
  andl $0x3f, %edx            #  93    0x7764b  3      
  andl $0xfc0, %eax           #  94    0x7764e  5      
  addl $0x1, %esi             #  95    0x77653  3      
  orl $0xffffff80, %edx       #  96    0x77656  6      
  shrl $0x6, %eax             #  97    0x7765c  3      
  movl %esi, %esi             #  98    0x7765f  2      
  movb %dl, 0x1(%r15,%rsi,1)  #  99    0x77661  5      
  orl $0xffffff80, %eax       #  100   0x77666  5      
  nop                         #  101   0x7766b  1      
  movl %esi, %esi             #  102   0x7766c  2      
  movb %al, (%r15,%rsi,1)     #  103   0x7766e  4      
  movl $0x4, %eax             #  104   0x77672  5      
  popq %r11                   #  105   0x77677  3      
  andl $0xffffffe0, %r11d     #  106   0x7767a  7      
  addq %r15, %r11             #  107   0x77681  3      
  jmpq %r11                   #  108   0x77684  3      
  nop                         #  109   0x77687  1      
                                                       
.size __utf8_wctomb, .-__utf8_wctomb

