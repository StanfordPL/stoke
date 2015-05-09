  .text
  .globl pthread_mutex_init
  .type pthread_mutex_init, @function

#! file-offset 0x42360
#! rip-offset  0x42360
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_mutex_init:           #        0x42360  0      
  movl %esi, %esi              #  1     0x42360  2      
  movl %edi, %edi              #  2     0x42362  2      
  testq %rsi, %rsi             #  3     0x42364  3      
  movl %edi, %edi              #  4     0x42367  2      
  movl $0x0, (%r15,%rdi,1)     #  5     0x42369  8      
  movl %edi, %edi              #  6     0x42371  2      
  movl $0x0, 0xc(%r15,%rdi,1)  #  7     0x42373  9      
  nop                          #  8     0x4237c  1      
  movl %edi, %edi              #  9     0x4237d  2      
  movl $0x0, 0x8(%r15,%rdi,1)  #  10    0x4237f  9      
  je .L_423c0                  #  11    0x42388  6      
  popq %r11                    #  12    0x4238e  3      
  movl %esi, %esi              #  13    0x42391  2      
  movl (%r15,%rsi,1), %eax     #  14    0x42393  4      
  movl %edi, %edi              #  15    0x42397  2      
  movl %eax, 0x4(%r15,%rdi,1)  #  16    0x42399  5      
  xorl %eax, %eax              #  17    0x4239e  2      
  xchgw %ax, %ax               #  18    0x423a0  3      
  andl $0xffffffe0, %r11d      #  19    0x423a3  7      
  addq %r15, %r11              #  20    0x423aa  3      
  jmpq %r11                    #  21    0x423ad  3      
  nop                          #  22    0x423b0  1      
  nop                          #  23    0x423b1  1      
.L_423c0:                      #        0x423b2  0      
  popq %r11                    #  24    0x423b2  3      
  xorl %eax, %eax              #  25    0x423b5  2      
  movl %edi, %edi              #  26    0x423b7  2      
  movl $0x0, 0x4(%r15,%rdi,1)  #  27    0x423b9  9      
  andl $0xffffffe0, %r11d      #  28    0x423c2  7      
  addq %r15, %r11              #  29    0x423c9  3      
  jmpq %r11                    #  30    0x423cc  3      
  nop                          #  31    0x423cf  1      
                                                        
.size pthread_mutex_init, .-pthread_mutex_init

