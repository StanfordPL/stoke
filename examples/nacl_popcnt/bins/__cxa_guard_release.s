  .text
  .globl __cxa_guard_release
  .type __cxa_guard_release, @function

#! file-offset 0x4b5a0
#! rip-offset  0x4b5a0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
.__cxa_guard_release:          #        0x4b5a0  0      
  movl %edi, %edi              #  1     0x4b5a0  2      
  movl %edi, %edi              #  2     0x4b5a2  2      
  movb $0x0, 0x1(%r15,%rdi,1)  #  3     0x4b5a4  6      
  popq %r11                    #  4     0x4b5aa  3      
  movl %edi, %edi              #  5     0x4b5ad  2      
  movb $0x1, (%r15,%rdi,1)     #  6     0x4b5af  5      
  andl $0xffffffe0, %r11d      #  7     0x4b5b4  7      
  addq %r15, %r11              #  8     0x4b5bb  3      
  jmpq %r11                    #  9     0x4b5be  3      
  nop                          #  10    0x4b5c1  1      
  nop                          #  11    0x4b5c2  1      
  nop                          #  12    0x4b5c3  1      
                                                        
.size __cxa_guard_release, .-__cxa_guard_release

