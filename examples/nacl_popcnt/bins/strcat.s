  .text
  .globl strcat
  .type strcat, @function

#! file-offset 0x80300
#! rip-offset  0x80300
#! capacity    224 bytes

# Text                         #  Line  RIP      Bytes  
.strcat:                       #        0x80300  0      
  pushq %rbx                   #  1     0x80300  2      
  movl %edi, %ebx              #  2     0x80302  2      
  movl %esi, %esi              #  3     0x80304  2      
  testb $0x3, %bl              #  4     0x80306  3      
  movq %rbx, %rdi              #  5     0x80309  3      
  jne .L_80380                 #  6     0x8030c  6      
  movl %ebx, %ebx              #  7     0x80312  2      
  movl (%r15,%rbx,1), %edx     #  8     0x80314  4      
  jmpq .L_80340                #  9     0x80318  5      
  nop                          #  10    0x8031d  1      
.L_80320:                      #        0x8031e  0      
  addl $0x4, %edi              #  11    0x8031e  3      
  movl %edi, %edi              #  12    0x80321  2      
  movl (%r15,%rdi,1), %edx     #  13    0x80323  4      
  nop                          #  14    0x80327  1      
  nop                          #  15    0x80328  1      
.L_80340:                      #        0x80329  0      
  leal -0x1010101(%rdx), %eax  #  16    0x80329  6      
  notl %edx                    #  17    0x8032f  2      
  andl %edx, %eax              #  18    0x80331  2      
  testl $0x80808080, %eax      #  19    0x80333  5      
  je .L_80320                  #  20    0x80338  6      
  movl %edi, %edi              #  21    0x8033e  2      
  cmpb $0x0, (%r15,%rdi,1)     #  22    0x80340  5      
  je .L_803a0                  #  23    0x80345  6      
  nop                          #  24    0x8034b  1      
.L_80360:                      #        0x8034c  0      
  addl $0x1, %edi              #  25    0x8034c  3      
  nop                          #  26    0x8034f  1      
  nop                          #  27    0x80350  1      
.L_80380:                      #        0x80351  0      
  movl %edi, %edi              #  28    0x80351  2      
  cmpb $0x0, (%r15,%rdi,1)     #  29    0x80353  5      
  jne .L_80360                 #  30    0x80358  6      
  nop                          #  31    0x8035e  1      
  nop                          #  32    0x8035f  1      
.L_803a0:                      #        0x80360  0      
  nop                          #  33    0x80360  1      
  nop                          #  34    0x80361  1      
  callq .strcpy                #  35    0x80362  5      
  movl %ebx, %eax              #  36    0x80367  2      
  popq %rbx                    #  37    0x80369  2      
  popq %r11                    #  38    0x8036b  3      
  andl $0xffffffe0, %r11d      #  39    0x8036e  7      
  addq %r15, %r11              #  40    0x80375  3      
  jmpq %r11                    #  41    0x80378  3      
  nop                          #  42    0x8037b  1      
  nop                          #  43    0x8037c  1      
  nop                          #  44    0x8037d  1      
  nop                          #  45    0x8037e  1      
  nop                          #  46    0x8037f  1      
  nop                          #  47    0x80380  1      
  nop                          #  48    0x80381  1      
  nop                          #  49    0x80382  1      
  nop                          #  50    0x80383  1      
  nop                          #  51    0x80384  1      
  nop                          #  52    0x80385  1      
  nop                          #  53    0x80386  1      
  nop                          #  54    0x80387  1      
  nop                          #  55    0x80388  1      
  nop                          #  56    0x80389  1      
  nop                          #  57    0x8038a  1      
  nop                          #  58    0x8038b  1      
                                                        
.size strcat, .-strcat

