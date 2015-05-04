  .text
  .globl _ZSt14set_unexpectedPFvvE
  .type _ZSt14set_unexpectedPFvvE, @function

#! file-offset 0x4bb40
#! rip-offset  0x4bb40
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  
._ZSt14set_unexpectedPFvvE:   #        0x4bb40  0      
  popq %r11                   #  1     0x4bb40  3      
  movl 0xffe49a7(%rip), %eax  #  2     0x4bb43  6      
  movl %edi, 0xffe49a1(%rip)  #  3     0x4bb49  6      
  andl $0xffffffe0, %r11d     #  4     0x4bb4f  7      
  addq %r15, %r11             #  5     0x4bb56  3      
  jmpq %r11                   #  6     0x4bb59  3      
  nop                         #  7     0x4bb5c  1      
  nop                         #  8     0x4bb5d  1      
  nop                         #  9     0x4bb5e  1      
  nop                         #  10    0x4bb5f  1      
  nop                         #  11    0x4bb60  1      
  nop                         #  12    0x4bb61  1      
  nop                         #  13    0x4bb62  1      
  nop                         #  14    0x4bb63  1      
                                                       
.size _ZSt14set_unexpectedPFvvE, .-_ZSt14set_unexpectedPFvvE

