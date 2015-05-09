  .text
  .globl sched_yield
  .type sched_yield, @function

#! file-offset 0x679c0
#! rip-offset  0x679c0
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.sched_yield:                 #        0x679c0  0      
  movl 0xffcf50a(%rip), %eax  #  1     0x679c0  6      
  pushq %rbx                  #  2     0x679c6  2      
  xchgw %ax, %ax              #  3     0x679c8  3      
  nop                         #  4     0x679cb  1      
  andl $0xffffffe0, %eax      #  5     0x679cc  5      
  addq %r15, %rax             #  6     0x679d1  3      
  callq %rax                  #  7     0x679d4  2      
  testl %eax, %eax            #  8     0x679d6  2      
  movl %eax, %ebx             #  9     0x679d8  2      
  jne .L_67a20                #  10    0x679da  6      
  xorl %eax, %eax             #  11    0x679e0  2      
  nop                         #  12    0x679e2  1      
  nop                         #  13    0x679e3  1      
.L_67a00:                     #        0x679e4  0      
  popq %rbx                   #  14    0x679e4  2      
  popq %r11                   #  15    0x679e6  3      
  andl $0xffffffe0, %r11d     #  16    0x679e9  7      
  addq %r15, %r11             #  17    0x679f0  3      
  jmpq %r11                   #  18    0x679f3  3      
  nop                         #  19    0x679f6  1      
  nop                         #  20    0x679f7  1      
.L_67a20:                     #        0x679f8  0      
  nop                         #  21    0x679f8  1      
  nop                         #  22    0x679f9  1      
  callq .__errno              #  23    0x679fa  5      
  movl %eax, %eax             #  24    0x679ff  2      
  movl %eax, %eax             #  25    0x67a01  2      
  movl %ebx, (%r15,%rax,1)    #  26    0x67a03  4      
  movl $0xffffffff, %eax      #  27    0x67a07  5      
  jmpq .L_67a00               #  28    0x67a0c  5      
  nop                         #  29    0x67a11  1      
  nop                         #  30    0x67a12  1      
  nop                         #  31    0x67a13  1      
  nop                         #  32    0x67a14  1      
  nop                         #  33    0x67a15  1      
  nop                         #  34    0x67a16  1      
  nop                         #  35    0x67a17  1      
  nop                         #  36    0x67a18  1      
  nop                         #  37    0x67a19  1      
  nop                         #  38    0x67a1a  1      
  nop                         #  39    0x67a1b  1      
  nop                         #  40    0x67a1c  1      
  nop                         #  41    0x67a1d  1      
  nop                         #  42    0x67a1e  1      
  nop                         #  43    0x67a1f  1      
  nop                         #  44    0x67a20  1      
  nop                         #  45    0x67a21  1      
                                                       
.size sched_yield, .-sched_yield

