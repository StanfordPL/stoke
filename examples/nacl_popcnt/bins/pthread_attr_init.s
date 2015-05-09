  .text
  .globl pthread_attr_init
  .type pthread_attr_init, @function

#! file-offset 0x3fc80
#! rip-offset  0x3fc80
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
.pthread_attr_init:                #        0x3fc80  0      
  movl %edi, %edi                  #  1     0x3fc80  2      
  movl $0x16, %eax                 #  2     0x3fc82  5      
  testq %rdi, %rdi                 #  3     0x3fc87  3      
  je .L_3fcc0                      #  4     0x3fc8a  6      
  movl %edi, %edi                  #  5     0x3fc90  2      
  movl $0x1, (%r15,%rdi,1)         #  6     0x3fc92  8      
  nop                              #  7     0x3fc9a  1      
  movl %edi, %edi                  #  8     0x3fc9b  2      
  movl $0x80000, 0x4(%r15,%rdi,1)  #  9     0x3fc9d  9      
  xorb %al, %al                    #  10    0x3fca6  2      
  nop                              #  11    0x3fca8  1      
  nop                              #  12    0x3fca9  1      
.L_3fcc0:                          #        0x3fcaa  0      
  popq %r11                        #  13    0x3fcaa  3      
  andl $0xffffffe0, %r11d          #  14    0x3fcad  7      
  addq %r15, %r11                  #  15    0x3fcb4  3      
  jmpq %r11                        #  16    0x3fcb7  3      
  nop                              #  17    0x3fcba  1      
  nop                              #  18    0x3fcbb  1      
                                                            
.size pthread_attr_init, .-pthread_attr_init

