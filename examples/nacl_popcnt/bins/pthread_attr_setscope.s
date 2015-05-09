  .text
  .globl pthread_attr_setscope
  .type pthread_attr_setscope, @function

#! file-offset 0x3fd80
#! rip-offset  0x3fd80
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
.pthread_attr_setscope:    #        0x3fd80  0      
  testl %esi, %esi         #  1     0x3fd80  2      
  movl $0x5f, %eax         #  2     0x3fd82  5      
  je .L_3fda0              #  3     0x3fd87  6      
  xorb %al, %al            #  4     0x3fd8d  2      
  movl $0x16, %edx         #  5     0x3fd8f  5      
  cmpl $0x1, %esi          #  6     0x3fd94  3      
  cmovnel %edx, %eax       #  7     0x3fd97  3      
  nop                      #  8     0x3fd9a  1      
.L_3fda0:                  #        0x3fd9b  0      
  popq %r11                #  9     0x3fd9b  3      
  andl $0xffffffe0, %r11d  #  10    0x3fd9e  7      
  addq %r15, %r11          #  11    0x3fda5  3      
  jmpq %r11                #  12    0x3fda8  3      
  nop                      #  13    0x3fdab  1      
  nop                      #  14    0x3fdac  1      
                                                    
.size pthread_attr_setscope, .-pthread_attr_setscope

