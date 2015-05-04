  .text
  .globl __jis_wctomb
  .type __jis_wctomb, @function

#! file-offset 0x77940
#! rip-offset  0x77940
#! capacity    320 bytes

# Text                        #  Line  RIP      Bytes  
.__jis_wctomb:                #        0x77940  0      
  movl %esi, %esi             #  1     0x77940  2      
  movl %edi, %edi             #  2     0x77942  2      
  movl %r8d, %r8d             #  3     0x77944  3      
  testq %rsi, %rsi            #  4     0x77947  3      
  movl $0x1, %eax             #  5     0x7794a  5      
  je .L_77a40                 #  6     0x7794f  6      
  movl %edx, %ecx             #  7     0x77955  2      
  shrl $0x8, %edx             #  8     0x77957  3      
  testb %dl, %dl              #  9     0x7795a  2      
  nop                         #  10    0x7795c  1      
  je .L_779e0                 #  11    0x7795d  6      
  leal -0x21(%rdx), %eax      #  12    0x77963  3      
  cmpb $0x5d, %al             #  13    0x77966  2      
  ja .L_77a60                 #  14    0x77968  6      
  leal -0x21(%rcx), %eax      #  15    0x7796e  3      
  cmpb $0x5d, %al             #  16    0x77971  2      
  ja .L_77a60                 #  17    0x77973  6      
  movl %r8d, %r8d             #  18    0x77979  3      
  movl (%r15,%r8,1), %edi     #  19    0x7797c  4      
  nop                         #  20    0x77980  1      
  movl $0x2, %eax             #  21    0x77981  5      
  testl %edi, %edi            #  22    0x77986  2      
  jne .L_779c0                #  23    0x77988  6      
  movl %r8d, %r8d             #  24    0x7798e  3      
  movl $0x1, (%r15,%r8,1)     #  25    0x77991  8      
  movl %esi, %esi             #  26    0x77999  2      
  movb $0x1b, (%r15,%rsi,1)   #  27    0x7799b  5      
  addl $0x1, %esi             #  28    0x779a0  3      
  xchgw %ax, %ax              #  29    0x779a3  3      
  movl %esi, %esi             #  30    0x779a6  2      
  movb $0x24, (%r15,%rsi,1)   #  31    0x779a8  5      
  addl $0x1, %esi             #  32    0x779ad  3      
  movb $0x5, %al              #  33    0x779b0  2      
  movl %esi, %esi             #  34    0x779b2  2      
  movb $0x42, (%r15,%rsi,1)   #  35    0x779b4  5      
  addl $0x1, %esi             #  36    0x779b9  3      
  nop                         #  37    0x779bc  1      
.L_779c0:                     #        0x779bd  0      
  movl %esi, %esi             #  38    0x779bd  2      
  movb %dl, (%r15,%rsi,1)     #  39    0x779bf  4      
  movl %esi, %esi             #  40    0x779c3  2      
  movb %cl, 0x1(%r15,%rsi,1)  #  41    0x779c5  5      
  popq %r11                   #  42    0x779ca  3      
  andl $0xffffffe0, %r11d     #  43    0x779cd  7      
  addq %r15, %r11             #  44    0x779d4  3      
  jmpq %r11                   #  45    0x779d7  3      
  nop                         #  46    0x779da  1      
.L_779e0:                     #        0x779db  0      
  movl %r8d, %r8d             #  47    0x779db  3      
  movl (%r15,%r8,1), %edx     #  48    0x779de  4      
  movl $0x1, %eax             #  49    0x779e2  5      
  testl %edx, %edx            #  50    0x779e7  2      
  je .L_77a20                 #  51    0x779e9  6      
  movl %r8d, %r8d             #  52    0x779ef  3      
  movl $0x0, (%r15,%r8,1)     #  53    0x779f2  8      
  nop                         #  54    0x779fa  1      
  movl %esi, %esi             #  55    0x779fb  2      
  movb $0x1b, (%r15,%rsi,1)   #  56    0x779fd  5      
  addl $0x1, %esi             #  57    0x77a02  3      
  movl %esi, %esi             #  58    0x77a05  2      
  movb $0x28, (%r15,%rsi,1)   #  59    0x77a07  5      
  addl $0x1, %esi             #  60    0x77a0c  3      
  movb $0x4, %al              #  61    0x77a0f  2      
  movl %esi, %esi             #  62    0x77a11  2      
  movb $0x42, (%r15,%rsi,1)   #  63    0x77a13  5      
  addl $0x1, %esi             #  64    0x77a18  3      
.L_77a20:                     #        0x77a1b  0      
  movl %esi, %esi             #  65    0x77a1b  2      
  movb %cl, (%r15,%rsi,1)     #  66    0x77a1d  4      
  nop                         #  67    0x77a21  1      
  nop                         #  68    0x77a22  1      
.L_77a40:                     #        0x77a23  0      
  popq %r11                   #  69    0x77a23  3      
  andl $0xffffffe0, %r11d     #  70    0x77a26  7      
  addq %r15, %r11             #  71    0x77a2d  3      
  jmpq %r11                   #  72    0x77a30  3      
  nop                         #  73    0x77a33  1      
  nop                         #  74    0x77a34  1      
.L_77a60:                     #        0x77a35  0      
  movl %edi, %edi             #  75    0x77a35  2      
  movl $0x54, (%r15,%rdi,1)   #  76    0x77a37  8      
  movl $0xffffffff, %eax      #  77    0x77a3f  5      
  popq %r11                   #  78    0x77a44  3      
  andl $0xffffffe0, %r11d     #  79    0x77a47  7      
  addq %r15, %r11             #  80    0x77a4e  3      
  jmpq %r11                   #  81    0x77a51  3      
  nop                         #  82    0x77a54  1      
                                                       
.size __jis_wctomb, .-__jis_wctomb

