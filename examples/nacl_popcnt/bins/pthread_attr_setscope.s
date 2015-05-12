  .text
  .globl pthread_attr_setscope
  .type pthread_attr_setscope, @function

#! file-offset 0x3fda0
#! rip-offset  0x3fda0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
.pthread_attr_setscope:    #        0x3fda0  0      
  testl %esi, %esi         #  1     0x3fda0  2      
  movl $0x5f, %eax         #  2     0x3fda2  5      
  je .L_3fdc0              #  3     0x3fda7  6      
  xorb %al, %al            #  4     0x3fdad  2      
  movl $0x16, %edx         #  5     0x3fdaf  5      
  cmpl $0x1, %esi          #  6     0x3fdb4  3      
  cmovnel %edx, %eax       #  7     0x3fdb7  3      
  nop                      #  8     0x3fdba  1      
.L_3fdc0:                  #        0x3fdbb  0      
  popq %r11                #  9     0x3fdbb  3      
  andl $0xffffffe0, %r11d  #  10    0x3fdbe  7      
  addq %r15, %r11          #  11    0x3fdc5  3      
  jmpq %r11                #  12    0x3fdc8  3      
  nop                      #  13    0x3fdcb  1      
  nop                      #  14    0x3fdcc  1      
                                                    
.size pthread_attr_setscope, .-pthread_attr_setscope

