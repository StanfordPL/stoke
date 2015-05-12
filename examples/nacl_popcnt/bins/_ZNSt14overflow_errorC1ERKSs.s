  .text
  .globl _ZNSt14overflow_errorC1ERKSs
  .type _ZNSt14overflow_errorC1ERKSs, @function

#! file-offset 0x4e640
#! rip-offset  0x4e640
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  
._ZNSt14overflow_errorC1ERKSs:        #        0x4e640  0      
  pushq %rbx                          #  1     0x4e640  2      
  movl %edi, %ebx                     #  2     0x4e642  2      
  movl %esi, %esi                     #  3     0x4e644  2      
  movl %ebx, %edi                     #  4     0x4e646  2      
  nop                                 #  5     0x4e648  1      
  nop                                 #  6     0x4e649  1      
  callq ._ZNSt13runtime_errorC2ERKSs  #  7     0x4e64a  5      
  movl %ebx, %ebx                     #  8     0x4e64f  2      
  movl $0x10020ff8, (%r15,%rbx,1)     #  9     0x4e651  8      
  popq %rbx                           #  10    0x4e659  2      
  popq %r11                           #  11    0x4e65b  3      
  andl $0xffffffe0, %r11d             #  12    0x4e65e  7      
  addq %r15, %r11                     #  13    0x4e665  3      
  jmpq %r11                           #  14    0x4e668  3      
  nop                                 #  15    0x4e66b  1      
  nop                                 #  16    0x4e66c  1      
  nop                                 #  17    0x4e66d  1      
  nop                                 #  18    0x4e66e  1      
  nop                                 #  19    0x4e66f  1      
  nop                                 #  20    0x4e670  1      
  nop                                 #  21    0x4e671  1      
  nop                                 #  22    0x4e672  1      
  nop                                 #  23    0x4e673  1      
                                                               
.size _ZNSt14overflow_errorC1ERKSs, .-_ZNSt14overflow_errorC1ERKSs

