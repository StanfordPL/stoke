  .text
  .globl byte_set
  .type byte_set, @function

#! file-offset 0x6a2af
#! rip-offset  0x6a2af
#! capacity    27 bytes

# Text                      #  Line  RIP      Bytes  
.byte_set:                  #        0x6a2af  0      
  movl %edi, %edi           #  1     0x6a2af  2      
  leaq (%r15,%rdi,1), %rdi  #  2     0x6a2b1  4      
  rep stosb %es:(%rdi)      #  3     0x6a2b5  3      
  movl %r9d, %eax           #  4     0x6a2b8  3      
  popq %r11                 #  5     0x6a2bb  3      
  nop                       #  6     0x6a2be  1      
  andl $0xffffffe0, %r11d   #  7     0x6a2bf  7      
  addq %r15, %r11           #  8     0x6a2c6  3      
  jmpq %r11                 #  9     0x6a2c9  3      
                                                     
.size byte_set, .-byte_set

