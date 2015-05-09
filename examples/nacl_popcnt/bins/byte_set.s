  .text
  .globl byte_set
  .type byte_set, @function

#! file-offset 0x6a28f
#! rip-offset  0x6a28f
#! capacity    27 bytes

# Text                      #  Line  RIP      Bytes  
.byte_set:                  #        0x6a28f  0      
  movl %edi, %edi           #  1     0x6a28f  2      
  leaq (%r15,%rdi,1), %rdi  #  2     0x6a291  4      
  rep stosb %es:(%rdi)      #  3     0x6a295  3      
  movl %r9d, %eax           #  4     0x6a298  3      
  popq %r11                 #  5     0x6a29b  3      
  nop                       #  6     0x6a29e  1      
  andl $0xffffffe0, %r11d   #  7     0x6a29f  7      
  addq %r15, %r11           #  8     0x6a2a6  3      
  jmpq %r11                 #  9     0x6a2a9  3      
                                                     
.size byte_set, .-byte_set

