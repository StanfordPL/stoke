  .text
  .globl _ZNSt14overflow_errorC2ERKSs
  .type _ZNSt14overflow_errorC2ERKSs, @function

#! file-offset 0x4e660
#! rip-offset  0x4e660
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSt14overflow_errorC2ERKSs:        #        0x4e660  0      
  pushq %rbx                          #  1     0x4e660  2      
  movl %edi, %ebx                     #  2     0x4e662  2      
  movl %esi, %esi                     #  3     0x4e664  2      
  movl %ebx, %edi                     #  4     0x4e666  2      
  nop                                 #  5     0x4e668  1      
  nop                                 #  6     0x4e669  1      
  callq ._ZNSt13runtime_errorC2ERKSs  #  7     0x4e66a  5      
  movl %ebx, %ebx                     #  8     0x4e66f  2      
  movl $0x10020ff8, (%r15,%rbx,1)     #  9     0x4e671  8      
  popq %rbx                           #  10    0x4e679  2      
  popq %r11                           #  11    0x4e67b  3      
  andl $0xffffffe0, %r11d             #  12    0x4e67e  7      
  addq %r15, %r11                     #  13    0x4e685  3      
  jmpq %r11                           #  14    0x4e688  3      
  nop                                 #  15    0x4e68b  1      
  nop                                 #  16    0x4e68c  1      
  nop                                 #  17    0x4e68d  1      
  nop                                 #  18    0x4e68e  1      
  nop                                 #  19    0x4e68f  1      
  nop                                 #  20    0x4e690  1      
  nop                                 #  21    0x4e691  1      
  nop                                 #  22    0x4e692  1      
  nop                                 #  23    0x4e693  1      
                                                               
.size _ZNSt14overflow_errorC2ERKSs, .-_ZNSt14overflow_errorC2ERKSs

