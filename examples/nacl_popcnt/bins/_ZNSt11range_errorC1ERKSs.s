  .text
  .globl _ZNSt11range_errorC1ERKSs
  .type _ZNSt11range_errorC1ERKSs, @function

#! file-offset 0x4e740
#! rip-offset  0x4e740
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSt11range_errorC1ERKSs:           #        0x4e740  0      
  pushq %rbx                          #  1     0x4e740  2      
  movl %edi, %ebx                     #  2     0x4e742  2      
  movl %esi, %esi                     #  3     0x4e744  2      
  movl %ebx, %edi                     #  4     0x4e746  2      
  nop                                 #  5     0x4e748  1      
  nop                                 #  6     0x4e749  1      
  callq ._ZNSt13runtime_errorC2ERKSs  #  7     0x4e74a  5      
  movl %ebx, %ebx                     #  8     0x4e74f  2      
  movl $0x10021028, (%r15,%rbx,1)     #  9     0x4e751  8      
  popq %rbx                           #  10    0x4e759  2      
  popq %r11                           #  11    0x4e75b  3      
  andl $0xffffffe0, %r11d             #  12    0x4e75e  7      
  addq %r15, %r11                     #  13    0x4e765  3      
  jmpq %r11                           #  14    0x4e768  3      
  nop                                 #  15    0x4e76b  1      
  nop                                 #  16    0x4e76c  1      
  nop                                 #  17    0x4e76d  1      
  nop                                 #  18    0x4e76e  1      
  nop                                 #  19    0x4e76f  1      
  nop                                 #  20    0x4e770  1      
  nop                                 #  21    0x4e771  1      
  nop                                 #  22    0x4e772  1      
  nop                                 #  23    0x4e773  1      
                                                               
.size _ZNSt11range_errorC1ERKSs, .-_ZNSt11range_errorC1ERKSs

