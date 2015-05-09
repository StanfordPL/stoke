  .text
  .globl __jis_wctomb
  .type __jis_wctomb, @function

#! file-offset 0x778a0
#! rip-offset  0x778a0
#! capacity    320 bytes

# Text                        #  Line  RIP      Bytes  
.__jis_wctomb:                #        0x778a0  0      
  movl %esi, %esi             #  1     0x778a0  2      
  movl %edi, %edi             #  2     0x778a2  2      
  movl %r8d, %r8d             #  3     0x778a4  3      
  testq %rsi, %rsi            #  4     0x778a7  3      
  movl $0x1, %eax             #  5     0x778aa  5      
  je .L_779a0                 #  6     0x778af  6      
  movl %edx, %ecx             #  7     0x778b5  2      
  shrl $0x8, %edx             #  8     0x778b7  3      
  testb %dl, %dl              #  9     0x778ba  2      
  nop                         #  10    0x778bc  1      
  je .L_77940                 #  11    0x778bd  6      
  leal -0x21(%rdx), %eax      #  12    0x778c3  3      
  cmpb $0x5d, %al             #  13    0x778c6  2      
  ja .L_779c0                 #  14    0x778c8  6      
  leal -0x21(%rcx), %eax      #  15    0x778ce  3      
  cmpb $0x5d, %al             #  16    0x778d1  2      
  ja .L_779c0                 #  17    0x778d3  6      
  movl %r8d, %r8d             #  18    0x778d9  3      
  movl (%r15,%r8,1), %edi     #  19    0x778dc  4      
  nop                         #  20    0x778e0  1      
  movl $0x2, %eax             #  21    0x778e1  5      
  testl %edi, %edi            #  22    0x778e6  2      
  jne .L_77920                #  23    0x778e8  6      
  movl %r8d, %r8d             #  24    0x778ee  3      
  movl $0x1, (%r15,%r8,1)     #  25    0x778f1  8      
  movl %esi, %esi             #  26    0x778f9  2      
  movb $0x1b, (%r15,%rsi,1)   #  27    0x778fb  5      
  addl $0x1, %esi             #  28    0x77900  3      
  xchgw %ax, %ax              #  29    0x77903  3      
  movl %esi, %esi             #  30    0x77906  2      
  movb $0x24, (%r15,%rsi,1)   #  31    0x77908  5      
  addl $0x1, %esi             #  32    0x7790d  3      
  movb $0x5, %al              #  33    0x77910  2      
  movl %esi, %esi             #  34    0x77912  2      
  movb $0x42, (%r15,%rsi,1)   #  35    0x77914  5      
  addl $0x1, %esi             #  36    0x77919  3      
  nop                         #  37    0x7791c  1      
.L_77920:                     #        0x7791d  0      
  movl %esi, %esi             #  38    0x7791d  2      
  movb %dl, (%r15,%rsi,1)     #  39    0x7791f  4      
  movl %esi, %esi             #  40    0x77923  2      
  movb %cl, 0x1(%r15,%rsi,1)  #  41    0x77925  5      
  popq %r11                   #  42    0x7792a  3      
  andl $0xffffffe0, %r11d     #  43    0x7792d  7      
  addq %r15, %r11             #  44    0x77934  3      
  jmpq %r11                   #  45    0x77937  3      
  nop                         #  46    0x7793a  1      
.L_77940:                     #        0x7793b  0      
  movl %r8d, %r8d             #  47    0x7793b  3      
  movl (%r15,%r8,1), %edx     #  48    0x7793e  4      
  movl $0x1, %eax             #  49    0x77942  5      
  testl %edx, %edx            #  50    0x77947  2      
  je .L_77980                 #  51    0x77949  6      
  movl %r8d, %r8d             #  52    0x7794f  3      
  movl $0x0, (%r15,%r8,1)     #  53    0x77952  8      
  nop                         #  54    0x7795a  1      
  movl %esi, %esi             #  55    0x7795b  2      
  movb $0x1b, (%r15,%rsi,1)   #  56    0x7795d  5      
  addl $0x1, %esi             #  57    0x77962  3      
  movl %esi, %esi             #  58    0x77965  2      
  movb $0x28, (%r15,%rsi,1)   #  59    0x77967  5      
  addl $0x1, %esi             #  60    0x7796c  3      
  movb $0x4, %al              #  61    0x7796f  2      
  movl %esi, %esi             #  62    0x77971  2      
  movb $0x42, (%r15,%rsi,1)   #  63    0x77973  5      
  addl $0x1, %esi             #  64    0x77978  3      
.L_77980:                     #        0x7797b  0      
  movl %esi, %esi             #  65    0x7797b  2      
  movb %cl, (%r15,%rsi,1)     #  66    0x7797d  4      
  nop                         #  67    0x77981  1      
  nop                         #  68    0x77982  1      
.L_779a0:                     #        0x77983  0      
  popq %r11                   #  69    0x77983  3      
  andl $0xffffffe0, %r11d     #  70    0x77986  7      
  addq %r15, %r11             #  71    0x7798d  3      
  jmpq %r11                   #  72    0x77990  3      
  nop                         #  73    0x77993  1      
  nop                         #  74    0x77994  1      
.L_779c0:                     #        0x77995  0      
  movl %edi, %edi             #  75    0x77995  2      
  movl $0x54, (%r15,%rdi,1)   #  76    0x77997  8      
  movl $0xffffffff, %eax      #  77    0x7799f  5      
  popq %r11                   #  78    0x779a4  3      
  andl $0xffffffe0, %r11d     #  79    0x779a7  7      
  addq %r15, %r11             #  80    0x779ae  3      
  jmpq %r11                   #  81    0x779b1  3      
  nop                         #  82    0x779b4  1      
                                                       
.size __jis_wctomb, .-__jis_wctomb

