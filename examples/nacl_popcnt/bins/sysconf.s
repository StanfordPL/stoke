  .text
  .globl sysconf
  .type sysconf, @function

#! file-offset 0x68340
#! rip-offset  0x68340
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.sysconf:                     #        0x68340  0      
  pushq %rbx                  #  1     0x68340  2      
  subl $0x10, %esp            #  2     0x68342  3      
  addq %r15, %rsp             #  3     0x68345  3      
  movl 0xffceb86(%rip), %eax  #  4     0x68348  6      
  leal 0xc(%rsp), %esi        #  5     0x6834e  4      
  nop                         #  6     0x68352  1      
  andl $0xffffffe0, %eax      #  7     0x68353  5      
  addq %r15, %rax             #  8     0x68358  3      
  callq %rax                  #  9     0x6835b  2      
  testl %eax, %eax            #  10    0x6835d  2      
  movl %eax, %ebx             #  11    0x6835f  2      
  jne .L_683a0                #  12    0x68361  6      
  movl 0xc(%rsp), %eax        #  13    0x68367  4      
  nop                         #  14    0x6836b  1      
  nop                         #  15    0x6836c  1      
.L_68380:                     #        0x6836d  0      
  addl $0x10, %esp            #  16    0x6836d  3      
  addq %r15, %rsp             #  17    0x68370  3      
  popq %rbx                   #  18    0x68373  2      
  popq %r11                   #  19    0x68375  3      
  andl $0xffffffe0, %r11d     #  20    0x68378  7      
  addq %r15, %r11             #  21    0x6837f  3      
  jmpq %r11                   #  22    0x68382  3      
  nop                         #  23    0x68385  1      
.L_683a0:                     #        0x68386  0      
  nop                         #  24    0x68386  1      
  nop                         #  25    0x68387  1      
  callq .__errno              #  26    0x68388  5      
  movl %eax, %eax             #  27    0x6838d  2      
  movl %eax, %eax             #  28    0x6838f  2      
  movl %ebx, (%r15,%rax,1)    #  29    0x68391  4      
  movl $0xffffffff, %eax      #  30    0x68395  5      
  jmpq .L_68380               #  31    0x6839a  5      
  nop                         #  32    0x6839f  1      
  nop                         #  33    0x683a0  1      
  nop                         #  34    0x683a1  1      
  nop                         #  35    0x683a2  1      
  nop                         #  36    0x683a3  1      
  nop                         #  37    0x683a4  1      
  nop                         #  38    0x683a5  1      
  nop                         #  39    0x683a6  1      
  nop                         #  40    0x683a7  1      
  nop                         #  41    0x683a8  1      
  nop                         #  42    0x683a9  1      
  nop                         #  43    0x683aa  1      
  nop                         #  44    0x683ab  1      
  nop                         #  45    0x683ac  1      
  nop                         #  46    0x683ad  1      
  nop                         #  47    0x683ae  1      
  nop                         #  48    0x683af  1      
                                                       
.size sysconf, .-sysconf

