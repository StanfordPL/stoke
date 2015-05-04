  .text
  .globl memset
  .type memset, @function

#! file-offset 0x6a220
#! rip-offset  0x6a220
#! capacity    47 bytes

# Text                      #  Line  RIP      Bytes  
.memset:                    #        0x6a220  0      
  movl %edi, %r9d           #  1     0x6a220  3      
  movl %esi, %eax           #  2     0x6a223  2      
  movl %edx, %ecx           #  3     0x6a225  2      
  cmpl $0x10, %edx          #  4     0x6a227  3      
  jb .byte_set              #  5     0x6a22a  6      
  movl %edi, %r8d           #  6     0x6a230  3      
  andl $0x7, %r8d           #  7     0x6a233  4      
  je .quadword_aligned      #  8     0x6a237  6      
  movl $0x8, %ecx           #  9     0x6a23d  5      
  xchgw %ax, %ax            #  10    0x6a242  3      
  subl %r8d, %ecx           #  11    0x6a245  3      
  subl %ecx, %edx           #  12    0x6a248  2      
  movl %edi, %edi           #  13    0x6a24a  2      
  leaq (%r15,%rdi,1), %rdi  #  14    0x6a24c  4      
  rep stosb %es:(%rdi)      #  15    0x6a250  3      
  movl %edx, %ecx           #  16    0x6a253  2      
                                                     
.size memset, .-memset

