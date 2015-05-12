  .text
  .globl pthread_attr_setstacksize
  .type pthread_attr_setstacksize, @function

#! file-offset 0x3fe00
#! rip-offset  0x3fe00
#! capacity    128 bytes

# Text                           #  Line  RIP      Bytes  
.pthread_attr_setstacksize:      #        0x3fe00  0      
  movl %edi, %edi                #  1     0x3fe00  2      
  movl $0x16, %eax               #  2     0x3fe02  5      
  testq %rdi, %rdi               #  3     0x3fe07  3      
  je .L_3fe40                    #  4     0x3fe0a  6      
  cmpl $0x400, %esi              #  5     0x3fe10  6      
  ja .L_3fe60                    #  6     0x3fe16  6      
  movl %edi, %edi                #  7     0x3fe1c  2      
  movl $0x400, 0x4(%r15,%rdi,1)  #  8     0x3fe1e  9      
  nop                            #  9     0x3fe27  1      
  xorl %eax, %eax                #  10    0x3fe28  2      
  nop                            #  11    0x3fe2a  1      
  nop                            #  12    0x3fe2b  1      
.L_3fe40:                        #        0x3fe2c  0      
  popq %r11                      #  13    0x3fe2c  3      
  andl $0xffffffe0, %r11d        #  14    0x3fe2f  7      
  addq %r15, %r11                #  15    0x3fe36  3      
  jmpq %r11                      #  16    0x3fe39  3      
  nop                            #  17    0x3fe3c  1      
  nop                            #  18    0x3fe3d  1      
.L_3fe60:                        #        0x3fe3e  0      
  movl %edi, %edi                #  19    0x3fe3e  2      
  movl %esi, 0x4(%r15,%rdi,1)    #  20    0x3fe40  5      
  xorb %al, %al                  #  21    0x3fe45  2      
  popq %r11                      #  22    0x3fe47  3      
  andl $0xffffffe0, %r11d        #  23    0x3fe4a  7      
  addq %r15, %r11                #  24    0x3fe51  3      
  jmpq %r11                      #  25    0x3fe54  3      
  nop                            #  26    0x3fe57  1      
                                                          
.size pthread_attr_setstacksize, .-pthread_attr_setstacksize

