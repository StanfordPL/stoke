  .text
  .globl pthread_mutex_init
  .type pthread_mutex_init, @function

#! file-offset 0x42380
#! rip-offset  0x42380
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_mutex_init:           #        0x42380  0      
  movl %esi, %esi              #  1     0x42380  2      
  movl %edi, %edi              #  2     0x42382  2      
  testq %rsi, %rsi             #  3     0x42384  3      
  movl %edi, %edi              #  4     0x42387  2      
  movl $0x0, (%r15,%rdi,1)     #  5     0x42389  8      
  movl %edi, %edi              #  6     0x42391  2      
  movl $0x0, 0xc(%r15,%rdi,1)  #  7     0x42393  9      
  nop                          #  8     0x4239c  1      
  movl %edi, %edi              #  9     0x4239d  2      
  movl $0x0, 0x8(%r15,%rdi,1)  #  10    0x4239f  9      
  je .L_423e0                  #  11    0x423a8  6      
  popq %r11                    #  12    0x423ae  3      
  movl %esi, %esi              #  13    0x423b1  2      
  movl (%r15,%rsi,1), %eax     #  14    0x423b3  4      
  movl %edi, %edi              #  15    0x423b7  2      
  movl %eax, 0x4(%r15,%rdi,1)  #  16    0x423b9  5      
  xorl %eax, %eax              #  17    0x423be  2      
  xchgw %ax, %ax               #  18    0x423c0  3      
  andl $0xffffffe0, %r11d      #  19    0x423c3  7      
  addq %r15, %r11              #  20    0x423ca  3      
  jmpq %r11                    #  21    0x423cd  3      
  nop                          #  22    0x423d0  1      
  nop                          #  23    0x423d1  1      
.L_423e0:                      #        0x423d2  0      
  popq %r11                    #  24    0x423d2  3      
  xorl %eax, %eax              #  25    0x423d5  2      
  movl %edi, %edi              #  26    0x423d7  2      
  movl $0x0, 0x4(%r15,%rdi,1)  #  27    0x423d9  9      
  andl $0xffffffe0, %r11d      #  28    0x423e2  7      
  addq %r15, %r11              #  29    0x423e9  3      
  jmpq %r11                    #  30    0x423ec  3      
  nop                          #  31    0x423ef  1      
                                                        
.size pthread_mutex_init, .-pthread_mutex_init

