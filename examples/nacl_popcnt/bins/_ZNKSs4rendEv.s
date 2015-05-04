  .text
  .globl _ZNKSs4rendEv
  .type _ZNKSs4rendEv, @function

#! file-offset 0x44500
#! rip-offset  0x44500
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs4rendEv:             #        0x44500  0      
  movl %esi, %esi           #  1     0x44500  2      
  movl %edi, %eax           #  2     0x44502  2      
  movl %esi, %esi           #  3     0x44504  2      
  movl (%r15,%rsi,1), %edx  #  4     0x44506  4      
  movl %eax, %eax           #  5     0x4450a  2      
  movl %edx, (%r15,%rax,1)  #  6     0x4450c  4      
  popq %r11                 #  7     0x44510  3      
  andl $0xffffffe0, %r11d   #  8     0x44513  7      
  addq %r15, %r11           #  9     0x4451a  3      
  jmpq %r11                 #  10    0x4451d  3      
  nop                       #  11    0x44520  1      
  nop                       #  12    0x44521  1      
  nop                       #  13    0x44522  1      
  nop                       #  14    0x44523  1      
                                                     
.size _ZNKSs4rendEv, .-_ZNKSs4rendEv

