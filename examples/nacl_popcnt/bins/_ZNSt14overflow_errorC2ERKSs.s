  .text
  .globl _ZNSt14overflow_errorC2ERKSs
  .type _ZNSt14overflow_errorC2ERKSs, @function

#! file-offset 0x4e680
#! rip-offset  0x4e680
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSt14overflow_errorC2ERKSs:        #        0x4e680  0      
  pushq %rbx                          #  1     0x4e680  2      
  movl %edi, %ebx                     #  2     0x4e682  2      
  movl %esi, %esi                     #  3     0x4e684  2      
  movl %ebx, %edi                     #  4     0x4e686  2      
  nop                                 #  5     0x4e688  1      
  nop                                 #  6     0x4e689  1      
  callq ._ZNSt13runtime_errorC2ERKSs  #  7     0x4e68a  5      
  movl %ebx, %ebx                     #  8     0x4e68f  2      
  movl $0x10020ff8, (%r15,%rbx,1)     #  9     0x4e691  8      
  popq %rbx                           #  10    0x4e699  2      
  popq %r11                           #  11    0x4e69b  3      
  andl $0xffffffe0, %r11d             #  12    0x4e69e  7      
  addq %r15, %r11                     #  13    0x4e6a5  3      
  jmpq %r11                           #  14    0x4e6a8  3      
  nop                                 #  15    0x4e6ab  1      
  nop                                 #  16    0x4e6ac  1      
  nop                                 #  17    0x4e6ad  1      
  nop                                 #  18    0x4e6ae  1      
  nop                                 #  19    0x4e6af  1      
  nop                                 #  20    0x4e6b0  1      
  nop                                 #  21    0x4e6b1  1      
  nop                                 #  22    0x4e6b2  1      
  nop                                 #  23    0x4e6b3  1      
                                                               
.size _ZNSt14overflow_errorC2ERKSs, .-_ZNSt14overflow_errorC2ERKSs

