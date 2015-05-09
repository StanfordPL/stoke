  .text
  .globl _ZNKSs5beginEv
  .type _ZNKSs5beginEv, @function

#! file-offset 0x443e0
#! rip-offset  0x443e0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  
._ZNKSs5beginEv:            #        0x443e0  0      
  popq %r11                 #  1     0x443e0  3      
  movl %edi, %edi           #  2     0x443e3  2      
  movl %edi, %edi           #  3     0x443e5  2      
  movl (%r15,%rdi,1), %eax  #  4     0x443e7  4      
  andl $0xffffffe0, %r11d   #  5     0x443eb  7      
  addq %r15, %r11           #  6     0x443f2  3      
  jmpq %r11                 #  7     0x443f5  3      
  nop                       #  8     0x443f8  1      
  nop                       #  9     0x443f9  1      
  nop                       #  10    0x443fa  1      
  nop                       #  11    0x443fb  1      
  nop                       #  12    0x443fc  1      
  nop                       #  13    0x443fd  1      
  nop                       #  14    0x443fe  1      
  nop                       #  15    0x443ff  1      
  nop                       #  16    0x44400  1      
  nop                       #  17    0x44401  1      
  nop                       #  18    0x44402  1      
  nop                       #  19    0x44403  1      
                                                     
.size _ZNKSs5beginEv, .-_ZNKSs5beginEv

