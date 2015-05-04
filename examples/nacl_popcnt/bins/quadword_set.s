  .text
  .globl quadword_set
  .type quadword_set, @function

#! file-offset 0x6a34a
#! rip-offset  0x6a34a
#! capacity    54 bytes

# Text                      #  Line  RIP      Bytes  
.quadword_set:              #        0x6a34a  0      
  shrl $0x3, %ecx           #  1     0x6a34a  3      
  nop                       #  2     0x6a34d  1      
  movl %edi, %edi           #  3     0x6a34e  2      
  leaq (%r15,%rdi,1), %rdi  #  4     0x6a350  4      
  rep stosq %es:(%rdi)      #  5     0x6a354  4      
  movl %edx, %ecx           #  6     0x6a358  2      
  andl $0x7, %ecx           #  7     0x6a35a  3      
  xchgw %ax, %ax            #  8     0x6a35d  3      
  movl %edi, %edi           #  9     0x6a360  2      
  leaq (%r15,%rdi,1), %rdi  #  10    0x6a362  4      
  rep stosb %es:(%rdi)      #  11    0x6a366  3      
  movl %r9d, %eax           #  12    0x6a369  3      
  popq %r11                 #  13    0x6a36c  3      
  andl $0xffffffe0, %r11d   #  14    0x6a36f  7      
  addq %r15, %r11           #  15    0x6a376  3      
  jmpq %r11                 #  16    0x6a379  3      
  nop                       #  17    0x6a37c  1      
  nop                       #  18    0x6a37d  1      
  nop                       #  19    0x6a37e  1      
  nop                       #  20    0x6a37f  1      
  nop                       #  21    0x6a380  1      
  nop                       #  22    0x6a381  1      
  nop                       #  23    0x6a382  1      
  nop                       #  24    0x6a383  1      
  nop                       #  25    0x6a384  1      
                                                     
.size quadword_set, .-quadword_set

