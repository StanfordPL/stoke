  .text
  .globl sched_yield
  .type sched_yield, @function

#! file-offset 0x67a60
#! rip-offset  0x67a60
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.sched_yield:                 #        0x67a60  0      
  movl 0xffcf46a(%rip), %eax  #  1     0x67a60  6      
  pushq %rbx                  #  2     0x67a66  2      
  xchgw %ax, %ax              #  3     0x67a68  3      
  nop                         #  4     0x67a6b  1      
  andl $0xffffffe0, %eax      #  5     0x67a6c  5      
  addq %r15, %rax             #  6     0x67a71  3      
  callq %rax                  #  7     0x67a74  2      
  testl %eax, %eax            #  8     0x67a76  2      
  movl %eax, %ebx             #  9     0x67a78  2      
  jne .L_67ac0                #  10    0x67a7a  6      
  xorl %eax, %eax             #  11    0x67a80  2      
  nop                         #  12    0x67a82  1      
  nop                         #  13    0x67a83  1      
.L_67aa0:                     #        0x67a84  0      
  popq %rbx                   #  14    0x67a84  2      
  popq %r11                   #  15    0x67a86  3      
  andl $0xffffffe0, %r11d     #  16    0x67a89  7      
  addq %r15, %r11             #  17    0x67a90  3      
  jmpq %r11                   #  18    0x67a93  3      
  nop                         #  19    0x67a96  1      
  nop                         #  20    0x67a97  1      
.L_67ac0:                     #        0x67a98  0      
  nop                         #  21    0x67a98  1      
  nop                         #  22    0x67a99  1      
  callq .__errno              #  23    0x67a9a  5      
  movl %eax, %eax             #  24    0x67a9f  2      
  movl %eax, %eax             #  25    0x67aa1  2      
  movl %ebx, (%r15,%rax,1)    #  26    0x67aa3  4      
  movl $0xffffffff, %eax      #  27    0x67aa7  5      
  jmpq .L_67aa0               #  28    0x67aac  5      
  nop                         #  29    0x67ab1  1      
  nop                         #  30    0x67ab2  1      
  nop                         #  31    0x67ab3  1      
  nop                         #  32    0x67ab4  1      
  nop                         #  33    0x67ab5  1      
  nop                         #  34    0x67ab6  1      
  nop                         #  35    0x67ab7  1      
  nop                         #  36    0x67ab8  1      
  nop                         #  37    0x67ab9  1      
  nop                         #  38    0x67aba  1      
  nop                         #  39    0x67abb  1      
  nop                         #  40    0x67abc  1      
  nop                         #  41    0x67abd  1      
  nop                         #  42    0x67abe  1      
  nop                         #  43    0x67abf  1      
  nop                         #  44    0x67ac0  1      
  nop                         #  45    0x67ac1  1      
                                                       
.size sched_yield, .-sched_yield

