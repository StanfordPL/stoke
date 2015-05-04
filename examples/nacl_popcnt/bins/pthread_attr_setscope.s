  .text
  .globl pthread_attr_setscope
  .type pthread_attr_setscope, @function

#! file-offset 0x3fe20
#! rip-offset  0x3fe20
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
.pthread_attr_setscope:    #        0x3fe20  0      
  testl %esi, %esi         #  1     0x3fe20  2      
  movl $0x5f, %eax         #  2     0x3fe22  5      
  je .L_3fe40              #  3     0x3fe27  6      
  xorb %al, %al            #  4     0x3fe2d  2      
  movl $0x16, %edx         #  5     0x3fe2f  5      
  cmpl $0x1, %esi          #  6     0x3fe34  3      
  cmovnel %edx, %eax       #  7     0x3fe37  3      
  nop                      #  8     0x3fe3a  1      
.L_3fe40:                  #        0x3fe3b  0      
  popq %r11                #  9     0x3fe3b  3      
  andl $0xffffffe0, %r11d  #  10    0x3fe3e  7      
  addq %r15, %r11          #  11    0x3fe45  3      
  jmpq %r11                #  12    0x3fe48  3      
  nop                      #  13    0x3fe4b  1      
  nop                      #  14    0x3fe4c  1      
                                                    
.size pthread_attr_setscope, .-pthread_attr_setscope

