  .text
  .globl sched_yield
  .type sched_yield, @function

#! file-offset 0x679e0
#! rip-offset  0x679e0
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.sched_yield:                 #        0x679e0  0      
  movl 0xffcf4ea(%rip), %eax  #  1     0x679e0  6      
  pushq %rbx                  #  2     0x679e6  2      
  xchgw %ax, %ax              #  3     0x679e8  3      
  nop                         #  4     0x679eb  1      
  andl $0xffffffe0, %eax      #  5     0x679ec  5      
  addq %r15, %rax             #  6     0x679f1  3      
  callq %rax                  #  7     0x679f4  2      
  testl %eax, %eax            #  8     0x679f6  2      
  movl %eax, %ebx             #  9     0x679f8  2      
  jne .L_67a40                #  10    0x679fa  6      
  xorl %eax, %eax             #  11    0x67a00  2      
  nop                         #  12    0x67a02  1      
  nop                         #  13    0x67a03  1      
.L_67a20:                     #        0x67a04  0      
  popq %rbx                   #  14    0x67a04  2      
  popq %r11                   #  15    0x67a06  3      
  andl $0xffffffe0, %r11d     #  16    0x67a09  7      
  addq %r15, %r11             #  17    0x67a10  3      
  jmpq %r11                   #  18    0x67a13  3      
  nop                         #  19    0x67a16  1      
  nop                         #  20    0x67a17  1      
.L_67a40:                     #        0x67a18  0      
  nop                         #  21    0x67a18  1      
  nop                         #  22    0x67a19  1      
  callq .__errno              #  23    0x67a1a  5      
  movl %eax, %eax             #  24    0x67a1f  2      
  movl %eax, %eax             #  25    0x67a21  2      
  movl %ebx, (%r15,%rax,1)    #  26    0x67a23  4      
  movl $0xffffffff, %eax      #  27    0x67a27  5      
  jmpq .L_67a20               #  28    0x67a2c  5      
  nop                         #  29    0x67a31  1      
  nop                         #  30    0x67a32  1      
  nop                         #  31    0x67a33  1      
  nop                         #  32    0x67a34  1      
  nop                         #  33    0x67a35  1      
  nop                         #  34    0x67a36  1      
  nop                         #  35    0x67a37  1      
  nop                         #  36    0x67a38  1      
  nop                         #  37    0x67a39  1      
  nop                         #  38    0x67a3a  1      
  nop                         #  39    0x67a3b  1      
  nop                         #  40    0x67a3c  1      
  nop                         #  41    0x67a3d  1      
  nop                         #  42    0x67a3e  1      
  nop                         #  43    0x67a3f  1      
  nop                         #  44    0x67a40  1      
  nop                         #  45    0x67a41  1      
                                                       
.size sched_yield, .-sched_yield

