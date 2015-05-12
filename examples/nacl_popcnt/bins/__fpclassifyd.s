  .text
  .globl __fpclassifyd
  .type __fpclassifyd, @function

#! file-offset 0x7fda0
#! rip-offset  0x7fda0
#! capacity    320 bytes

# Text                          #  Line  RIP      Bytes  
.__fpclassifyd:                 #        0x7fda0  0      
  movsd %xmm0, -0x8(%rsp)       #  1     0x7fda0  6      
  movq -0x8(%rsp), %rax         #  2     0x7fda6  5      
  movq %rax, %rdx               #  3     0x7fdab  3      
  shrq $0x20, %rdx              #  4     0x7fdae  4      
  testl %eax, %eax              #  5     0x7fdb2  2      
  jne .L_7fde0                  #  6     0x7fdb4  6      
  testl %edx, %edx              #  7     0x7fdba  2      
  jne .L_7fde0                  #  8     0x7fdbc  6      
  nop                           #  9     0x7fdc2  1      
.L_7fdc0:                       #        0x7fdc3  0      
  movl $0x2, %eax               #  10    0x7fdc3  5      
  popq %r11                     #  11    0x7fdc8  3      
  andl $0xffffffe0, %r11d       #  12    0x7fdcb  7      
  addq %r15, %r11               #  13    0x7fdd2  3      
  jmpq %r11                     #  14    0x7fdd5  3      
  nop                           #  15    0x7fdd8  1      
.L_7fde0:                       #        0x7fdd9  0      
  testl %eax, %eax              #  16    0x7fdd9  2      
  sete %cl                      #  17    0x7fddb  3      
  je .L_7fe20                   #  18    0x7fdde  6      
  leal 0x7ff00000(%rdx), %eax   #  19    0x7fde4  6      
  cmpl $0x7fdfffff, %eax        #  20    0x7fdea  5      
  ja .L_7fe40                   #  21    0x7fdef  6      
  nop                           #  22    0x7fdf5  1      
.L_7fe00:                       #        0x7fdf6  0      
  movl $0x4, %eax               #  23    0x7fdf6  5      
  popq %r11                     #  24    0x7fdfb  3      
  andl $0xffffffe0, %r11d       #  25    0x7fdfe  7      
  addq %r15, %r11               #  26    0x7fe05  3      
  jmpq %r11                     #  27    0x7fe08  3      
  nop                           #  28    0x7fe0b  1      
.L_7fe20:                       #        0x7fe0c  0      
  cmpl $0x80000000, %edx        #  29    0x7fe0c  6      
  je .L_7fdc0                   #  30    0x7fe12  6      
  leal 0x7ff00000(%rdx), %eax   #  31    0x7fe18  6      
  cmpl $0x7fdfffff, %eax        #  32    0x7fe1e  5      
  jbe .L_7fe00                  #  33    0x7fe23  6      
  nop                           #  34    0x7fe29  1      
.L_7fe40:                       #        0x7fe2a  0      
  leal -0x100000(%rdx), %eax    #  35    0x7fe2a  6      
  cmpl $0x7fdfffff, %eax        #  36    0x7fe30  5      
  jbe .L_7fe00                  #  37    0x7fe35  6      
  leal -0x80000000(%rdx), %eax  #  38    0x7fe3b  6      
  cmpl $0xfffff, %eax           #  39    0x7fe41  5      
  jbe .L_7fe80                  #  40    0x7fe46  6      
  cmpl $0xfffff, %edx           #  41    0x7fe4c  6      
  ja .L_7fea0                   #  42    0x7fe52  6      
  nop                           #  43    0x7fe58  1      
  nop                           #  44    0x7fe59  1      
.L_7fe80:                       #        0x7fe5a  0      
  movl $0x3, %eax               #  45    0x7fe5a  5      
  popq %r11                     #  46    0x7fe5f  3      
  andl $0xffffffe0, %r11d       #  47    0x7fe62  7      
  addq %r15, %r11               #  48    0x7fe69  3      
  jmpq %r11                     #  49    0x7fe6c  3      
  nop                           #  50    0x7fe6f  1      
.L_7fea0:                       #        0x7fe70  0      
  cmpl $0xfff00000, %edx        #  51    0x7fe70  6      
  sete %al                      #  52    0x7fe76  3      
  cmpl $0x7ff00000, %edx        #  53    0x7fe79  6      
  sete %dl                      #  54    0x7fe7f  3      
  orl %edx, %eax                #  55    0x7fe82  2      
  andl %ecx, %eax               #  56    0x7fe84  2      
  movzbl %al, %eax              #  57    0x7fe86  3      
  popq %r11                     #  58    0x7fe89  3      
  nop                           #  59    0x7fe8c  1      
  andl $0xffffffe0, %r11d       #  60    0x7fe8d  7      
  addq %r15, %r11               #  61    0x7fe94  3      
  jmpq %r11                     #  62    0x7fe97  3      
  nop                           #  63    0x7fe9a  1      
  nop                           #  64    0x7fe9b  1      
  nop                           #  65    0x7fe9c  1      
  nop                           #  66    0x7fe9d  1      
  nop                           #  67    0x7fe9e  1      
  nop                           #  68    0x7fe9f  1      
  nop                           #  69    0x7fea0  1      
  nop                           #  70    0x7fea1  1      
  nop                           #  71    0x7fea2  1      
  nop                           #  72    0x7fea3  1      
  nop                           #  73    0x7fea4  1      
  nop                           #  74    0x7fea5  1      
  nop                           #  75    0x7fea6  1      
  nop                           #  76    0x7fea7  1      
  nop                           #  77    0x7fea8  1      
  nop                           #  78    0x7fea9  1      
  nop                           #  79    0x7feaa  1      
  nop                           #  80    0x7feab  1      
  nop                           #  81    0x7feac  1      
  nop                           #  82    0x7fead  1      
  nop                           #  83    0x7feae  1      
  nop                           #  84    0x7feaf  1      
                                                         
.size __fpclassifyd, .-__fpclassifyd

