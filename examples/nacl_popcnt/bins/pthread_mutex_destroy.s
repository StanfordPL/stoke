  .text
  .globl pthread_mutex_destroy
  .type pthread_mutex_destroy, @function

#! file-offset 0x42400
#! rip-offset  0x42400
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_mutex_destroy:        #        0x42400  0      
  movl %edi, %edi              #  1     0x42400  2      
  movl %edi, %edi              #  2     0x42402  2      
  movl (%r15,%rdi,1), %eax     #  3     0x42404  4      
  testl %eax, %eax             #  4     0x42408  2      
  jne .L_42420                 #  5     0x4240a  6      
  movl %edi, %edi              #  6     0x42410  2      
  movl 0x8(%r15,%rdi,1), %eax  #  7     0x42412  5      
  testl %eax, %eax             #  8     0x42417  2      
  je .L_42440                  #  9     0x42419  6      
  nop                          #  10    0x4241f  1      
.L_42420:                      #        0x42420  0      
  movl $0x10, %eax             #  11    0x42420  5      
  popq %r11                    #  12    0x42425  3      
  andl $0xffffffe0, %r11d      #  13    0x42428  7      
  addq %r15, %r11              #  14    0x4242f  3      
  jmpq %r11                    #  15    0x42432  3      
  nop                          #  16    0x42435  1      
.L_42440:                      #        0x42436  0      
  movl %edi, %edi              #  17    0x42436  2      
  movl $0x0, 0x8(%r15,%rdi,1)  #  18    0x42438  9      
  movl %edi, %edi              #  19    0x42441  2      
  movl $0x0, 0xc(%r15,%rdi,1)  #  20    0x42443  9      
  popq %r11                    #  21    0x4244c  3      
  nop                          #  22    0x4244f  1      
  andl $0xffffffe0, %r11d      #  23    0x42450  7      
  addq %r15, %r11              #  24    0x42457  3      
  jmpq %r11                    #  25    0x4245a  3      
  nop                          #  26    0x4245d  1      
  nop                          #  27    0x4245e  1      
                                                        
.size pthread_mutex_destroy, .-pthread_mutex_destroy

