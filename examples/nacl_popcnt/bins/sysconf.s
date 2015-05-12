  .text
  .globl sysconf
  .type sysconf, @function

#! file-offset 0x682c0
#! rip-offset  0x682c0
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.sysconf:                     #        0x682c0  0      
  pushq %rbx                  #  1     0x682c0  2      
  subl $0x10, %esp            #  2     0x682c2  3      
  addq %r15, %rsp             #  3     0x682c5  3      
  movl 0xffcec06(%rip), %eax  #  4     0x682c8  6      
  leal 0xc(%rsp), %esi        #  5     0x682ce  4      
  nop                         #  6     0x682d2  1      
  andl $0xffffffe0, %eax      #  7     0x682d3  5      
  addq %r15, %rax             #  8     0x682d8  3      
  callq %rax                  #  9     0x682db  2      
  testl %eax, %eax            #  10    0x682dd  2      
  movl %eax, %ebx             #  11    0x682df  2      
  jne .L_68320                #  12    0x682e1  6      
  movl 0xc(%rsp), %eax        #  13    0x682e7  4      
  nop                         #  14    0x682eb  1      
  nop                         #  15    0x682ec  1      
.L_68300:                     #        0x682ed  0      
  addl $0x10, %esp            #  16    0x682ed  3      
  addq %r15, %rsp             #  17    0x682f0  3      
  popq %rbx                   #  18    0x682f3  2      
  popq %r11                   #  19    0x682f5  3      
  andl $0xffffffe0, %r11d     #  20    0x682f8  7      
  addq %r15, %r11             #  21    0x682ff  3      
  jmpq %r11                   #  22    0x68302  3      
  nop                         #  23    0x68305  1      
.L_68320:                     #        0x68306  0      
  nop                         #  24    0x68306  1      
  nop                         #  25    0x68307  1      
  callq .__errno              #  26    0x68308  5      
  movl %eax, %eax             #  27    0x6830d  2      
  movl %eax, %eax             #  28    0x6830f  2      
  movl %ebx, (%r15,%rax,1)    #  29    0x68311  4      
  movl $0xffffffff, %eax      #  30    0x68315  5      
  jmpq .L_68300               #  31    0x6831a  5      
  nop                         #  32    0x6831f  1      
  nop                         #  33    0x68320  1      
  nop                         #  34    0x68321  1      
  nop                         #  35    0x68322  1      
  nop                         #  36    0x68323  1      
  nop                         #  37    0x68324  1      
  nop                         #  38    0x68325  1      
  nop                         #  39    0x68326  1      
  nop                         #  40    0x68327  1      
  nop                         #  41    0x68328  1      
  nop                         #  42    0x68329  1      
  nop                         #  43    0x6832a  1      
  nop                         #  44    0x6832b  1      
  nop                         #  45    0x6832c  1      
  nop                         #  46    0x6832d  1      
  nop                         #  47    0x6832e  1      
  nop                         #  48    0x6832f  1      
                                                       
.size sysconf, .-sysconf

