  .text
  .globl _Bfree
  .type _Bfree, @function

#! file-offset 0x7e380
#! rip-offset  0x7e380
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
._Bfree:                        #        0x7e380  0      
  movl %esi, %esi               #  1     0x7e380  2      
  movl %edi, %edi               #  2     0x7e382  2      
  testq %rsi, %rsi              #  3     0x7e384  3      
  je .L_7e3c0                   #  4     0x7e387  6      
  movl %esi, %esi               #  5     0x7e38d  2      
  movl 0x4(%r15,%rsi,1), %eax   #  6     0x7e38f  5      
  shll $0x2, %eax               #  7     0x7e394  3      
  movl %edi, %edi               #  8     0x7e397  2      
  addl 0x4c(%r15,%rdi,1), %eax  #  9     0x7e399  5      
  movl %eax, %eax               #  10    0x7e39e  2      
  movl (%r15,%rax,1), %edx      #  11    0x7e3a0  4      
  movl %esi, %esi               #  12    0x7e3a4  2      
  movl %edx, (%r15,%rsi,1)      #  13    0x7e3a6  4      
  movl %eax, %eax               #  14    0x7e3aa  2      
  movl %esi, (%r15,%rax,1)      #  15    0x7e3ac  4      
  nop                           #  16    0x7e3b0  1      
  nop                           #  17    0x7e3b1  1      
.L_7e3c0:                       #        0x7e3b2  0      
  popq %r11                     #  18    0x7e3b2  3      
  andl $0xffffffe0, %r11d       #  19    0x7e3b5  7      
  addq %r15, %r11               #  20    0x7e3bc  3      
  jmpq %r11                     #  21    0x7e3bf  3      
  nop                           #  22    0x7e3c2  1      
  nop                           #  23    0x7e3c3  1      
                                                         
.size _Bfree, .-_Bfree

