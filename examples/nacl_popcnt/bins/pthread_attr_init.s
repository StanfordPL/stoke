  .text
  .globl pthread_attr_init
  .type pthread_attr_init, @function

#! file-offset 0x3fd20
#! rip-offset  0x3fd20
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
.pthread_attr_init:                #        0x3fd20  0      
  movl %edi, %edi                  #  1     0x3fd20  2      
  movl $0x16, %eax                 #  2     0x3fd22  5      
  testq %rdi, %rdi                 #  3     0x3fd27  3      
  je .L_3fd60                      #  4     0x3fd2a  6      
  movl %edi, %edi                  #  5     0x3fd30  2      
  movl $0x1, (%r15,%rdi,1)         #  6     0x3fd32  8      
  nop                              #  7     0x3fd3a  1      
  movl %edi, %edi                  #  8     0x3fd3b  2      
  movl $0x80000, 0x4(%r15,%rdi,1)  #  9     0x3fd3d  9      
  xorb %al, %al                    #  10    0x3fd46  2      
  nop                              #  11    0x3fd48  1      
  nop                              #  12    0x3fd49  1      
.L_3fd60:                          #        0x3fd4a  0      
  popq %r11                        #  13    0x3fd4a  3      
  andl $0xffffffe0, %r11d          #  14    0x3fd4d  7      
  addq %r15, %r11                  #  15    0x3fd54  3      
  jmpq %r11                        #  16    0x3fd57  3      
  nop                              #  17    0x3fd5a  1      
  nop                              #  18    0x3fd5b  1      
                                                            
.size pthread_attr_init, .-pthread_attr_init

