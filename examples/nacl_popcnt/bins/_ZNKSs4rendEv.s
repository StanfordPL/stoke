  .text
  .globl _ZNKSs4rendEv
  .type _ZNKSs4rendEv, @function

#! file-offset 0x44480
#! rip-offset  0x44480
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs4rendEv:             #        0x44480  0      
  movl %esi, %esi           #  1     0x44480  2      
  movl %edi, %eax           #  2     0x44482  2      
  movl %esi, %esi           #  3     0x44484  2      
  movl (%r15,%rsi,1), %edx  #  4     0x44486  4      
  movl %eax, %eax           #  5     0x4448a  2      
  movl %edx, (%r15,%rax,1)  #  6     0x4448c  4      
  popq %r11                 #  7     0x44490  3      
  andl $0xffffffe0, %r11d   #  8     0x44493  7      
  addq %r15, %r11           #  9     0x4449a  3      
  jmpq %r11                 #  10    0x4449d  3      
  nop                       #  11    0x444a0  1      
  nop                       #  12    0x444a1  1      
  nop                       #  13    0x444a2  1      
  nop                       #  14    0x444a3  1      
                                                     
.size _ZNKSs4rendEv, .-_ZNKSs4rendEv

