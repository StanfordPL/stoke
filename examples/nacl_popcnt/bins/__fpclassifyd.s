  .text
  .globl __fpclassifyd
  .type __fpclassifyd, @function

#! file-offset 0x7fe20
#! rip-offset  0x7fe20
#! capacity    320 bytes

# Text                          #  Line  RIP      Bytes  
.__fpclassifyd:                 #        0x7fe20  0      
  movsd %xmm0, -0x8(%rsp)       #  1     0x7fe20  6      
  movq -0x8(%rsp), %rax         #  2     0x7fe26  5      
  movq %rax, %rdx               #  3     0x7fe2b  3      
  shrq $0x20, %rdx              #  4     0x7fe2e  4      
  testl %eax, %eax              #  5     0x7fe32  2      
  jne .L_7fe60                  #  6     0x7fe34  6      
  testl %edx, %edx              #  7     0x7fe3a  2      
  jne .L_7fe60                  #  8     0x7fe3c  6      
  nop                           #  9     0x7fe42  1      
.L_7fe40:                       #        0x7fe43  0      
  movl $0x2, %eax               #  10    0x7fe43  5      
  popq %r11                     #  11    0x7fe48  3      
  andl $0xffffffe0, %r11d       #  12    0x7fe4b  7      
  addq %r15, %r11               #  13    0x7fe52  3      
  jmpq %r11                     #  14    0x7fe55  3      
  nop                           #  15    0x7fe58  1      
.L_7fe60:                       #        0x7fe59  0      
  testl %eax, %eax              #  16    0x7fe59  2      
  sete %cl                      #  17    0x7fe5b  3      
  je .L_7fea0                   #  18    0x7fe5e  6      
  leal 0x7ff00000(%rdx), %eax   #  19    0x7fe64  6      
  cmpl $0x7fdfffff, %eax        #  20    0x7fe6a  5      
  ja .L_7fec0                   #  21    0x7fe6f  6      
  nop                           #  22    0x7fe75  1      
.L_7fe80:                       #        0x7fe76  0      
  movl $0x4, %eax               #  23    0x7fe76  5      
  popq %r11                     #  24    0x7fe7b  3      
  andl $0xffffffe0, %r11d       #  25    0x7fe7e  7      
  addq %r15, %r11               #  26    0x7fe85  3      
  jmpq %r11                     #  27    0x7fe88  3      
  nop                           #  28    0x7fe8b  1      
.L_7fea0:                       #        0x7fe8c  0      
  cmpl $0x80000000, %edx        #  29    0x7fe8c  6      
  je .L_7fe40                   #  30    0x7fe92  6      
  leal 0x7ff00000(%rdx), %eax   #  31    0x7fe98  6      
  cmpl $0x7fdfffff, %eax        #  32    0x7fe9e  5      
  jbe .L_7fe80                  #  33    0x7fea3  6      
  nop                           #  34    0x7fea9  1      
.L_7fec0:                       #        0x7feaa  0      
  leal -0x100000(%rdx), %eax    #  35    0x7feaa  6      
  cmpl $0x7fdfffff, %eax        #  36    0x7feb0  5      
  jbe .L_7fe80                  #  37    0x7feb5  6      
  leal -0x80000000(%rdx), %eax  #  38    0x7febb  6      
  cmpl $0xfffff, %eax           #  39    0x7fec1  5      
  jbe .L_7ff00                  #  40    0x7fec6  6      
  cmpl $0xfffff, %edx           #  41    0x7fecc  6      
  ja .L_7ff20                   #  42    0x7fed2  6      
  nop                           #  43    0x7fed8  1      
  nop                           #  44    0x7fed9  1      
.L_7ff00:                       #        0x7feda  0      
  movl $0x3, %eax               #  45    0x7feda  5      
  popq %r11                     #  46    0x7fedf  3      
  andl $0xffffffe0, %r11d       #  47    0x7fee2  7      
  addq %r15, %r11               #  48    0x7fee9  3      
  jmpq %r11                     #  49    0x7feec  3      
  nop                           #  50    0x7feef  1      
.L_7ff20:                       #        0x7fef0  0      
  cmpl $0xfff00000, %edx        #  51    0x7fef0  6      
  sete %al                      #  52    0x7fef6  3      
  cmpl $0x7ff00000, %edx        #  53    0x7fef9  6      
  sete %dl                      #  54    0x7feff  3      
  orl %edx, %eax                #  55    0x7ff02  2      
  andl %ecx, %eax               #  56    0x7ff04  2      
  movzbl %al, %eax              #  57    0x7ff06  3      
  popq %r11                     #  58    0x7ff09  3      
  nop                           #  59    0x7ff0c  1      
  andl $0xffffffe0, %r11d       #  60    0x7ff0d  7      
  addq %r15, %r11               #  61    0x7ff14  3      
  jmpq %r11                     #  62    0x7ff17  3      
  nop                           #  63    0x7ff1a  1      
  nop                           #  64    0x7ff1b  1      
  nop                           #  65    0x7ff1c  1      
  nop                           #  66    0x7ff1d  1      
  nop                           #  67    0x7ff1e  1      
  nop                           #  68    0x7ff1f  1      
  nop                           #  69    0x7ff20  1      
  nop                           #  70    0x7ff21  1      
  nop                           #  71    0x7ff22  1      
  nop                           #  72    0x7ff23  1      
  nop                           #  73    0x7ff24  1      
  nop                           #  74    0x7ff25  1      
  nop                           #  75    0x7ff26  1      
  nop                           #  76    0x7ff27  1      
  nop                           #  77    0x7ff28  1      
  nop                           #  78    0x7ff29  1      
  nop                           #  79    0x7ff2a  1      
  nop                           #  80    0x7ff2b  1      
  nop                           #  81    0x7ff2c  1      
  nop                           #  82    0x7ff2d  1      
  nop                           #  83    0x7ff2e  1      
  nop                           #  84    0x7ff2f  1      
                                                         
.size __fpclassifyd, .-__fpclassifyd

