  .text
  .globl strlen
  .type strlen, @function

#! file-offset 0x6b740
#! rip-offset  0x6b740
#! capacity    320 bytes

# Text                         #  Line  RIP      Bytes  
.strlen:                       #        0x6b740  0      
  movl %edi, %edi              #  1     0x6b740  2      
  testb $0x3, %dil             #  2     0x6b742  4      
  movq %rdi, %rdx              #  3     0x6b746  3      
  je .L_6b7c0                  #  4     0x6b749  6      
  xorl %eax, %eax              #  5     0x6b74f  2      
  movl %edi, %edi              #  6     0x6b751  2      
  cmpb $0x0, (%r15,%rdi,1)     #  7     0x6b753  5      
  jne .L_6b780                 #  8     0x6b758  6      
  jmpq .L_6b840                #  9     0x6b75e  5      
  nop                          #  10    0x6b763  1      
.L_6b760:                      #        0x6b764  0      
  movl %edx, %edx              #  11    0x6b764  2      
  cmpb $0x0, (%r15,%rdx,1)     #  12    0x6b766  5      
  je .L_6b860                  #  13    0x6b76b  6      
  nop                          #  14    0x6b771  1      
  nop                          #  15    0x6b772  1      
.L_6b780:                      #        0x6b773  0      
  addl $0x1, %edx              #  16    0x6b773  3      
  testb $0x3, %dl              #  17    0x6b776  3      
  jne .L_6b760                 #  18    0x6b779  6      
  jmpq .L_6b7c0                #  19    0x6b77f  5      
  nop                          #  20    0x6b784  1      
  nop                          #  21    0x6b785  1      
.L_6b7a0:                      #        0x6b786  0      
  addl $0x4, %edx              #  22    0x6b786  3      
  nop                          #  23    0x6b789  1      
  nop                          #  24    0x6b78a  1      
.L_6b7c0:                      #        0x6b78b  0      
  movl %edx, %edx              #  25    0x6b78b  2      
  movl (%r15,%rdx,1), %ecx     #  26    0x6b78d  4      
  leal -0x1010101(%rcx), %eax  #  27    0x6b791  6      
  notl %ecx                    #  28    0x6b797  2      
  andl %ecx, %eax              #  29    0x6b799  2      
  testl $0x80808080, %eax      #  30    0x6b79b  5      
  je .L_6b7a0                  #  31    0x6b7a0  6      
  movl %edx, %edx              #  32    0x6b7a6  2      
  cmpb $0x0, (%r15,%rdx,1)     #  33    0x6b7a8  5      
  xchgw %ax, %ax               #  34    0x6b7ad  3      
  je .L_6b820                  #  35    0x6b7b0  6      
  nop                          #  36    0x6b7b6  1      
  nop                          #  37    0x6b7b7  1      
.L_6b800:                      #        0x6b7b8  0      
  addl $0x1, %edx              #  38    0x6b7b8  3      
  movl %edx, %edx              #  39    0x6b7bb  2      
  cmpb $0x0, (%r15,%rdx,1)     #  40    0x6b7bd  5      
  jne .L_6b800                 #  41    0x6b7c2  6      
  nop                          #  42    0x6b7c8  1      
  nop                          #  43    0x6b7c9  1      
.L_6b820:                      #        0x6b7ca  0      
  movl %edx, %eax              #  44    0x6b7ca  2      
  subl %edi, %eax              #  45    0x6b7cc  2      
  nop                          #  46    0x6b7ce  1      
  nop                          #  47    0x6b7cf  1      
.L_6b840:                      #        0x6b7d0  0      
  popq %r11                    #  48    0x6b7d0  3      
  andl $0xffffffe0, %r11d      #  49    0x6b7d3  7      
  addq %r15, %r11              #  50    0x6b7da  3      
  jmpq %r11                    #  51    0x6b7dd  3      
  nop                          #  52    0x6b7e0  1      
  nop                          #  53    0x6b7e1  1      
.L_6b860:                      #        0x6b7e2  0      
  movl %edx, %eax              #  54    0x6b7e2  2      
  subl %edi, %eax              #  55    0x6b7e4  2      
  popq %r11                    #  56    0x6b7e6  3      
  andl $0xffffffe0, %r11d      #  57    0x6b7e9  7      
  addq %r15, %r11              #  58    0x6b7f0  3      
  jmpq %r11                    #  59    0x6b7f3  3      
  nop                          #  60    0x6b7f6  1      
  nop                          #  61    0x6b7f7  1      
  nop                          #  62    0x6b7f8  1      
  nop                          #  63    0x6b7f9  1      
  nop                          #  64    0x6b7fa  1      
  nop                          #  65    0x6b7fb  1      
  nop                          #  66    0x6b7fc  1      
  nop                          #  67    0x6b7fd  1      
  nop                          #  68    0x6b7fe  1      
  nop                          #  69    0x6b7ff  1      
  nop                          #  70    0x6b800  1      
  nop                          #  71    0x6b801  1      
  nop                          #  72    0x6b802  1      
  nop                          #  73    0x6b803  1      
  nop                          #  74    0x6b804  1      
  nop                          #  75    0x6b805  1      
                                                        
.size strlen, .-strlen

