  .text
  .globl __cxa_guard_abort
  .type __cxa_guard_abort, @function

#! file-offset 0x4b600
#! rip-offset  0x4b600
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
.__cxa_guard_abort:            #        0x4b600  0      
  popq %r11                    #  1     0x4b600  3      
  movl %edi, %edi              #  2     0x4b603  2      
  movl %edi, %edi              #  3     0x4b605  2      
  movb $0x0, 0x1(%r15,%rdi,1)  #  4     0x4b607  6      
  andl $0xffffffe0, %r11d      #  5     0x4b60d  7      
  addq %r15, %r11              #  6     0x4b614  3      
  jmpq %r11                    #  7     0x4b617  3      
  nop                          #  8     0x4b61a  1      
  nop                          #  9     0x4b61b  1      
  nop                          #  10    0x4b61c  1      
  nop                          #  11    0x4b61d  1      
  nop                          #  12    0x4b61e  1      
  nop                          #  13    0x4b61f  1      
  nop                          #  14    0x4b620  1      
  nop                          #  15    0x4b621  1      
  nop                          #  16    0x4b622  1      
  nop                          #  17    0x4b623  1      
                                                        
.size __cxa_guard_abort, .-__cxa_guard_abort

