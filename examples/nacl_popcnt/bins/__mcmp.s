  .text
  .globl __mcmp
  .type __mcmp, @function

#! file-offset 0x7e5e0
#! rip-offset  0x7e5e0
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
.__mcmp:                        #        0x7e5e0  0      
  movl %edi, %edi               #  1     0x7e5e0  2      
  movl %esi, %esi               #  2     0x7e5e2  2      
  movl %edi, %edi               #  3     0x7e5e4  2      
  movl 0x10(%r15,%rdi,1), %eax  #  4     0x7e5e6  5      
  movl %esi, %esi               #  5     0x7e5eb  2      
  movl 0x10(%r15,%rsi,1), %edx  #  6     0x7e5ed  5      
  subl %edx, %eax               #  7     0x7e5f2  2      
  jne .L_7e640                  #  8     0x7e5f4  6      
  leal 0x10(,%rdx,4), %edx      #  9     0x7e5fa  7      
  leal 0x14(%rdi), %ecx         #  10    0x7e601  3      
  leal 0x4(%rdx,%rsi,1), %esi   #  11    0x7e604  4      
  leal 0x4(%rdx,%rdi,1), %edi   #  12    0x7e608  4      
  nop                           #  13    0x7e60c  1      
  nop                           #  14    0x7e60d  1      
.L_7e620:                       #        0x7e60e  0      
  subl $0x4, %esi               #  15    0x7e60e  3      
  subl $0x4, %edi               #  16    0x7e611  3      
  movl %esi, %esi               #  17    0x7e614  2      
  movl (%r15,%rsi,1), %edx      #  18    0x7e616  4      
  movl %edi, %edi               #  19    0x7e61a  2      
  cmpl %edx, (%r15,%rdi,1)      #  20    0x7e61c  4      
  jne .L_7e660                  #  21    0x7e620  6      
  cmpl %edi, %ecx               #  22    0x7e626  2      
  jb .L_7e620                   #  23    0x7e628  6      
  nop                           #  24    0x7e62e  1      
.L_7e640:                       #        0x7e62f  0      
  popq %r11                     #  25    0x7e62f  3      
  andl $0xffffffe0, %r11d       #  26    0x7e632  7      
  addq %r15, %r11               #  27    0x7e639  3      
  jmpq %r11                     #  28    0x7e63c  3      
  nop                           #  29    0x7e63f  1      
  nop                           #  30    0x7e640  1      
.L_7e660:                       #        0x7e641  0      
  sbbl %eax, %eax               #  31    0x7e641  2      
  orl $0x1, %eax                #  32    0x7e643  3      
  popq %r11                     #  33    0x7e646  3      
  andl $0xffffffe0, %r11d       #  34    0x7e649  7      
  addq %r15, %r11               #  35    0x7e650  3      
  jmpq %r11                     #  36    0x7e653  3      
  nop                           #  37    0x7e656  1      
                                                         
.size __mcmp, .-__mcmp

