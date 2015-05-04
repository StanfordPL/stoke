  .text
  .globl strlcpy
  .type strlcpy, @function

#! file-offset 0x80700
#! rip-offset  0x80700
#! capacity    224 bytes

# Text                        #  Line  RIP      Bytes  
.strlcpy:                     #        0x80700  0      
  movl %esi, %esi             #  1     0x80700  2      
  testl %edx, %edx            #  2     0x80702  2      
  movl %edi, %edi             #  3     0x80704  2      
  movq %rsi, %rax             #  4     0x80706  3      
  je .L_807a0                 #  5     0x80709  6      
  xchgw %ax, %ax              #  6     0x8070f  3      
  nop                         #  7     0x80712  1      
.L_80720:                     #        0x80713  0      
  subl $0x1, %edx             #  8     0x80713  3      
  je .L_80780                 #  9     0x80716  6      
  movl %eax, %eax             #  10    0x8071c  2      
  movzbl (%r15,%rax,1), %ecx  #  11    0x8071e  5      
  addl $0x1, %eax             #  12    0x80723  3      
  movl %edi, %edi             #  13    0x80726  2      
  movb %cl, (%r15,%rdi,1)     #  14    0x80728  4      
  addl $0x1, %edi             #  15    0x8072c  3      
  testb %cl, %cl              #  16    0x8072f  2      
  jne .L_80720                #  17    0x80731  6      
  testl %edx, %edx            #  18    0x80737  2      
  xchgw %ax, %ax              #  19    0x80739  3      
  je .L_80780                 #  20    0x8073c  6      
  nop                         #  21    0x80742  1      
  nop                         #  22    0x80743  1      
.L_80760:                     #        0x80744  0      
  popq %r11                   #  23    0x80744  3      
  notl %esi                   #  24    0x80747  2      
  leal (%rsi,%rax,1), %eax    #  25    0x80749  3      
  andl $0xffffffe0, %r11d     #  26    0x8074c  7      
  addq %r15, %r11             #  27    0x80753  3      
  jmpq %r11                   #  28    0x80756  3      
  nop                         #  29    0x80759  1      
.L_80780:                     #        0x8075a  0      
  movl %edi, %edi             #  30    0x8075a  2      
  movb $0x0, (%r15,%rdi,1)    #  31    0x8075c  5      
  nop                         #  32    0x80761  1      
  nop                         #  33    0x80762  1      
.L_807a0:                     #        0x80763  0      
  movl %eax, %eax             #  34    0x80763  2      
  movzbl (%r15,%rax,1), %edx  #  35    0x80765  5      
  addl $0x1, %eax             #  36    0x8076a  3      
  testb %dl, %dl              #  37    0x8076d  2      
  je .L_80760                 #  38    0x8076f  6      
  movl %eax, %eax             #  39    0x80775  2      
  movzbl (%r15,%rax,1), %edx  #  40    0x80777  5      
  addl $0x1, %eax             #  41    0x8077c  3      
  testb %dl, %dl              #  42    0x8077f  2      
  jne .L_807a0                #  43    0x80781  6      
  nop                         #  44    0x80787  1      
  jmpq .L_80760               #  45    0x80788  5      
  nop                         #  46    0x8078d  1      
  nop                         #  47    0x8078e  1      
  nop                         #  48    0x8078f  1      
  nop                         #  49    0x80790  1      
  nop                         #  50    0x80791  1      
  nop                         #  51    0x80792  1      
  nop                         #  52    0x80793  1      
  nop                         #  53    0x80794  1      
  nop                         #  54    0x80795  1      
  nop                         #  55    0x80796  1      
  nop                         #  56    0x80797  1      
  nop                         #  57    0x80798  1      
  nop                         #  58    0x80799  1      
  nop                         #  59    0x8079a  1      
  nop                         #  60    0x8079b  1      
  nop                         #  61    0x8079c  1      
  nop                         #  62    0x8079d  1      
  nop                         #  63    0x8079e  1      
  nop                         #  64    0x8079f  1      
  nop                         #  65    0x807a0  1      
  nop                         #  66    0x807a1  1      
  nop                         #  67    0x807a2  1      
  nop                         #  68    0x807a3  1      
  nop                         #  69    0x807a4  1      
  nop                         #  70    0x807a5  1      
  nop                         #  71    0x807a6  1      
  nop                         #  72    0x807a7  1      
  nop                         #  73    0x807a8  1      
  nop                         #  74    0x807a9  1      
  nop                         #  75    0x807aa  1      
                                                       
.size strlcpy, .-strlcpy

