  .text
  .globl quadword_set
  .type quadword_set, @function

#! file-offset 0x6a2ca
#! rip-offset  0x6a2ca
#! capacity    54 bytes

# Text                      #  Line  RIP      Bytes  
.quadword_set:              #        0x6a2ca  0      
  shrl $0x3, %ecx           #  1     0x6a2ca  3      
  nop                       #  2     0x6a2cd  1      
  movl %edi, %edi           #  3     0x6a2ce  2      
  leaq (%r15,%rdi,1), %rdi  #  4     0x6a2d0  4      
  rep stosq %es:(%rdi)      #  5     0x6a2d4  4      
  movl %edx, %ecx           #  6     0x6a2d8  2      
  andl $0x7, %ecx           #  7     0x6a2da  3      
  xchgw %ax, %ax            #  8     0x6a2dd  3      
  movl %edi, %edi           #  9     0x6a2e0  2      
  leaq (%r15,%rdi,1), %rdi  #  10    0x6a2e2  4      
  rep stosb %es:(%rdi)      #  11    0x6a2e6  3      
  movl %r9d, %eax           #  12    0x6a2e9  3      
  popq %r11                 #  13    0x6a2ec  3      
  andl $0xffffffe0, %r11d   #  14    0x6a2ef  7      
  addq %r15, %r11           #  15    0x6a2f6  3      
  jmpq %r11                 #  16    0x6a2f9  3      
  nop                       #  17    0x6a2fc  1      
  nop                       #  18    0x6a2fd  1      
  nop                       #  19    0x6a2fe  1      
  nop                       #  20    0x6a2ff  1      
  nop                       #  21    0x6a300  1      
  nop                       #  22    0x6a301  1      
  nop                       #  23    0x6a302  1      
  nop                       #  24    0x6a303  1      
  nop                       #  25    0x6a304  1      
                                                     
.size quadword_set, .-quadword_set

