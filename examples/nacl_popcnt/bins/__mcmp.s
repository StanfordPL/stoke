  .text
  .globl __mcmp
  .type __mcmp, @function

#! file-offset 0x7e680
#! rip-offset  0x7e680
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  
.__mcmp:                        #        0x7e680  0      
  movl %edi, %edi               #  1     0x7e680  2      
  movl %esi, %esi               #  2     0x7e682  2      
  movl %edi, %edi               #  3     0x7e684  2      
  movl 0x10(%r15,%rdi,1), %eax  #  4     0x7e686  5      
  movl %esi, %esi               #  5     0x7e68b  2      
  movl 0x10(%r15,%rsi,1), %edx  #  6     0x7e68d  5      
  subl %edx, %eax               #  7     0x7e692  2      
  jne .L_7e6e0                  #  8     0x7e694  6      
  leal 0x10(,%rdx,4), %edx      #  9     0x7e69a  7      
  leal 0x14(%rdi), %ecx         #  10    0x7e6a1  3      
  leal 0x4(%rdx,%rsi,1), %esi   #  11    0x7e6a4  4      
  leal 0x4(%rdx,%rdi,1), %edi   #  12    0x7e6a8  4      
  nop                           #  13    0x7e6ac  1      
  nop                           #  14    0x7e6ad  1      
.L_7e6c0:                       #        0x7e6ae  0      
  subl $0x4, %esi               #  15    0x7e6ae  3      
  subl $0x4, %edi               #  16    0x7e6b1  3      
  movl %esi, %esi               #  17    0x7e6b4  2      
  movl (%r15,%rsi,1), %edx      #  18    0x7e6b6  4      
  movl %edi, %edi               #  19    0x7e6ba  2      
  cmpl %edx, (%r15,%rdi,1)      #  20    0x7e6bc  4      
  jne .L_7e700                  #  21    0x7e6c0  6      
  cmpl %edi, %ecx               #  22    0x7e6c6  2      
  jb .L_7e6c0                   #  23    0x7e6c8  6      
  nop                           #  24    0x7e6ce  1      
.L_7e6e0:                       #        0x7e6cf  0      
  popq %r11                     #  25    0x7e6cf  3      
  andl $0xffffffe0, %r11d       #  26    0x7e6d2  7      
  addq %r15, %r11               #  27    0x7e6d9  3      
  jmpq %r11                     #  28    0x7e6dc  3      
  nop                           #  29    0x7e6df  1      
  nop                           #  30    0x7e6e0  1      
.L_7e700:                       #        0x7e6e1  0      
  sbbl %eax, %eax               #  31    0x7e6e1  2      
  orl $0x1, %eax                #  32    0x7e6e3  3      
  popq %r11                     #  33    0x7e6e6  3      
  andl $0xffffffe0, %r11d       #  34    0x7e6e9  7      
  addq %r15, %r11               #  35    0x7e6f0  3      
  jmpq %r11                     #  36    0x7e6f3  3      
  nop                           #  37    0x7e6f6  1      
                                                         
.size __mcmp, .-__mcmp

