  .text
  .globl pthread_mutex_destroy
  .type pthread_mutex_destroy, @function

#! file-offset 0x42480
#! rip-offset  0x42480
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_mutex_destroy:        #        0x42480  0      
  movl %edi, %edi              #  1     0x42480  2      
  movl %edi, %edi              #  2     0x42482  2      
  movl (%r15,%rdi,1), %eax     #  3     0x42484  4      
  testl %eax, %eax             #  4     0x42488  2      
  jne .L_424a0                 #  5     0x4248a  6      
  movl %edi, %edi              #  6     0x42490  2      
  movl 0x8(%r15,%rdi,1), %eax  #  7     0x42492  5      
  testl %eax, %eax             #  8     0x42497  2      
  je .L_424c0                  #  9     0x42499  6      
  nop                          #  10    0x4249f  1      
.L_424a0:                      #        0x424a0  0      
  movl $0x10, %eax             #  11    0x424a0  5      
  popq %r11                    #  12    0x424a5  3      
  andl $0xffffffe0, %r11d      #  13    0x424a8  7      
  addq %r15, %r11              #  14    0x424af  3      
  jmpq %r11                    #  15    0x424b2  3      
  nop                          #  16    0x424b5  1      
.L_424c0:                      #        0x424b6  0      
  movl %edi, %edi              #  17    0x424b6  2      
  movl $0x0, 0x8(%r15,%rdi,1)  #  18    0x424b8  9      
  movl %edi, %edi              #  19    0x424c1  2      
  movl $0x0, 0xc(%r15,%rdi,1)  #  20    0x424c3  9      
  popq %r11                    #  21    0x424cc  3      
  nop                          #  22    0x424cf  1      
  andl $0xffffffe0, %r11d      #  23    0x424d0  7      
  addq %r15, %r11              #  24    0x424d7  3      
  jmpq %r11                    #  25    0x424da  3      
  nop                          #  26    0x424dd  1      
  nop                          #  27    0x424de  1      
                                                        
.size pthread_mutex_destroy, .-pthread_mutex_destroy

