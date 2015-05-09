  .text
  .globl malloc_usable_size
  .type malloc_usable_size, @function

#! file-offset 0x606c0
#! rip-offset  0x606c0
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  
.malloc_usable_size:           #        0x606c0  0      
  movl %edi, %edi              #  1     0x606c0  2      
  testq %rdi, %rdi             #  2     0x606c2  3      
  je .L_60700                  #  3     0x606c5  6      
  subl $0x8, %edi              #  4     0x606cb  3      
  movl %edi, %edi              #  5     0x606ce  2      
  movl 0x4(%r15,%rdi,1), %eax  #  6     0x606d0  5      
  movl %eax, %edx              #  7     0x606d5  2      
  andl $0x3, %edx              #  8     0x606d7  3      
  cmpl $0x1, %edx              #  9     0x606da  3      
  je .L_60700                  #  10    0x606dd  6      
  cmpl $0x1, %edx              #  11    0x606e3  3      
  sbbl %edx, %edx              #  12    0x606e6  2      
  andl $0xfffffff8, %eax       #  13    0x606e8  5      
  andl $0x4, %edx              #  14    0x606ed  3      
  addl $0x4, %edx              #  15    0x606f0  3      
  subl %edx, %eax              #  16    0x606f3  2      
  popq %r11                    #  17    0x606f5  3      
  andl $0xffffffe0, %r11d      #  18    0x606f8  7      
  addq %r15, %r11              #  19    0x606ff  3      
  jmpq %r11                    #  20    0x60702  3      
  nop                          #  21    0x60705  1      
.L_60700:                      #        0x60706  0      
  xorl %eax, %eax              #  22    0x60706  2      
  popq %r11                    #  23    0x60708  3      
  andl $0xffffffe0, %r11d      #  24    0x6070b  7      
  addq %r15, %r11              #  25    0x60712  3      
  jmpq %r11                    #  26    0x60715  3      
  nop                          #  27    0x60718  1      
  nop                          #  28    0x60719  1      
                                                        
.size malloc_usable_size, .-malloc_usable_size

