  .text
  .globl fstat
  .type fstat, @function

#! file-offset 0x88360
#! rip-offset  0x88360
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.fstat:                       #        0x88360  0      
  movl 0xffa81b2(%rip), %eax  #  1     0x88360  6      
  pushq %rbx                  #  2     0x88366  2      
  movl %esi, %esi             #  3     0x88368  2      
  nop                         #  4     0x8836a  1      
  andl $0xffffffe0, %eax      #  5     0x8836b  5      
  addq %r15, %rax             #  6     0x88370  3      
  callq %rax                  #  7     0x88373  2      
  testl %eax, %eax            #  8     0x88375  2      
  movl %eax, %ebx             #  9     0x88377  2      
  jne .L_883c0                #  10    0x88379  6      
  xorl %eax, %eax             #  11    0x8837f  2      
  nop                         #  12    0x88381  1      
  nop                         #  13    0x88382  1      
.L_883a0:                     #        0x88383  0      
  popq %rbx                   #  14    0x88383  2      
  popq %r11                   #  15    0x88385  3      
  andl $0xffffffe0, %r11d     #  16    0x88388  7      
  addq %r15, %r11             #  17    0x8838f  3      
  jmpq %r11                   #  18    0x88392  3      
  nop                         #  19    0x88395  1      
  nop                         #  20    0x88396  1      
.L_883c0:                     #        0x88397  0      
  nop                         #  21    0x88397  1      
  nop                         #  22    0x88398  1      
  callq .__errno              #  23    0x88399  5      
  movl %eax, %eax             #  24    0x8839e  2      
  movl %eax, %eax             #  25    0x883a0  2      
  movl %ebx, (%r15,%rax,1)    #  26    0x883a2  4      
  movl $0xffffffff, %eax      #  27    0x883a6  5      
  jmpq .L_883a0               #  28    0x883ab  5      
  nop                         #  29    0x883b0  1      
  nop                         #  30    0x883b1  1      
  nop                         #  31    0x883b2  1      
  nop                         #  32    0x883b3  1      
  nop                         #  33    0x883b4  1      
  nop                         #  34    0x883b5  1      
  nop                         #  35    0x883b6  1      
  nop                         #  36    0x883b7  1      
  nop                         #  37    0x883b8  1      
  nop                         #  38    0x883b9  1      
  nop                         #  39    0x883ba  1      
  nop                         #  40    0x883bb  1      
  nop                         #  41    0x883bc  1      
  nop                         #  42    0x883bd  1      
  nop                         #  43    0x883be  1      
  nop                         #  44    0x883bf  1      
  nop                         #  45    0x883c0  1      
                                                       
.size fstat, .-fstat

