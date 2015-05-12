  .text
  .globl __cxa_guard_abort
  .type __cxa_guard_abort, @function

#! file-offset 0x4b580
#! rip-offset  0x4b580
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
.__cxa_guard_abort:            #        0x4b580  0      
  popq %r11                    #  1     0x4b580  3      
  movl %edi, %edi              #  2     0x4b583  2      
  movl %edi, %edi              #  3     0x4b585  2      
  movb $0x0, 0x1(%r15,%rdi,1)  #  4     0x4b587  6      
  andl $0xffffffe0, %r11d      #  5     0x4b58d  7      
  addq %r15, %r11              #  6     0x4b594  3      
  jmpq %r11                    #  7     0x4b597  3      
  nop                          #  8     0x4b59a  1      
  nop                          #  9     0x4b59b  1      
  nop                          #  10    0x4b59c  1      
  nop                          #  11    0x4b59d  1      
  nop                          #  12    0x4b59e  1      
  nop                          #  13    0x4b59f  1      
  nop                          #  14    0x4b5a0  1      
  nop                          #  15    0x4b5a1  1      
  nop                          #  16    0x4b5a2  1      
  nop                          #  17    0x4b5a3  1      
                                                        
.size __cxa_guard_abort, .-__cxa_guard_abort

