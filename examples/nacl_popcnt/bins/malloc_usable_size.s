  .text
  .globl malloc_usable_size
  .type malloc_usable_size, @function

#! file-offset 0x606e0
#! rip-offset  0x606e0
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  
.malloc_usable_size:           #        0x606e0  0      
  movl %edi, %edi              #  1     0x606e0  2      
  testq %rdi, %rdi             #  2     0x606e2  3      
  je .L_60720                  #  3     0x606e5  6      
  subl $0x8, %edi              #  4     0x606eb  3      
  movl %edi, %edi              #  5     0x606ee  2      
  movl 0x4(%r15,%rdi,1), %eax  #  6     0x606f0  5      
  movl %eax, %edx              #  7     0x606f5  2      
  andl $0x3, %edx              #  8     0x606f7  3      
  cmpl $0x1, %edx              #  9     0x606fa  3      
  je .L_60720                  #  10    0x606fd  6      
  cmpl $0x1, %edx              #  11    0x60703  3      
  sbbl %edx, %edx              #  12    0x60706  2      
  andl $0xfffffff8, %eax       #  13    0x60708  5      
  andl $0x4, %edx              #  14    0x6070d  3      
  addl $0x4, %edx              #  15    0x60710  3      
  subl %edx, %eax              #  16    0x60713  2      
  popq %r11                    #  17    0x60715  3      
  andl $0xffffffe0, %r11d      #  18    0x60718  7      
  addq %r15, %r11              #  19    0x6071f  3      
  jmpq %r11                    #  20    0x60722  3      
  nop                          #  21    0x60725  1      
.L_60720:                      #        0x60726  0      
  xorl %eax, %eax              #  22    0x60726  2      
  popq %r11                    #  23    0x60728  3      
  andl $0xffffffe0, %r11d      #  24    0x6072b  7      
  addq %r15, %r11              #  25    0x60732  3      
  jmpq %r11                    #  26    0x60735  3      
  nop                          #  27    0x60738  1      
  nop                          #  28    0x60739  1      
                                                        
.size malloc_usable_size, .-malloc_usable_size

