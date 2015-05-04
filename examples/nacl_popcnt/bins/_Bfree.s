  .text
  .globl _Bfree
  .type _Bfree, @function

#! file-offset 0x7e400
#! rip-offset  0x7e400
#! capacity    96 bytes

# Text                          #  Line  RIP      Bytes  
._Bfree:                        #        0x7e400  0      
  movl %esi, %esi               #  1     0x7e400  2      
  movl %edi, %edi               #  2     0x7e402  2      
  testq %rsi, %rsi              #  3     0x7e404  3      
  je .L_7e440                   #  4     0x7e407  6      
  movl %esi, %esi               #  5     0x7e40d  2      
  movl 0x4(%r15,%rsi,1), %eax   #  6     0x7e40f  5      
  shll $0x2, %eax               #  7     0x7e414  3      
  movl %edi, %edi               #  8     0x7e417  2      
  addl 0x4c(%r15,%rdi,1), %eax  #  9     0x7e419  5      
  movl %eax, %eax               #  10    0x7e41e  2      
  movl (%r15,%rax,1), %edx      #  11    0x7e420  4      
  movl %esi, %esi               #  12    0x7e424  2      
  movl %edx, (%r15,%rsi,1)      #  13    0x7e426  4      
  movl %eax, %eax               #  14    0x7e42a  2      
  movl %esi, (%r15,%rax,1)      #  15    0x7e42c  4      
  nop                           #  16    0x7e430  1      
  nop                           #  17    0x7e431  1      
.L_7e440:                       #        0x7e432  0      
  popq %r11                     #  18    0x7e432  3      
  andl $0xffffffe0, %r11d       #  19    0x7e435  7      
  addq %r15, %r11               #  20    0x7e43c  3      
  jmpq %r11                     #  21    0x7e43f  3      
  nop                           #  22    0x7e442  1      
  nop                           #  23    0x7e443  1      
                                                         
.size _Bfree, .-_Bfree

