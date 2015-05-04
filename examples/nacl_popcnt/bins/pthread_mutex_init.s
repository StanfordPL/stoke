  .text
  .globl pthread_mutex_init
  .type pthread_mutex_init, @function

#! file-offset 0x42400
#! rip-offset  0x42400
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_mutex_init:           #        0x42400  0      
  movl %esi, %esi              #  1     0x42400  2      
  movl %edi, %edi              #  2     0x42402  2      
  testq %rsi, %rsi             #  3     0x42404  3      
  movl %edi, %edi              #  4     0x42407  2      
  movl $0x0, (%r15,%rdi,1)     #  5     0x42409  8      
  movl %edi, %edi              #  6     0x42411  2      
  movl $0x0, 0xc(%r15,%rdi,1)  #  7     0x42413  9      
  nop                          #  8     0x4241c  1      
  movl %edi, %edi              #  9     0x4241d  2      
  movl $0x0, 0x8(%r15,%rdi,1)  #  10    0x4241f  9      
  je .L_42460                  #  11    0x42428  6      
  popq %r11                    #  12    0x4242e  3      
  movl %esi, %esi              #  13    0x42431  2      
  movl (%r15,%rsi,1), %eax     #  14    0x42433  4      
  movl %edi, %edi              #  15    0x42437  2      
  movl %eax, 0x4(%r15,%rdi,1)  #  16    0x42439  5      
  xorl %eax, %eax              #  17    0x4243e  2      
  xchgw %ax, %ax               #  18    0x42440  3      
  andl $0xffffffe0, %r11d      #  19    0x42443  7      
  addq %r15, %r11              #  20    0x4244a  3      
  jmpq %r11                    #  21    0x4244d  3      
  nop                          #  22    0x42450  1      
  nop                          #  23    0x42451  1      
.L_42460:                      #        0x42452  0      
  popq %r11                    #  24    0x42452  3      
  xorl %eax, %eax              #  25    0x42455  2      
  movl %edi, %edi              #  26    0x42457  2      
  movl $0x0, 0x4(%r15,%rdi,1)  #  27    0x42459  9      
  andl $0xffffffe0, %r11d      #  28    0x42462  7      
  addq %r15, %r11              #  29    0x42469  3      
  jmpq %r11                    #  30    0x4246c  3      
  nop                          #  31    0x4246f  1      
                                                        
.size pthread_mutex_init, .-pthread_mutex_init

