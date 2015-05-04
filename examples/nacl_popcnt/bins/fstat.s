  .text
  .globl fstat
  .type fstat, @function

#! file-offset 0x883e0
#! rip-offset  0x883e0
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.fstat:                       #        0x883e0  0      
  movl 0xffa8132(%rip), %eax  #  1     0x883e0  6      
  pushq %rbx                  #  2     0x883e6  2      
  movl %esi, %esi             #  3     0x883e8  2      
  nop                         #  4     0x883ea  1      
  andl $0xffffffe0, %eax      #  5     0x883eb  5      
  addq %r15, %rax             #  6     0x883f0  3      
  callq %rax                  #  7     0x883f3  2      
  testl %eax, %eax            #  8     0x883f5  2      
  movl %eax, %ebx             #  9     0x883f7  2      
  jne .L_88440                #  10    0x883f9  6      
  xorl %eax, %eax             #  11    0x883ff  2      
  nop                         #  12    0x88401  1      
  nop                         #  13    0x88402  1      
.L_88420:                     #        0x88403  0      
  popq %rbx                   #  14    0x88403  2      
  popq %r11                   #  15    0x88405  3      
  andl $0xffffffe0, %r11d     #  16    0x88408  7      
  addq %r15, %r11             #  17    0x8840f  3      
  jmpq %r11                   #  18    0x88412  3      
  nop                         #  19    0x88415  1      
  nop                         #  20    0x88416  1      
.L_88440:                     #        0x88417  0      
  nop                         #  21    0x88417  1      
  nop                         #  22    0x88418  1      
  callq .__errno              #  23    0x88419  5      
  movl %eax, %eax             #  24    0x8841e  2      
  movl %eax, %eax             #  25    0x88420  2      
  movl %ebx, (%r15,%rax,1)    #  26    0x88422  4      
  movl $0xffffffff, %eax      #  27    0x88426  5      
  jmpq .L_88420               #  28    0x8842b  5      
  nop                         #  29    0x88430  1      
  nop                         #  30    0x88431  1      
  nop                         #  31    0x88432  1      
  nop                         #  32    0x88433  1      
  nop                         #  33    0x88434  1      
  nop                         #  34    0x88435  1      
  nop                         #  35    0x88436  1      
  nop                         #  36    0x88437  1      
  nop                         #  37    0x88438  1      
  nop                         #  38    0x88439  1      
  nop                         #  39    0x8843a  1      
  nop                         #  40    0x8843b  1      
  nop                         #  41    0x8843c  1      
  nop                         #  42    0x8843d  1      
  nop                         #  43    0x8843e  1      
  nop                         #  44    0x8843f  1      
  nop                         #  45    0x88440  1      
                                                       
.size fstat, .-fstat

