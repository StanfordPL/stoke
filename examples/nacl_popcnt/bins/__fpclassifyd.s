  .text
  .globl __fpclassifyd
  .type __fpclassifyd, @function

#! file-offset 0x7fd80
#! rip-offset  0x7fd80
#! capacity    320 bytes

# Text                          #  Line  RIP      Bytes  
.__fpclassifyd:                 #        0x7fd80  0      
  movsd %xmm0, -0x8(%rsp)       #  1     0x7fd80  6      
  movq -0x8(%rsp), %rax         #  2     0x7fd86  5      
  movq %rax, %rdx               #  3     0x7fd8b  3      
  shrq $0x20, %rdx              #  4     0x7fd8e  4      
  testl %eax, %eax              #  5     0x7fd92  2      
  jne .L_7fdc0                  #  6     0x7fd94  6      
  testl %edx, %edx              #  7     0x7fd9a  2      
  jne .L_7fdc0                  #  8     0x7fd9c  6      
  nop                           #  9     0x7fda2  1      
.L_7fda0:                       #        0x7fda3  0      
  movl $0x2, %eax               #  10    0x7fda3  5      
  popq %r11                     #  11    0x7fda8  3      
  andl $0xffffffe0, %r11d       #  12    0x7fdab  7      
  addq %r15, %r11               #  13    0x7fdb2  3      
  jmpq %r11                     #  14    0x7fdb5  3      
  nop                           #  15    0x7fdb8  1      
.L_7fdc0:                       #        0x7fdb9  0      
  testl %eax, %eax              #  16    0x7fdb9  2      
  sete %cl                      #  17    0x7fdbb  3      
  je .L_7fe00                   #  18    0x7fdbe  6      
  leal 0x7ff00000(%rdx), %eax   #  19    0x7fdc4  6      
  cmpl $0x7fdfffff, %eax        #  20    0x7fdca  5      
  ja .L_7fe20                   #  21    0x7fdcf  6      
  nop                           #  22    0x7fdd5  1      
.L_7fde0:                       #        0x7fdd6  0      
  movl $0x4, %eax               #  23    0x7fdd6  5      
  popq %r11                     #  24    0x7fddb  3      
  andl $0xffffffe0, %r11d       #  25    0x7fdde  7      
  addq %r15, %r11               #  26    0x7fde5  3      
  jmpq %r11                     #  27    0x7fde8  3      
  nop                           #  28    0x7fdeb  1      
.L_7fe00:                       #        0x7fdec  0      
  cmpl $0x80000000, %edx        #  29    0x7fdec  6      
  je .L_7fda0                   #  30    0x7fdf2  6      
  leal 0x7ff00000(%rdx), %eax   #  31    0x7fdf8  6      
  cmpl $0x7fdfffff, %eax        #  32    0x7fdfe  5      
  jbe .L_7fde0                  #  33    0x7fe03  6      
  nop                           #  34    0x7fe09  1      
.L_7fe20:                       #        0x7fe0a  0      
  leal -0x100000(%rdx), %eax    #  35    0x7fe0a  6      
  cmpl $0x7fdfffff, %eax        #  36    0x7fe10  5      
  jbe .L_7fde0                  #  37    0x7fe15  6      
  leal -0x80000000(%rdx), %eax  #  38    0x7fe1b  6      
  cmpl $0xfffff, %eax           #  39    0x7fe21  5      
  jbe .L_7fe60                  #  40    0x7fe26  6      
  cmpl $0xfffff, %edx           #  41    0x7fe2c  6      
  ja .L_7fe80                   #  42    0x7fe32  6      
  nop                           #  43    0x7fe38  1      
  nop                           #  44    0x7fe39  1      
.L_7fe60:                       #        0x7fe3a  0      
  movl $0x3, %eax               #  45    0x7fe3a  5      
  popq %r11                     #  46    0x7fe3f  3      
  andl $0xffffffe0, %r11d       #  47    0x7fe42  7      
  addq %r15, %r11               #  48    0x7fe49  3      
  jmpq %r11                     #  49    0x7fe4c  3      
  nop                           #  50    0x7fe4f  1      
.L_7fe80:                       #        0x7fe50  0      
  cmpl $0xfff00000, %edx        #  51    0x7fe50  6      
  sete %al                      #  52    0x7fe56  3      
  cmpl $0x7ff00000, %edx        #  53    0x7fe59  6      
  sete %dl                      #  54    0x7fe5f  3      
  orl %edx, %eax                #  55    0x7fe62  2      
  andl %ecx, %eax               #  56    0x7fe64  2      
  movzbl %al, %eax              #  57    0x7fe66  3      
  popq %r11                     #  58    0x7fe69  3      
  nop                           #  59    0x7fe6c  1      
  andl $0xffffffe0, %r11d       #  60    0x7fe6d  7      
  addq %r15, %r11               #  61    0x7fe74  3      
  jmpq %r11                     #  62    0x7fe77  3      
  nop                           #  63    0x7fe7a  1      
  nop                           #  64    0x7fe7b  1      
  nop                           #  65    0x7fe7c  1      
  nop                           #  66    0x7fe7d  1      
  nop                           #  67    0x7fe7e  1      
  nop                           #  68    0x7fe7f  1      
  nop                           #  69    0x7fe80  1      
  nop                           #  70    0x7fe81  1      
  nop                           #  71    0x7fe82  1      
  nop                           #  72    0x7fe83  1      
  nop                           #  73    0x7fe84  1      
  nop                           #  74    0x7fe85  1      
  nop                           #  75    0x7fe86  1      
  nop                           #  76    0x7fe87  1      
  nop                           #  77    0x7fe88  1      
  nop                           #  78    0x7fe89  1      
  nop                           #  79    0x7fe8a  1      
  nop                           #  80    0x7fe8b  1      
  nop                           #  81    0x7fe8c  1      
  nop                           #  82    0x7fe8d  1      
  nop                           #  83    0x7fe8e  1      
  nop                           #  84    0x7fe8f  1      
                                                         
.size __fpclassifyd, .-__fpclassifyd

