  .text
  .globl sysconf
  .type sysconf, @function

#! file-offset 0x682a0
#! rip-offset  0x682a0
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.sysconf:                     #        0x682a0  0      
  pushq %rbx                  #  1     0x682a0  2      
  subl $0x10, %esp            #  2     0x682a2  3      
  addq %r15, %rsp             #  3     0x682a5  3      
  movl 0xffcec26(%rip), %eax  #  4     0x682a8  6      
  leal 0xc(%rsp), %esi        #  5     0x682ae  4      
  nop                         #  6     0x682b2  1      
  andl $0xffffffe0, %eax      #  7     0x682b3  5      
  addq %r15, %rax             #  8     0x682b8  3      
  callq %rax                  #  9     0x682bb  2      
  testl %eax, %eax            #  10    0x682bd  2      
  movl %eax, %ebx             #  11    0x682bf  2      
  jne .L_68300                #  12    0x682c1  6      
  movl 0xc(%rsp), %eax        #  13    0x682c7  4      
  nop                         #  14    0x682cb  1      
  nop                         #  15    0x682cc  1      
.L_682e0:                     #        0x682cd  0      
  addl $0x10, %esp            #  16    0x682cd  3      
  addq %r15, %rsp             #  17    0x682d0  3      
  popq %rbx                   #  18    0x682d3  2      
  popq %r11                   #  19    0x682d5  3      
  andl $0xffffffe0, %r11d     #  20    0x682d8  7      
  addq %r15, %r11             #  21    0x682df  3      
  jmpq %r11                   #  22    0x682e2  3      
  nop                         #  23    0x682e5  1      
.L_68300:                     #        0x682e6  0      
  nop                         #  24    0x682e6  1      
  nop                         #  25    0x682e7  1      
  callq .__errno              #  26    0x682e8  5      
  movl %eax, %eax             #  27    0x682ed  2      
  movl %eax, %eax             #  28    0x682ef  2      
  movl %ebx, (%r15,%rax,1)    #  29    0x682f1  4      
  movl $0xffffffff, %eax      #  30    0x682f5  5      
  jmpq .L_682e0               #  31    0x682fa  5      
  nop                         #  32    0x682ff  1      
  nop                         #  33    0x68300  1      
  nop                         #  34    0x68301  1      
  nop                         #  35    0x68302  1      
  nop                         #  36    0x68303  1      
  nop                         #  37    0x68304  1      
  nop                         #  38    0x68305  1      
  nop                         #  39    0x68306  1      
  nop                         #  40    0x68307  1      
  nop                         #  41    0x68308  1      
  nop                         #  42    0x68309  1      
  nop                         #  43    0x6830a  1      
  nop                         #  44    0x6830b  1      
  nop                         #  45    0x6830c  1      
  nop                         #  46    0x6830d  1      
  nop                         #  47    0x6830e  1      
  nop                         #  48    0x6830f  1      
                                                       
.size sysconf, .-sysconf

