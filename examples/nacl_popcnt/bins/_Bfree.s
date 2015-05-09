  .text
  .globl _Bfree
  .type _Bfree, @function

#! file-offset 0x7e360
#! rip-offset  0x7e360
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
._Bfree:                        #        0x7e360  0      
  movl %esi, %esi               #  1     0x7e360  2      
  movl %edi, %edi               #  2     0x7e362  2      
  testq %rsi, %rsi              #  3     0x7e364  3      
  je .L_7e3a0                   #  4     0x7e367  6      
  movl %esi, %esi               #  5     0x7e36d  2      
  movl 0x4(%r15,%rsi,1), %eax   #  6     0x7e36f  5      
  shll $0x2, %eax               #  7     0x7e374  3      
  movl %edi, %edi               #  8     0x7e377  2      
  addl 0x4c(%r15,%rdi,1), %eax  #  9     0x7e379  5      
  movl %eax, %eax               #  10    0x7e37e  2      
  movl (%r15,%rax,1), %edx      #  11    0x7e380  4      
  movl %esi, %esi               #  12    0x7e384  2      
  movl %edx, (%r15,%rsi,1)      #  13    0x7e386  4      
  movl %eax, %eax               #  14    0x7e38a  2      
  movl %esi, (%r15,%rax,1)      #  15    0x7e38c  4      
  nop                           #  16    0x7e390  1      
  nop                           #  17    0x7e391  1      
.L_7e3a0:                       #        0x7e392  0      
  popq %r11                     #  18    0x7e392  3      
  andl $0xffffffe0, %r11d       #  19    0x7e395  7      
  addq %r15, %r11               #  20    0x7e39c  3      
  jmpq %r11                     #  21    0x7e39f  3      
  nop                           #  22    0x7e3a2  1      
  nop                           #  23    0x7e3a3  1      
                                                         
.size _Bfree, .-_Bfree

