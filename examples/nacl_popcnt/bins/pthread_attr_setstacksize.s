  .text
  .globl pthread_attr_setstacksize
  .type pthread_attr_setstacksize, @function

#! file-offset 0x3fe80
#! rip-offset  0x3fe80
#! capacity    128 bytes

# Text                           #  Line  RIP      Bytes  
.pthread_attr_setstacksize:      #        0x3fe80  0      
  movl %edi, %edi                #  1     0x3fe80  2      
  movl $0x16, %eax               #  2     0x3fe82  5      
  testq %rdi, %rdi               #  3     0x3fe87  3      
  je .L_3fec0                    #  4     0x3fe8a  6      
  cmpl $0x400, %esi              #  5     0x3fe90  6      
  ja .L_3fee0                    #  6     0x3fe96  6      
  movl %edi, %edi                #  7     0x3fe9c  2      
  movl $0x400, 0x4(%r15,%rdi,1)  #  8     0x3fe9e  9      
  nop                            #  9     0x3fea7  1      
  xorl %eax, %eax                #  10    0x3fea8  2      
  nop                            #  11    0x3feaa  1      
  nop                            #  12    0x3feab  1      
.L_3fec0:                        #        0x3feac  0      
  popq %r11                      #  13    0x3feac  3      
  andl $0xffffffe0, %r11d        #  14    0x3feaf  7      
  addq %r15, %r11                #  15    0x3feb6  3      
  jmpq %r11                      #  16    0x3feb9  3      
  nop                            #  17    0x3febc  1      
  nop                            #  18    0x3febd  1      
.L_3fee0:                        #        0x3febe  0      
  movl %edi, %edi                #  19    0x3febe  2      
  movl %esi, 0x4(%r15,%rdi,1)    #  20    0x3fec0  5      
  xorb %al, %al                  #  21    0x3fec5  2      
  popq %r11                      #  22    0x3fec7  3      
  andl $0xffffffe0, %r11d        #  23    0x3feca  7      
  addq %r15, %r11                #  24    0x3fed1  3      
  jmpq %r11                      #  25    0x3fed4  3      
  nop                            #  26    0x3fed7  1      
                                                          
.size pthread_attr_setstacksize, .-pthread_attr_setstacksize

