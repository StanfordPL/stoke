  .text
  .globl memset
  .type memset, @function

#! file-offset 0x6a1a0
#! rip-offset  0x6a1a0
#! capacity    47 bytes

# Text                      #  Line  RIP      Bytes  
.memset:                    #        0x6a1a0  0      
  movl %edi, %r9d           #  1     0x6a1a0  3      
  movl %esi, %eax           #  2     0x6a1a3  2      
  movl %edx, %ecx           #  3     0x6a1a5  2      
  cmpl $0x10, %edx          #  4     0x6a1a7  3      
  jb .byte_set              #  5     0x6a1aa  6      
  movl %edi, %r8d           #  6     0x6a1b0  3      
  andl $0x7, %r8d           #  7     0x6a1b3  4      
  je .quadword_aligned      #  8     0x6a1b7  6      
  movl $0x8, %ecx           #  9     0x6a1bd  5      
  xchgw %ax, %ax            #  10    0x6a1c2  3      
  subl %r8d, %ecx           #  11    0x6a1c5  3      
  subl %ecx, %edx           #  12    0x6a1c8  2      
  movl %edi, %edi           #  13    0x6a1ca  2      
  leaq (%r15,%rdi,1), %rdi  #  14    0x6a1cc  4      
  rep stosb %es:(%rdi)      #  15    0x6a1d0  3      
  movl %edx, %ecx           #  16    0x6a1d3  2      
                                                     
.size memset, .-memset

