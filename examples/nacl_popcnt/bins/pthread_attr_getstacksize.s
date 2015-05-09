  .text
  .globl pthread_attr_getstacksize
  .type pthread_attr_getstacksize, @function

#! file-offset 0x3fe60
#! rip-offset  0x3fe60
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_attr_getstacksize:    #        0x3fe60  0      
  movl %edi, %edi              #  1     0x3fe60  2      
  movl %esi, %esi              #  2     0x3fe62  2      
  movl $0x16, %eax             #  3     0x3fe64  5      
  testq %rdi, %rdi             #  4     0x3fe69  3      
  je .L_3fe80                  #  5     0x3fe6c  6      
  movl %edi, %edi              #  6     0x3fe72  2      
  movl 0x4(%r15,%rdi,1), %eax  #  7     0x3fe74  5      
  movl %esi, %esi              #  8     0x3fe79  2      
  movl %eax, (%r15,%rsi,1)     #  9     0x3fe7b  4      
  xorl %eax, %eax              #  10    0x3fe7f  2      
  nop                          #  11    0x3fe81  1      
.L_3fe80:                      #        0x3fe82  0      
  popq %r11                    #  12    0x3fe82  3      
  andl $0xffffffe0, %r11d      #  13    0x3fe85  7      
  addq %r15, %r11              #  14    0x3fe8c  3      
  jmpq %r11                    #  15    0x3fe8f  3      
  nop                          #  16    0x3fe92  1      
  nop                          #  17    0x3fe93  1      
                                                        
.size pthread_attr_getstacksize, .-pthread_attr_getstacksize

