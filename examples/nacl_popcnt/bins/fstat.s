  .text
  .globl fstat
  .type fstat, @function

#! file-offset 0x88340
#! rip-offset  0x88340
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.fstat:                       #        0x88340  0      
  movl 0xffa81d2(%rip), %eax  #  1     0x88340  6      
  pushq %rbx                  #  2     0x88346  2      
  movl %esi, %esi             #  3     0x88348  2      
  nop                         #  4     0x8834a  1      
  andl $0xffffffe0, %eax      #  5     0x8834b  5      
  addq %r15, %rax             #  6     0x88350  3      
  callq %rax                  #  7     0x88353  2      
  testl %eax, %eax            #  8     0x88355  2      
  movl %eax, %ebx             #  9     0x88357  2      
  jne .L_883a0                #  10    0x88359  6      
  xorl %eax, %eax             #  11    0x8835f  2      
  nop                         #  12    0x88361  1      
  nop                         #  13    0x88362  1      
.L_88380:                     #        0x88363  0      
  popq %rbx                   #  14    0x88363  2      
  popq %r11                   #  15    0x88365  3      
  andl $0xffffffe0, %r11d     #  16    0x88368  7      
  addq %r15, %r11             #  17    0x8836f  3      
  jmpq %r11                   #  18    0x88372  3      
  nop                         #  19    0x88375  1      
  nop                         #  20    0x88376  1      
.L_883a0:                     #        0x88377  0      
  nop                         #  21    0x88377  1      
  nop                         #  22    0x88378  1      
  callq .__errno              #  23    0x88379  5      
  movl %eax, %eax             #  24    0x8837e  2      
  movl %eax, %eax             #  25    0x88380  2      
  movl %ebx, (%r15,%rax,1)    #  26    0x88382  4      
  movl $0xffffffff, %eax      #  27    0x88386  5      
  jmpq .L_88380               #  28    0x8838b  5      
  nop                         #  29    0x88390  1      
  nop                         #  30    0x88391  1      
  nop                         #  31    0x88392  1      
  nop                         #  32    0x88393  1      
  nop                         #  33    0x88394  1      
  nop                         #  34    0x88395  1      
  nop                         #  35    0x88396  1      
  nop                         #  36    0x88397  1      
  nop                         #  37    0x88398  1      
  nop                         #  38    0x88399  1      
  nop                         #  39    0x8839a  1      
  nop                         #  40    0x8839b  1      
  nop                         #  41    0x8839c  1      
  nop                         #  42    0x8839d  1      
  nop                         #  43    0x8839e  1      
  nop                         #  44    0x8839f  1      
  nop                         #  45    0x883a0  1      
                                                       
.size fstat, .-fstat

