  .text
  .globl __jis_wctomb
  .type __jis_wctomb, @function

#! file-offset 0x778c0
#! rip-offset  0x778c0
#! capacity    320 bytes

# Text                        #  Line  RIP      Bytes  
.__jis_wctomb:                #        0x778c0  0      
  movl %esi, %esi             #  1     0x778c0  2      
  movl %edi, %edi             #  2     0x778c2  2      
  movl %r8d, %r8d             #  3     0x778c4  3      
  testq %rsi, %rsi            #  4     0x778c7  3      
  movl $0x1, %eax             #  5     0x778ca  5      
  je .L_779c0                 #  6     0x778cf  6      
  movl %edx, %ecx             #  7     0x778d5  2      
  shrl $0x8, %edx             #  8     0x778d7  3      
  testb %dl, %dl              #  9     0x778da  2      
  nop                         #  10    0x778dc  1      
  je .L_77960                 #  11    0x778dd  6      
  leal -0x21(%rdx), %eax      #  12    0x778e3  3      
  cmpb $0x5d, %al             #  13    0x778e6  2      
  ja .L_779e0                 #  14    0x778e8  6      
  leal -0x21(%rcx), %eax      #  15    0x778ee  3      
  cmpb $0x5d, %al             #  16    0x778f1  2      
  ja .L_779e0                 #  17    0x778f3  6      
  movl %r8d, %r8d             #  18    0x778f9  3      
  movl (%r15,%r8,1), %edi     #  19    0x778fc  4      
  nop                         #  20    0x77900  1      
  movl $0x2, %eax             #  21    0x77901  5      
  testl %edi, %edi            #  22    0x77906  2      
  jne .L_77940                #  23    0x77908  6      
  movl %r8d, %r8d             #  24    0x7790e  3      
  movl $0x1, (%r15,%r8,1)     #  25    0x77911  8      
  movl %esi, %esi             #  26    0x77919  2      
  movb $0x1b, (%r15,%rsi,1)   #  27    0x7791b  5      
  addl $0x1, %esi             #  28    0x77920  3      
  xchgw %ax, %ax              #  29    0x77923  3      
  movl %esi, %esi             #  30    0x77926  2      
  movb $0x24, (%r15,%rsi,1)   #  31    0x77928  5      
  addl $0x1, %esi             #  32    0x7792d  3      
  movb $0x5, %al              #  33    0x77930  2      
  movl %esi, %esi             #  34    0x77932  2      
  movb $0x42, (%r15,%rsi,1)   #  35    0x77934  5      
  addl $0x1, %esi             #  36    0x77939  3      
  nop                         #  37    0x7793c  1      
.L_77940:                     #        0x7793d  0      
  movl %esi, %esi             #  38    0x7793d  2      
  movb %dl, (%r15,%rsi,1)     #  39    0x7793f  4      
  movl %esi, %esi             #  40    0x77943  2      
  movb %cl, 0x1(%r15,%rsi,1)  #  41    0x77945  5      
  popq %r11                   #  42    0x7794a  3      
  andl $0xffffffe0, %r11d     #  43    0x7794d  7      
  addq %r15, %r11             #  44    0x77954  3      
  jmpq %r11                   #  45    0x77957  3      
  nop                         #  46    0x7795a  1      
.L_77960:                     #        0x7795b  0      
  movl %r8d, %r8d             #  47    0x7795b  3      
  movl (%r15,%r8,1), %edx     #  48    0x7795e  4      
  movl $0x1, %eax             #  49    0x77962  5      
  testl %edx, %edx            #  50    0x77967  2      
  je .L_779a0                 #  51    0x77969  6      
  movl %r8d, %r8d             #  52    0x7796f  3      
  movl $0x0, (%r15,%r8,1)     #  53    0x77972  8      
  nop                         #  54    0x7797a  1      
  movl %esi, %esi             #  55    0x7797b  2      
  movb $0x1b, (%r15,%rsi,1)   #  56    0x7797d  5      
  addl $0x1, %esi             #  57    0x77982  3      
  movl %esi, %esi             #  58    0x77985  2      
  movb $0x28, (%r15,%rsi,1)   #  59    0x77987  5      
  addl $0x1, %esi             #  60    0x7798c  3      
  movb $0x4, %al              #  61    0x7798f  2      
  movl %esi, %esi             #  62    0x77991  2      
  movb $0x42, (%r15,%rsi,1)   #  63    0x77993  5      
  addl $0x1, %esi             #  64    0x77998  3      
.L_779a0:                     #        0x7799b  0      
  movl %esi, %esi             #  65    0x7799b  2      
  movb %cl, (%r15,%rsi,1)     #  66    0x7799d  4      
  nop                         #  67    0x779a1  1      
  nop                         #  68    0x779a2  1      
.L_779c0:                     #        0x779a3  0      
  popq %r11                   #  69    0x779a3  3      
  andl $0xffffffe0, %r11d     #  70    0x779a6  7      
  addq %r15, %r11             #  71    0x779ad  3      
  jmpq %r11                   #  72    0x779b0  3      
  nop                         #  73    0x779b3  1      
  nop                         #  74    0x779b4  1      
.L_779e0:                     #        0x779b5  0      
  movl %edi, %edi             #  75    0x779b5  2      
  movl $0x54, (%r15,%rdi,1)   #  76    0x779b7  8      
  movl $0xffffffff, %eax      #  77    0x779bf  5      
  popq %r11                   #  78    0x779c4  3      
  andl $0xffffffe0, %r11d     #  79    0x779c7  7      
  addq %r15, %r11             #  80    0x779ce  3      
  jmpq %r11                   #  81    0x779d1  3      
  nop                         #  82    0x779d4  1      
                                                       
.size __jis_wctomb, .-__jis_wctomb

