  .text
  .globl _ZSt14set_unexpectedPFvvE
  .type _ZSt14set_unexpectedPFvvE, @function

#! file-offset 0x4bac0
#! rip-offset  0x4bac0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
._ZSt14set_unexpectedPFvvE:   #        0x4bac0  0      
  popq %r11                   #  1     0x4bac0  3      
  movl 0xffe4a27(%rip), %eax  #  2     0x4bac3  6      
  movl %edi, 0xffe4a21(%rip)  #  3     0x4bac9  6      
  andl $0xffffffe0, %r11d     #  4     0x4bacf  7      
  addq %r15, %r11             #  5     0x4bad6  3      
  jmpq %r11                   #  6     0x4bad9  3      
  nop                         #  7     0x4badc  1      
  nop                         #  8     0x4badd  1      
  nop                         #  9     0x4bade  1      
  nop                         #  10    0x4badf  1      
  nop                         #  11    0x4bae0  1      
  nop                         #  12    0x4bae1  1      
  nop                         #  13    0x4bae2  1      
  nop                         #  14    0x4bae3  1      
                                                       
.size _ZSt14set_unexpectedPFvvE, .-_ZSt14set_unexpectedPFvvE

