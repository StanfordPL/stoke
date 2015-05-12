  .text
  .globl pthread_attr_getstacksize
  .type pthread_attr_getstacksize, @function

#! file-offset 0x3fe80
#! rip-offset  0x3fe80
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_attr_getstacksize:    #        0x3fe80  0      
  movl %edi, %edi              #  1     0x3fe80  2      
  movl %esi, %esi              #  2     0x3fe82  2      
  movl $0x16, %eax             #  3     0x3fe84  5      
  testq %rdi, %rdi             #  4     0x3fe89  3      
  je .L_3fea0                  #  5     0x3fe8c  6      
  movl %edi, %edi              #  6     0x3fe92  2      
  movl 0x4(%r15,%rdi,1), %eax  #  7     0x3fe94  5      
  movl %esi, %esi              #  8     0x3fe99  2      
  movl %eax, (%r15,%rsi,1)     #  9     0x3fe9b  4      
  xorl %eax, %eax              #  10    0x3fe9f  2      
  nop                          #  11    0x3fea1  1      
.L_3fea0:                      #        0x3fea2  0      
  popq %r11                    #  12    0x3fea2  3      
  andl $0xffffffe0, %r11d      #  13    0x3fea5  7      
  addq %r15, %r11              #  14    0x3feac  3      
  jmpq %r11                    #  15    0x3feaf  3      
  nop                          #  16    0x3feb2  1      
  nop                          #  17    0x3feb3  1      
                                                        
.size pthread_attr_getstacksize, .-pthread_attr_getstacksize

