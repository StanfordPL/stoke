  .text
  .globl malloc_usable_size
  .type malloc_usable_size, @function

#! file-offset 0x60760
#! rip-offset  0x60760
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  
.malloc_usable_size:           #        0x60760  0      
  movl %edi, %edi              #  1     0x60760  2      
  testq %rdi, %rdi             #  2     0x60762  3      
  je .L_607a0                  #  3     0x60765  6      
  subl $0x8, %edi              #  4     0x6076b  3      
  movl %edi, %edi              #  5     0x6076e  2      
  movl 0x4(%r15,%rdi,1), %eax  #  6     0x60770  5      
  movl %eax, %edx              #  7     0x60775  2      
  andl $0x3, %edx              #  8     0x60777  3      
  cmpl $0x1, %edx              #  9     0x6077a  3      
  je .L_607a0                  #  10    0x6077d  6      
  cmpl $0x1, %edx              #  11    0x60783  3      
  sbbl %edx, %edx              #  12    0x60786  2      
  andl $0xfffffff8, %eax       #  13    0x60788  5      
  andl $0x4, %edx              #  14    0x6078d  3      
  addl $0x4, %edx              #  15    0x60790  3      
  subl %edx, %eax              #  16    0x60793  2      
  popq %r11                    #  17    0x60795  3      
  andl $0xffffffe0, %r11d      #  18    0x60798  7      
  addq %r15, %r11              #  19    0x6079f  3      
  jmpq %r11                    #  20    0x607a2  3      
  nop                          #  21    0x607a5  1      
.L_607a0:                      #        0x607a6  0      
  xorl %eax, %eax              #  22    0x607a6  2      
  popq %r11                    #  23    0x607a8  3      
  andl $0xffffffe0, %r11d      #  24    0x607ab  7      
  addq %r15, %r11              #  25    0x607b2  3      
  jmpq %r11                    #  26    0x607b5  3      
  nop                          #  27    0x607b8  1      
  nop                          #  28    0x607b9  1      
                                                        
.size malloc_usable_size, .-malloc_usable_size

