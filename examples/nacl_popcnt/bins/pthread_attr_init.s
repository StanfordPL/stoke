  .text
  .globl pthread_attr_init
  .type pthread_attr_init, @function

#! file-offset 0x3fca0
#! rip-offset  0x3fca0
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
.pthread_attr_init:                #        0x3fca0  0      
  movl %edi, %edi                  #  1     0x3fca0  2      
  movl $0x16, %eax                 #  2     0x3fca2  5      
  testq %rdi, %rdi                 #  3     0x3fca7  3      
  je .L_3fce0                      #  4     0x3fcaa  6      
  movl %edi, %edi                  #  5     0x3fcb0  2      
  movl $0x1, (%r15,%rdi,1)         #  6     0x3fcb2  8      
  nop                              #  7     0x3fcba  1      
  movl %edi, %edi                  #  8     0x3fcbb  2      
  movl $0x80000, 0x4(%r15,%rdi,1)  #  9     0x3fcbd  9      
  xorb %al, %al                    #  10    0x3fcc6  2      
  nop                              #  11    0x3fcc8  1      
  nop                              #  12    0x3fcc9  1      
.L_3fce0:                          #        0x3fcca  0      
  popq %r11                        #  13    0x3fcca  3      
  andl $0xffffffe0, %r11d          #  14    0x3fccd  7      
  addq %r15, %r11                  #  15    0x3fcd4  3      
  jmpq %r11                        #  16    0x3fcd7  3      
  nop                              #  17    0x3fcda  1      
  nop                              #  18    0x3fcdb  1      
                                                            
.size pthread_attr_init, .-pthread_attr_init

