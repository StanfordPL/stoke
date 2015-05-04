  .text
  .globl memchr
  .type memchr, @function

#! file-offset 0x69ce0
#! rip-offset  0x69ce0
#! capacity    384 bytes

# Text                         #  Line  RIP      Bytes  
.memchr:                       #        0x69ce0  0      
  movl %edi, %edi              #  1     0x69ce0  2      
  testb $0x3, %dil             #  2     0x69ce2  4      
  jne .L_69d20                 #  3     0x69ce6  6      
  jmpq .L_69d80                #  4     0x69cec  5      
  nop                          #  5     0x69cf1  1      
  nop                          #  6     0x69cf2  1      
.L_69d00:                      #        0x69cf3  0      
  movl %edi, %edi              #  7     0x69cf3  2      
  cmpb %sil, (%r15,%rdi,1)     #  8     0x69cf5  4      
  je .L_69d60                  #  9     0x69cf9  6      
  addl $0x1, %edi              #  10    0x69cff  3      
  subl $0x1, %edx              #  11    0x69d02  3      
  testb $0x3, %dil             #  12    0x69d05  4      
  je .L_69d80                  #  13    0x69d09  6      
  nop                          #  14    0x69d0f  1      
.L_69d20:                      #        0x69d10  0      
  testl %edx, %edx             #  15    0x69d10  2      
  jne .L_69d00                 #  16    0x69d12  6      
  nop                          #  17    0x69d18  1      
  nop                          #  18    0x69d19  1      
.L_69d40:                      #        0x69d1a  0      
  xorl %eax, %eax              #  19    0x69d1a  2      
  popq %r11                    #  20    0x69d1c  3      
  andl $0xffffffe0, %r11d      #  21    0x69d1f  7      
  addq %r15, %r11              #  22    0x69d26  3      
  jmpq %r11                    #  23    0x69d29  3      
  nop                          #  24    0x69d2c  1      
  nop                          #  25    0x69d2d  1      
.L_69d60:                      #        0x69d2e  0      
  movq %rdi, %rax              #  26    0x69d2e  3      
  popq %r11                    #  27    0x69d31  3      
  andl $0xffffffe0, %r11d      #  28    0x69d34  7      
  addq %r15, %r11              #  29    0x69d3b  3      
  jmpq %r11                    #  30    0x69d3e  3      
  xchgw %ax, %ax               #  31    0x69d41  3      
  nop                          #  32    0x69d44  1      
.L_69d80:                      #        0x69d45  0      
  cmpl $0x3, %edx              #  33    0x69d45  3      
  ja .L_69e00                  #  34    0x69d48  6      
  nop                          #  35    0x69d4e  1      
  nop                          #  36    0x69d4f  1      
.L_69da0:                      #        0x69d50  0      
  testl %edx, %edx             #  37    0x69d50  2      
  je .L_69d40                  #  38    0x69d52  6      
  movl %edi, %edi              #  39    0x69d58  2      
  cmpb %sil, (%r15,%rdi,1)     #  40    0x69d5a  4      
  je .L_69d60                  #  41    0x69d5e  6      
  subl $0x1, %edx              #  42    0x69d64  3      
  jmpq .L_69de0                #  43    0x69d67  5      
  nop                          #  44    0x69d6c  1      
.L_69dc0:                      #        0x69d6d  0      
  addl $0x1, %edi              #  45    0x69d6d  3      
  subl $0x1, %edx              #  46    0x69d70  3      
  movl %edi, %edi              #  47    0x69d73  2      
  cmpb %sil, (%r15,%rdi,1)     #  48    0x69d75  4      
  je .L_69d60                  #  49    0x69d79  6      
  nop                          #  50    0x69d7f  1      
  nop                          #  51    0x69d80  1      
.L_69de0:                      #        0x69d81  0      
  testl %edx, %edx             #  52    0x69d81  2      
  jne .L_69dc0                 #  53    0x69d83  6      
  jmpq .L_69d40                #  54    0x69d89  5      
  nop                          #  55    0x69d8e  1      
  nop                          #  56    0x69d8f  1      
.L_69e00:                      #        0x69d90  0      
  movzbl %sil, %ecx            #  57    0x69d90  4      
  movl %ecx, %eax              #  58    0x69d94  2      
  shll $0x8, %eax              #  59    0x69d96  3      
  orl %ecx, %eax               #  60    0x69d99  2      
  movl %eax, %r8d              #  61    0x69d9b  3      
  shll $0x10, %r8d             #  62    0x69d9e  4      
  orl %eax, %r8d               #  63    0x69da2  3      
  nop                          #  64    0x69da5  1      
.L_69e20:                      #        0x69da6  0      
  movl %edi, %edi              #  65    0x69da6  2      
  movl (%r15,%rdi,1), %ecx     #  66    0x69da8  4      
  xorl %r8d, %ecx              #  67    0x69dac  3      
  leal -0x1010101(%rcx), %eax  #  68    0x69daf  6      
  notl %ecx                    #  69    0x69db5  2      
  andl %ecx, %eax              #  70    0x69db7  2      
  testl $0x80808080, %eax      #  71    0x69db9  5      
  jne .L_69da0                 #  72    0x69dbe  6      
  xchgw %ax, %ax               #  73    0x69dc4  3      
  subl $0x4, %edx              #  74    0x69dc7  3      
  addl $0x4, %edi              #  75    0x69dca  3      
  cmpl $0x3, %edx              #  76    0x69dcd  3      
  ja .L_69e20                  #  77    0x69dd0  6      
  jmpq .L_69da0                #  78    0x69dd6  5      
  nop                          #  79    0x69ddb  1      
  nop                          #  80    0x69ddc  1      
  nop                          #  81    0x69ddd  1      
  nop                          #  82    0x69dde  1      
  nop                          #  83    0x69ddf  1      
  nop                          #  84    0x69de0  1      
  nop                          #  85    0x69de1  1      
  nop                          #  86    0x69de2  1      
  nop                          #  87    0x69de3  1      
  nop                          #  88    0x69de4  1      
  nop                          #  89    0x69de5  1      
  nop                          #  90    0x69de6  1      
  nop                          #  91    0x69de7  1      
  nop                          #  92    0x69de8  1      
  nop                          #  93    0x69de9  1      
  nop                          #  94    0x69dea  1      
                                                        
.size memchr, .-memchr

