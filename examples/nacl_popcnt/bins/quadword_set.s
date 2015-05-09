  .text
  .globl quadword_set
  .type quadword_set, @function

#! file-offset 0x6a2aa
#! rip-offset  0x6a2aa
#! capacity    54 bytes

# Text                      #  Line  RIP      Bytes  
.quadword_set:              #        0x6a2aa  0      
  shrl $0x3, %ecx           #  1     0x6a2aa  3      
  nop                       #  2     0x6a2ad  1      
  movl %edi, %edi           #  3     0x6a2ae  2      
  leaq (%r15,%rdi,1), %rdi  #  4     0x6a2b0  4      
  rep stosq %es:(%rdi)      #  5     0x6a2b4  4      
  movl %edx, %ecx           #  6     0x6a2b8  2      
  andl $0x7, %ecx           #  7     0x6a2ba  3      
  xchgw %ax, %ax            #  8     0x6a2bd  3      
  movl %edi, %edi           #  9     0x6a2c0  2      
  leaq (%r15,%rdi,1), %rdi  #  10    0x6a2c2  4      
  rep stosb %es:(%rdi)      #  11    0x6a2c6  3      
  movl %r9d, %eax           #  12    0x6a2c9  3      
  popq %r11                 #  13    0x6a2cc  3      
  andl $0xffffffe0, %r11d   #  14    0x6a2cf  7      
  addq %r15, %r11           #  15    0x6a2d6  3      
  jmpq %r11                 #  16    0x6a2d9  3      
  nop                       #  17    0x6a2dc  1      
  nop                       #  18    0x6a2dd  1      
  nop                       #  19    0x6a2de  1      
  nop                       #  20    0x6a2df  1      
  nop                       #  21    0x6a2e0  1      
  nop                       #  22    0x6a2e1  1      
  nop                       #  23    0x6a2e2  1      
  nop                       #  24    0x6a2e3  1      
  nop                       #  25    0x6a2e4  1      
                                                     
.size quadword_set, .-quadword_set

