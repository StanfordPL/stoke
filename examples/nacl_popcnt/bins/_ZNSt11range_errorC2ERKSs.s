  .text
  .globl _ZNSt11range_errorC2ERKSs
  .type _ZNSt11range_errorC2ERKSs, @function

#! file-offset 0x4e780
#! rip-offset  0x4e780
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSt11range_errorC2ERKSs:           #        0x4e780  0      
  pushq %rbx                          #  1     0x4e780  2      
  movl %edi, %ebx                     #  2     0x4e782  2      
  movl %esi, %esi                     #  3     0x4e784  2      
  movl %ebx, %edi                     #  4     0x4e786  2      
  nop                                 #  5     0x4e788  1      
  nop                                 #  6     0x4e789  1      
  callq ._ZNSt13runtime_errorC2ERKSs  #  7     0x4e78a  5      
  movl %ebx, %ebx                     #  8     0x4e78f  2      
  movl $0x10021028, (%r15,%rbx,1)     #  9     0x4e791  8      
  popq %rbx                           #  10    0x4e799  2      
  popq %r11                           #  11    0x4e79b  3      
  andl $0xffffffe0, %r11d             #  12    0x4e79e  7      
  addq %r15, %r11                     #  13    0x4e7a5  3      
  jmpq %r11                           #  14    0x4e7a8  3      
  nop                                 #  15    0x4e7ab  1      
  nop                                 #  16    0x4e7ac  1      
  nop                                 #  17    0x4e7ad  1      
  nop                                 #  18    0x4e7ae  1      
  nop                                 #  19    0x4e7af  1      
  nop                                 #  20    0x4e7b0  1      
  nop                                 #  21    0x4e7b1  1      
  nop                                 #  22    0x4e7b2  1      
  nop                                 #  23    0x4e7b3  1      
                                                               
.size _ZNSt11range_errorC2ERKSs, .-_ZNSt11range_errorC2ERKSs

